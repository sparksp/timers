module NoDuplicatePortsTests exposing (all)

import Expect
import NoDuplicatePorts exposing (rule)
import Review.Test
import Test exposing (Test, describe, test)


all : Test
all =
    describe "NoDuplicatePorts"
        [ test "should not report when there are no ports" <|
            \_ ->
                """
module A exposing (a)
a = 1"""
                    |> Review.Test.run rule
                    |> Review.Test.expectNoErrors
        , test "should not report when there is only file with ports" <|
            \_ ->
                """
port module A exposing (a)
port send : String -> Cmd msg
port recv : (String -> msg) -> Sub msg
a = 1"""
                    |> Review.Test.run rule
                    |> Review.Test.expectNoErrors
        , test "should report when there are two modules naming the same port" <|
            \_ ->
                [ """
port module A exposing (a)
port send : String -> Cmd msg
port recv : (String -> msg) -> Sub msg
a = 1""", """
port module B exposing (b)
port send : String -> Cmd msg
port recv : (String -> msg) -> Sub msg
b = 1""" ]
                    |> Review.Test.runOnModules rule
                    |> Review.Test.expectErrorsForModules
                        [ ( "A"
                          , [ Review.Test.error
                                { message = "Ensure that port names are unique across your project."
                                , details = [ "This port has been defined elsewhere." ]
                                , under = "send"
                                }
                            , Review.Test.error
                                { message = "Ensure that port names are unique across your project."
                                , details = [ "This port has been defined elsewhere." ]
                                , under = "recv"
                                }
                            ]
                          )
                        , ( "B"
                          , [ Review.Test.error
                                { message = "Ensure that port names are unique across your project."
                                , details = [ "This port has been defined elsewhere." ]
                                , under = "send"
                                }
                            , Review.Test.error
                                { message = "Ensure that port names are unique across your project."
                                , details = [ "This port has been defined elsewhere." ]
                                , under = "recv"
                                }
                            ]
                          )
                        ]
        ]
