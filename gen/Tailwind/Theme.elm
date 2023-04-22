module Tailwind.Theme exposing
    ( Color
    , transparent
    , current
    , black
    , white
    , gray_50
    , gray_100
    , gray_200
    , gray_300
    , gray_400
    , gray_500
    , gray_600
    , gray_700
    , gray_800
    , gray_900
    , gray_950
    , red_50
    , red_100
    , red_200
    , red_300
    , red_400
    , red_500
    , red_600
    , red_700
    , red_800
    , red_900
    , red_950
    , orange_50
    , orange_100
    , orange_200
    , orange_300
    , orange_400
    , orange_500
    , orange_600
    , orange_700
    , orange_800
    , orange_900
    , orange_950
    , green_50
    , green_100
    , green_200
    , green_300
    , green_400
    , green_500
    , green_600
    , green_700
    , green_800
    , green_900
    , green_950
    , blue_50
    , blue_100
    , blue_200
    , blue_300
    , blue_400
    , blue_500
    , blue_600
    , blue_700
    , blue_800
    , blue_900
    , blue_950
    , Opacity
    , opacity0
    , opacity5
    , opacity10
    , opacity20
    , opacity25
    , opacity30
    , opacity40
    , opacity50
    , opacity60
    , opacity70
    , opacity75
    , opacity80
    , opacity90
    , opacity95
    , opacity100
    )

{-|


## This Tailwind Theme

This module contains all colors and opacities from your tailwind configuration.

If you want to extend the set of available colors or opacities, take a look [configuring tailwind].


### Colors

@docs Color
@docs transparent
@docs current
@docs black
@docs white
@docs gray_50
@docs gray_100
@docs gray_200
@docs gray_300
@docs gray_400
@docs gray_500
@docs gray_600
@docs gray_700
@docs gray_800
@docs gray_900
@docs gray_950
@docs red_50
@docs red_100
@docs red_200
@docs red_300
@docs red_400
@docs red_500
@docs red_600
@docs red_700
@docs red_800
@docs red_900
@docs red_950
@docs orange_50
@docs orange_100
@docs orange_200
@docs orange_300
@docs orange_400
@docs orange_500
@docs orange_600
@docs orange_700
@docs orange_800
@docs orange_900
@docs orange_950
@docs green_50
@docs green_100
@docs green_200
@docs green_300
@docs green_400
@docs green_500
@docs green_600
@docs green_700
@docs green_800
@docs green_900
@docs green_950
@docs blue_50
@docs blue_100
@docs blue_200
@docs blue_300
@docs blue_400
@docs blue_500
@docs blue_600
@docs blue_700
@docs blue_800
@docs blue_900
@docs blue_950


### Opacities

@docs Opacity
@docs opacity0
@docs opacity5
@docs opacity10
@docs opacity20
@docs opacity25
@docs opacity30
@docs opacity40
@docs opacity50
@docs opacity60
@docs opacity70
@docs opacity75
@docs opacity80
@docs opacity90
@docs opacity95
@docs opacity100

[configuring tailwind]: https://tailwindcss.com/docs/responsive-design

-}

import Tailwind.Color as Tw


{-| The type for tailwind colors.

Values of this type can be found in this module.

They can be used with tailwind utility functions like `bg_color`.

If you want to generate custom values, install the [elm-tailwind-modules-base](https://package.elm-lang.org/packages/matheus23/elm-tailwind-modules-base/latest/)
library and its utilities like `arbitraryRgb`.

-}
type alias Color =
    Tw.Color


{-| The type for tailwind opacities.

Values of this type can be found in this module.

They can be used to modify the default opacities associated with colors
using the `withOpacity` function.

If you want to generate custom values, install the [elm-tailwind-modules-base](https://package.elm-lang.org/packages/matheus23/elm-tailwind-modules-base/latest/)
library and its utilities like `arbitraryOpactiyPct`.

-}
type alias Opacity =
    Tw.Opacity


{-| The color `transparent` from the tailwind configuration.

Its value is `transparent`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
transparent : Color
transparent =
    Tw.Color "rgb" "0" "0" "0" (Tw.Opacity "0")


{-| The color `current` from the tailwind configuration.

Its value is `currentColor`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
current : Color
current =
    Tw.Keyword "currentColor"


{-| The color `black` from the tailwind configuration.

Its value is `#000`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
black : Color
black =
    Tw.Color "rgb" "0" "0" "0" Tw.ViaVariable


{-| The color `white` from the tailwind configuration.

Its value is `#fff`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
white : Color
white =
    Tw.Color "rgb" "255" "255" "255" Tw.ViaVariable


{-| The color `gray_50` from the tailwind configuration.

Its value is `#f9fafb`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
gray_50 : Color
gray_50 =
    Tw.Color "rgb" "249" "250" "251" Tw.ViaVariable


{-| The color `gray_100` from the tailwind configuration.

Its value is `#f3f4f6`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
gray_100 : Color
gray_100 =
    Tw.Color "rgb" "243" "244" "246" Tw.ViaVariable


{-| The color `gray_200` from the tailwind configuration.

Its value is `#e5e7eb`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
gray_200 : Color
gray_200 =
    Tw.Color "rgb" "229" "231" "235" Tw.ViaVariable


{-| The color `gray_300` from the tailwind configuration.

Its value is `#d1d5db`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
gray_300 : Color
gray_300 =
    Tw.Color "rgb" "209" "213" "219" Tw.ViaVariable


{-| The color `gray_400` from the tailwind configuration.

Its value is `#9ca3af`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
gray_400 : Color
gray_400 =
    Tw.Color "rgb" "156" "163" "175" Tw.ViaVariable


{-| The color `gray_500` from the tailwind configuration.

Its value is `#6b7280`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
gray_500 : Color
gray_500 =
    Tw.Color "rgb" "107" "114" "128" Tw.ViaVariable


{-| The color `gray_600` from the tailwind configuration.

Its value is `#4b5563`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
gray_600 : Color
gray_600 =
    Tw.Color "rgb" "75" "85" "99" Tw.ViaVariable


{-| The color `gray_700` from the tailwind configuration.

Its value is `#374151`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
gray_700 : Color
gray_700 =
    Tw.Color "rgb" "55" "65" "81" Tw.ViaVariable


{-| The color `gray_800` from the tailwind configuration.

Its value is `#1f2937`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
gray_800 : Color
gray_800 =
    Tw.Color "rgb" "31" "41" "55" Tw.ViaVariable


{-| The color `gray_900` from the tailwind configuration.

Its value is `#111827`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
gray_900 : Color
gray_900 =
    Tw.Color "rgb" "17" "24" "39" Tw.ViaVariable


{-| The color `gray_950` from the tailwind configuration.

Its value is `#030712`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
gray_950 : Color
gray_950 =
    Tw.Color "rgb" "3" "7" "18" Tw.ViaVariable


{-| The color `red_50` from the tailwind configuration.

Its value is `#fef2f2`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
red_50 : Color
red_50 =
    Tw.Color "rgb" "254" "242" "242" Tw.ViaVariable


{-| The color `red_100` from the tailwind configuration.

Its value is `#fee2e2`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
red_100 : Color
red_100 =
    Tw.Color "rgb" "254" "226" "226" Tw.ViaVariable


{-| The color `red_200` from the tailwind configuration.

Its value is `#fecaca`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
red_200 : Color
red_200 =
    Tw.Color "rgb" "254" "202" "202" Tw.ViaVariable


{-| The color `red_300` from the tailwind configuration.

Its value is `#fca5a5`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
red_300 : Color
red_300 =
    Tw.Color "rgb" "252" "165" "165" Tw.ViaVariable


{-| The color `red_400` from the tailwind configuration.

Its value is `#f87171`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
red_400 : Color
red_400 =
    Tw.Color "rgb" "248" "113" "113" Tw.ViaVariable


{-| The color `red_500` from the tailwind configuration.

Its value is `#ef4444`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
red_500 : Color
red_500 =
    Tw.Color "rgb" "239" "68" "68" Tw.ViaVariable


{-| The color `red_600` from the tailwind configuration.

Its value is `#dc2626`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
red_600 : Color
red_600 =
    Tw.Color "rgb" "220" "38" "38" Tw.ViaVariable


{-| The color `red_700` from the tailwind configuration.

Its value is `#b91c1c`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
red_700 : Color
red_700 =
    Tw.Color "rgb" "185" "28" "28" Tw.ViaVariable


{-| The color `red_800` from the tailwind configuration.

Its value is `#991b1b`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
red_800 : Color
red_800 =
    Tw.Color "rgb" "153" "27" "27" Tw.ViaVariable


{-| The color `red_900` from the tailwind configuration.

Its value is `#7f1d1d`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
red_900 : Color
red_900 =
    Tw.Color "rgb" "127" "29" "29" Tw.ViaVariable


{-| The color `red_950` from the tailwind configuration.

Its value is `#450a0a`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
red_950 : Color
red_950 =
    Tw.Color "rgb" "69" "10" "10" Tw.ViaVariable


{-| The color `orange_50` from the tailwind configuration.

Its value is `#fff7ed`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
orange_50 : Color
orange_50 =
    Tw.Color "rgb" "255" "247" "237" Tw.ViaVariable


{-| The color `orange_100` from the tailwind configuration.

Its value is `#ffedd5`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
orange_100 : Color
orange_100 =
    Tw.Color "rgb" "255" "237" "213" Tw.ViaVariable


{-| The color `orange_200` from the tailwind configuration.

Its value is `#fed7aa`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
orange_200 : Color
orange_200 =
    Tw.Color "rgb" "254" "215" "170" Tw.ViaVariable


{-| The color `orange_300` from the tailwind configuration.

Its value is `#fdba74`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
orange_300 : Color
orange_300 =
    Tw.Color "rgb" "253" "186" "116" Tw.ViaVariable


{-| The color `orange_400` from the tailwind configuration.

Its value is `#fb923c`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
orange_400 : Color
orange_400 =
    Tw.Color "rgb" "251" "146" "60" Tw.ViaVariable


{-| The color `orange_500` from the tailwind configuration.

Its value is `#f97316`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
orange_500 : Color
orange_500 =
    Tw.Color "rgb" "249" "115" "22" Tw.ViaVariable


{-| The color `orange_600` from the tailwind configuration.

Its value is `#ea580c`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
orange_600 : Color
orange_600 =
    Tw.Color "rgb" "234" "88" "12" Tw.ViaVariable


{-| The color `orange_700` from the tailwind configuration.

Its value is `#c2410c`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
orange_700 : Color
orange_700 =
    Tw.Color "rgb" "194" "65" "12" Tw.ViaVariable


{-| The color `orange_800` from the tailwind configuration.

Its value is `#9a3412`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
orange_800 : Color
orange_800 =
    Tw.Color "rgb" "154" "52" "18" Tw.ViaVariable


{-| The color `orange_900` from the tailwind configuration.

Its value is `#7c2d12`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
orange_900 : Color
orange_900 =
    Tw.Color "rgb" "124" "45" "18" Tw.ViaVariable


{-| The color `orange_950` from the tailwind configuration.

Its value is `#431407`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
orange_950 : Color
orange_950 =
    Tw.Color "rgb" "67" "20" "7" Tw.ViaVariable


{-| The color `green_50` from the tailwind configuration.

Its value is `#f0fdf4`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
green_50 : Color
green_50 =
    Tw.Color "rgb" "240" "253" "244" Tw.ViaVariable


{-| The color `green_100` from the tailwind configuration.

Its value is `#dcfce7`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
green_100 : Color
green_100 =
    Tw.Color "rgb" "220" "252" "231" Tw.ViaVariable


{-| The color `green_200` from the tailwind configuration.

Its value is `#bbf7d0`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
green_200 : Color
green_200 =
    Tw.Color "rgb" "187" "247" "208" Tw.ViaVariable


{-| The color `green_300` from the tailwind configuration.

Its value is `#86efac`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
green_300 : Color
green_300 =
    Tw.Color "rgb" "134" "239" "172" Tw.ViaVariable


{-| The color `green_400` from the tailwind configuration.

Its value is `#4ade80`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
green_400 : Color
green_400 =
    Tw.Color "rgb" "74" "222" "128" Tw.ViaVariable


{-| The color `green_500` from the tailwind configuration.

Its value is `#22c55e`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
green_500 : Color
green_500 =
    Tw.Color "rgb" "34" "197" "94" Tw.ViaVariable


{-| The color `green_600` from the tailwind configuration.

Its value is `#16a34a`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
green_600 : Color
green_600 =
    Tw.Color "rgb" "22" "163" "74" Tw.ViaVariable


{-| The color `green_700` from the tailwind configuration.

Its value is `#15803d`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
green_700 : Color
green_700 =
    Tw.Color "rgb" "21" "128" "61" Tw.ViaVariable


{-| The color `green_800` from the tailwind configuration.

Its value is `#166534`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
green_800 : Color
green_800 =
    Tw.Color "rgb" "22" "101" "52" Tw.ViaVariable


{-| The color `green_900` from the tailwind configuration.

Its value is `#14532d`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
green_900 : Color
green_900 =
    Tw.Color "rgb" "20" "83" "45" Tw.ViaVariable


{-| The color `green_950` from the tailwind configuration.

Its value is `#052e16`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
green_950 : Color
green_950 =
    Tw.Color "rgb" "5" "46" "22" Tw.ViaVariable


{-| The color `blue_50` from the tailwind configuration.

Its value is `#eff6ff`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
blue_50 : Color
blue_50 =
    Tw.Color "rgb" "239" "246" "255" Tw.ViaVariable


{-| The color `blue_100` from the tailwind configuration.

Its value is `#dbeafe`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
blue_100 : Color
blue_100 =
    Tw.Color "rgb" "219" "234" "254" Tw.ViaVariable


{-| The color `blue_200` from the tailwind configuration.

Its value is `#bfdbfe`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
blue_200 : Color
blue_200 =
    Tw.Color "rgb" "191" "219" "254" Tw.ViaVariable


{-| The color `blue_300` from the tailwind configuration.

Its value is `#93c5fd`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
blue_300 : Color
blue_300 =
    Tw.Color "rgb" "147" "197" "253" Tw.ViaVariable


{-| The color `blue_400` from the tailwind configuration.

Its value is `#60a5fa`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
blue_400 : Color
blue_400 =
    Tw.Color "rgb" "96" "165" "250" Tw.ViaVariable


{-| The color `blue_500` from the tailwind configuration.

Its value is `#3b82f6`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
blue_500 : Color
blue_500 =
    Tw.Color "rgb" "59" "130" "246" Tw.ViaVariable


{-| The color `blue_600` from the tailwind configuration.

Its value is `#2563eb`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
blue_600 : Color
blue_600 =
    Tw.Color "rgb" "37" "99" "235" Tw.ViaVariable


{-| The color `blue_700` from the tailwind configuration.

Its value is `#1d4ed8`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
blue_700 : Color
blue_700 =
    Tw.Color "rgb" "29" "78" "216" Tw.ViaVariable


{-| The color `blue_800` from the tailwind configuration.

Its value is `#1e40af`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
blue_800 : Color
blue_800 =
    Tw.Color "rgb" "30" "64" "175" Tw.ViaVariable


{-| The color `blue_900` from the tailwind configuration.

Its value is `#1e3a8a`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
blue_900 : Color
blue_900 =
    Tw.Color "rgb" "30" "58" "138" Tw.ViaVariable


{-| The color `blue_950` from the tailwind configuration.

Its value is `#172554`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
blue_950 : Color
blue_950 =
    Tw.Color "rgb" "23" "37" "84" Tw.ViaVariable


{-| The opacity `opacity0` from the tailwind configuration.

It is set to `0` (likely a number between 0 and 1, where 1 means opaque and 0 means transparent)

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
opacity0 : Opacity
opacity0 =
    Tw.Opacity "0"


{-| The opacity `opacity5` from the tailwind configuration.

It is set to `0.05` (likely a number between 0 and 1, where 1 means opaque and 0 means transparent)

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
opacity5 : Opacity
opacity5 =
    Tw.Opacity "0.05"


{-| The opacity `opacity10` from the tailwind configuration.

It is set to `0.1` (likely a number between 0 and 1, where 1 means opaque and 0 means transparent)

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
opacity10 : Opacity
opacity10 =
    Tw.Opacity "0.1"


{-| The opacity `opacity20` from the tailwind configuration.

It is set to `0.2` (likely a number between 0 and 1, where 1 means opaque and 0 means transparent)

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
opacity20 : Opacity
opacity20 =
    Tw.Opacity "0.2"


{-| The opacity `opacity25` from the tailwind configuration.

It is set to `0.25` (likely a number between 0 and 1, where 1 means opaque and 0 means transparent)

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
opacity25 : Opacity
opacity25 =
    Tw.Opacity "0.25"


{-| The opacity `opacity30` from the tailwind configuration.

It is set to `0.3` (likely a number between 0 and 1, where 1 means opaque and 0 means transparent)

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
opacity30 : Opacity
opacity30 =
    Tw.Opacity "0.3"


{-| The opacity `opacity40` from the tailwind configuration.

It is set to `0.4` (likely a number between 0 and 1, where 1 means opaque and 0 means transparent)

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
opacity40 : Opacity
opacity40 =
    Tw.Opacity "0.4"


{-| The opacity `opacity50` from the tailwind configuration.

It is set to `0.5` (likely a number between 0 and 1, where 1 means opaque and 0 means transparent)

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
opacity50 : Opacity
opacity50 =
    Tw.Opacity "0.5"


{-| The opacity `opacity60` from the tailwind configuration.

It is set to `0.6` (likely a number between 0 and 1, where 1 means opaque and 0 means transparent)

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
opacity60 : Opacity
opacity60 =
    Tw.Opacity "0.6"


{-| The opacity `opacity70` from the tailwind configuration.

It is set to `0.7` (likely a number between 0 and 1, where 1 means opaque and 0 means transparent)

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
opacity70 : Opacity
opacity70 =
    Tw.Opacity "0.7"


{-| The opacity `opacity75` from the tailwind configuration.

It is set to `0.75` (likely a number between 0 and 1, where 1 means opaque and 0 means transparent)

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
opacity75 : Opacity
opacity75 =
    Tw.Opacity "0.75"


{-| The opacity `opacity80` from the tailwind configuration.

It is set to `0.8` (likely a number between 0 and 1, where 1 means opaque and 0 means transparent)

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
opacity80 : Opacity
opacity80 =
    Tw.Opacity "0.8"


{-| The opacity `opacity90` from the tailwind configuration.

It is set to `0.9` (likely a number between 0 and 1, where 1 means opaque and 0 means transparent)

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
opacity90 : Opacity
opacity90 =
    Tw.Opacity "0.9"


{-| The opacity `opacity95` from the tailwind configuration.

It is set to `0.95` (likely a number between 0 and 1, where 1 means opaque and 0 means transparent)

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
opacity95 : Opacity
opacity95 =
    Tw.Opacity "0.95"


{-| The opacity `opacity100` from the tailwind configuration.

It is set to `1` (likely a number between 0 and 1, where 1 means opaque and 0 means transparent)

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
opacity100 : Opacity
opacity100 =
    Tw.Opacity "1"
