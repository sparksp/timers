module Period exposing
    ( Period(..), toHuman, toIso8601
    , fromTimer
    )

{-| Tools to format a period of time.

@docs Period, toHuman, toIso8601
@docs fromTimer

-}

import Time
import Time.Extra


{-| Representation of a `Period` in milliseconds.
-}
type Period
    = Millis Int


{-| Convert from `( Time.Posix, Time.Posix )` to `Period`.
-}
fromTimer : ( Time.Posix, Time.Posix ) -> Period
fromTimer ( start, end ) =
    Millis <| Time.posixToMillis <| Time.Extra.sub end start


{-| A human readable (digital clock style) string.

    For times under 1 hour, as "mm:ss.µ" (e.g., 03:07.2)
    For times over 1 hour, as "hh:mm:ss" (e.g., 08:03:07)

-}
toHuman : Period -> String
toHuman period =
    let
        duration =
            toDuration period
    in
    case duration.hours of
        0 ->
            -- mm:ss.µ
            pad00 duration.minutes ++ ":" ++ pad00 duration.seconds ++ "." ++ String.left 1 (pad000 duration.millis)

        _ ->
            -- hh:mm:ss
            pad00 duration.hours ++ ":" ++ pad00 duration.minutes ++ ":" ++ pad00 duration.seconds


{-| An ISO-8601 formatted String.

    toIso8601 (Millis 0)
    -> "PT02"

    toIso8601 (Millis 61000)
    -> "PT1M1S"

    Note: largest representation is a day.

-}
toIso8601 : Period -> String
toIso8601 ((Millis ms) as period) =
    if ms < 1000 then
        "PT0S"

    else
        durationToIso8601 (toDuration period)



--- DURATION


type alias Duration =
    { days : Int
    , hours : Int
    , minutes : Int
    , seconds : Int
    , millis : Int
    }


toDuration : Period -> Duration
toDuration (Millis ms) =
    let
        s =
            ms // 1000

        m =
            s // 60

        h =
            m // 60

        d =
            h // 24
    in
    { days = d -- what ever is left, we don't care about months or years
    , hours = zeroOrRemainderBy 24 h
    , minutes = zeroOrRemainderBy 60 m
    , seconds = zeroOrRemainderBy 60 s
    , millis = zeroOrRemainderBy 1000 ms
    }


zeroOrRemainderBy : Int -> Int -> Int
zeroOrRemainderBy a b =
    case a of
        0 ->
            0

        _ ->
            remainderBy a b



--- HUMAN HELPERS


pad000 : Int -> String
pad000 =
    String.padLeft 3 '0' << String.fromInt


pad00 : Int -> String
pad00 =
    String.padLeft 2 '0' << String.fromInt



--- ISO8601 Helpers


durationToIso8601 : Duration -> String
durationToIso8601 { days, hours, minutes, seconds } =
    case hours + minutes + seconds of
        0 ->
            "P" ++ isoBit 'D' days

        _ ->
            "P" ++ isoBit 'D' days ++ "T" ++ isoBit 'H' hours ++ isoBit 'M' minutes ++ isoBit 'S' seconds


isoBit : Char -> Int -> String
isoBit ch n =
    case n of
        0 ->
            ""

        _ ->
            String.fromInt n ++ String.fromChar ch
