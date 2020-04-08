module Main exposing (main)

import Browser
import Restwatch as P


main : Program () P.Model P.Msg
main =
    Browser.element
        { init = P.init
        , subscriptions = P.subscriptions
        , update = P.update
        , view = P.view
        }
