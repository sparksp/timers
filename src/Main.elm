module Main exposing (main)

import Browser
import ClimbRest as P


main : Program () P.Model P.Msg
main =
    Browser.element
        { init = P.init
        , subscriptions = P.subscriptions
        , update = P.update
        , view = P.view
        }
