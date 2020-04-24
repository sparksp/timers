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
    , body = [ viewBody model ]
    }


viewBody : Model -> Html Msg
viewBody model =
    Html.main_ [ TW.container, TW.mx_auto, TW.h_screen, TW.p_3, TW.flex, TW.flex_col ]
        [ Html.div [ TW.text_center, TW.mt_4 ]
            [ Html.a
                [ Route.href Route.Restwatch
                , TW.hover__bg_blue_500
                , TW.hover__text_white
                , TW.hover__border_transparent
                , TW.bg_transparent
                , TW.text_blue_700
                , TW.border
                , TW.border_blue_500
                , TW.font_semibold
                , TW.rounded
                , TW.py_2
                , TW.px_4
                ]
                [ Html.text "Restwatch"
                ]
            ]
        ]


toSession : Model -> Session
toSession (Home session) =
    session
