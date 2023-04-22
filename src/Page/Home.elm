module Page.Home exposing (view)

import Browser.Styled exposing (Document)
import Css
import Html.Styled as Html exposing (Html)
import Html.Styled.Attributes as Attr
import Route
import Tailwind.Theme as TwTheme
import Tailwind.Utilities as Tw


view : Document msg
view =
    { title = "Timers"
    , body = viewBody
    }


viewBody : List (Html msg)
viewBody =
    [ Html.main_
        [ Attr.css
            [ Tw.flex_grow
            ]
        ]
        [ Html.div
            [ Attr.css
                [ Tw.container
                , Tw.mx_auto
                , Tw.p_3
                , Tw.flex
                , Tw.flex_col
                ]
            ]
            [ Html.div
                [ Attr.css
                    [ Tw.text_center
                    , Tw.mt_4
                    , Tw.grid
                    , Tw.grid_cols_1
                    , Tw.divide_y
                    , Tw.border
                    , Tw.border_color TwTheme.blue_500
                    , Tw.rounded
                    ]
                ]
                [ button "Countdown" (Route.Countdown Nothing)
                , button "Restwatch" Route.Restwatch
                , button "Stopwatch" Route.Stopwatch
                ]
            ]
        ]
    ]


button : String -> Route.Route -> Html msg
button label route =
    Html.a
        [ Route.href route
        , Attr.css
            [ Css.hover
                [ Tw.bg_color TwTheme.blue_500
                , Tw.text_color TwTheme.white
                ]
            , Tw.bg_color TwTheme.transparent
            , Tw.text_color TwTheme.blue_700
            , Tw.border_color TwTheme.blue_200
            , Tw.font_semibold
            , Tw.p_2
            ]
        ]
        [ Html.text label
        ]
