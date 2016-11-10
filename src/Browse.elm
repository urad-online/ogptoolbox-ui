module Browse exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)
import Types exposing (Card, Statement, StatementCustom(..))
import Views exposing (aForPath)


type PillType
    = Examples
    | Tools
    | Organizations


view : PillType -> List Statement -> (String -> msg) -> Html msg
view activeBadge statements navigate =
    div [ class "main-container" ]
        [ div [ class "browse-tag" ]
            [ div [ class "row" ]
                [ div [ class "container-fluid" ]
                    [ img [ src "img/bubbles2.png" ]
                        []
                    , div [ class "row filters" ]
                        [ div [ class "col-md-12 text-center" ]
                            [ text "Showing results suited for                    "
                            , a
                                [ class "btn btn-default dropdown-toggle"
                                , attribute "data-slide-to" "2"
                                , href "#carousel-example-generic"
                                , attribute "role" "button"
                                ]
                                [ text "all organizations                    " ]
                            , text "and available in                     "
                            , a
                                [ class "btn btn-default dropdown-toggle"
                                , attribute "data-slide-to" "3"
                                , href "#carousel-example-generic"
                                , attribute "role" "button"
                                ]
                                [ text "English                    " ]
                            ]
                        ]
                    ]
                ]
            ]
        , div [ class "scroll-content" ]
            [ div [ class "row browse" ]
                [ div [ class "container-fluid" ]
                    [ div [ class "row fixed" ]
                        [ div [ class "col-xs-12" ]
                            [ ul [ class "nav nav-pills nav-justified", attribute "role" "tablist" ]
                                [ li
                                    [ classList
                                        [ ( "active"
                                          , case activeBadge of
                                                Examples ->
                                                    True

                                                _ ->
                                                    False
                                          )
                                        ]
                                    , attribute "role" "presentation"
                                    ]
                                    [ a [ href "#" ]
                                        [ text "Examples "
                                        , span [ class "badge" ]
                                            [ text "42" ]
                                        ]
                                    ]
                                , li
                                    [ classList
                                        [ ( "active"
                                          , case activeBadge of
                                                Tools ->
                                                    True

                                                _ ->
                                                    False
                                          )
                                        ]
                                    , attribute "role" "presentation"
                                    ]
                                    [ a [ href "#" ]
                                        [ text "Tools "
                                        , span [ class "badge" ]
                                            [ text "42" ]
                                        ]
                                    ]
                                , li
                                    [ classList
                                        [ ( "active"
                                          , case activeBadge of
                                                Organizations ->
                                                    True

                                                _ ->
                                                    False
                                          )
                                        ]
                                    , attribute "role" "presentation"
                                    ]
                                    [ a [ href "#" ]
                                        [ text "Organizations "
                                        , span [ class "badge" ]
                                            [ text "42" ]
                                        ]
                                    ]
                                ]
                            ]
                        ]
                    , div [ class "row list" ]
                        (viewTools statements navigate
                            ++ [ div [ class "col-sm-12 text-center" ]
                                    [ a [ class "show-more" ]
                                        [ text "Show all 398"
                                        , span [ class "glyphicon glyphicon-menu-down" ]
                                            []
                                        ]
                                    ]
                               ]
                        )
                    ]
                ]
            ]
        ]


viewTools : List Statement -> (String -> msg) -> List (Html msg)
viewTools statements navigate =
    List.map
        (\statement ->
            case statement.custom of
                CardCustom card ->
                    viewTool statement card navigate

                _ ->
                    text "statement.custom is not a Card"
        )
        statements


viewTool : Statement -> Card -> (String -> msg) -> Html msg
viewTool statement card navigate =
    let
        toolUrl =
            "/tools/" ++ statement.id
    in
        div [ class "col-xs-12" ]
            [ div [ class "thumbnail example", onClick (navigate toolUrl) ]
                [ div [ class "visual" ]
                    [ img [ alt "screen", src "img/screen1.png" ]
                        []
                    ]
                , div [ class "caption" ]
                    [ h4 []
                        [ aForPath navigate toolUrl [] [ text card.name ]
                        , small []
                            [ text "Software" ]
                        ]
                    , div [ class "example-author" ]
                        [ img [ alt "screen", src "img/whitehouse.png" ]
                            []
                        , text "The White House"
                        ]
                    , p []
                        [ text "OpenSpending is a centralized platform on." ]
                    , span [ class "label label-default label-tool" ]
                        [ text "Default" ]
                    , span [ class "label label-default label-tool" ]
                        [ text "Default" ]
                    , span [ class "label label-default label-tool" ]
                        [ text "Default" ]
                    ]
                ]
            ]