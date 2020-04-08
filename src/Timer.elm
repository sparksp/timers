module Timer exposing (Timer)

import Time


type alias Timer =
    ( Time.Posix, Time.Posix )
