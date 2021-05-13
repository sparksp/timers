module Page.Home exposing (view)

import Browser exposing (Document)
import Html exposing (Html)
import Html.Attributes as Attr
import Route
import Tailwind as Tw


view : Document msg
view =
    { title = "Timers"
    , body = viewBody
    }


viewBody : List (Html msg)
viewBody =
    [ Html.main_
        [ Attr.class Tw.flex_grow
        ]
        [ Html.div
            [ Attr.class Tw.container
            , Attr.class Tw.mx_auto
            , Attr.class Tw.p_3
            , Attr.class Tw.flex
            , Attr.class Tw.flex_col
            ]
            [ Html.div
                [ Attr.class Tw.text_center
                , Attr.class Tw.mt_4
                , Attr.class Tw.grid
                , Attr.class Tw.grid_cols_1
                , Attr.class Tw.divide_y
                , Attr.class Tw.border
                , Attr.class Tw.border_blue_500
                , Attr.class Tw.rounded
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
        , Attr.class Tw.hover__bg_blue_500
        , Attr.class Tw.hover__text_white
        , Attr.class Tw.bg_transparent
        , Attr.class Tw.text_blue_700
        , Attr.class Tw.border_blue_200
        , Attr.class Tw.font_semibold
        , Attr.class Tw.p_2
        ]
        [ Html.text label
        ]
