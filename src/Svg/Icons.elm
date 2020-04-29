module Svg.Icons exposing (back, checkmarkOutline, chevronDown, chevronUp, cog, home, menu, timer)

{-|

@docs back, checkmarkOutline, chevronDown, chevronUp, cog, home, menu, timer

-}

import Html exposing (Html)
import Svg
import Svg.Attributes exposing (d, fill, viewBox)


{-| Back (cheveron-left)

From [zondicons](https://www.zondicons.com/).

-}
back : List (Svg.Attribute msg) -> Html msg
back attributes =
    svg attributes
        [ Svg.path [ d "M7.05 9.293L6.343 10 12 15.657l1.414-1.414L9.172 10l4.242-4.243L12 4.343z" ] [] ]


{-| Checkmark Outline

From [zondicons](https://www.zondicons.com/).

-}
checkmarkOutline : List (Svg.Attribute msg) -> Html msg
checkmarkOutline attributes =
    svg attributes
        [ Svg.path [ d "M2.93 17.07A10 10 0 1 1 17.07 2.93 10 10 0 0 1 2.93 17.07zm12.73-1.41A8 8 0 1 0 4.34 4.34a8 8 0 0 0 11.32 11.32zM6.7 9.29L9 11.6l4.3-4.3 1.4 1.42L9 14.4l-3.7-3.7 1.4-1.42z" ] [] ]


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


{-| Home

From [zondicons](https://www.zondicons.com/).

-}
home : List (Svg.Attribute msg) -> Html msg
home attributes =
    svg attributes
        [ Svg.path [ d "M8 20H3V10H0L10 0l10 10h-3v10h-5v-6H8v6z" ] [] ]


{-| Menu

From [zondicons](https://www.zondicons.com/).

-}
menu : List (Svg.Attribute msg) -> Html msg
menu attributes =
    svg attributes
        [ Svg.path [ d "M0 3h20v2H0V3zm0 6h20v2H0V9zm0 6h20v2H0v-2z" ] [] ]


{-| Timer

From [zondicons](https://www.zondicons.com/).

-}
timer : List (Svg.Attribute msg) -> Html msg
timer attributes =
    svg attributes
        [ Svg.path [ d "M10 20a10 10 0 1 1 0-20 10 10 0 0 1 0 20zm0-2a8 8 0 1 0 0-16 8 8 0 0 0 0 16zm-1-7.59V4h2v5.59l3.95 3.95-1.41 1.41L9 10.41z" ] [] ]



--- HELPER


svg : List (Svg.Attribute msg) -> List (Svg.Svg msg) -> Html msg
svg attributes icon =
    Svg.svg (viewBox "0 0 20 20" :: fill "currentColor" :: attributes) icon
