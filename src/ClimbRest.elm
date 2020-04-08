module ClimbRest exposing (Model, Msg, init, subscriptions, update, view)

import Browser.Events
import Html exposing (Html)
import Html.Attributes as A
import Html.Events as Events
import Period exposing (Period(..))
import Tailwind as TW
import Task
import Time
import Time.Extra
import Timer exposing (Timer)


type Model
    = Clear
    | Starting
    | Climbing Timer
    | Resting Period Timer
    | Finished Period
    | PausedClimbing Timer
    | ResumeClimbing Timer
    | PausedResting Period Timer
    | ResumeResting Period Timer


type Msg
    = Climb
    | Rest
    | Pause
    | Reset
    | Tick Time.Posix


init : () -> ( Model, Cmd Msg )
init _ =
    ( Clear, Cmd.none )


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case ( msg, model ) of
        ( Climb, Clear ) ->
            ( Starting, Cmd.none )

        ( Climb, PausedClimbing timer ) ->
            ( ResumeClimbing timer, Cmd.none )

        ( Climb, Finished _ ) ->
            ( Starting, Cmd.none )

        ( Climb, _ ) ->
            ( model, Cmd.none )

        ( Rest, Clear ) ->
            ( Clear, Cmd.none )

        ( Rest, Starting ) ->
            ( Clear, Cmd.none )

        ( Rest, Climbing (( _, end ) as timer) ) ->
            let
                period =
                    Period.fromTimer timer

                target =
                    timerShiftEnd end timer
            in
            ( Resting period target, Cmd.none )

        ( Rest, PausedClimbing (( _, end ) as timer) ) ->
            let
                period =
                    Period.fromTimer timer

                target =
                    timerShiftEnd end timer
            in
            ( ResumeResting period target, Cmd.none )

        ( Rest, ResumeClimbing (( _, end ) as timer) ) ->
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

        ( Pause, Climbing timer ) ->
            ( PausedClimbing timer, Cmd.none )

        ( Pause, Resting period timer ) ->
            ( PausedResting period timer, Cmd.none )

        ( Pause, ResumeClimbing timer ) ->
            ( PausedClimbing timer, Cmd.none )

        ( Pause, ResumeResting period timer ) ->
            ( PausedResting period timer, Cmd.none )

        ( Pause, _ ) ->
            ( model, Cmd.none )

        ( Reset, _ ) ->
            ( Clear, Cmd.none )

        ( Tick now, Starting ) ->
            ( Climbing ( now, now ), Cmd.none )

        ( Tick now, Climbing ( start, _ ) ) ->
            ( Climbing ( start, now ), Cmd.none )

        ( Tick now, ResumeClimbing timer ) ->
            ( Climbing <| timerShiftStart now timer, Cmd.none )

        ( Tick now, Resting period ( _, target ) ) ->
            if Time.Extra.lt target now then
                ( Finished period, Cmd.none )

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

        ResumeClimbing _ ->
            Browser.Events.onAnimationFrame Tick

        ResumeResting _ _ ->
            Browser.Events.onAnimationFrame Tick

        Climbing _ ->
            Browser.Events.onAnimationFrame Tick

        Resting _ _ ->
            Browser.Events.onAnimationFrame Tick

        _ ->
            Sub.none



--- VIEW


view : Model -> Html Msg
view model =
    Html.div [ TW.text_center, TW.mt_3, TW.mb_3 ]
        [ viewTitle
        , Html.div [ fadeClimbingAttr model, TW.mt_6 ]
            [ Html.p [] [ Html.text "Climb " ]
            , Html.p [ TW.text_4xl, TW.font_mono ] [ showClimbingTime model ]
            ]
        , Html.p [ fadeRestingAttr model, TW.mt_6 ]
            [ Html.p [] [ Html.text "Rest " ]
            , Html.p [ TW.text_4xl, TW.font_mono ] [ showRestingTime model ]
            ]
        , Html.div [ TW.inline_flex, TW.text_xl, TW.mt_10 ]
            [ viewClimbButton model
            , viewRestButton model
            , viewPauseResetButton model
            ]
        ]


viewTitle : Html Msg
viewTitle =
    Html.h1 [ TW.font_bold, TW.text_3xl, TW.mb_10 ] [ Html.text "Climb-Rest (1:1)" ]


viewClimbButton : Model -> Html Msg
viewClimbButton model =
    let
        button =
            [ TW.bg_green_500, TW.text_white, TW.font_bold, TW.py_2, TW.px_4, TW.m_2, TW.rounded ]
    in
    if canClimb model then
        Html.button (button ++ [ TW.hover__bg_green_600, Events.onClick Climb ]) [ Html.text "Climb" ]

    else
        Html.button (button ++ [ TW.opacity_50, TW.cursor_not_allowed, A.disabled True ]) [ Html.text "Climb" ]


viewRestButton : Model -> Html Msg
viewRestButton model =
    let
        button =
            [ TW.bg_red_500, TW.text_white, TW.font_bold, TW.py_2, TW.px_4, TW.m_2, TW.rounded ]
    in
    if canRest model then
        Html.button (button ++ [ TW.hover__bg_red_600, Events.onClick Rest ]) [ Html.text "Rest" ]

    else
        Html.button (button ++ [ TW.opacity_50, TW.cursor_not_allowed, A.disabled True ]) [ Html.text "Rest" ]


viewPauseResetButton : Model -> Html Msg
viewPauseResetButton model =
    case model of
        Clear ->
            viewDisabledResetButton

        Starting ->
            viewDisabledResetButton

        Climbing _ ->
            viewPauseButton

        Resting _ _ ->
            viewPauseButton

        Finished _ ->
            viewResetButton

        PausedClimbing _ ->
            viewResetButton

        ResumeClimbing _ ->
            viewPauseButton

        PausedResting _ _ ->
            viewResetButton

        ResumeResting _ _ ->
            viewPauseButton


resetButtonAttr : List (Html.Attribute Msg)
resetButtonAttr =
    [ TW.bg_blue_500, TW.text_white, TW.font_bold, TW.py_2, TW.px_4, TW.m_2, TW.rounded ]


viewDisabledResetButton : Html Msg
viewDisabledResetButton =
    Html.button (resetButtonAttr ++ [ TW.opacity_50, TW.cursor_not_allowed, A.disabled True ]) [ Html.text "Reset" ]


viewPauseButton : Html Msg
viewPauseButton =
    Html.button (resetButtonAttr ++ [ TW.hover__bg_blue_600, Events.onClick Pause ]) [ Html.text "Pause" ]


viewResetButton : Html Msg
viewResetButton =
    Html.button (resetButtonAttr ++ [ TW.hover__bg_blue_600, Events.onClick Reset ]) [ Html.text "Reset" ]


canClimb : Model -> Bool
canClimb model =
    case model of
        Starting ->
            False

        Climbing _ ->
            False

        Resting _ _ ->
            False

        PausedResting _ _ ->
            False

        _ ->
            True


canRest : Model -> Bool
canRest model =
    case model of
        Starting ->
            True

        Climbing _ ->
            True

        PausedClimbing _ ->
            True

        PausedResting _ _ ->
            True

        _ ->
            False


showClimbingTime : Model -> Html Msg
showClimbingTime =
    mapClimbingTime
        { onClimbing = showPeriod
        , onResting = showPeriod
        }


showRestingTime : Model -> Html Msg
showRestingTime =
    mapRestingTime
        { onClimbing = showPeriod
        , onResting = showPeriod
        }


fadeClimbingAttr : Model -> Html.Attribute Msg
fadeClimbingAttr =
    mapClimbingTime
        { onClimbing = always (A.class "")
        , onResting = always TW.opacity_50
        }


fadeRestingAttr : Model -> Html.Attribute Msg
fadeRestingAttr =
    mapRestingTime
        { onClimbing = always TW.opacity_50
        , onResting = always (A.class "")
        }


mapClimbingTime : { onClimbing : Period -> value, onResting : Period -> value } -> Model -> value
mapClimbingTime { onClimbing, onResting } model =
    case model of
        Clear ->
            onClimbing <| Millis 0

        Starting ->
            onClimbing <| Millis 0

        Climbing timer ->
            onClimbing <| Period.fromTimer timer

        PausedClimbing timer ->
            onClimbing <| Period.fromTimer timer

        ResumeClimbing timer ->
            onClimbing <| Period.fromTimer timer

        Resting period _ ->
            onResting period

        PausedResting period _ ->
            onResting period

        ResumeResting period _ ->
            onResting period

        Finished period ->
            onClimbing period


mapRestingTime : { onClimbing : Period -> value, onResting : Period -> value } -> Model -> value
mapRestingTime { onClimbing, onResting } model =
    case model of
        Clear ->
            onClimbing <| Millis 0

        Starting ->
            onClimbing <| Millis 0

        Climbing timer ->
            onClimbing <| Period.fromTimer timer

        PausedClimbing timer ->
            onClimbing <| Period.fromTimer timer

        ResumeClimbing timer ->
            onClimbing <| Period.fromTimer timer

        Resting _ timer ->
            onResting <| Period.fromTimer timer

        PausedResting _ timer ->
            onResting <| Period.fromTimer timer

        ResumeResting _ timer ->
            onResting <| Period.fromTimer timer

        Finished _ ->
            onResting <| Millis 0


showPeriod : Period -> Html Msg
showPeriod period =
    Html.time [ A.datetime (Period.toIso8601 period), TW.select_all ] [ Html.text (Period.toHuman period) ]
