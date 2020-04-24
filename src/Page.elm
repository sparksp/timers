module Page exposing (Page(..), view, viewErrors)

import Browser exposing (Document)
import Html exposing (Html)
import Html.Attributes as A
import Route exposing (Route)


{-| Current active menu item
-}
type Page
    = Other
    | Home
    | Restwatch


view : Page -> Document msg -> Document msg
view page { title, body } =
    { title = title ++ " - Timers"
    , body = viewHeader page :: viewMenu page :: body ++ [ viewFooter ]
    }


viewErrors : msg -> List String -> Html msg
viewErrors dismissErrors errors =
    case errors of
        [] ->
            Html.text ""

        _ ->
            Html.text "Errors!"


viewHeader : Page -> Html msg
viewHeader page =
    Html.header [] []


viewMenu : Page -> Html msg
viewMenu page =
    Html.nav [] []


viewFooter : Html msg
viewFooter =
    Html.footer [] []


menuLink : Page -> Route -> List (Html msg) -> Html msg
menuLink page route linkContent =
    Html.li [ A.classList [ ( "nav-item", True ), ( "active", isActive page route ) ] ]
        [ Html.a [ A.class "nav-link", Route.href route ] linkContent ]


isActive : Page -> Route -> Bool
isActive page route =
    case ( page, route ) of
        ( Home, Route.Home ) ->
            True

        ( Restwatch, Route.Restwatch ) ->
            True

        _ ->
            False
