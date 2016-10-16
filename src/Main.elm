module Main exposing (..)

import Authenticator.Model
import Authenticator.Update
import Authenticator.View
-- import Cards
import Hop.Types
import Html exposing (..)
import Html.App
import Html.Attributes exposing (..)
import Html.Attributes.Aria exposing (..)
import Navigation
import Routes exposing (makeUrl, Route(..), urlParser)
import Statements
import Views exposing (aForPath, viewNotFound)


main : Program Never
main =
    Navigation.program urlParser
        { init = init
        , update = update
        , urlUpdate = urlUpdate
        , view = view
        , subscriptions = subscriptions
        }


-- MODEL


type alias Model =
    { authenticationMaybe : Maybe Authenticator.Model.Authentication
    , authenticatorModel : Authenticator.Model.Model
    -- , cardsModel : Cards.Model
    , location : Hop.Types.Location
    , page : String
    , route : Route
    , statementsModel : Statements.Model
    }


init : ( Route, Hop.Types.Location ) -> ( Model, Cmd Msg )
init ( route, location ) =
    { authenticationMaybe = Nothing
    , authenticatorModel = Authenticator.Model.init
    -- , cardsModel = Cards.init
    , location = location
    , page = "reference"
    , route = route
    , statementsModel = Statements.init
    }
        |> urlUpdate ( route, location )


-- ROUTING


urlUpdate : (Route, Hop.Types.Location) -> Model -> (Model, Cmd Msg)
urlUpdate (route, location) model =
    let
        model' = { model
            | location = location
            , route = route
            }
    in
        case route of
            AboutRoute ->
                (model', Cmd.none)

            AuthenticatorRoute _ ->
                (model', Cmd.none)

            -- CardsRoute childRoute ->
            --     let
            --         -- Cmd.map translateCardsMsg Cards.load
            --         (cardsModel, childEffect) = Cards.urlUpdate (childRoute, location) model'.cardsModel
            --     in
            --         ({ model' | cardsModel = cardsModel }, Cmd.map translateCardsMsg childEffect)

            HomeRoute ->
                (model', Cmd.none)

            NotFoundRoute ->
                (model', Cmd.none)

            StatementsRoute childRoute ->
                let
                    -- Cmd.map translateStatementsMsg Statements.load
                    (statementsModel, childEffect) = Statements.urlUpdate (childRoute, location) model'.statementsModel
                in
                    ({ model' | statementsModel = statementsModel }, Cmd.map translateStatementsMsg childEffect)


-- UPDATE


type Msg
    = AuthenticatorMsg Authenticator.Update.Msg
    -- | CardsMsg Cards.InternalMsg
    | Navigate String
    | StatementsMsg Statements.InternalMsg


-- cardsMsgTranslation : Cards.MsgTranslation Msg
-- cardsMsgTranslation =
--     { onInternalMsg = CardsMsg
--     , onNavigate = Navigate
--     }


statementsMsgTranslation : Statements.MsgTranslation Msg
statementsMsgTranslation =
    { onInternalMsg = StatementsMsg
    , onNavigate = Navigate
    }


-- translateCardsMsg : Cards.MsgTranslator Msg
-- translateCardsMsg = Cards.translateMsg cardsMsgTranslation


translateStatementsMsg : Statements.MsgTranslator Msg
translateStatementsMsg = Statements.translateMsg statementsMsgTranslation


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Navigate path ->
            let
                command =
                    makeUrl path
                        |> Navigation.newUrl
            in
                ( model, command )

        AuthenticatorMsg childMsg ->
            let
                ( authenticatorModel, childEffect ) =
                    Authenticator.Update.update childMsg model.authenticatorModel
                changed = authenticatorModel.authenticationMaybe /= model.authenticationMaybe
                model' = { model
                    | authenticationMaybe = authenticatorModel.authenticationMaybe
                    , authenticatorModel = authenticatorModel
                    -- , cardsModel = if changed
                    --     then
                    --         Cards.init
                    --     else
                    --         model.cardsModel
                    , statementsModel = if changed
                        then
                            Statements.init
                        else
                            model.statementsModel
                    }
                (model'', effect'') = if changed
                    then
                        update (Navigate "/") model'
                    else
                        (model', Cmd.none)
            in
                model'' ! [Cmd.map AuthenticatorMsg childEffect, effect'']

        -- CardsMsg childMsg ->
        --     let
        --         ( cardsModel, childEffect ) =
        --             Cards.update childMsg model.authenticationMaybe model.cardsModel
        --     in
        --         ( { model | cardsModel = cardsModel }, Cmd.map translateCardsMsg childEffect )

        StatementsMsg childMsg ->
            let
                ( statementsModel, childEffect ) =
                    Statements.update childMsg model.authenticationMaybe model.statementsModel
            in
                ( { model | statementsModel = statementsModel }, Cmd.map translateStatementsMsg childEffect )


-- VIEW


view : Model -> Html Msg
view model =
    let
        profileNavItem = case model.authenticationMaybe of
            Just authentication ->
                li [] [ aForPath Navigate "/profile" [] [ text authentication.name ] ]
            Nothing ->
                text ""
        signInOrOutNavItem = case model.authenticationMaybe of
            Just authentication ->
                li [] [ aForPath Navigate "/sign_out" [] [ text "Sign Out" ] ]
            Nothing ->
                li [] [ aForPath Navigate "/sign_in" [] [ text "Sign In" ] ]
        signUpNavItem = case model.authenticationMaybe of
            Just authentication ->
                text ""
            Nothing ->
                li [] [ aForPath Navigate "/sign_up" [] [ text "Sign Up" ] ]
    in
        div
            [ class "container-fluid" ]
            (
                [ nav [class "navbar navbar-fixed-top navbar-inverse"]
                    [ div
                        [ class "container-fluid" ]
                        [ div
                            [ class "navbar-header" ]
                            [ button
                                [ ariaExpanded "false"
                                , class "navbar-toggle collapsed"
                                , attribute "data-target" "#navbar-collapse"
                                , attribute "data-toggle" "collapse"
                                , type' "button"
                                ]
                                [ span [ class "sr-only" ] [ text "Toggle navigation" ]
                                , span [ class "icon-bar" ] []
                                , span [ class "icon-bar" ] []
                                , span [ class "icon-bar" ] []
                                ]
                            , aForPath Navigate "/" [ class "navbar-brand"] [ text "OGPToolbox-UI" ]
                            ]
                        , div
                            [ class "collapse navbar-collapse"
                            , id "navbar-collapse"
                            ]
                            [ ul [ class "nav navbar-nav" ]
                                [ li [] [ aForPath Navigate "/about" [] [ text "About" ] ]
                                , li [] [ aForPath Navigate "/cards" [] [ text "Cards" ] ]
                                , li [] [ aForPath Navigate "/statements" [] [ text "Statements" ] ]
                                ]
                            , ul [ class "nav navbar-nav navbar-right" ]
                                [ profileNavItem
                                , signInOrOutNavItem
                                , signUpNavItem
                                ]
                            ]
                        ]
                    ]
                ]
                ++ [ viewContent model ]
            )


viewContent : Model -> Html Msg
viewContent model =
    case model.route of
        AboutRoute ->
            p
                []
                [ img [ src "./img/elm.png" ] []
                , text "About OGPToolbox-UI"
                ]

        AuthenticatorRoute subRoute ->
            Html.App.map AuthenticatorMsg (Authenticator.View.view subRoute model.authenticatorModel)

        -- CardsRoute nestedRoute ->
        --     Html.App.map translateCardsMsg (Cards.view model.authenticationMaybe model.cardsModel)

        HomeRoute ->
            p
                []
                [ img [ src "./img/elm.png" ] []
                , text "Hello OGPToolbox-UI user"
                ]

        NotFoundRoute ->
            viewNotFound

        StatementsRoute nestedRoute ->
            Html.App.map translateStatementsMsg (Statements.view model.authenticationMaybe model.statementsModel)


-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none
    -- Sub.batch
    --     -- [ Emitter.listenString "navigation" Navigate
    --     -- , Sub.map Reference (Reference.subscriptions model.reference)
    --     ]