module Theme.Progress exposing (view)

import Html.Styled as Html exposing (Html)
import Html.Styled.Attributes as Attr
import Tailwind.Utilities as Tw


view : List (Html.Attribute msg) -> List (Html msg) -> Float -> Html msg
view attributes label percent =
    Html.div
        [ Attr.css
            [ Tw.w_full
            , Tw.my_2
            , Tw.bg_gray_300
            , Tw.text_center
            , Tw.text_white
            , Tw.text_lg
            , Tw.leading_none
            ]
        ]
        [ Html.div
            (progress percent
                :: attributes
                ++ [ Attr.css
                        [ Tw.transition_colors
                        , Tw.duration_500
                        , Tw.ease_out
                        , Tw.py_2
                        ]
                   ]
            )
            label
        ]



--- HELPER


progress : Float -> Html.Attribute msg
progress percent =
    Attr.style "width" (String.fromFloat percent ++ "%")
