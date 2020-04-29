module Theme.Button exposing (attr)

import Html
import Html.Attributes as A
import Html.Events as Events
import Html.Tailwind as TW


attr : { color : Html.Attribute msg, onClick : Maybe msg } -> List (Html.Attribute msg)
attr { color, onClick } =
    let
        onClickAttr : Html.Attribute msg
        onClickAttr =
            case onClick of
                Just m ->
                    Events.onClick m

                Nothing ->
                    A.disabled True
    in
    [ color
    , TW.text_white
    , TW.font_bold
    , TW.p_2
    , TW.m_2
    , TW.rounded
    , TW.disabled__opacity_75
    , TW.disabled__cursor_not_allowed
    , A.style "touch-action" "manipulation"
    , onClickAttr
    ]
