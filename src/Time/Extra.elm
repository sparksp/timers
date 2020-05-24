module Time.Extra exposing
    ( add, sub, mul
    , lt, min
    )

{-| Useful extras for Time.


# Maths

@docs add, sub, mul


# Comparison

@docs lt, min


# Mapping

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


{-| Multiply a `Time.Posix` by a Float and return a `Time.Posix`
-}
mul : Float -> Time.Posix -> Time.Posix
mul multiplicator =
    map (round << (*) multiplicator << toFloat)


{-| Is the first `Time.Posix` < the second `Time.Posix`?
-}
lt : Time.Posix -> Time.Posix -> Bool
lt =
    unwrapBy2 (<)


{-| Return the smaller of the two times.
-}
min : Time.Posix -> Time.Posix -> Time.Posix
min a b =
    if lt a b then
        a

    else
        b


{-| Map the Millis of a Time.Posix and return a Time.Posix.
-}
map : (Int -> Int) -> Time.Posix -> Time.Posix
map fn time =
    Time.millisToPosix (fn (Time.posixToMillis time))


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
    Time.millisToPosix (fn millisA millisB)


{-| Pass the Millis of two Time.Posix to the given function and return the result.
-}
unwrapBy2 : (Int -> Int -> value) -> Time.Posix -> Time.Posix -> value
unwrapBy2 fn timeA timeB =
    fn (Time.posixToMillis timeA) (Time.posixToMillis timeB)
