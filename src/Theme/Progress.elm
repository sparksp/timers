module Theme.Progress exposing (view)

import Html.Styled as Html exposing (Html)
import Html.Styled.Attributes as Attr
import Tailwind as Tw


view : List (Html.Attribute msg) -> List (Html msg) -> Float -> Html msg
view attributes label percent =
    Html.div
        [ Attr.class Tw.w_full
        , Attr.class Tw.my_2
        , Attr.class Tw.bg_gray_300
        , Attr.class Tw.text_center
        , Attr.class Tw.text_white
        , Attr.class Tw.text_lg
        , Attr.class Tw.leading_none
        ]
        [ Html.div
            (progress percent
                :: attributes
                ++ [ Attr.class Tw.transition_colors
                   , Attr.class Tw.duration_500
                   , Attr.class Tw.ease_out
                   , Attr.class Tw.py_2
                   ]
            )
            label
        ]



--- HELPER


progress : Float -> Html.Attribute msg
progress percent =
    Attr.style "width" (String.fromFloat percent ++ "%")
