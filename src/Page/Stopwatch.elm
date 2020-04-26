module Page.Stopwatch exposing (Model, Msg, init, subscriptions, toSession, update, view)

import Browser exposing (Document)
import Browser.Events
import Html exposing (Html)
import Html.Attributes as A
import Html.Tailwind as TW
import Period exposing (Period, millis)
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
    | Running Timer
    | Paused Period
    | Resuming Period


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

        ( Start, Paused elapsed ) ->
            ( { model | stage = Resuming elapsed }, Cmd.none )

        ( Start, _ ) ->
            ( model, Cmd.none )

        ( Stop, Starting ) ->
            ( { model | stage = Clear }, Cmd.none )

        ( Stop, Running timer ) ->
            ( { model | stage = Paused <| Period.fromTimer timer }, Cmd.none )

        ( Stop, Resuming elapsed ) ->
            ( { model | stage = Paused elapsed }, Cmd.none )

        ( Stop, _ ) ->
            ( model, Cmd.none )

        ( Reset, _ ) ->
            ( { model | stage = Clear }, Cmd.none )

        ( Tick now, Starting ) ->
            ( { model | stage = Running ( now, now ) }, Cmd.none )

        ( Tick now, Resuming elapsed ) ->
            ( { model | stage = Running <| startTimer now elapsed }, Cmd.none )

        ( Tick now, Running ( start, _ ) ) ->
            ( { model | stage = Running ( start, now ) }, Cmd.none )

        ( Tick _, _ ) ->
            ( model, Cmd.none )


startTimer : Time.Posix -> Period -> Timer
startTimer now elapsed =
    ( Time.Extra.sub now (Period.toPosix elapsed), now )


subscriptions : Model -> Sub Msg
subscriptions model =
    case model.stage of
        Clear ->
            Sub.none

        Starting ->
            Browser.Events.onAnimationFrame Tick

        Running _ ->
            Browser.Events.onAnimationFrame Tick

        Paused _ ->
            Sub.none

        Resuming _ ->
            Browser.Events.onAnimationFrame Tick



--- VIEW


view : Model -> Document Msg
view model =
    { title = "Stopwatch"
    , body = viewBody model.stage
    }


viewBody : Stage -> List (Html Msg)
viewBody stage =
    [ Html.main_ [ TW.flex_grow ]
        [ Html.div [ TW.container, TW.mx_auto, TW.p_3, TW.flex, TW.flex_col ]
            [ Html.div [ TW.mt_4, TW.flex, TW.flex_col ]
                [ Html.p [ TW.self_center, TW.text_4xl, TW.font_mono ] [ showTime stage ]
                ]
            ]
        ]
    , Html.footer [ TW.container, TW.mx_auto, TW.grid, TW.grid_cols_2, TW.gap_2, TW.text_xl, TW.py_2 ]
        [ viewStartStopButton stage
        , viewResetButton stage
        ]
    ]


viewStartStopButton : Stage -> Html Msg
viewStartStopButton stage =
    if isRunning stage then
        viewStopButton

    else
        viewStartButton


viewStartButton : Html Msg
viewStartButton =
    Html.button (TW.hover__bg_green_600 :: Button.attr { color = TW.bg_green_500, onClick = Just Start }) [ Html.text "Start" ]


viewStopButton : Html Msg
viewStopButton =
    Html.button (TW.hover__bg_red_600 :: Button.attr { color = TW.bg_red_500, onClick = Just Stop }) [ Html.text "Stop" ]


viewResetButton : Stage -> Html Msg
viewResetButton stage =
    case stage of
        Clear ->
            Html.button (Button.attr { color = TW.bg_blue_500, onClick = Nothing }) [ Html.text "Reset" ]

        _ ->
            Html.button (TW.hover__bg_blue_600 :: Button.attr { color = TW.bg_blue_500, onClick = Just Reset }) [ Html.text "Reset" ]


isRunning : Stage -> Bool
isRunning stage =
    case stage of
        Clear ->
            False

        Starting ->
            True

        Running _ ->
            True

        Paused _ ->
            False

        Resuming _ ->
            True


showTime : Stage -> Html Msg
showTime stage =
    showPeriod <| stageToElapsed stage


stageToElapsed : Stage -> Period
stageToElapsed stage =
    case stage of
        Clear ->
            millis 0

        Starting ->
            millis 0

        Running timer ->
            Period.fromTimer timer

        Paused elapsed ->
            elapsed

        Resuming elapsed ->
            elapsed


showPeriod : Period -> Html Msg
showPeriod period =
    Html.time [ A.datetime (Period.toIso8601 period), TW.select_all ] [ Html.text (Period.toHuman period) ]
