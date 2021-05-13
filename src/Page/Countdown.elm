module Page.Countdown exposing (Model, Msg, init, subscriptions, toSession, update, view)

import Alarm
import Browser exposing (Document)
import Browser.Events
import Html exposing (Html)
import Html.Attributes as Attr
import Html.Events as Events
import Period exposing (Period)
import Session exposing (Session)
import Svg.Attributes as SvgAttr
import Svg.Icons as Icons
import Tailwind as Tw
import Theme.Button as Button
import Theme.Progress as Progress
import Time
import Time.Extra
import Timer exposing (Timer)


type Model
    = Model Session Stage


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


type EditMsg
    = SetHours Int
    | SetMinutes Int
    | SetSeconds Int


type Msg
    = GotStageMsg StageMsg
    | GotEditMsg EditMsg


init : Session -> Maybe Int -> ( Model, Cmd Msg )
init session maybeTime =
    ( Model session
        (maybeTime
            |> Maybe.map (Period.millis << (*) 1000)
            |> Maybe.withDefault (Period.millis 0)
            |> Waiting
        )
    , Cmd.none
    )


update : Msg -> Model -> ( Model, Cmd Msg )
update msg (Model session stage) =
    case ( msg, stage ) of
        ( GotStageMsg stageMsg, _ ) ->
            updateStageMsg stageMsg stage
                |> Tuple.mapFirst (Model session)

        ( GotEditMsg editMsg, _ ) ->
            ( Model session (updateEditMsg editMsg stage)
            , Cmd.none
            )


updateStageMsg : StageMsg -> Stage -> ( Stage, Cmd Msg )
updateStageMsg msg stage =
    case ( msg, stage ) of
        ( Start, Waiting target ) ->
            updateStartingTime target stage

        ( Start, Paused target timer ) ->
            ( Resuming target timer, Alarm.load )

        ( Start, Finished target ) ->
            updateStartingTime target stage

        ( Start, _ ) ->
            ( stage, Cmd.none )

        ( Stop, Starting target ) ->
            ( Waiting target, Cmd.none )

        ( Stop, Running target timer ) ->
            ( Paused target (Period.fromTimer timer), Cmd.none )

        ( Stop, Resuming target remaining ) ->
            ( Paused target remaining, Cmd.none )

        ( Stop, _ ) ->
            ( stage, Cmd.none )

        ( Reset, _ ) ->
            ( Waiting (stageToTarget stage), Alarm.stop )

        ( Tick now, Starting target ) ->
            ( Running target (startCountdown target now), Cmd.none )

        ( Tick now, Running target ( _, end ) ) ->
            if Time.Extra.lt end now then
                ( Finished target, Alarm.play )

            else
                ( Running target ( now, end ), Cmd.none )

        ( Tick now, Resuming target remaining ) ->
            ( Running target (startCountdown remaining now), Cmd.none )

        ( Tick _, _ ) ->
            ( stage, Cmd.none )


updateStartingTime : Period -> Stage -> ( Stage, Cmd Msg )
updateStartingTime target stage =
    if canStartTarget target then
        ( Starting target, Alarm.load )

    else
        ( stage, Cmd.none )


canStartTarget : Period -> Bool
canStartTarget target =
    Period.toMillis target // 1000 > 0


startCountdown : Period -> Time.Posix -> Timer
startCountdown period now =
    ( now, Time.Extra.add now (Period.toPosix period) )


updateEditMsg : EditMsg -> Stage -> Stage
updateEditMsg msg stage =
    case stage of
        Waiting duration ->
            let
                time : Time
                time =
                    periodToTime duration
            in
            case msg of
                SetHours newHours ->
                    Waiting (timeToPeriod { time | hours = newHours })

                SetMinutes newMinutes ->
                    Waiting (timeToPeriod { time | minutes = newMinutes })

                SetSeconds newSeconds ->
                    Waiting (timeToPeriod { time | seconds = newSeconds })

        _ ->
            stage


subscriptions : Model -> Sub Msg
subscriptions (Model _ stage) =
    case stage of
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
toSession (Model session _) =
    session



--- VIEW


view : Model -> Document Msg
view (Model _ stage) =
    { title = "Countdown"
    , body = Alarm.view :: viewBody stage
    }


viewBody : Stage -> List (Html Msg)
viewBody stage =
    [ Html.main_
        [ Attr.class Tw.flex_grow
        ]
        [ Html.div
            [ Attr.class Tw.container
            , Attr.class Tw.mx_auto
            , Attr.class Tw.p_3
            , Attr.class Tw.flex
            , Attr.class Tw.flex_col
            ]
            [ viewEditableTime stage
            , viewProgress stage
            ]
        ]
    , Html.footer
        [ Attr.class Tw.container
        , Attr.class Tw.mx_auto
        , Attr.class Tw.grid
        , Attr.class Tw.grid_cols_2
        , Attr.class Tw.gap_2
        , Attr.class Tw.text_xl
        , Attr.class Tw.leading_normal
        , Attr.class Tw.py_2
        ]
        [ viewStartStopButton stage
        , viewResetButton stage
        ]
    ]


viewEditableTime : Stage -> Html Msg
viewEditableTime stage =
    case stage of
        Waiting duration ->
            let
                { hours, minutes, seconds } =
                    periodToTime duration
            in
            Html.div
                [ Attr.class Tw.text_4xl
                , Attr.class Tw.font_mono
                , Attr.class Tw.self_center
                , Attr.class Tw.flex
                , Attr.class Tw.flex_row
                , Attr.class Tw.leading_none
                ]
                [ viewEditTimePart hours (GotEditMsg << SetHours)
                , Html.div [ Attr.class Tw.self_center ] [ Html.text ":" ]
                , viewEditTimePart minutes (GotEditMsg << SetMinutes)
                , Html.div [ Attr.class Tw.self_center ] [ Html.text ":" ]
                , viewEditTimePart seconds (GotEditMsg << SetSeconds)
                ]

        _ ->
            Html.p
                [ Attr.class Tw.text_4xl
                , Attr.class Tw.font_mono
                , Attr.class Tw.self_center
                , Attr.class Tw.leading_none
                , Attr.class Tw.py_4
                ]
                [ showRemainingTime stage ]


viewEditTimePart : Int -> (Int -> msg) -> Html msg
viewEditTimePart unit msg =
    Html.div
        [ Attr.class Tw.flex
        , Attr.class Tw.flex_col
        ]
        [ Html.div
            [ Attr.class Tw.text_base
            ]
            [ Html.button
                [ Attr.class Tw.w_full
                , Attr.class Tw.flex
                , Attr.class Tw.justify_center
                , Events.onClick (msg (unit + 1))
                , Attr.style "touch-action" "manipulation"
                ]
                [ Icons.chevronUp [ SvgAttr.class Tw.h_4, SvgAttr.class Tw.w_4 ] ]
            ]
        , Html.div []
            [ Html.text (pad00 unit) ]
        , Html.div
            [ Attr.class Tw.text_base
            ]
            [ Html.button
                [ Attr.class Tw.w_full
                , Attr.class Tw.flex
                , Attr.class Tw.justify_center
                , Events.onClick (msg (unit - 1))
                , Attr.style "touch-action" "manipulation"
                ]
                [ Icons.chevronDown [ SvgAttr.class Tw.h_4, SvgAttr.class Tw.w_4 ] ]
            ]
        ]


viewProgress : Stage -> Html Msg
viewProgress stage =
    let
        ( label, bgColor ) =
            mapStage
                { onWaiting = ( "Ready", Attr.class Tw.bg_gray_500 )
                , onRunning = ( "Go!", Attr.class Tw.bg_green_500 )
                , onPaused = ( "Paused", Attr.class Tw.bg_gray_500 )
                , onFinished = ( "Finished", Attr.class Tw.bg_red_500 )
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

    else if canStartTarget (stageToTarget stage) then
        viewStartButton

    else
        viewDisabledStartButton


viewStartButton : Html Msg
viewStartButton =
    Html.button
        (Attr.class Tw.hover__bg_green_600
            :: Button.attr
                { color = Attr.class Tw.bg_green_500
                , onClick = Just (GotStageMsg Start)
                }
        )
        [ Html.text "Start" ]


viewDisabledStartButton : Html Msg
viewDisabledStartButton =
    Html.button
        (Button.attr
            { color = Attr.class Tw.bg_green_500
            , onClick = Nothing
            }
        )
        [ Html.text "Start" ]


viewStopButton : Html Msg
viewStopButton =
    Html.button
        (Attr.class Tw.hover__bg_blue_600
            :: Button.attr
                { color = Attr.class Tw.bg_blue_500
                , onClick = Just (GotStageMsg Stop)
                }
        )
        [ Html.text "Stop" ]


viewResetButton : Stage -> Html Msg
viewResetButton stage =
    case stage of
        Waiting _ ->
            viewDisabledResetButton

        Finished _ ->
            viewRedResetButton

        _ ->
            viewGrayResetButton


viewDisabledResetButton : Html Msg
viewDisabledResetButton =
    Html.button
        (Button.attr
            { color = Attr.class Tw.bg_gray_500
            , onClick = Nothing
            }
        )
        [ Html.text "Reset" ]


viewGrayResetButton : Html Msg
viewGrayResetButton =
    Html.button
        (Attr.class Tw.hover__bg_red_600
            :: Button.attr
                { color = Attr.class Tw.bg_gray_500
                , onClick = Just (GotStageMsg Reset)
                }
        )
        [ Html.text "Reset" ]


viewRedResetButton : Html Msg
viewRedResetButton =
    Html.button
        (Attr.class Tw.hover__bg_red_600
            :: Button.attr
                { color = Attr.class Tw.bg_red_500
                , onClick = Just (GotStageMsg Reset)
                }
        )
        [ Html.text "Reset" ]


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
            onRunning (Period.fromTimer timer)

        Paused _ remaining ->
            onPaused remaining

        Resuming _ remaining ->
            onRunning remaining

        Finished _ ->
            onFinished (Period.millis 0)


showPeriodHuman : Period -> Html Msg
showPeriodHuman =
    showPeriod Period.toHuman


showPeriod : (Period -> String) -> Period -> Html Msg
showPeriod toString period =
    Html.time
        [ Attr.datetime (Period.toIso8601 period)
        , Attr.class Tw.select_all
        ]
        [ Html.text (toString period) ]



--- Period to Time


type alias Time =
    { hours : Int
    , minutes : Int
    , seconds : Int
    }


timeToPeriod : Time -> Period
timeToPeriod { hours, minutes, seconds } =
    Period.millis (max 0 (((hours * 60 + minutes) * 60 + seconds) * 1000))


periodToTime : Period -> Time
periodToTime period =
    let
        ms : Int
        ms =
            Period.toMillis period

        s : Int
        s =
            ms // 1000

        m : Int
        m =
            s // 60

        h : Int
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
