module Page.Home exposing (view)

import Browser exposing (Document)
import Html exposing (Html)
import Html.Tailwind as TW
import Route


view : Document msg
view =
    { title = "Timers"
    , body = viewBody
    }


viewBody : List (Html msg)
viewBody =
    [ Html.main_ [ TW.flex_grow ]
        [ Html.div [ TW.container, TW.mx_auto, TW.p_3, TW.flex, TW.flex_col ]
            [ Html.div [ TW.text_center, TW.mt_4, TW.grid, TW.grid_cols_1, TW.divide_y, TW.border, TW.border_blue_500, TW.rounded ]
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
        , TW.hover__bg_blue_500
        , TW.hover__text_white
        , TW.bg_transparent
        , TW.text_blue_700
        , TW.border_blue_200
        , TW.font_semibold
        , TW.p_2
        ]
        [ Html.text label
        ]
