module Route exposing (Route(..), fromUrl, href, replaceUrl)

import Browser.Navigation as Nav
import Html exposing (Attribute)
import Html.Attributes as A
import Url exposing (Url)
import Url.Parser as Parser exposing (Parser, oneOf, s)


type Route
    = Home
    | Restwatch
    | Stopwatch



-- HELPERS


href : Route -> Attribute msg
href targetRoute =
    A.href (routeToString targetRoute)


replaceUrl : Nav.Key -> Route -> Cmd msg
replaceUrl key route =
    Nav.replaceUrl key (routeToString route)


fromUrl : Url -> Maybe Route
fromUrl url =
    url
        |> Parser.parse parser



-- INTERNAL


routeToString : Route -> String
routeToString page =
    "/" ++ String.join "/" (routeToPieces page)


routeToPieces : Route -> List String
routeToPieces page =
    case page of
        Home ->
            []

        Restwatch ->
            [ "restwatch" ]

        Stopwatch ->
            [ "stopwatch" ]


parser : Parser (Route -> a) a
parser =
    oneOf
        [ Parser.map Home Parser.top
        , Parser.map Restwatch (s "restwatch")
        , Parser.map Stopwatch (s "stopwatch")
        ]
