module Svg.Icons exposing (back, chevronDown, chevronUp, cog)

{-|

@docs back, chevronDown, chevronUp, cog

-}

import Html.Styled exposing (Html)
import Svg.Styled as Svg
import Svg.Styled.Attributes exposing (d, fill, viewBox)


{-| Back (cheveron-left)

From [zondicons](https://www.zondicons.com/).

-}
back : List (Svg.Attribute msg) -> Html msg
back attributes =
    svg attributes
        [ Svg.path [ d "M7.05 9.293L6.343 10 12 15.657l1.414-1.414L9.172 10l4.242-4.243L12 4.343z" ] [] ]


{-| Chevron Down

From [zondicons](https://www.zondicons.com/).

-}
chevronDown : List (Svg.Attribute msg) -> Html msg
chevronDown attributes =
    svg attributes
        [ Svg.path [ d "M9.293 12.95l.707.707L15.657 8l-1.414-1.414L10 10.828 5.757 6.586 4.343 8z" ] [] ]


{-| Chevron Up

From [zondicons](https://www.zondicons.com/).

-}
chevronUp : List (Svg.Attribute msg) -> Html msg
chevronUp attributes =
    svg attributes
        [ Svg.path [ d "M10.707 7.05L10 6.343 4.343 12l1.414 1.414L10 9.172l4.243 4.242L15.657 12z" ] [] ]


{-| Cog

From [zondicons](https://www.zondicons.com/).

-}
cog : List (Svg.Attribute msg) -> Html msg
cog attributes =
    svg attributes
        [ Svg.path [ d "M3.94 6.5L2.22 3.64l1.42-1.42L6.5 3.94c.52-.3 1.1-.54 1.7-.7L9 0h2l.8 3.24c.6.16 1.18.4 1.7.7l2.86-1.72 1.42 1.42-1.72 2.86c.3.52.54 1.1.7 1.7L20 9v2l-3.24.8c-.16.6-.4 1.18-.7 1.7l1.72 2.86-1.42 1.42-2.86-1.72c-.52.3-1.1.54-1.7.7L11 20H9l-.8-3.24c-.6-.16-1.18-.4-1.7-.7l-2.86 1.72-1.42-1.42 1.72-2.86c-.3-.52-.54-1.1-.7-1.7L0 11V9l3.24-.8c.16-.6.4-1.18.7-1.7zM10 13a3 3 0 1 0 0-6 3 3 0 0 0 0 6z" ] [] ]



--- HELPER


svg : List (Svg.Attribute msg) -> List (Svg.Svg msg) -> Html msg
svg attributes icon =
    Svg.svg (viewBox "0 0 20 20" :: fill "currentColor" :: attributes) icon
