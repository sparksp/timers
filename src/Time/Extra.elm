module Time.Extra exposing
    ( add, sub
    , lt
    , map, map2
    )

{-| Useful extras for Time.

@docs add, sub
@docs lt
@docs map, map2

-}

import Time


{-| Add two `Time.Posix` and return a `Time.Posix`
-}
add : Time.Posix -> Time.Posix -> Time.Posix
add =
    map2 (+)


{-| Sub two `Time.Posix` and return a `Time.Posix`
-}
sub : Time.Posix -> Time.Posix -> Time.Posix
sub =
    map2 (-)


{-| Is the first `Time.Posix` < the second `Time.Posix`?
-}
lt : Time.Posix -> Time.Posix -> Bool
lt =
    unwrapBy2 (<)


{-| Map the Millis of a Time.Posix and return a Time.Posix.
-}
map : (Int -> Int) -> Time.Posix -> Time.Posix
map fn time =
    Time.millisToPosix <| fn <| Time.posixToMillis time


{-| Map the Millis of two Time.Posix and return a Time.Posix.
-}
map2 : (Int -> Int -> Int) -> Time.Posix -> Time.Posix -> Time.Posix
map2 fn timeA timeB =
    let
        millisA =
            Time.posixToMillis timeA

        millisB =
            Time.posixToMillis timeB
    in
    Time.millisToPosix <| fn millisA millisB


{-| Pass the Millis of two Time.Posix to the given function and return the result.
-}
unwrapBy2 : (Int -> Int -> value) -> Time.Posix -> Time.Posix -> value
unwrapBy2 fn timeA timeB =
    fn (Time.posixToMillis timeA) (Time.posixToMillis timeB)
