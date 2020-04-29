module Page.Countdown exposing (Model, Msg, init, subscriptions, toSession, update, view)

import Alarm
import Browser exposing (Document)
import Browser.Events
import Html exposing (Html)
import Html.Attributes as A
import Html.Events as Events
import Html.Tailwind as TW
import Period exposing (Period)
import Session exposing (Session)
import Svg.Icons as Icons
import Svg.Tailwind as SvgTW
import Theme.Button as Button
import Theme.Progress as Progress
import Time
import Time.Extra
import Timer exposing (Timer)


type alias Model =
    { session : Session
    , stage : Stage
    }


type Stage
    = Editing Period
    | Waiting Period
    | Starting Period
    | Running Period Timer
    | Paused Period Period
    | Resuming Period Period
    | Finished Period


type StageMsg
    = Start
    | Stop
    | Reset
    | Tick Time.Posix


type EditMsg
    = SetHours Int
    | SetMinutes Int
    | SetSeconds Int


type Msg
    = GotStageMsg StageMsg
    | GotEditMsg EditMsg
    | EditTimer


init : Session -> Maybe Int -> ( Model, Cmd Msg )
init session maybeTime =
    ( { session = session
      , stage =
            maybeTime
                |> Maybe.map (Waiting << Period.millis << (*) 1000)
                |> Maybe.withDefault ((Editing << Period.millis) 0)
      }
    , Cmd.none
    )


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case ( msg, model.stage ) of
        ( GotStageMsg stageMsg, _ ) ->
            updateStageMsg stageMsg model

        ( EditTimer, Waiting target ) ->
            ( { model | stage = Editing target }, Cmd.none )

        ( EditTimer, _ ) ->
            ( model, Cmd.none )

        ( GotEditMsg editMsg, _ ) ->
            updateEditMsg editMsg model


updateStageMsg : StageMsg -> Model -> ( Model, Cmd Msg )
updateStageMsg msg model =
    case ( msg, model.stage ) of
        ( Start, Editing target ) ->
            updateStartingTime target model

        ( Start, Waiting target ) ->
            updateStartingTime target model

        ( Start, Paused target timer ) ->
            ( { model | stage = Resuming target timer }, Alarm.load )

        ( Start, Finished target ) ->
            updateStartingTime target model

        ( Start, _ ) ->
            ( model, Cmd.none )

        ( Stop, Starting target ) ->
            ( { model | stage = Waiting target }, Cmd.none )

        ( Stop, Running target timer ) ->
            ( { model | stage = Paused target <| Period.fromTimer timer }, Cmd.none )

        ( Stop, Resuming target remaining ) ->
            ( { model | stage = Paused target remaining }, Cmd.none )

        ( Stop, _ ) ->
            ( model, Cmd.none )

        ( Reset, stage ) ->
            ( { model | stage = Waiting <| stageToTarget stage }, Alarm.stop )

        ( Tick now, Starting target ) ->
            ( { model | stage = Running target <| startCountdown target now }, Cmd.none )

        ( Tick now, Running target ( _, end ) ) ->
            if Time.Extra.lt end now then
                ( { model | stage = Finished target }, Alarm.play )

            else
                ( { model | stage = Running target ( now, end ) }, Cmd.none )

        ( Tick now, Resuming target remaining ) ->
            ( { model | stage = Running target <| startCountdown remaining now }, Cmd.none )

        ( Tick _, _ ) ->
            ( model, Cmd.none )


updateStartingTime : Period -> Model -> ( Model, Cmd Msg )
updateStartingTime target model =
    if canStartTarget target then
        ( { model | stage = Starting target }, Alarm.load )

    else
        ( model, Cmd.none )


canStartTarget : Period -> Bool
canStartTarget target =
    Period.toMillis target // 1000 > 0


startCountdown : Period -> Time.Posix -> Timer
startCountdown period now =
    ( now, Time.Extra.add now <| Period.toPosix period )


updateEditMsg : EditMsg -> Model -> ( Model, Cmd Msg )
updateEditMsg msg model =
    case model.stage of
        Editing duration ->
            let
                time =
                    periodToTime duration
            in
            case msg of
                SetHours newHours ->
                    updateEditingTime { time | hours = newHours } model

                SetMinutes newMinutes ->
                    updateEditingTime { time | minutes = newMinutes } model

                SetSeconds newSeconds ->
                    updateEditingTime { time | seconds = newSeconds } model

        _ ->
            ( model, Cmd.none )


updateEditingTime : Time -> Model -> ( Model, Cmd Msg )
updateEditingTime time model =
    ( { model | stage = Editing <| timeToPeriod time }, Cmd.none )


subscriptions : Model -> Sub Msg
subscriptions model =
    case model.stage of
        Editing _ ->
            Sub.none

        Waiting _ ->
            Sub.none

        Starting _ ->
            Browser.Events.onAnimationFrame (GotStageMsg << Tick)

        Running _ _ ->
            Browser.Events.onAnimationFrame (GotStageMsg << Tick)

        Paused _ _ ->
            Sub.none

        Resuming _ _ ->
            Browser.Events.onAnimationFrame (GotStageMsg << Tick)

        Finished _ ->
            Sub.none


toSession : Model -> Session
toSession { session } =
    session



--- VIEW


view : Model -> Document Msg
view { stage } =
    { title = "Countdown"
    , body = Alarm.view :: viewBody stage
    }


viewBody : Stage -> List (Html Msg)
viewBody stage =
    [ Html.main_ [ TW.flex_grow ]
        [ Html.div [ TW.container, TW.mx_auto, TW.p_3, TW.flex, TW.flex_col ]
            [ viewEditableTime stage
            , viewProgress stage
            ]
        ]
    , Html.footer [ TW.container, TW.mx_auto, TW.grid, TW.grid_cols_2, TW.gap_2, TW.text_xl, TW.py_2 ]
        [ viewStartStopButton stage
        , viewResetButton stage
        ]
    ]


viewEditableTime : Stage -> Html Msg
viewEditableTime stage =
    Html.div [ TW.grid, TW.grid_cols_header ]
        (case stage of
            Editing duration ->
                let
                    time : Time
                    time =
                        periodToTime duration
                in
                [ Html.div [ TW.col_start_2, TW.text_4xl, TW.font_mono, TW.self_center, TW.flex, TW.flex_row, TW.leading_none ]
                    [ viewEditTimePart time.hours (GotEditMsg << SetHours)
                    , Html.div [ TW.self_center ] [ Html.text ":" ]
                    , viewEditTimePart time.minutes (GotEditMsg << SetMinutes)
                    , Html.div [ TW.self_center ] [ Html.text ":" ]
                    , viewEditTimePart time.seconds (GotEditMsg << SetSeconds)
                    ]
                , Html.div [ TW.self_center, TW.mr_auto, TW.ml_2 ]
                    [ Html.button [ Events.onClick (GotStageMsg Reset), A.style "touch-action" "manipulation" ]
                        [ Icons.checkmarkOutline [ SvgTW.h_6, SvgTW.w_6 ] ]
                    ]
                ]

            Waiting duration ->
                [ Html.p [ TW.col_start_2, TW.text_4xl, TW.font_mono, TW.self_center, TW.leading_none, TW.py_4 ]
                    [ showPeriodHMS duration ]
                , Html.div [ TW.self_center, TW.mr_auto, TW.ml_2 ]
                    [ viewEditButton ]
                ]

            _ ->
                [ Html.p [ TW.col_start_2, TW.text_4xl, TW.font_mono, TW.self_center, TW.leading_none, TW.py_4 ]
                    [ showRemainingTime stage ]
                ]
        )


viewEditTimePart : Int -> (Int -> msg) -> Html msg
viewEditTimePart unit msg =
    Html.div [ TW.flex, TW.flex_col ]
        [ Html.div [ TW.text_base ]
            [ Html.button [ TW.w_full, TW.flex, TW.justify_center, Events.onClick (msg <| unit + 1), A.style "touch-action" "manipulation" ]
                [ Icons.chevronUp [ SvgTW.h_4, SvgTW.w_4 ] ]
            ]
        , Html.div []
            [ Html.text <| pad00 unit ]
        , Html.div [ TW.text_base ]
            [ Html.button [ TW.w_full, TW.flex, TW.justify_center, Events.onClick (msg <| unit - 1), A.style "touch-action" "manipulation" ]
                [ Icons.chevronDown [ SvgTW.h_4, SvgTW.w_4 ] ]
            ]
        ]


viewEditButton : Html Msg
viewEditButton =
    Html.button [ Events.onClick EditTimer ] [ Icons.cog [ SvgTW.h_6, SvgTW.w_6 ] ]


viewProgress : Stage -> Html Msg
viewProgress stage =
    let
        ( label, bgColor ) =
            mapStage
                { onWaiting = ( "Ready", TW.bg_gray_500 )
                , onRunning = ( "Go!", TW.bg_green_500 )
                , onPaused = ( "Paused", TW.bg_gray_500 )
                , onFinished = ( "Finished", TW.bg_red_500 )
                }
                stage
    in
    calculateProgress stage
        |> Progress.view [ bgColor ] [ Html.text label ]


calculateProgress : Stage -> Float
calculateProgress stage =
    case stage of
        Finished _ ->
            100

        _ ->
            (Period.toMillisFloat (stageToRemaining stage) / Period.toMillisFloat (stageToTarget stage)) * 100


viewStartStopButton : Stage -> Html Msg
viewStartStopButton stage =
    if isRunning stage then
        viewStopButton

    else if canStartTarget <| stageToTarget stage then
        viewStartButton

    else
        viewDisabledStartButton


viewStartButton : Html Msg
viewStartButton =
    Html.button (TW.hover__bg_green_600 :: Button.attr { color = TW.bg_green_500, onClick = Just (GotStageMsg Start) }) [ Html.text "Start" ]


viewDisabledStartButton : Html Msg
viewDisabledStartButton =
    Html.button (Button.attr { color = TW.bg_green_500, onClick = Nothing }) [ Html.text "Start" ]


viewStopButton : Html Msg
viewStopButton =
    Html.button (TW.hover__bg_blue_600 :: Button.attr { color = TW.bg_blue_500, onClick = Just (GotStageMsg Stop) }) [ Html.text "Stop" ]


viewResetButton : Stage -> Html Msg
viewResetButton stage =
    case stage of
        Editing _ ->
            viewDisabledResetButton

        Waiting _ ->
            viewDisabledResetButton

        Finished _ ->
            viewRedResetButton

        _ ->
            viewGrayResetButton


viewDisabledResetButton : Html Msg
viewDisabledResetButton =
    Html.button (Button.attr { color = TW.bg_gray_500, onClick = Nothing }) [ Html.text "Reset" ]


viewGrayResetButton : Html Msg
viewGrayResetButton =
    Html.button (TW.hover__bg_red_600 :: Button.attr { color = TW.bg_gray_500, onClick = Just (GotStageMsg Reset) }) [ Html.text "Reset" ]


viewRedResetButton : Html Msg
viewRedResetButton =
    Html.button (TW.hover__bg_red_600 :: Button.attr { color = TW.bg_red_500, onClick = Just (GotStageMsg Reset) }) [ Html.text "Reset" ]


isRunning : Stage -> Bool
isRunning stage =
    let
        stages : StageMaps Bool
        stages =
            allStages False
    in
    mapStage { stages | onRunning = True } stage


showRemainingTime : Stage -> Html Msg
showRemainingTime stage =
    stage
        |> stageToRemaining
        |> showPeriodHuman


stageToRemaining : Stage -> Period
stageToRemaining stage =
    mapRemainingTime (allStages identity) stage


stageToTarget : Stage -> Period
stageToTarget stage =
    case stage of
        Editing target ->
            target

        Waiting target ->
            target

        Starting target ->
            target

        Running target _ ->
            target

        Paused target _ ->
            target

        Resuming target _ ->
            target

        Finished target ->
            target


type alias StageMaps value =
    { onWaiting : value
    , onRunning : value
    , onPaused : value
    , onFinished : value
    }


allStages : value -> StageMaps value
allStages value =
    { onWaiting = value
    , onRunning = value
    , onPaused = value
    , onFinished = value
    }


mapStage : StageMaps value -> Stage -> value
mapStage { onWaiting, onRunning, onPaused, onFinished } stage =
    case stage of
        Editing _ ->
            onWaiting

        Waiting _ ->
            onWaiting

        Starting _ ->
            onRunning

        Running _ _ ->
            onRunning

        Paused _ _ ->
            onPaused

        Resuming _ _ ->
            onRunning

        Finished _ ->
            onFinished


mapRemainingTime : StageMaps (Period -> value) -> Stage -> value
mapRemainingTime { onWaiting, onRunning, onPaused, onFinished } stage =
    case stage of
        Editing remaining ->
            onWaiting remaining

        Waiting remaining ->
            onWaiting remaining

        Starting remaining ->
            onRunning remaining

        Running _ timer ->
            onRunning <| Period.fromTimer timer

        Paused _ remaining ->
            onPaused remaining

        Resuming _ remaining ->
            onRunning remaining

        Finished _ ->
            onFinished <| Period.millis 0


showPeriodHuman : Period -> Html Msg
showPeriodHuman =
    showPeriod Period.toHuman


showPeriodHMS : Period -> Html Msg
showPeriodHMS =
    showPeriod Period.toHMS


showPeriod : (Period -> String) -> Period -> Html Msg
showPeriod toString period =
    Html.time [ A.datetime (Period.toIso8601 period), TW.select_all ] [ Html.text (toString period) ]



--- Period to Time


type alias Time =
    { hours : Int
    , minutes : Int
    , seconds : Int
    }


timeToPeriod : Time -> Period
timeToPeriod { hours, minutes, seconds } =
    Period.millis <| max 0 (((hours * 60 + minutes) * 60 + seconds) * 1000)


periodToTime : Period -> Time
periodToTime period =
    let
        ms =
            Period.toMillis period

        s =
            ms // 1000

        m =
            s // 60

        h =
            m // 60
    in
    { hours = h
    , minutes = zeroOrRemainderBy 60 m
    , seconds = zeroOrRemainderBy 60 s
    }


zeroOrRemainderBy : Int -> Int -> Int
zeroOrRemainderBy a b =
    case a of
        0 ->
            0

        _ ->
            remainderBy a b


pad00 : Int -> String
pad00 =
    String.padLeft 2 '0' << String.fromInt
