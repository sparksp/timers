module Route exposing
    ( Route(..)
    , fromUrl
    , href
    , toUrl
    )

import Html.Styled as Html
import Html.Styled.Attributes as Attr
import Url exposing (Url)
import Url.Builder
import Url.Parser as Parser exposing ((<?>), Parser, oneOf, s)
import Url.Parser.Query as Query


type Route
    = Home
    | Countdown (Maybe Int)
    | Restwatch
    | Stopwatch



-- HELPERS


href : Route -> Html.Attribute msg
href targetRoute =
    Attr.href (toUrl targetRoute)


fromUrl : Url -> Maybe Route
fromUrl url =
    url
        |> Parser.parse parser


toUrl : Route -> String
toUrl page =
    case page of
        Home ->
            Url.Builder.absolute [] []

        Countdown Nothing ->
            Url.Builder.absolute [ "countdown" ] []

        Countdown (Just time) ->
            if time > 0 then
                Url.Builder.absolute [ "countdown" ] [ Url.Builder.string "t" (String.fromInt time) ]

            else
                -- This covers two possibilities:
                -- 1. When no time has been set (t=0)
                -- 2. Impossible times (t<0)
                toUrl (Countdown Nothing)

        Restwatch ->
            Url.Builder.absolute [ "restwatch" ] []

        Stopwatch ->
            Url.Builder.absolute [ "stopwatch" ] []



-- INTERNAL


parser : Parser (Route -> a) a
parser =
    oneOf
        [ Parser.map Home Parser.top
        , Parser.map Countdown (s "countdown" <?> Query.int "t")
        , Parser.map Restwatch (s "restwatch")
        , Parser.map Stopwatch (s "stopwatch")
        ]
