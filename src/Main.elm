module Main exposing (Model, Msg, main)

import Browser exposing (UrlRequest)
import Browser.Navigation as Nav
import Browser.Styled as Browser exposing (Document)
import Html.Styled as Html
import Page exposing (Page)
import Page.Blank as Blank
import Page.Countdown as Countdown
import Page.Home as Home
import Page.NotFound as NotFound
import Page.Restwatch as Restwatch
import Page.Stopwatch as Stopwatch
import Route exposing (Route)
import Session exposing (Session)
import Url exposing (Url)


type Model
    = Redirect Session
    | NotFound Session
    | Home Session
    | Countdown Countdown.Model
    | Restwatch Restwatch.Model
    | Stopwatch Stopwatch.Model


init : () -> Url -> Nav.Key -> ( Model, Cmd Msg )
init _ url navKey =
    changeRouteTo (Route.fromUrl url) (Redirect (Session.session navKey))


view : Model -> Document Msg
view model =
    case model of
        Redirect _ ->
            Page.view Page.Other Blank.view

        NotFound _ ->
            Page.view Page.Other NotFound.view

        Home _ ->
            Page.view Page.Home Home.view

        Countdown countdown ->
            viewPage Page.Countdown GotCountdownMsg (Countdown.view countdown)

        Restwatch restwatch ->
            viewPage Page.Restwatch GotRestwatchMsg (Restwatch.view restwatch)

        Stopwatch stopwatch ->
            viewPage Page.Stopwatch GotStopwatchMsg (Stopwatch.view stopwatch)


viewPage : Page -> (msgA -> msgB) -> Document msgA -> Document msgB
viewPage page toMsg doc =
    let
        { title, body } =
            Page.view page doc
    in
    { title = title
    , body = List.map (Html.map toMsg) body
    }


type Msg
    = ClickedLink UrlRequest
    | ChangedUrl Url
    | GotCountdownMsg Countdown.Msg
    | GotRestwatchMsg Restwatch.Msg
    | GotStopwatchMsg Stopwatch.Msg


toSession : Model -> Session
toSession page =
    case page of
        Redirect session ->
            session

        NotFound session ->
            session

        Home session ->
            session

        Countdown countdown ->
            Countdown.toSession countdown

        Restwatch restwatch ->
            Restwatch.toSession restwatch

        Stopwatch stopwatch ->
            Stopwatch.toSession stopwatch


changeRouteTo : Maybe Route -> Model -> ( Model, Cmd Msg )
changeRouteTo maybeRoute model =
    let
        session : Session
        session =
            toSession model
    in
    case maybeRoute of
        Nothing ->
            ( NotFound session, Cmd.none )

        Just Route.Home ->
            ( Home session, Cmd.none )

        Just (Route.Countdown maybeTime) ->
            Countdown.init session maybeTime
                |> updateWith Countdown GotCountdownMsg

        Just Route.Restwatch ->
            Restwatch.init session
                |> updateWith Restwatch GotRestwatchMsg

        Just Route.Stopwatch ->
            Stopwatch.init session
                |> updateWith Stopwatch GotStopwatchMsg


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case ( msg, model ) of
        ( ClickedLink urlRequest, _ ) ->
            case urlRequest of
                Browser.Internal url ->
                    ( model
                    , Session.pushUrl (toSession model) url
                    )

                Browser.External href ->
                    ( model
                    , Nav.load href
                    )

        ( ChangedUrl url, _ ) ->
            changeRouteTo (Route.fromUrl url) model

        ( GotCountdownMsg countdownMsg, Countdown countdown ) ->
            Countdown.update countdownMsg countdown
                |> updateWith Countdown GotCountdownMsg

        ( GotCountdownMsg _, _ ) ->
            ( model, Cmd.none )

        ( GotRestwatchMsg restwatchMsg, Restwatch restwatch ) ->
            Restwatch.update restwatchMsg restwatch
                |> updateWith Restwatch GotRestwatchMsg

        ( GotRestwatchMsg _, _ ) ->
            ( model, Cmd.none )

        ( GotStopwatchMsg stopwatchMsg, Stopwatch stopwatch ) ->
            Stopwatch.update stopwatchMsg stopwatch
                |> updateWith Stopwatch GotStopwatchMsg

        ( GotStopwatchMsg _, _ ) ->
            ( model, Cmd.none )


subscriptions : Model -> Sub Msg
subscriptions model =
    case model of
        Redirect _ ->
            Sub.none

        NotFound _ ->
            Sub.none

        Home _ ->
            Sub.none

        Countdown countdown ->
            Sub.map GotCountdownMsg (Countdown.subscriptions countdown)

        Restwatch restwatch ->
            Sub.map GotRestwatchMsg (Restwatch.subscriptions restwatch)

        Stopwatch stopwatch ->
            Sub.map GotStopwatchMsg (Stopwatch.subscriptions stopwatch)


main : Program () Model Msg
main =
    Browser.application
        { init = init
        , view = view >> Browser.toUnstyled
        , update = update
        , subscriptions = subscriptions
        , onUrlRequest = ClickedLink
        , onUrlChange = ChangedUrl
        }


updateWith : (subModel -> Model) -> (subMsg -> Msg) -> ( subModel, Cmd subMsg ) -> ( Model, Cmd Msg )
updateWith toModel toMsg ( subModel, subCmd ) =
    ( toModel subModel
    , Cmd.map toMsg subCmd
    )
