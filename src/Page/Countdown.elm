module Page.Countdown exposing (Model, Msg, init, subscriptions, toSession, update, view)

import Alarm
import Browser exposing (Document)
import Browser.Events
import Html exposing (Html)
import Html.Attributes as A
import Html.Tailwind as TW
import Period exposing (Period)
import Session exposing (Session)
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
    = Waiting Period
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


type Msg
    = GotStageMsg StageMsg


init : Session -> ( Model, Cmd Msg )
init session =
    ( { session = session
      , stage = Waiting <| Period.millis 5000
      }
    , Cmd.none
    )


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case ( msg, model.stage ) of
        ( GotStageMsg stageMsg, _ ) ->
            updateStageMsg stageMsg model


updateStageMsg : StageMsg -> Model -> ( Model, Cmd Msg )
updateStageMsg msg model =
    case ( msg, model.stage ) of
        ( Start, Waiting target ) ->
            ( { model | stage = Starting target }, Alarm.load )

        ( Start, Paused target timer ) ->
            ( { model | stage = Resuming target timer }, Alarm.load )

        ( Start, Finished target ) ->
            ( { model | stage = Starting target }, Alarm.load )

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


startCountdown : Period -> Time.Posix -> Timer
startCountdown period now =
    ( now, Time.Extra.add now <| Period.toPosix period )


subscriptions : Model -> Sub Msg
subscriptions model =
    case model.stage of
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
view model =
    { title = "Countdown"
    , body = Alarm.view :: viewBody model.stage
    }


viewBody : Stage -> List (Html Msg)
viewBody stage =
    [ Html.main_ [ TW.flex_grow ]
        [ Html.div [ TW.container, TW.mx_auto, TW.p_3, TW.flex, TW.flex_col ]
            [ Html.div [ TW.mt_4, TW.flex, TW.flex_col ]
                [ Html.p [ TW.self_center, TW.text_4xl, TW.font_mono ] [ showRemainingTime stage ]
                ]
            , viewProgress stage
            ]
        ]
    , Html.footer [ TW.container, TW.mx_auto, TW.grid, TW.grid_cols_2, TW.gap_2, TW.text_xl, TW.py_2 ]
        [ viewStartStopButton stage
        , viewResetButton stage
        ]
    ]


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

    else
        viewStartButton


viewStartButton : Html Msg
viewStartButton =
    Html.button (TW.hover__bg_green_600 :: Button.attr { color = TW.bg_green_500, onClick = Just (GotStageMsg Start) }) [ Html.text "Start" ]


viewStopButton : Html Msg
viewStopButton =
    Html.button (TW.hover__bg_blue_600 :: Button.attr { color = TW.bg_blue_500, onClick = Just (GotStageMsg Stop) }) [ Html.text "Stop" ]


viewResetButton : Stage -> Html Msg
viewResetButton stage =
    case stage of
        Waiting _ ->
            viewDisabledResetButton

        _ ->
            viewResetButton_


viewDisabledResetButton : Html Msg
viewDisabledResetButton =
    Html.button (Button.attr { color = TW.bg_gray_500, onClick = Nothing }) [ Html.text "Reset" ]


viewResetButton_ : Html Msg
viewResetButton_ =
    Html.button (TW.hover__bg_red_600 :: Button.attr { color = TW.bg_gray_500, onClick = Just (GotStageMsg Reset) }) [ Html.text "Reset" ]


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
        |> showPeriod


stageToRemaining : Stage -> Period
stageToRemaining stage =
    mapRemainingTime (allStages identity) stage


stageToTarget : Stage -> Period
stageToTarget stage =
    case stage of
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


showPeriod : Period -> Html Msg
showPeriod period =
    Html.time [ A.datetime (Period.toIso8601 period), TW.select_all ] [ Html.text (Period.toHuman period) ]
