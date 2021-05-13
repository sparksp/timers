module Page.Restwatch exposing (Model, Msg, init, subscriptions, toSession, update, view)

import Alarm
import Browser exposing (Document)
import Browser.Events
import Html exposing (Html)
import Html.Attributes as Attr
import Html.Events as Events
import Menu
import Percent exposing (Percent, percent)
import Period exposing (Period, millis)
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
    = Model Session Internals


type alias Internals =
    { rest : Percent
    , showRest : Menu.State
    , stage : Stage
    }


type Stage
    = Clear
    | Starting
    | Running Timer
    | Resting Period Timer
    | Finished Period
    | PausedRunning Timer
    | ResumeRunning Timer
    | PausedResting Period Timer
    | ResumeResting Period Timer


type Msg
    = SetRest Percent
    | ShowRest Menu.State
    | StageMsg StageMsg


type StageMsg
    = Start
    | Rest
    | Pause
    | Reset
    | Tick Time.Posix


init : Session -> ( Model, Cmd Msg )
init session =
    ( Model session
        { rest = percent 100
        , showRest = Menu.Closed
        , stage = Clear
        }
    , Cmd.none
    )


update : Msg -> Model -> ( Model, Cmd Msg )
update msg (Model session model) =
    case msg of
        StageMsg stageMsg ->
            updateStageMsg stageMsg model.rest model.stage
                |> Tuple.mapFirst (\stage -> Model session { model | stage = stage })

        SetRest newRest ->
            ( Model session
                { rest = newRest
                , showRest = Menu.Closed
                , stage = getStageWithNewRest ( model.rest, newRest ) model.stage
                }
            , Cmd.none
            )

        ShowRest state ->
            ( Model session { model | showRest = state }, Cmd.none )


updateStageMsg : StageMsg -> Percent -> Stage -> ( Stage, Cmd Msg )
updateStageMsg msg rest stage =
    case ( msg, stage ) of
        ( Start, Clear ) ->
            ( Starting, Alarm.load )

        ( Start, PausedRunning timer ) ->
            ( ResumeRunning timer, Alarm.load )

        ( Start, Finished _ ) ->
            ( Starting, Alarm.load )

        ( Start, _ ) ->
            ( stage, Cmd.none )

        ( Rest, Clear ) ->
            ( Clear, Cmd.none )

        ( Rest, Starting ) ->
            ( Clear, Cmd.none )

        ( Rest, Running (( _, end ) as timer) ) ->
            let
                period : Period
                period =
                    Period.fromTimer timer

                target : Timer
                target =
                    timerShiftEnd rest end timer
            in
            ( Resting period target, Cmd.none )

        ( Rest, PausedRunning (( _, end ) as timer) ) ->
            let
                period : Period
                period =
                    Period.fromTimer timer

                target : Timer
                target =
                    timerShiftEnd rest end timer
            in
            ( ResumeResting period target, Cmd.none )

        ( Rest, ResumeRunning timer ) ->
            let
                period : Period
                period =
                    Period.fromTimer timer
            in
            ( ResumeResting period timer, Cmd.none )

        ( Rest, PausedResting period timer ) ->
            ( ResumeResting period timer, Cmd.none )

        ( Rest, _ ) ->
            ( stage, Cmd.none )

        ( Pause, Starting ) ->
            ( Clear, Cmd.none )

        ( Pause, Running timer ) ->
            ( PausedRunning timer, Cmd.none )

        ( Pause, Resting period timer ) ->
            ( PausedResting period timer, Cmd.none )

        ( Pause, ResumeRunning timer ) ->
            ( PausedRunning timer, Cmd.none )

        ( Pause, ResumeResting period timer ) ->
            ( PausedResting period timer, Cmd.none )

        ( Pause, _ ) ->
            ( stage, Cmd.none )

        ( Reset, _ ) ->
            ( Clear, Alarm.stop )

        ( Tick now, Starting ) ->
            ( Running ( now, now ), Cmd.none )

        ( Tick now, Running ( start, _ ) ) ->
            ( Running ( start, now ), Cmd.none )

        ( Tick now, ResumeRunning timer ) ->
            ( Running (timerShiftStart now timer), Cmd.none )

        ( Tick now, Resting period ( _, target ) ) ->
            if Time.Extra.lt target now then
                ( Finished period, Alarm.play )

            else
                ( Resting period ( now, target ), Cmd.none )

        ( Tick now, ResumeResting period timer ) ->
            ( Resting period (timerShiftEnd (percent 100) now timer), Cmd.none )

        ( Tick _, _ ) ->
            ( stage, Cmd.none )


getStageWithNewRest : ( Percent, Percent ) -> Stage -> Stage
getStageWithNewRest rests stage =
    case stage of
        Resting period timer ->
            getNewTargetWithNewRest rests Resting period timer

        PausedResting period timer ->
            getNewTargetWithNewRest rests PausedResting period timer

        ResumeResting period timer ->
            getNewTargetWithNewRest rests ResumeResting period timer

        _ ->
            stage


getNewTargetWithNewRest : ( Percent, Percent ) -> (Period -> Timer -> Stage) -> Period -> Timer -> Stage
getNewTargetWithNewRest ( oldRest, newRest ) stage period ( now, target ) =
    let
        start : Float
        start =
            toFloat (Time.posixToMillis target) - (Percent.toFloat oldRest * Period.toMillisFloat period)

        newTarget : Time.Posix
        newTarget =
            Time.millisToPosix (round (start + (Period.toMillisFloat period * Percent.toFloat newRest)))
    in
    stage period ( Time.Extra.min now newTarget, newTarget )


timerShiftStart : Time.Posix -> Timer -> Timer
timerShiftStart now ( start, end ) =
    ( Time.Extra.add start (Time.Extra.sub now end), now )


timerShiftEnd : Percent -> Time.Posix -> Timer -> Timer
timerShiftEnd rest now ( start, end ) =
    let
        elapsed : Time.Posix
        elapsed =
            Time.Extra.sub end start

        resting : Time.Posix
        resting =
            Time.Extra.mul (Percent.toFloat rest) elapsed
    in
    ( now, Time.Extra.add now resting )


subscriptions : Model -> Sub Msg
subscriptions (Model _ { stage }) =
    case stage of
        Starting ->
            Browser.Events.onAnimationFrame (StageMsg << Tick)

        ResumeRunning _ ->
            Browser.Events.onAnimationFrame (StageMsg << Tick)

        ResumeResting _ _ ->
            Browser.Events.onAnimationFrame (StageMsg << Tick)

        Running _ ->
            Browser.Events.onAnimationFrame (StageMsg << Tick)

        Resting _ _ ->
            Browser.Events.onAnimationFrame (StageMsg << Tick)

        _ ->
            Sub.none


toSession : Model -> Session
toSession (Model session _) =
    session



--- VIEW


view : Model -> Document Msg
view (Model _ model) =
    { title = "Restwatch"
    , body = Alarm.view :: viewRestMenuOverlay model.showRest :: viewBody model
    }


viewBody : Internals -> List (Html Msg)
viewBody model =
    [ Html.main_
        [ Attr.class Tw.flex_grow
        , Attr.class Tw.container
        , Attr.class Tw.mx_auto
        , Attr.class Tw.p_3
        , Attr.class Tw.flex
        , Attr.class Tw.flex_col
        ]
        [ Html.div
            [ Attr.class Tw.mt_4
            , Attr.class Tw.flex
            , Attr.class Tw.flex_col
            ]
            [ Html.div
                [ fadeRunningAttr model.stage
                , Attr.class Tw.transition_colors
                , Attr.class Tw.duration_1000
                , Attr.class Tw.ease_out
                , Attr.class Tw.self_center
                ]
                [ Html.p
                    [ Attr.class Tw.text_left
                    ]
                    [ Html.text "Activity" ]
                , Html.p
                    [ Attr.class Tw.text_4xl
                    , Attr.class Tw.leading_normal
                    , Attr.class Tw.font_mono
                    , Attr.class Tw.select_all
                    ]
                    [ showRunningTime model ]
                ]
            , Html.div
                [ fadeRestingAttr model.stage
                , Attr.class Tw.transition_colors
                , Attr.class Tw.duration_1000
                , Attr.class Tw.ease_out
                , Attr.class Tw.self_center
                , Attr.class Tw.relative
                ]
                [ Html.button [ Events.onClick (ShowRest (Menu.toggle model.showRest)) ]
                    [ Html.div
                        [ Attr.class Tw.flex
                        , Attr.class Tw.items_center
                        ]
                        [ Html.p
                            [ Attr.class Tw.text_left
                            ]
                            [ Html.text ("Rest (" ++ Percent.toString model.rest ++ ")")
                            ]
                        , Icons.cog [ SvgAttr.class Tw.w_4, SvgAttr.class Tw.h_4, SvgAttr.class Tw.ml_2 ]
                        ]
                    , Html.p
                        [ Attr.class Tw.text_4xl
                        , Attr.class Tw.leading_normal
                        , Attr.class Tw.font_mono
                        ]
                        [ showRestingTime model ]
                    ]
                , viewRestMenu model
                ]
            ]
        , viewProgress model
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
        [ viewStartRestButton model.stage
        , viewResetButton model.stage
        ]
    ]


viewRestMenuOverlay : Menu.State -> Html Msg
viewRestMenuOverlay showRest =
    case showRest of
        Menu.Opened ->
            Html.div
                [ Attr.class Tw.z_10
                , Attr.class Tw.fixed
                , Attr.class Tw.inset_0
                , Events.onClick (ShowRest Menu.Closed)
                ]
                []

        Menu.Closed ->
            Html.text ""


viewRestMenu : { a | rest : Percent, showRest : Menu.State } -> Html Msg
viewRestMenu { rest, showRest } =
    case showRest of
        Menu.Opened ->
            viewOpenRestMenu rest

        Menu.Closed ->
            Html.text ""


viewOpenRestMenu : Percent -> Html Msg
viewOpenRestMenu rest =
    [ 25, 50, 75, 100, 150, 200 ]
        |> List.map
            (\pc ->
                if pc == Percent.toInt rest then
                    Html.button
                        [ Attr.class Tw.w_full
                        , Attr.class Tw.py_1
                        , Attr.class Tw.bg_orange_500
                        , Attr.class Tw.text_white
                        ]
                        [ Html.text (String.fromInt pc ++ "%") ]

                else
                    Html.button
                        [ Attr.class Tw.w_full
                        , Attr.class Tw.py_1
                        , Attr.class Tw.bg_white
                        , Attr.class Tw.hover__bg_gray_200
                        , Events.onClick (SetRest (percent pc))
                        ]
                        [ Html.text (String.fromInt pc ++ "%") ]
            )
        |> Html.div
            [ Attr.class Tw.w_full
            , Attr.class Tw.absolute
            , Attr.class Tw.z_10
            , Attr.class Tw.text_xl
            , Attr.class Tw.leading_normal
            , Attr.class Tw.text_black
            , Attr.class Tw.bg_gray_400
            , Attr.class Tw.border_gray_700
            , Attr.class Tw.border
            , Attr.class Tw.divide_y
            , Attr.class Tw.shadow_lg
            ]


viewProgress : { a | rest : Percent, stage : Stage } -> Html Msg
viewProgress state =
    let
        ( label, bgColor ) =
            mapStage
                { onWaiting =
                    ( "Get Ready!", Attr.class Tw.bg_gray_500 )
                , onRunning =
                    ( "Go!", Attr.class Tw.bg_green_600 )
                , onResting =
                    ( "Rest...", Attr.class Tw.bg_orange_600 )
                , onFinished =
                    ( "Finished", Attr.class Tw.bg_red_600 )
                }
                state.stage
    in
    calculateProgress state
        |> Progress.view [ bgColor ] [ Html.text label ]


calculateProgress : { a | rest : Percent, stage : Stage } -> Float
calculateProgress =
    mapRestingPeriods
        { onWaiting = calculateProgress_
        , onRunning = calculateProgress_
        , onResting = calculateProgress_
        , onFinished = \_ -> 100
        }


calculateProgress_ : ( Period, Period ) -> Float
calculateProgress_ ( target, current ) =
    if target == current then
        100

    else
        Period.toMillisFloat current / Period.toMillisFloat target * 100


viewStartRestButton : Stage -> Html Msg
viewStartRestButton stage =
    case stage of
        Clear ->
            viewStartButton

        Starting ->
            viewRestButton

        Running _ ->
            viewRestButton

        PausedRunning _ ->
            viewRestButton

        ResumeRunning _ ->
            viewRestButton

        Resting _ _ ->
            viewPauseButton

        PausedResting _ _ ->
            viewRestButton

        ResumeResting _ _ ->
            viewPauseButton

        Finished _ ->
            viewStartButton


viewResetButton : Stage -> Html Msg
viewResetButton stage =
    case stage of
        Clear ->
            viewDisabledResetButton

        Finished _ ->
            viewRedResetButton

        _ ->
            viewGrayResetButton


viewStartButton : Html Msg
viewStartButton =
    Html.button
        (Attr.class Tw.hover__bg_green_600
            :: Button.attr
                { color = Attr.class Tw.bg_green_500
                , onClick = Just (StageMsg Start)
                }
        )
        [ Html.text "Start" ]


viewRestButton : Html Msg
viewRestButton =
    Html.button
        (Attr.class Tw.hover__bg_orange_600
            :: Button.attr
                { color = Attr.class Tw.bg_orange_500
                , onClick = Just (StageMsg Rest)
                }
        )
        [ Html.text "Rest" ]


viewPauseButton : Html Msg
viewPauseButton =
    Html.button
        (Attr.class Tw.hover__bg_blue_600
            :: Button.attr
                { color = Attr.class Tw.bg_blue_500
                , onClick = Just (StageMsg Pause)
                }
        )
        [ Html.text "Pause" ]


viewDisabledResetButton : Html Msg
viewDisabledResetButton =
    Html.button
        (Button.attr
            { color = Attr.class Tw.bg_gray_500
            , onClick = Nothing
            }
        )
        [ Html.text "Reset" ]


viewRedResetButton : Html Msg
viewRedResetButton =
    Html.button
        (Attr.class Tw.hover__bg_red_600
            :: Button.attr
                { color = Attr.class Tw.bg_red_500
                , onClick = Just (StageMsg Reset)
                }
        )
        [ Html.text "Reset" ]


viewGrayResetButton : Html Msg
viewGrayResetButton =
    Html.button
        (Attr.class Tw.hover__bg_red_600
            :: Button.attr
                { color = Attr.class Tw.bg_gray_500
                , onClick = Just (StageMsg Reset)
                }
        )
        [ Html.text "Reset" ]


showRunningTime : { a | stage : Stage } -> Html Msg
showRunningTime =
    mapRunningTime (allStages showPeriod)


showRestingTime : { a | rest : Percent, stage : Stage } -> Html Msg
showRestingTime =
    mapRestingTime (allStages showPeriod)


fadeRunningAttr : Stage -> Html.Attribute Msg
fadeRunningAttr =
    let
        stages : StageMaps (Html.Attribute msg)
        stages =
            allStages (Attr.class "")
    in
    mapStage
        { stages
            | onResting = Attr.class Tw.text_gray_600
        }


fadeRestingAttr : Stage -> Html.Attribute Msg
fadeRestingAttr =
    mapStage
        { onWaiting = Attr.class Tw.text_gray_600
        , onRunning = Attr.class Tw.text_gray_600
        , onResting = Attr.class ""
        , onFinished = Attr.class ""
        }


type alias StageMaps value =
    { onWaiting : value
    , onRunning : value
    , onResting : value
    , onFinished : value
    }


allStages : value -> StageMaps value
allStages value =
    { onWaiting = value
    , onRunning = value
    , onResting = value
    , onFinished = value
    }


mapStage : StageMaps value -> Stage -> value
mapStage { onWaiting, onRunning, onResting, onFinished } stage =
    case stage of
        Clear ->
            onWaiting

        Starting ->
            onRunning

        Running _ ->
            onRunning

        PausedRunning _ ->
            onRunning

        ResumeRunning _ ->
            onRunning

        Resting _ _ ->
            onResting

        PausedResting _ _ ->
            onResting

        ResumeResting _ _ ->
            onResting

        Finished _ ->
            onFinished


mapRunningTime : StageMaps (Period -> value) -> { a | stage : Stage } -> value
mapRunningTime { onWaiting, onRunning, onResting, onFinished } { stage } =
    case stage of
        Clear ->
            onWaiting (millis 0)

        Starting ->
            onRunning (millis 0)

        Running timer ->
            onRunning (Period.fromTimer timer)

        PausedRunning timer ->
            onRunning (Period.fromTimer timer)

        ResumeRunning timer ->
            onRunning (Period.fromTimer timer)

        Resting period _ ->
            onResting period

        PausedResting period _ ->
            onResting period

        ResumeResting period _ ->
            onResting period

        Finished period ->
            onFinished period


mapRestingTime : StageMaps (Period -> value) -> { a | rest : Percent, stage : Stage } -> value
mapRestingTime { onWaiting, onRunning, onResting, onFinished } =
    mapRestingPeriods
        { onWaiting = onWaiting << Tuple.second
        , onRunning = onRunning << Tuple.second
        , onResting = onResting << Tuple.second
        , onFinished = onFinished << Tuple.second
        }


type alias Periods =
    ( Period, Period )


mapRestingPeriods : StageMaps (Periods -> value) -> { a | rest : Percent, stage : Stage } -> value
mapRestingPeriods { onWaiting, onRunning, onResting, onFinished } { rest, stage } =
    case stage of
        Clear ->
            onWaiting ( millis 0, millis 0 )

        Starting ->
            onRunning ( millis 0, millis 0 )

        Running timer ->
            onRunning (double (periodPercent rest (Period.fromTimer timer)))

        PausedRunning timer ->
            onRunning (double (periodPercent rest (Period.fromTimer timer)))

        ResumeRunning timer ->
            onRunning (double (periodPercent rest (Period.fromTimer timer)))

        Resting period timer ->
            onResting ( periodPercent rest period, Period.fromTimer timer )

        PausedResting period timer ->
            onResting ( periodPercent rest period, Period.fromTimer timer )

        ResumeResting period timer ->
            onResting ( periodPercent rest period, Period.fromTimer timer )

        Finished period ->
            onFinished ( periodPercent rest period, millis 0 )


double : a -> ( a, a )
double a =
    ( a, a )


periodPercent : Percent -> Period -> Period
periodPercent rest period =
    Period.mul (Percent.toFloat rest) period


showPeriod : Period -> Html Msg
showPeriod period =
    Html.time [ Attr.datetime (Period.toIso8601 period) ] [ Html.text (Period.toHuman period) ]
