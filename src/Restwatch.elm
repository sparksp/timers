port module Restwatch exposing (Model, Msg, init, subscriptions, update, view)

import Browser exposing (Document)
import Browser.Events
import Html exposing (Html)
import Html.Attributes as A
import Html.Events as Events
import Json.Encode as E
import Period exposing (Period(..))
import Tailwind as TW
import Task
import Time
import Time.Extra
import Timer exposing (Timer)


port alarm : E.Value -> Cmd msg


type Model
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
    = Start
    | Rest
    | Pause
    | Reset
    | Tick Time.Posix


init : () -> ( Model, Cmd Msg )
init _ =
    ( Clear, Cmd.none )


loadAlarm : Cmd Msg
loadAlarm =
    alarm (E.string "load")


playAlarm : Cmd Msg
playAlarm =
    alarm (E.string "play")


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case ( msg, model ) of
        ( Start, Clear ) ->
            ( Starting, loadAlarm )

        ( Start, PausedRunning timer ) ->
            ( ResumeRunning timer, loadAlarm )

        ( Start, Finished _ ) ->
            ( Starting, loadAlarm )

        ( Start, _ ) ->
            ( model, Cmd.none )

        ( Rest, Clear ) ->
            ( Clear, Cmd.none )

        ( Rest, Starting ) ->
            ( Clear, Cmd.none )

        ( Rest, Running (( _, end ) as timer) ) ->
            let
                period =
                    Period.fromTimer timer

                target =
                    timerShiftEnd end timer
            in
            ( Resting period target, Cmd.none )

        ( Rest, PausedRunning (( _, end ) as timer) ) ->
            let
                period =
                    Period.fromTimer timer

                target =
                    timerShiftEnd end timer
            in
            ( ResumeResting period target, Cmd.none )

        ( Rest, ResumeRunning (( _, end ) as timer) ) ->
            let
                period =
                    Period.fromTimer timer

                target =
                    timerShiftEnd end timer
            in
            ( ResumeResting period timer, Cmd.none )

        ( Rest, PausedResting period timer ) ->
            ( ResumeResting period timer, Cmd.none )

        ( Rest, _ ) ->
            ( model, Cmd.none )

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
            ( model, Cmd.none )

        ( Reset, _ ) ->
            ( Clear, loadAlarm )

        ( Tick now, Starting ) ->
            ( Running ( now, now ), Cmd.none )

        ( Tick now, Running ( start, _ ) ) ->
            ( Running ( start, now ), Cmd.none )

        ( Tick now, ResumeRunning timer ) ->
            ( Running <| timerShiftStart now timer, Cmd.none )

        ( Tick now, Resting period ( _, target ) ) ->
            if Time.Extra.lt target now then
                ( Finished period, playAlarm )

            else
                ( Resting period ( now, target ), Cmd.none )

        ( Tick now, ResumeResting period timer ) ->
            ( Resting period <| timerShiftEnd now timer, Cmd.none )

        ( Tick _, _ ) ->
            ( model, Cmd.none )


timerShiftStart : Time.Posix -> Timer -> Timer
timerShiftStart now ( start, end ) =
    ( Time.Extra.add start <| Time.Extra.sub now end, now )


timerShiftEnd : Time.Posix -> Timer -> Timer
timerShiftEnd now ( start, end ) =
    ( now, Time.Extra.add now <| Time.Extra.sub end start )


subscriptions : Model -> Sub Msg
subscriptions model =
    case model of
        Starting ->
            Browser.Events.onAnimationFrame Tick

        ResumeRunning _ ->
            Browser.Events.onAnimationFrame Tick

        ResumeResting _ _ ->
            Browser.Events.onAnimationFrame Tick

        Running _ ->
            Browser.Events.onAnimationFrame Tick

        Resting _ _ ->
            Browser.Events.onAnimationFrame Tick

        _ ->
            Sub.none



--- VIEW


view : Model -> Document Msg
view model =
    { title = "Restwatch"
    , body = [ viewAudio, viewBody model ]
    }


viewBody : Model -> Html Msg
viewBody model =
    Html.div [ TW.container, TW.mx_auto, TW.h_screen, TW.p_3, TW.flex, TW.flex_col, TW.justify_between ]
        [ Html.div []
            [ viewTitle
            , Html.div [ TW.mt_4, TW.flex, TW.flex_col ]
                [ Html.div [ fadeRunningAttr model, TW.self_center ]
                    [ Html.p [] [ Html.text "Activity" ]
                    , Html.p [ TW.text_4xl, TW.font_mono ] [ showRunningTime model ]
                    ]
                , Html.div [ fadeRestingAttr model, TW.self_center ]
                    [ Html.p [] [ Html.text "Rest" ]
                    , Html.p [ TW.text_4xl, TW.font_mono ] [ showRestingTime model ]
                    ]
                ]
            , viewProgress model
            ]
        , Html.div [ TW.grid, TW.grid_cols_2, TW.gap_4, TW.text_xl ]
            [ viewStartRestButton model
            , viewPauseResetButton model
            ]
        ]


viewTitle : Html Msg
viewTitle =
    Html.h1 [ TW.font_bold, TW.text_3xl, TW.text_center ] [ Html.text "Restwatch (1:1)" ]


viewAudio : Html Msg
viewAudio =
    Html.audio [ A.id "alarm", A.controls False ]
        [ Html.source [ A.src "/audio/analog-watch-alarm_daniel-simion.mp3" ] []
        , Html.source [ A.src "/audio/analog-watch-alarm_daniel-simion.wav" ] []
        ]


viewProgress : Model -> Html Msg
viewProgress model =
    let
        percent =
            mapRestingPeriods
                { onWaiting = always 100
                , onRunning = calculateProgress
                , onResting = calculateProgress
                , onFinished = always 100
                }
                model

        label =
            mapRestingTime
                { onWaiting = always "Get Ready!"
                , onRunning = always "Go!"
                , onResting = always "Rest..."
                , onFinished = always "Finished"
                }
                model

        bg_color =
            mapRestingTime
                { onWaiting = always TW.bg_gray_500
                , onRunning = always TW.bg_green_600
                , onResting = always TW.bg_orange_600
                , onFinished = always TW.bg_red_600
                }
                model
    in
    Html.div [ TW.w_full, TW.bg_gray_300, TW.my_2 ]
        [ Html.div [ bg_color, TW.leading_none, TW.py_2, TW.text_center, TW.text_white, progress percent ] [ Html.text label ] ]


progress : Float -> Html.Attribute Msg
progress percent =
    A.style "width" (String.fromFloat percent ++ "%")


calculateProgress : ( Period, Period ) -> Float
calculateProgress ( target, current ) =
    if target == current then
        100

    else
        Period.toMillisFloat current / Period.toMillisFloat target * 100


viewStartRestButton : Model -> Html Msg
viewStartRestButton model =
    case model of
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
            viewDisabledRestButton

        PausedResting _ _ ->
            viewRestButton

        ResumeResting _ _ ->
            viewDisabledRestButton

        Finished _ ->
            viewStartButton


viewPauseResetButton : Model -> Html Msg
viewPauseResetButton model =
    case model of
        Clear ->
            viewDisabledResetButton

        Starting ->
            viewDisabledResetButton

        Running _ ->
            viewPauseButton

        Resting _ _ ->
            viewPauseButton

        Finished _ ->
            viewResetButton

        PausedRunning _ ->
            viewResetButton

        ResumeRunning _ ->
            viewPauseButton

        PausedResting _ _ ->
            viewResetButton

        ResumeResting _ _ ->
            viewPauseButton


buttonAttr : List (Html.Attribute Msg)
buttonAttr =
    [ TW.text_white, TW.font_bold, TW.py_2, TW.px_4, TW.m_2, TW.rounded ]


disabledButtonAttr : List (Html.Attribute Msg)
disabledButtonAttr =
    buttonAttr ++ [ TW.opacity_50, TW.cursor_not_allowed, A.disabled True ]


viewStartButton : Html Msg
viewStartButton =
    Html.button ([ TW.bg_green_500, TW.hover__bg_green_600, Events.onClick Start ] ++ buttonAttr) [ Html.text "Start" ]


viewRestButton : Html Msg
viewRestButton =
    Html.button ([ TW.bg_red_500, TW.hover__bg_red_600, Events.onClick Rest ] ++ buttonAttr) [ Html.text "Rest" ]


viewDisabledRestButton : Html Msg
viewDisabledRestButton =
    Html.button (TW.bg_gray_500 :: disabledButtonAttr) [ Html.text "Rest" ]


viewPauseButton : Html Msg
viewPauseButton =
    Html.button ([ TW.bg_blue_500, TW.hover__bg_blue_600, Events.onClick Pause ] ++ buttonAttr) [ Html.text "Pause" ]


viewResetButton : Html Msg
viewResetButton =
    Html.button ([ TW.bg_blue_500, TW.hover__bg_blue_600, Events.onClick Reset ] ++ buttonAttr) [ Html.text "Reset" ]


viewDisabledResetButton : Html Msg
viewDisabledResetButton =
    Html.button (TW.bg_blue_500 :: disabledButtonAttr) [ Html.text "Reset" ]


showRunningTime : Model -> Html Msg
showRunningTime =
    mapRunningTime (allStages showPeriod)


showRestingTime : Model -> Html Msg
showRestingTime =
    mapRestingTime (allStages showPeriod)


fadeRunningAttr : Model -> Html.Attribute Msg
fadeRunningAttr =
    let
        stages =
            allStages <| always (A.class "")
    in
    mapRunningTime { stages | onResting = always TW.opacity_50 }


fadeRestingAttr : Model -> Html.Attribute Msg
fadeRestingAttr =
    mapRestingTime
        { onWaiting = always TW.opacity_50
        , onRunning = always TW.opacity_50
        , onResting = always (A.class "")
        , onFinished = always (A.class "")
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


mapRunningTime : StageMaps (Period -> value) -> Model -> value
mapRunningTime { onWaiting, onRunning, onResting, onFinished } model =
    case model of
        Clear ->
            onWaiting <| Millis 0

        Starting ->
            onRunning <| Millis 0

        Running timer ->
            onRunning <| Period.fromTimer timer

        PausedRunning timer ->
            onRunning <| Period.fromTimer timer

        ResumeRunning timer ->
            onRunning <| Period.fromTimer timer

        Resting period _ ->
            onResting period

        PausedResting period _ ->
            onResting period

        ResumeResting period _ ->
            onResting period

        Finished period ->
            onFinished period


mapRestingTime : StageMaps (Period -> value) -> Model -> value
mapRestingTime { onWaiting, onRunning, onResting, onFinished } model =
    mapRestingPeriods
        { onWaiting = onWaiting << Tuple.second
        , onRunning = onRunning << Tuple.second
        , onResting = onResting << Tuple.second
        , onFinished = onFinished << Tuple.second
        }
        model


type alias Periods =
    ( Period, Period )


mapRestingPeriods : StageMaps (Periods -> value) -> Model -> value
mapRestingPeriods { onWaiting, onRunning, onResting, onFinished } model =
    case model of
        Clear ->
            onWaiting ( Millis 0, Millis 0 )

        Starting ->
            onRunning ( Millis 0, Millis 0 )

        Running timer ->
            onRunning <| double <| Period.fromTimer timer

        PausedRunning timer ->
            onRunning <| double <| Period.fromTimer timer

        ResumeRunning timer ->
            onRunning <| double <| Period.fromTimer timer

        Resting period timer ->
            onResting ( period, Period.fromTimer timer )

        PausedResting period timer ->
            onResting ( period, Period.fromTimer timer )

        ResumeResting period timer ->
            onResting ( period, Period.fromTimer timer )

        Finished period ->
            onFinished ( period, Millis 0 )


double : a -> ( a, a )
double a =
    ( a, a )


showPeriod : Period -> Html Msg
showPeriod period =
    Html.time [ A.datetime (Period.toIso8601 period), TW.select_all ] [ Html.text (Period.toHuman period) ]
