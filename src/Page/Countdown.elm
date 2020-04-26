module Page.Countdown exposing (Model, Msg, init, subscriptions, toSession, update, view)

import Alarm
import Browser exposing (Document)
import Browser.Events
import Html exposing (Html)
import Html.Attributes as A
import Html.Tailwind as TW
import Period exposing (Period)
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


type Msg
    = GotStageMsg StageMsg


init : Session -> ( Model, Cmd Msg )
init session =
    ( { session = session
      , stage = Waiting <| Period.millis 5000
      }
    , Cmd.none
    )


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case ( msg, model.stage ) of
        ( GotStageMsg stageMsg, _ ) ->
            updateStageMsg stageMsg model


updateStageMsg : StageMsg -> Model -> ( Model, Cmd Msg )
updateStageMsg msg model =
    case ( msg, model.stage ) of
        ( Start, Waiting target ) ->
            ( { model | stage = Starting target }, Alarm.load )

        ( Start, Paused target timer ) ->
            ( { model | stage = Resuming target timer }, Alarm.load )

        ( Start, Finished target ) ->
            ( { model | stage = Starting target }, Alarm.load )

        ( Start, _ ) ->
            ( model, Cmd.none )

        ( Stop, Starting target ) ->
            ( { model | stage = Waiting target }, Cmd.none )

        ( Stop, Running target timer ) ->
            ( { model | stage = Paused target <| Period.fromTimer timer }, Cmd.none )

        ( Stop, Resuming target remaining ) ->
            ( { model | stage = Paused target remaining }, Cmd.none )

        ( Stop, _ ) ->
            ( model, Cmd.none )

        ( Reset, stage ) ->
            ( { model | stage = Waiting <| stageToTarget stage }, Alarm.stop )

        ( Tick now, Starting target ) ->
            ( { model | stage = Running target <| startCountdown target now }, Cmd.none )

        ( Tick now, Running target ( _, end ) ) ->
            if Time.Extra.lt end now then
                ( { model | stage = Finished target }, Alarm.play )

            else
                ( { model | stage = Running target ( now, end ) }, Cmd.none )

        ( Tick now, Resuming target remaining ) ->
            ( { model | stage = Running target <| startCountdown remaining now }, Cmd.none )

        ( Tick _, _ ) ->
            ( model, Cmd.none )


startCountdown : Period -> Time.Posix -> Timer
startCountdown period now =
    let
        end =
            Time.Extra.add now <| Time.millisToPosix <| Period.toMillis period
    in
    ( now, end )


subscriptions : Model -> Sub Msg
subscriptions model =
    case model.stage of
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
toSession { session } =
    session



--- VIEW


view : Model -> Document Msg
view model =
    { title = "Countdown"
    , body = Alarm.view :: viewBody model
    }


viewBody : Model -> List (Html Msg)
viewBody model =
    [ Html.main_ [ TW.flex_grow ]
        [ Html.div [ TW.container, TW.mx_auto, TW.p_3, TW.flex, TW.flex_col ]
            [ Html.div [ TW.mt_4, TW.flex, TW.flex_col ]
                [ Html.p [ TW.self_center, TW.text_4xl, TW.font_mono ] [ showRemainingTime model ]
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
    Html.button (TW.hover__bg_green_600 :: Button.attr { color = TW.bg_green_500, onClick = Just (GotStageMsg Start) }) [ Html.text "Start" ]


viewStopButton : Html Msg
viewStopButton =
    Html.button (TW.hover__bg_red_600 :: Button.attr { color = TW.bg_red_500, onClick = Just (GotStageMsg Stop) }) [ Html.text "Stop" ]


viewResetButton : Model -> Html Msg
viewResetButton model =
    case model.stage of
        Waiting _ ->
            Html.button (Button.attr { color = TW.bg_blue_500, onClick = Nothing }) [ Html.text "Reset" ]

        _ ->
            Html.button (TW.hover__bg_blue_600 :: Button.attr { color = TW.bg_blue_500, onClick = Just (GotStageMsg Reset) }) [ Html.text "Reset" ]


isRunning : Model -> Bool
isRunning model =
    case model.stage of
        Waiting _ ->
            False

        Starting _ ->
            True

        Running _ _ ->
            True

        Paused _ _ ->
            False

        Resuming _ _ ->
            True

        Finished _ ->
            False


showRemainingTime : Model -> Html Msg
showRemainingTime model =
    model.stage
        |> stageToRemaining
        |> showPeriod


stageToRemaining : Stage -> Period
stageToRemaining stage =
    case stage of
        Waiting target ->
            target

        Starting target ->
            target

        Running _ timer ->
            Period.fromTimer timer

        Paused _ remaining ->
            remaining

        Resuming _ remaining ->
            remaining

        Finished _ ->
            Period.millis 0


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


showPeriod : Period -> Html Msg
showPeriod period =
    Html.time [ A.datetime (Period.toIso8601 period), TW.select_all ] [ Html.text (Period.toHuman period) ]
