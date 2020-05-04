port module Alarm exposing
    ( load, play, stop
    , view
    )

{-| Handle playing an alarm.

@docs load, play, stop
@docs view

-}

import Html exposing (Html)
import Html.Attributes as A
import Json.Encode as E


port alarm : E.Value -> Cmd msg


{-| Load the alarm sound

Mobile devices (especially iOS) will only play audio when triggered by a user action (i.e., a click/tap). Issue this command when a user clicks something to load the audio, then you can play it anytime.

-}
load : Cmd msg
load =
    alarm (E.string "load")


{-| Play the alarm
-}
play : Cmd msg
play =
    alarm (E.string "play")


{-| Stop the alarm
-}
stop : Cmd msg
stop =
    alarm (E.string "stop")


{-| The alarm Html

You need to include this in your view somewhere, otherwise there is no audio to play.

-}
view : Html msg
view =
    Html.audio [ A.id "alarm", A.controls False ]
        [ Html.source [ A.src "/audio/analog-watch-alarm_daniel-simion.mp3" ] []
        , Html.source [ A.src "/audio/analog-watch-alarm_daniel-simion.wav" ] []
        ]
