module Theme.Progress exposing (view)

import Html exposing (Html)
import Html.Attributes as Attr
import Html.Tailwind as TW


view : List (Html.Attribute msg) -> List (Html msg) -> Float -> Html msg
view attributes label percent =
    Html.div
        [ TW.w_full, TW.my_2, TW.bg_gray_300, TW.text_center, TW.text_white, TW.text_lg, TW.leading_none ]
        [ Html.div
            (progress percent
                :: attributes
                ++ [ TW.transition_colors, TW.duration_500, TW.ease_out, TW.py_2 ]
            )
            label
        ]



--- HELPER


progress : Float -> Html.Attribute msg
progress percent =
    Attr.style "width" (String.fromFloat percent ++ "%")
