module Page.Stopwatch exposing (Model, Msg, init, subscriptions, toSession, update, view)

import Browser.Events
import Browser.Styled exposing (Document)
import Html.Styled as Html exposing (Html)
import Html.Styled.Attributes as Attr
import Period exposing (Period, millis)
import Session exposing (Session)
import Tailwind as Tw
import Theme.Button as Button
import Time
import Time.Extra
import Timer exposing (Timer)


type Model
    = Model Session Stage


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
toSession (Model session _) =
    session


update : Msg -> Model -> ( Model, Cmd Msg )
update msg (Model session stage) =
    case ( msg, stage ) of
        ( Start, Clear ) ->
            ( Model session Starting, Cmd.none )

        ( Start, Paused elapsed ) ->
            ( Model session (Resuming elapsed), Cmd.none )

        ( Start, _ ) ->
            ( Model session stage, Cmd.none )

        ( Stop, Starting ) ->
            ( Model session Clear, Cmd.none )

        ( Stop, Running timer ) ->
            ( Model session (Paused (Period.fromTimer timer)), Cmd.none )

        ( Stop, Resuming elapsed ) ->
            ( Model session (Paused elapsed), Cmd.none )

        ( Stop, _ ) ->
            ( Model session stage, Cmd.none )

        ( Reset, _ ) ->
            ( Model session Clear, Cmd.none )

        ( Tick now, Starting ) ->
            ( Model session (Running ( now, now )), Cmd.none )

        ( Tick now, Resuming elapsed ) ->
            ( Model session (Running (startTimer now elapsed)), Cmd.none )

        ( Tick now, Running ( start, _ ) ) ->
            ( Model session (Running ( start, now )), Cmd.none )

        ( Tick _, _ ) ->
            ( Model session stage, Cmd.none )


startTimer : Time.Posix -> Period -> Timer
startTimer now elapsed =
    ( Time.Extra.sub now (Period.toPosix elapsed), now )


subscriptions : Model -> Sub Msg
subscriptions (Model _ stage) =
    case stage of
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
view (Model _ stage) =
    { title = "Stopwatch"
    , body = viewBody stage
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
            [ Html.div
                [ Attr.class Tw.mt_4
                , Attr.class Tw.flex
                , Attr.class Tw.flex_col
                ]
                [ Html.p
                    [ Attr.class Tw.self_center
                    , Attr.class Tw.text_4xl
                    , Attr.class Tw.leading_normal
                    , Attr.class Tw.font_mono
                    ]
                    [ showTime stage ]
                ]
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


viewStartStopButton : Stage -> Html Msg
viewStartStopButton stage =
    if isRunning stage then
        viewStopButton

    else
        viewStartButton


viewStartButton : Html Msg
viewStartButton =
    Html.button
        (Attr.class Tw.hover__bg_green_600
            :: Button.attr
                { color =
                    Attr.class Tw.bg_green_500
                , onClick = Just Start
                }
        )
        [ Html.text "Start" ]


viewStopButton : Html Msg
viewStopButton =
    Html.button
        (Attr.class Tw.hover__bg_blue_600
            :: Button.attr
                { color =
                    Attr.class Tw.bg_blue_500
                , onClick = Just Stop
                }
        )
        [ Html.text "Stop" ]


viewResetButton : Stage -> Html Msg
viewResetButton stage =
    case stage of
        Clear ->
            viewDisabledResetButton

        _ ->
            viewResetButton_


viewDisabledResetButton : Html Msg
viewDisabledResetButton =
    Html.button
        (Button.attr
            { color =
                Attr.class Tw.bg_gray_500
            , onClick = Nothing
            }
        )
        [ Html.text "Reset" ]


viewResetButton_ : Html Msg
viewResetButton_ =
    Html.button
        (Attr.class Tw.hover__bg_red_600
            :: Button.attr
                { color =
                    Attr.class Tw.bg_gray_500
                , onClick = Just Reset
                }
        )
        [ Html.text "Reset" ]


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
    showPeriod (stageToElapsed stage)


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
    Html.time
        [ Attr.datetime (Period.toIso8601 period)
        , Attr.class Tw.select_all
        ]
        [ Html.text (Period.toHuman period) ]
