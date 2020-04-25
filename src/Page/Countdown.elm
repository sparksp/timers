module Page.Countdown exposing (Model, Msg, init, subscriptions, toSession, update, view)

import Browser exposing (Document)
import Session exposing (Session)


type alias Model =
    { session : Session
    }


type Msg
    = Todo


init : Session -> ( Model, Cmd Msg )
init session =
    ( Model session, Cmd.none )


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    ( model, Cmd.none )


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none


toSession : Model -> Session
toSession { session } =
    session



--- VIEW


view : Model -> Document Msg
view model =
    { title = "Countdown"
    , body = []
    }
