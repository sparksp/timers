module Page.Restwatch exposing (Model, Msg, init, subscriptions, toSession, update, view)

import Alarm
import Browser.Events
import Browser.Styled exposing (Document)
import Css
import Html.Styled as Html exposing (Html)
import Html.Styled.Attributes as Attr
import Html.Styled.Events as Events
import Menu
import Percent exposing (Percent, percent)
import Period exposing (Period, millis)
import Session exposing (Session)
import Svg.Icons as Icons
import Svg.Styled.Attributes as SvgAttr
import Tailwind.Theme as TwTheme
import Tailwind.Utilities as Tw
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
        [ Attr.css
            [ Tw.flex_grow
            , Tw.container
            , Tw.mx_auto
            , Tw.p_3
            , Tw.flex
            , Tw.flex_col
            ]
        ]
        [ Html.div
            [ Attr.css
                [ Tw.mt_4
                , Tw.flex
                , Tw.flex_col
                ]
            ]
            [ Html.div
                [ Attr.css
                    (fadeRunningAttr model.stage
                        ++ [ Tw.transition_colors
                           , Tw.duration_1000
                           , Tw.ease_out
                           , Tw.self_center
                           ]
                    )
                ]
                [ Html.p
                    [ Attr.css
                        [ Tw.text_left
                        ]
                    ]
                    [ Html.text "Activity" ]
                , Html.p
                    [ Attr.css
                        [ Tw.text_4xl
                        , Tw.leading_normal
                        , Tw.font_mono
                        , Tw.select_all
                        ]
                    ]
                    [ showRunningTime model ]
                ]
            , Html.div
                [ Attr.css
                    (fadeRestingAttr model.stage
                        ++ [ Tw.transition_colors
                           , Tw.duration_1000
                           , Tw.ease_out
                           , Tw.self_center
                           , Tw.relative
                           ]
                    )
                ]
                [ Html.button [ Events.onClick (ShowRest (Menu.toggle model.showRest)) ]
                    [ Html.div
                        [ Attr.css
                            [ Tw.flex
                            , Tw.items_center
                            ]
                        ]
                        [ Html.p
                            [ Attr.css
                                [ Tw.text_left
                                ]
                            ]
                            [ Html.text ("Rest (" ++ Percent.toString model.rest ++ ")")
                            ]
                        , Icons.cog
                            [ SvgAttr.css
                                [ Tw.w_4
                                , Tw.h_4
                                , Tw.ml_2
                                ]
                            ]
                        ]
                    , Html.p
                        [ Attr.css
                            [ Tw.text_4xl
                            , Tw.leading_normal
                            , Tw.font_mono
                            ]
                        ]
                        [ showRestingTime model ]
                    ]
                , viewRestMenu model
                ]
            ]
        , viewProgress model
        ]
    , Html.footer
        [ Attr.css
            [ Tw.container
            , Tw.mx_auto
            , Tw.grid
            , Tw.grid_cols_2
            , Tw.gap_2
            , Tw.text_xl
            , Tw.leading_normal
            , Tw.py_2
            ]
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
                [ Attr.css
                    [ Tw.z_10
                    , Tw.fixed
                    , Tw.inset_0
                    ]
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
                        [ Attr.css
                            [ Tw.w_full
                            , Tw.py_1
                            , Tw.bg_color TwTheme.orange_500
                            , Tw.text_color TwTheme.white
                            ]
                        ]
                        [ Html.text (String.fromInt pc ++ "%") ]

                else
                    Html.button
                        [ Attr.css
                            [ Tw.w_full
                            , Tw.py_1
                            , Tw.bg_color TwTheme.white
                            , Css.hover [ Tw.bg_color TwTheme.gray_200 ]
                            ]
                        , Events.onClick (SetRest (percent pc))
                        ]
                        [ Html.text (String.fromInt pc ++ "%") ]
            )
        |> Html.div
            [ Attr.css
                [ Tw.w_full
                , Tw.absolute
                , Tw.z_10
                , Tw.text_xl
                , Tw.leading_normal
                , Tw.text_color TwTheme.black
                , Tw.bg_color TwTheme.gray_400
                , Tw.border_color TwTheme.gray_700
                , Tw.border
                , Tw.divide_y
                , Tw.shadow_lg
                ]
            ]


viewProgress : { a | rest : Percent, stage : Stage } -> Html Msg
viewProgress state =
    let
        ( label, bgColor ) =
            mapStage
                { onWaiting = ( "Get Ready!", Tw.bg_color TwTheme.gray_500 )
                , onRunning = ( "Go!", Tw.bg_color TwTheme.green_600 )
                , onResting = ( "Rest...", Tw.bg_color TwTheme.orange_600 )
                , onFinished = ( "Finished", Tw.bg_color TwTheme.red_600 )
                }
                state.stage
    in
    calculateProgress state
        |> Progress.view [ Attr.css [ bgColor ] ] [ Html.text label ]


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
        (Attr.css [ Css.hover [ Tw.bg_color TwTheme.green_600 ] ]
            :: Button.attr
                { color = Tw.bg_color TwTheme.green_500
                , onClick = Just (StageMsg Start)
                }
        )
        [ Html.text "Start" ]


viewRestButton : Html Msg
viewRestButton =
    Html.button
        (Attr.css [ Css.hover [ Tw.bg_color TwTheme.orange_600 ] ]
            :: Button.attr
                { color = Tw.bg_color TwTheme.orange_500
                , onClick = Just (StageMsg Rest)
                }
        )
        [ Html.text "Rest" ]


viewPauseButton : Html Msg
viewPauseButton =
    Html.button
        (Attr.css [ Css.hover [ Tw.bg_color TwTheme.blue_600 ] ]
            :: Button.attr
                { color = Tw.bg_color TwTheme.blue_500
                , onClick = Just (StageMsg Pause)
                }
        )
        [ Html.text "Pause" ]


viewDisabledResetButton : Html Msg
viewDisabledResetButton =
    Html.button
        (Button.attr
            { color = Tw.bg_color TwTheme.gray_500
            , onClick = Nothing
            }
        )
        [ Html.text "Reset" ]


viewRedResetButton : Html Msg
viewRedResetButton =
    Html.button
        (Attr.css [ Css.hover [ Tw.bg_color TwTheme.red_600 ] ]
            :: Button.attr
                { color = Tw.bg_color TwTheme.red_500
                , onClick = Just (StageMsg Reset)
                }
        )
        [ Html.text "Reset" ]


viewGrayResetButton : Html Msg
viewGrayResetButton =
    Html.button
        (Attr.css [ Css.hover [ Tw.bg_color TwTheme.red_600 ] ]
            :: Button.attr
                { color = Tw.bg_color TwTheme.gray_500
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


fadeRunningAttr : Stage -> List Css.Style
fadeRunningAttr =
    let
        stages : StageMaps (List Css.Style)
        stages =
            allStages []
    in
    mapStage
        { stages
            | onResting = [ Tw.text_color TwTheme.gray_600 ]
        }


fadeRestingAttr : Stage -> List Css.Style
fadeRestingAttr =
    mapStage
        { onWaiting = [ Tw.text_color TwTheme.gray_600 ]
        , onRunning = [ Tw.text_color TwTheme.gray_600 ]
        , onResting = []
        , onFinished = []
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


showPeriod : Period -> Html msg
showPeriod period =
    Html.time [ Attr.datetime (Period.toIso8601 period) ] [ Html.text (Period.toHuman period) ]
