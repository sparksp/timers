module Main exposing (main)

import Browser exposing (Document, UrlRequest(..))
import Browser.Navigation as Nav
import Html
import Page exposing (Page)
import Page.Blank as Blank
import Page.Home as Home
import Page.NotFound as NotFound
import Restwatch
import Route exposing (Route)
import Session exposing (Session)
import Stopwatch
import Url exposing (Url)


type Model
    = Redirect Session
    | NotFound Session
    | Home Session
    | Restwatch Restwatch.Model
    | Stopwatch Stopwatch.Model


init : () -> Url -> Nav.Key -> ( Model, Cmd Msg )
init _ url navKey =
    changeRouteTo (Route.fromUrl url) (Redirect (Session.guest navKey))


view : Model -> Document Msg
view model =
    case model of
        Redirect _ ->
            Page.view Page.Other Blank.view

        NotFound _ ->
            Page.view Page.Other NotFound.view

        Home _ ->
            Page.view Page.Home Home.view

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
    | ChangedUrl Url.Url
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

        Restwatch restwatch ->
            Restwatch.toSession restwatch

        Stopwatch stopwatch ->
            Stopwatch.toSession stopwatch


changeRouteTo : Maybe Route -> Model -> ( Model, Cmd Msg )
changeRouteTo maybeRoute model =
    let
        session =
            toSession model
    in
    case maybeRoute of
        Nothing ->
            ( NotFound session, Cmd.none )

        Just Route.Home ->
            ( Home session, Cmd.none )

        Just Route.Restwatch ->
            Restwatch.init session
                |> updateWith Restwatch GotRestwatchMsg model

        Just Route.Stopwatch ->
            Stopwatch.init session
                |> updateWith Stopwatch GotStopwatchMsg model


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case ( msg, model ) of
        ( ClickedLink urlRequest, _ ) ->
            case urlRequest of
                Browser.Internal url ->
                    ( model
                    , Nav.pushUrl (Session.navKey (toSession model)) (Url.toString url)
                    )

                Browser.External href ->
                    ( model
                    , Nav.load href
                    )

        ( ChangedUrl url, _ ) ->
            changeRouteTo (Route.fromUrl url) model

        ( GotRestwatchMsg restwatchMsg, Restwatch restwatch ) ->
            Restwatch.update restwatchMsg restwatch
                |> updateWith Restwatch GotRestwatchMsg model

        ( GotStopwatchMsg stopwatchMsg, Stopwatch stopwatch ) ->
            Stopwatch.update stopwatchMsg stopwatch
                |> updateWith Stopwatch GotStopwatchMsg model

        ( _, _ ) ->
            ( model, Cmd.none )


subscriptions : Model -> Sub Msg
subscriptions model =
    case model of
        Restwatch restwatch ->
            Sub.map GotRestwatchMsg (Restwatch.subscriptions restwatch)

        Stopwatch stopwatch ->
            Sub.map GotStopwatchMsg (Stopwatch.subscriptions stopwatch)

        _ ->
            Sub.none


main : Program () Model Msg
main =
    Browser.application
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        , onUrlRequest = ClickedLink
        , onUrlChange = ChangedUrl
        }


updateWith : (subModel -> Model) -> (subMsg -> Msg) -> Model -> ( subModel, Cmd subMsg ) -> ( Model, Cmd Msg )
updateWith toModel toMsg model ( subModel, subCmd ) =
    ( toModel subModel
    , Cmd.map toMsg subCmd
    )
