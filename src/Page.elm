module Page exposing (Page(..), view, viewErrors)

import Browser exposing (Document)
import Html exposing (Html)
import Html.Tailwind as TW
import Route
import Svg.Icons as Icons
import Svg.Tailwind as STW


{-| Current active menu item
-}
type Page
    = Other
    | Home
    | Restwatch
    | Stopwatch


type Title
    = Title String


view : Page -> Document msg -> Document msg
view page { title, body } =
    { title = title ++ " - Timers"
    , body =
        [ Html.div [ TW.min_h_screen, TW.flex, TW.flex_col ]
            (viewHeader (Title title) page :: body)
        ]
    }


viewErrors : msg -> List String -> Html msg
viewErrors dismissErrors errors =
    case errors of
        [] ->
            Html.text ""

        _ ->
            Html.text "Errors!"


viewHeader : Title -> Page -> Html msg
viewHeader (Title title) page =
    Html.nav [ TW.grid, TW.grid_cols_header, TW.p_2, TW.bg_orange_500, TW.text_white, TW.border_b, TW.border_orange_400, TW.shadow, TW.sticky, TW.top_0 ]
        [ Html.div [ TW.mr_auto ] [ homeLink page ]
        , Html.h1 [ TW.col_start_2, TW.text_center ] [ Html.text title ]
        , Html.div [ TW.ml_auto ] [ menuButton page ]
        ]


homeLink : Page -> Html msg
homeLink page =
    case page of
        Home ->
            Html.text ""

        _ ->
            Html.a [ TW.flex, TW.items_center, Route.href Route.Home ]
                [ Icons.back [ STW.h_6, STW.w_6 ]
                ]


menuButton : Page -> Html msg
menuButton page =
    -- Html.button [ TW.flex, TW.items_center, TW.text_orange_200, TW.hover__text_white, TW.hover__border_white ]
    --     [ Icons.menu [ STW.h_6, STW.w_6 ]
    --     ]
    Html.text ""
