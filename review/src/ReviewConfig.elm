module ReviewConfig exposing (config)

{-| Do not rename the ReviewConfig module or the config function, because
`elm-review` will look for these.

To add packages that contain rules, add them to this review project using

    `elm install author/packagename`

when inside the directory containing this file.

-}

import NoDebug.Log
import NoDebug.TodoOrToString
import NoDuplicatePorts
import NoUnused.CustomTypeConstructors
import NoUnused.Dependencies
import NoUnused.Variables
import Review.Rule as Rule exposing (Rule)
import UseCamelCase


config : List Rule
config =
    [ NoDebug.Log.rule
    , NoDebug.TodoOrToString.rule
    , NoUnused.CustomTypeConstructors.rule []
    , NoUnused.Dependencies.rule
    , NoUnused.Variables.rule
    , NoDuplicatePorts.rule
    , UseCamelCase.rule UseCamelCase.default
        |> Rule.ignoreErrorsForFiles
            [ "src/Html/Tailwind.elm"
            , "src/Svg/Tailwind.elm"
            ]
    ]
