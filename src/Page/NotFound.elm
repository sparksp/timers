module Page.NotFound exposing (view)

import Browser exposing (Document)
import Html


view : Document msg
view =
    { title = "Page Not Found"
    , body =
        [ Html.main_ []
            [ Html.h1 [] [ Html.text "Not Found" ] ]
        ]
    }
