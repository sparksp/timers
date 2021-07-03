module Session exposing (Session, pushUrl, replaceUrl, session)

import Browser.Navigation as Nav


type Session
    = Session Nav.Key


session : Nav.Key -> Session
session key =
    Session key


pushUrl : Session -> String -> Cmd msg
pushUrl (Session key) =
    Nav.pushUrl key


replaceUrl : Session -> String -> Cmd msg
replaceUrl (Session key) =
    Nav.replaceUrl key
