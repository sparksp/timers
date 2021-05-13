port module Alarm exposing
    ( load, play, stop
    , view
    )

{-| Handle playing an alarm.

@docs load, play, stop
@docs view

-}

import Html.Styled as Html exposing (Html)
import Html.Styled.Attributes as Attr
import Json.Encode as Encode


port alarm : Encode.Value -> Cmd msg


{-| Load the alarm sound

Mobile devices (especially iOS) will only play audio when triggered by a user action (i.e., a click/tap). Issue this command when a user clicks something to load the audio, then you can play it anytime.

-}
load : Cmd msg
load =
    alarm (Encode.string "load")


{-| Play the alarm
-}
play : Cmd msg
play =
    alarm (Encode.string "play")


{-| Stop the alarm
-}
stop : Cmd msg
stop =
    alarm (Encode.string "stop")


{-| The alarm Html

You need to include this in your view somewhere, otherwise there is no audio to play.

-}
view : Html msg
view =
    Html.audio [ Attr.id "alarm", Attr.controls False ]
        [ Html.source [ Attr.src "/audio/analog-watch-alarm_daniel-simion.mp3" ] []
        , Html.source [ Attr.src "/audio/analog-watch-alarm_daniel-simion.wav" ] []
        ]
