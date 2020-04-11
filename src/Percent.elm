module Percent exposing
    ( Percent, percent
    , fromInt, toInt
    , fromFloat, toFloat
    , toRatio, toString
    )

{-| A Percent

@docs Percent, percent


# Int

Int: 100 = 100%

@docs fromInt, toInt


# Float

Float: 1.0 = 100%

@docs fromFloat, toFloat

-}


type Percent
    = Percent Int


{-| See @fromInt
-}
percent : Int -> Percent
percent =
    fromInt


{-| Make a Percent from an Int, where 100 is 100%.
-}
fromInt : Int -> Percent
fromInt int =
    Percent int


{-| Get a Percent from a Float, where 1.0 is 100%
-}
fromFloat : Float -> Percent
fromFloat float =
    Percent (round <| float * 100)


{-| Return the Int of a Percent, where 100 is 100%.
-}
toInt : Percent -> Int
toInt (Percent int) =
    int


{-| Return a Float representation of a Percent, where 1.0 is 100%
-}
toFloat : Percent -> Float
toFloat (Percent int) =
    Basics.toFloat int / 100


toString : Percent -> String
toString (Percent int) =
    String.fromInt int ++ "%"


toRatio : Percent -> String
toRatio pc =
    "1:" ++ String.fromFloat (toFloat pc)
