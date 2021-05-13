module Theme.Button exposing (attr)

import Html.Styled as Html
import Html.Styled.Attributes as Attr
import Html.Styled.Events as Events
import Tailwind as Tw


attr : { color : Html.Attribute msg, onClick : Maybe msg } -> List (Html.Attribute msg)
attr { color, onClick } =
    let
        onClickAttr : Html.Attribute msg
        onClickAttr =
            case onClick of
                Just m ->
                    Events.onClick m

                Nothing ->
                    Attr.disabled True
    in
    [ color
    , Attr.class Tw.text_white
    , Attr.class Tw.font_bold
    , Attr.class Tw.p_2
    , Attr.class Tw.m_2
    , Attr.class Tw.rounded
    , Attr.class Tw.disabled__opacity_75
    , Attr.class Tw.disabled__cursor_not_allowed
    , Attr.style "touch-action" "manipulation"
    , onClickAttr
    ]
