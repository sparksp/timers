module Percent exposing
    ( Percent, percent
    , toInt, toFloat, toString
    )

{-| A Percent

@docs Percent, percent


# Formatting

@docs toInt, toFloat, toString

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


{-| Return a String representation of a Percent, where 100 is 100%
-}
toString : Percent -> String
toString (Percent int) =
    String.fromInt int ++ "%"
