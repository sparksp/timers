module Page exposing (Page(..), view)

import Browser.Styled exposing (Document)
import Html.Styled as Html exposing (Html)
import Html.Styled.Attributes as Attr
import Route
import Svg.Icons as Icons
import Svg.Styled.Attributes as SvgAttr
import Tailwind as Tw


{-| Current active menu item
-}
type Page
    = Other
    | Home
    | Countdown
    | Restwatch
    | Stopwatch


type Title
    = Title String


view : Page -> Document msg -> Document msg
view page { title, body } =
    { title = title ++ " - Timers"
    , body =
        [ Html.div
            [ Attr.class Tw.min_h_screen
            , Attr.class Tw.flex
            , Attr.class Tw.flex_col
            ]
            (viewHeader (Title title) page :: body)
        ]
    }


viewHeader : Title -> Page -> Html msg
viewHeader (Title title) page =
    Html.nav
        [ Attr.class Tw.grid
        , Attr.class Tw.grid_cols_header
        , Attr.class Tw.p_2
        , Attr.class Tw.bg_orange_500
        , Attr.class Tw.text_white
        , Attr.class Tw.border_b
        , Attr.class Tw.border_orange_400
        , Attr.class Tw.shadow
        , Attr.class Tw.sticky
        , Attr.class Tw.top_0
        ]
        [ Html.div
            [ Attr.class Tw.mr_auto
            ]
            [ homeLink page ]
        , Html.h1
            [ Attr.class Tw.col_start_2
            , Attr.class Tw.text_center
            ]
            [ Html.text title ]
        , Html.div
            [ Attr.class Tw.ml_auto
            ]
            []
        ]


homeLink : Page -> Html msg
homeLink page =
    case page of
        Home ->
            Html.text ""

        _ ->
            Html.a
                [ Attr.class Tw.flex
                , Attr.class Tw.items_center
                , Route.href Route.Home
                ]
                [ Icons.back
                    [ SvgAttr.class Tw.h_6
                    , SvgAttr.class Tw.w_6
                    ]
                ]
