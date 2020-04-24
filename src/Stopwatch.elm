module Stopwatch exposing (Model, Msg, init, subscriptions, toSession, update, view)

import Browser exposing (Document)
import Browser.Events
import Html exposing (Html)
import Html.Attributes as A
import Html.Tailwind as TW
import Period exposing (Period(..))
import Session exposing (Session)
import Theme.Button as Button
import Time
import Time.Extra
import Timer exposing (Timer)


type alias Model =
    { session : Session
    , stage : Stage
    }


type Stage
    = Clear
    | Starting
    | Paused Timer
    | Resuming Timer
    | Running Timer


type Msg
    = Start
    | Stop
    | Reset
    | Tick Time.Posix


init : Session -> ( Model, Cmd Msg )
init session =
    ( Model session Clear, Cmd.none )


toSession : Model -> Session
toSession { session } =
    session


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case ( msg, model.stage ) of
        ( Start, Clear ) ->
            ( { model | stage = Starting }, Cmd.none )

        ( Start, Paused timer ) ->
            ( { model | stage = Resuming timer }, Cmd.none )

        ( Start, _ ) ->
            ( model, Cmd.none )

        ( Stop, Starting ) ->
            ( { model | stage = Clear }, Cmd.none )

        ( Stop, Running timer ) ->
            ( { model | stage = Paused timer }, Cmd.none )

        ( Stop, Resuming timer ) ->
            ( { model | stage = Paused timer }, Cmd.none )

        ( Stop, _ ) ->
            ( model, Cmd.none )

        ( Reset, Running _ ) ->
            ( model, Cmd.none )

        ( Reset, _ ) ->
            ( { model | stage = Clear }, Cmd.none )

        ( Tick now, Starting ) ->
            ( { model | stage = Running ( now, now ) }, Cmd.none )

        ( Tick now, Resuming timer ) ->
            ( { model | stage = Running <| timerShiftStart now timer }, Cmd.none )

        ( Tick now, Running ( start, _ ) ) ->
            ( { model | stage = Running ( start, now ) }, Cmd.none )

        ( Tick _, _ ) ->
            ( model, Cmd.none )


timerShiftStart : Time.Posix -> Timer -> Timer
timerShiftStart now ( start, end ) =
    ( Time.Extra.add start <| Time.Extra.sub now end, now )


subscriptions : Model -> Sub Msg
subscriptions model =
    case model.stage of
        Starting ->
            Browser.Events.onAnimationFrame Tick

        Resuming _ ->
            Browser.Events.onAnimationFrame Tick

        Running _ ->
            Browser.Events.onAnimationFrame Tick

        _ ->
            Sub.none



--- VIEW


view : Model -> Document Msg
view model =
    { title = "Stopwatch"
    , body = viewBody model
    }


viewBody : Model -> List (Html Msg)
viewBody model =
    [ Html.main_ [ TW.flex_grow ]
        [ Html.div [ TW.container, TW.mx_auto, TW.p_3, TW.flex, TW.flex_col ]
            [ Html.div [ TW.mt_4, TW.flex, TW.flex_col ]
                [ Html.p [ TW.self_center, TW.text_4xl, TW.font_mono ] [ showTime model ]
                ]
            ]
        ]
    , Html.footer [ TW.container, TW.mx_auto, TW.grid, TW.grid_cols_2, TW.gap_2, TW.text_xl, TW.py_2 ]
        [ viewStartStopButton model
        , viewResetButton model
        ]
    ]


viewStartStopButton : Model -> Html Msg
viewStartStopButton model =
    if isRunning model then
        viewStopButton

    else
        viewStartButton


viewStartButton : Html Msg
viewStartButton =
    Html.button (TW.hover__bg_green_600 :: Button.attr { color = TW.bg_green_500, onClick = Just Start }) [ Html.text "Start" ]


viewStopButton : Html Msg
viewStopButton =
    Html.button (TW.hover__bg_red_600 :: Button.attr { color = TW.bg_red_500, onClick = Just Stop }) [ Html.text "Stop" ]


viewResetButton : Model -> Html Msg
viewResetButton model =
    case model.stage of
        Paused _ ->
            Html.button (TW.hover__bg_blue_600 :: Button.attr { color = TW.bg_blue_500, onClick = Just Reset }) [ Html.text "Reset" ]

        _ ->
            Html.button (Button.attr { color = TW.bg_blue_500, onClick = Nothing }) [ Html.text "Reset" ]


isRunning : Model -> Bool
isRunning model =
    case model.stage of
        Starting ->
            True

        Running _ ->
            True

        Resuming _ ->
            True

        _ ->
            False


showTime : Model -> Html Msg
showTime model =
    mapRunningTime showPeriod model


mapRunningTime : (Period -> value) -> Model -> value
mapRunningTime fn model =
    case model.stage of
        Clear ->
            fn <| Millis 0

        Starting ->
            fn <| Millis 0

        Running timer ->
            fn <| Period.fromTimer timer

        Paused timer ->
            fn <| Period.fromTimer timer

        Resuming timer ->
            fn <| Period.fromTimer timer


showPeriod : Period -> Html Msg
showPeriod period =
    Html.time [ A.datetime (Period.toIso8601 period), TW.select_all ] [ Html.text (Period.toHuman period) ]
