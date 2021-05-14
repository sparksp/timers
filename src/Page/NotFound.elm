module Page.NotFound exposing (view)

import Browser.Styled exposing (Document)
import Html.Styled as Html


view : Document msg
view =
    { title = "Page Not Found"
    , body =
        [ Html.main_ []
            [ Html.h1 [] [ Html.text "Not Found" ] ]
        ]
    }
