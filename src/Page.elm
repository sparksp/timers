module Page exposing (Page(..), view)

import Browser.Styled exposing (Document)
import Css.Global
import Html.Styled as Html exposing (Html)
import Html.Styled.Attributes as Attr
import Route
import Svg.Icons as Icons
import Svg.Styled.Attributes as SvgAttr
import Tailwind.Theme as TwTheme
import Tailwind.Utilities as Tw


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
        [ Css.Global.global Tw.globalStyles
        , Html.div
            [ Attr.css
                [ Tw.min_h_screen
                , Tw.flex
                , Tw.flex_col
                ]
            ]
            (viewHeader (Title title) page :: body)
        ]
    }


viewHeader : Title -> Page -> Html msg
viewHeader (Title title) page =
    Html.nav
        [ Attr.css
            [ Tw.grid
            , Tw.grid_cols_header
            , Tw.p_2
            , Tw.bg_color TwTheme.orange_500
            , Tw.text_color TwTheme.white
            , Tw.border_b
            , Tw.border_color TwTheme.orange_400
            , Tw.shadow
            , Tw.sticky
            , Tw.top_0
            ]
        ]
        [ Html.div
            [ Attr.css
                [ Tw.mr_auto
                ]
            ]
            [ homeLink page ]
        , Html.h1
            [ Attr.css
                [ Tw.col_start_2
                , Tw.text_center
                ]
            ]
            [ Html.text title ]
        , Html.div
            [ Attr.css
                [ Tw.ml_auto
                ]
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
                [ Attr.css
                    [ Tw.flex
                    , Tw.items_center
                    ]
                , Route.href Route.Home
                ]
                [ Icons.back
                    [ SvgAttr.css
                        [ Tw.h_6
                        , Tw.w_6
                        ]
                    ]
                ]
