module Main exposing (main)

import Browser
import Stopwatch


main : Program () Stopwatch.Model Stopwatch.Msg
main =
    Browser.element
        { init = Stopwatch.init
        , subscriptions = Stopwatch.subscriptions
        , update = Stopwatch.update
        , view = Stopwatch.view
        }
