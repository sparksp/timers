module Route exposing
    ( Route(..)
    , fromUrl
    , href
    )

import Html exposing (Attribute)
import Html.Attributes as Attr
import Url exposing (Url)
import Url.Parser as Parser exposing ((<?>), Parser, oneOf, s)
import Url.Parser.Query as Query


type Route
    = Home
    | Countdown (Maybe Int)
    | Restwatch
    | Stopwatch



-- HELPERS


href : Route -> Attribute msg
href targetRoute =
    Attr.href (routeToString targetRoute)


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

        Countdown Nothing ->
            [ "countdown" ]

        Countdown (Just time) ->
            [ "countdown", String.fromInt time ]

        Restwatch ->
            [ "restwatch" ]

        Stopwatch ->
            [ "stopwatch" ]


parser : Parser (Route -> a) a
parser =
    oneOf
        [ Parser.map Home Parser.top
        , Parser.map Countdown (s "countdown" <?> Query.int "t")
        , Parser.map Restwatch (s "restwatch")
        , Parser.map Stopwatch (s "stopwatch")
        ]
