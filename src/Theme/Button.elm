module Theme.Button exposing (attr)

import Css
import Html.Styled as Html
import Html.Styled.Attributes as Attr
import Html.Styled.Events as Events
import Tailwind.Utilities as Tw


attr : { color : Css.Style, onClick : Maybe msg } -> List (Html.Attribute msg)
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
    [ Attr.css
        [ color
        , Tw.text_white
        , Tw.font_bold
        , Tw.p_2
        , Tw.m_2
        , Tw.rounded
        , Css.disabled
            [ Tw.opacity_75
            , Tw.cursor_not_allowed
            ]
        ]
    , Attr.style "touch-action" "manipulation"
    , onClickAttr
    ]
