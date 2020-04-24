module Page.Home exposing (Model, Msg, init, subscriptions, toSession, update, view)

import Browser exposing (Document)
import Html exposing (Html)
import Html.Tailwind as TW
import Route
import Session exposing (Session)


type Model
    = Home Session


type Msg
    = NoOp


init : Session -> ( Model, Cmd Msg )
init session =
    ( Home session, Cmd.none )


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    ( model, Cmd.none )


view : Model -> Document Msg
view model =
    { title = "Timers"
    , body = viewBody model
    }


viewBody : Model -> List (Html Msg)
viewBody model =
    [ Html.main_ [ TW.flex_grow ]
        [ Html.div [ TW.container, TW.mx_auto, TW.p_3, TW.flex, TW.flex_col ]
            [ Html.div [ TW.text_center, TW.mt_4, TW.grid, TW.grid_cols_1, TW.divide_y, TW.border, TW.border_blue_500, TW.rounded ]
                [ button "Restwatch" Route.Restwatch
                , button "Stopwatch" Route.Stopwatch
                ]
            ]
        ]
    ]


button : String -> Route.Route -> Html Msg
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


toSession : Model -> Session
toSession (Home session) =
    session
