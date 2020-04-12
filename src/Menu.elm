module Menu exposing (State(..), toggle)


type State
    = Opened
    | Closed


toggle : State -> State
toggle state =
    case state of
        Opened ->
            Closed

        Closed ->
            Opened
