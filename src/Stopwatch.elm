module Stopwatch exposing (Model, Msg, init, subscriptions, update, view)

import Browser exposing (Document)
import Browser.Events
import Html exposing (Html)
import Html.Attributes as A
import Html.Events as Events
import Period exposing (Period(..))
import Tailwind as TW
import Task
import Time


type Model
    = Clear
    | Starting
    | Paused ( Time.Posix, Time.Posix )
    | Resuming ( Time.Posix, Time.Posix )
    | Running ( Time.Posix, Time.Posix )


type Msg
    = Start
    | Stop
    | Reset
    | Tick Time.Posix


init : () -> ( Model, Cmd Msg )
init _ =
    ( Clear, Cmd.none )


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case ( msg, model ) of
        ( Start, Clear ) ->
            ( Starting, Task.perform Tick Time.now )

        ( Start, Paused timer ) ->
            ( Resuming timer, Task.perform Tick Time.now )

        ( Start, _ ) ->
            ( model, Cmd.none )

        ( Stop, Starting ) ->
            ( Clear, Cmd.none )

        ( Stop, Running timer ) ->
            ( Paused timer, Cmd.none )

        ( Stop, Resuming timer ) ->
            ( Paused timer, Cmd.none )

        ( Stop, _ ) ->
            ( model, Cmd.none )

        ( Reset, Running _ ) ->
            ( model, Cmd.none )

        ( Reset, _ ) ->
            ( Clear, Cmd.none )

        ( Tick now, Starting ) ->
            ( Running ( now, now ), Cmd.none )

        ( Tick now, Resuming timer ) ->
            let
                newStart =
                    adjustTime timer now
            in
            ( Running ( newStart, now ), Cmd.none )

        ( Tick now, Running ( start, _ ) ) ->
            ( Running ( start, now ), Cmd.none )

        ( Tick _, _ ) ->
            ( model, Cmd.none )


adjustTime : ( Time.Posix, Time.Posix ) -> Time.Posix -> Time.Posix
adjustTime ( start, end ) now =
    Time.millisToPosix (Time.posixToMillis now - Time.posixToMillis end + Time.posixToMillis start)


subscriptions : Model -> Sub Msg
subscriptions model =
    case model of
        Starting ->
            Browser.Events.onAnimationFrame Tick

        Resuming _ ->
            Browser.Events.onAnimationFrame Tick

        Running _ ->
            Time.every 100 Tick

        _ ->
            Sub.none



--- VIEW


view : Model -> Document Msg
view model =
    { title = "Stopwatch"
    , body = [ viewBody model ]
    }


viewBody : Model -> Html Msg
viewBody model =
    Html.div [ TW.text_center, TW.mt_3, TW.mb_3 ]
        [ viewTitle
        , Html.p [ TW.font_mono, TW.text_4xl, TW.mt_10, TW.mb_10 ] [ showTime model ]
        , Html.div [ TW.inline_flex, TW.mt_2 ]
            [ viewStartButton model
            , viewStopButton model
            , viewResetButton model
            ]
        ]


viewTitle : Html Msg
viewTitle =
    Html.h1 [ TW.font_bold, TW.text_3xl, TW.mb_2 ] [ Html.text "Stopwatch" ]


viewStartButton : Model -> Html Msg
viewStartButton model =
    let
        button =
            [ TW.bg_green_500, TW.text_white, TW.font_bold, TW.py_2, TW.px_4, TW.rounded_l ]
    in
    if isRunning model then
        Html.button (button ++ [ TW.opacity_50, TW.cursor_not_allowed, A.disabled True ]) [ Html.text "Start" ]

    else
        Html.button (button ++ [ TW.hover__bg_green_600, Events.onClick Start ]) [ Html.text "Start" ]


viewStopButton : Model -> Html Msg
viewStopButton model =
    let
        button =
            [ TW.bg_red_500, TW.text_white, TW.font_bold, TW.py_2, TW.px_4 ]
    in
    if isStopped model then
        Html.button (button ++ [ TW.opacity_50, TW.cursor_not_allowed, A.disabled True ]) [ Html.text "Stop" ]

    else
        Html.button (button ++ [ TW.hover__bg_red_600, Events.onClick Stop ]) [ Html.text "Stop" ]


viewResetButton : Model -> Html Msg
viewResetButton model =
    let
        button =
            [ TW.bg_blue_500, TW.text_white, TW.font_bold, TW.py_2, TW.px_4, TW.rounded_r ]
    in
    if disableReset model then
        Html.button (button ++ [ TW.opacity_50, TW.cursor_not_allowed, A.disabled True ]) [ Html.text "Reset" ]

    else
        Html.button (button ++ [ TW.hover__bg_blue_600, Events.onClick Reset ]) [ Html.text "Reset" ]


isRunning : Model -> Bool
isRunning model =
    case model of
        Starting ->
            True

        Running _ ->
            True

        Resuming _ ->
            True

        _ ->
            False


isStopped : Model -> Bool
isStopped =
    not << isRunning


disableReset : Model -> Bool
disableReset model =
    case model of
        Paused _ ->
            False

        _ ->
            True


showTime : Model -> Html Msg
showTime model =
    case model of
        Clear ->
            Html.text <| Period.toHuman <| Millis 0

        Starting ->
            Html.text <| Period.toHuman <| Millis 0

        Running timer ->
            showTimeDiff timer

        Paused timer ->
            showTimeDiff timer

        Resuming timer ->
            showTimeDiff timer


showTimeDiff : ( Time.Posix, Time.Posix ) -> Html Msg
showTimeDiff ( start, end ) =
    let
        period =
            Millis (Time.posixToMillis end - Time.posixToMillis start)
    in
    Html.time [ A.datetime (Period.toIso8601 period) ] [ Html.text (Period.toHuman period) ]
