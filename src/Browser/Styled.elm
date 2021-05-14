module Browser.Styled exposing (Document, toUnstyled)

import Browser
import Html.Styled as Html exposing (Html)


type alias Document msg =
    { title : String
    , body : List (Html msg)
    }


toUnstyled : Document msg -> Browser.Document msg
toUnstyled { title, body } =
    { title = title
    , body = List.map Html.toUnstyled body
    }
