module Stopwatch exposing (Model, Msg, init, subscriptions, update, view)

import Browser.Events
import Html exposing (Html)
import Html.Attributes as Attr
import Html.Events as Events
import Period exposing (Period(..))
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


view : Model -> Html Msg
view model =
    Html.div []
        [ Html.h1 [] [ Html.text "Stopwatch" ]
        , Html.p [] [ showTime model ]
        , Html.div []
            [ Html.button [ Events.onClick Start, Attr.disabled <| isRunning model ] [ Html.text "Start" ]
            , Html.button [ Events.onClick Stop, Attr.disabled <| isStopped model ] [ Html.text "Stop" ]
            , Html.button [ Events.onClick Reset, Attr.disabled <| disableReset model ] [ Html.text "Reset" ]
            ]
        ]


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
    Html.time [ Attr.datetime (Period.toIso8601 period) ] [ Html.text (Period.toHuman period) ]
