module Session exposing (Session, pushUrl, session)

import Browser.Navigation as Nav
import Url exposing (Url)


type Session
    = Session Nav.Key


session : Nav.Key -> Session
session key =
    Session key


pushUrl : Session -> Url -> Cmd msg
pushUrl (Session key) url =
    Nav.pushUrl key (Url.toString url)
