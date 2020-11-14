module Page.Restwatch exposing (Model, Msg, init, subscriptions, toSession, update, view)

import Alarm
import Browser exposing (Document)
import Browser.Events
import Html exposing (Html)
import Html.Attributes as A
import Html.Events as Events
import Html.Tailwind as TW
import Menu
import Percent exposing (Percent, percent)
import Period exposing (Period, millis)
import Session exposing (Session)
import Svg.Icons as Icons
import Svg.Tailwind as SvgTW
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
    [ Html.main_ [ TW.flex_grow, TW.container, TW.mx_auto, TW.p_3, TW.flex, TW.flex_col ]
        [ Html.div [ TW.mt_4, TW.flex, TW.flex_col ]
            [ Html.div [ fadeRunningAttr model.stage, TW.transition_colors, TW.duration_1000, TW.ease_out, TW.self_center ]
                [ Html.p [ TW.text_left ] [ Html.text "Activity" ]
                , Html.p [ TW.text_4xl, TW.leading_normal, TW.font_mono, TW.select_all ] [ showRunningTime model ]
                ]
            , Html.div [ fadeRestingAttr model.stage, TW.transition_colors, TW.duration_1000, TW.ease_out, TW.self_center, TW.relative ]
                [ Html.button [ Events.onClick (ShowRest (Menu.toggle model.showRest)) ]
                    [ Html.div [ TW.flex, TW.items_center ]
                        [ Html.p [ TW.text_left ]
                            [ Html.text ("Rest (" ++ Percent.toString model.rest ++ ")")
                            ]
                        , Icons.cog [ SvgTW.w_4, SvgTW.h_4, SvgTW.ml_2 ]
                        ]
                    , Html.p [ TW.text_4xl, TW.leading_normal, TW.font_mono ] [ showRestingTime model ]
                    ]
                , viewRestMenu model
                ]
            ]
        , viewProgress model
        ]
    , Html.footer [ TW.container, TW.mx_auto, TW.grid, TW.grid_cols_2, TW.gap_2, TW.text_xl, TW.leading_normal, TW.py_2 ]
        [ viewStartRestButton model.stage
        , viewResetButton model.stage
        ]
    ]


viewRestMenuOverlay : Menu.State -> Html Msg
viewRestMenuOverlay showRest =
    case showRest of
        Menu.Opened ->
            Html.div [ TW.z_10, TW.fixed, TW.inset_0, Events.onClick (ShowRest Menu.Closed) ] []

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
                    Html.button [ TW.w_full, TW.py_1, TW.bg_orange_500, TW.text_white ] [ Html.text (String.fromInt pc ++ "%") ]

                else
                    Html.button [ TW.w_full, TW.py_1, TW.bg_white, TW.hover__bg_gray_200, Events.onClick (SetRest (percent pc)) ] [ Html.text (String.fromInt pc ++ "%") ]
            )
        |> Html.div [ TW.w_full, TW.absolute, TW.z_10, TW.text_xl, TW.leading_normal, TW.text_black, TW.bg_gray_400, TW.border_gray_700, TW.border, TW.divide_y, TW.shadow_lg ]


viewProgress : { a | rest : Percent, stage : Stage } -> Html Msg
viewProgress state =
    let
        ( label, bgColor ) =
            mapStage
                { onWaiting = ( "Get Ready!", TW.bg_gray_500 )
                , onRunning = ( "Go!", TW.bg_green_600 )
                , onResting = ( "Rest...", TW.bg_orange_600 )
                , onFinished = ( "Finished", TW.bg_red_600 )
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
    Html.button (TW.hover__bg_green_600 :: Button.attr { color = TW.bg_green_500, onClick = Just (StageMsg Start) }) [ Html.text "Start" ]


viewRestButton : Html Msg
viewRestButton =
    Html.button (TW.hover__bg_orange_600 :: Button.attr { color = TW.bg_orange_500, onClick = Just (StageMsg Rest) }) [ Html.text "Rest" ]


viewPauseButton : Html Msg
viewPauseButton =
    Html.button (TW.hover__bg_blue_600 :: Button.attr { color = TW.bg_blue_500, onClick = Just (StageMsg Pause) }) [ Html.text "Pause" ]


viewDisabledResetButton : Html Msg
viewDisabledResetButton =
    Html.button (Button.attr { color = TW.bg_gray_500, onClick = Nothing }) [ Html.text "Reset" ]


viewRedResetButton : Html Msg
viewRedResetButton =
    Html.button (TW.hover__bg_red_600 :: Button.attr { color = TW.bg_red_500, onClick = Just (StageMsg Reset) }) [ Html.text "Reset" ]


viewGrayResetButton : Html Msg
viewGrayResetButton =
    Html.button (TW.hover__bg_red_600 :: Button.attr { color = TW.bg_gray_500, onClick = Just (StageMsg Reset) }) [ Html.text "Reset" ]


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
            allStages (A.class "")
    in
    mapStage { stages | onResting = TW.text_gray_600 }


fadeRestingAttr : Stage -> Html.Attribute Msg
fadeRestingAttr =
    mapStage
        { onWaiting = TW.text_gray_600
        , onRunning = TW.text_gray_600
        , onResting = A.class ""
        , onFinished = A.class ""
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
    Html.time [ A.datetime (Period.toIso8601 period) ] [ Html.text (Period.toHuman period) ]
