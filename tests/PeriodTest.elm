module PeriodTest exposing (suite)

import Expect
import Fuzz
import Period exposing (Period, millis)
import Test exposing (Test, describe, fuzz, fuzz2, test)


suite : Test
suite =
    describe "Period" [ testToHuman, testToIso8601 ]


testToHuman : Test
testToHuman =
    describe "toHuman"
        [ fuzz (Fuzz.intRange 0 999) "less than 1s is 00:00.n" <|
            \ms ->
                millis ms
                    |> Period.toHuman
                    |> Expect.equal ("00:00." ++ String.left 1 (pad000 ms) ++ "\u{00A0}")
        , fuzz2 (Fuzz.intRange 1 59) (Fuzz.intRange 1 59) "converts to minutes and seconds with ms" <|
            \m s ->
                millis ((m * 60 + s) * 1000)
                    |> Period.toHuman
                    |> Expect.equal (pad00 m ++ ":" ++ pad00 s ++ ".0\u{00A0}")
        , test "converts hours, minutes and seconds with no ms" <|
            \_ ->
                let
                    d =
                        2

                    ( h, m, s ) =
                        ( 3, 45, 23 )
                in
                millis ((((d * 24 + h) * 60 + m) * 60 + s) * 1000)
                    |> Period.toHuman
                    |> Expect.equal (pad00 h ++ ":" ++ pad00 m ++ ":" ++ pad00 s)
        , test "days with no time has no days output" <|
            \_ ->
                let
                    d =
                        5
                in
                millis (d * 24 * 60 * 60 * 1000)
                    |> Period.toHuman
                    |> Expect.equal "00:00.0\u{00A0}"
        ]


testToIso8601 : Test
testToIso8601 =
    describe "toIso8601"
        [ fuzz (Fuzz.intRange 0 999) "less than 1s is PT0S" <|
            \ms ->
                millis ms
                    |> Period.toIso8601
                    |> Expect.equal "PT0S"
        , fuzz2 (Fuzz.intRange 1 59) (Fuzz.intRange 1 59) "converts to minutes and seconds" <|
            \m s ->
                millis ((m * 60 + s) * 1000)
                    |> Period.toIso8601
                    |> Expect.equal ("PT" ++ String.fromInt m ++ "M" ++ String.fromInt s ++ "S")
        , test "converts to days, hours, minutes and seconds" <|
            \_ ->
                let
                    d =
                        2

                    ( h, m, s ) =
                        ( 3, 45, 23 )
                in
                millis ((((d * 24 + h) * 60 + m) * 60 + s) * 1000)
                    |> Period.toIso8601
                    |> Expect.equal ("P" ++ String.fromInt d ++ "DT" ++ String.fromInt h ++ "H" ++ String.fromInt m ++ "M" ++ String.fromInt s ++ "S")
        , test "days with no time has no time output" <|
            \_ ->
                let
                    d =
                        5
                in
                millis (d * 24 * 60 * 60 * 1000)
                    |> Period.toIso8601
                    |> Expect.equal ("P" ++ String.fromInt d ++ "D")
        ]



--- HELPERS


pad000 : Int -> String
pad000 =
    String.padLeft 3 '0' << String.fromInt


pad00 : Int -> String
pad00 =
    String.padLeft 2 '0' << String.fromInt
