module Session exposing (Session, guest, navKey)

import Browser.Navigation as Nav


type Session
    = Guest Nav.Key


guest : Nav.Key -> Session
guest key =
    Guest key


navKey : Session -> Nav.Key
navKey (Guest key) =
    key
