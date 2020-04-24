module Page.Home exposing (Model, Msg, init, subscriptions, toSession, update, view)

import Browser exposing (Document)
import Html
import Session exposing (Session)


type Model
    = Home Session


type Msg
    = NoOp


init : Session -> ( Model, Cmd Msg )
init session =
    ( Home session, Cmd.none )


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    ( model, Cmd.none )


view : Model -> Document Msg
view model =
    { title = "Home"
    , body =
        [ Html.main_ []
            [ Html.h1 [] [ Html.text "Timers" ]
            ]
        ]
    }


toSession : Model -> Session
toSession (Home session) =
    session
