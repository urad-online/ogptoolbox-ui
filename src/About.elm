module About exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import I18n


view : I18n.Language -> Html msg
view language =
    div []
        [ header []
            [ div [ class "container" ]
                [ div [ class "intro-text" ]
                    [ div [ class "intro-heading" ]
                        [ text (I18n.translate language (I18n.About)) ]
                    , div [ class "intro-lead-in" ]
                        [ text (I18n.translate language (I18n.AboutLead)) ]
                    ]
                ]
            ]
        , section [ class "bg-light-gray", id "what" ]
            [ div [ class "container" ]
                [ div [ class "row" ]
                    [ div [ class "col-lg-12 text-center" ]
                        [ h2 [ class "section-heading" ]
                            [ text "Qu'est ce que l'OGP Toolbox ?" ]
                        ]
                    ]
                , div [ class "row" ]
                    [ div [ class "col-md-12 col-sm-6" ]
                        [ p []
                            [ text "L'OGP Toolbox est une plateforme collaborative qui recense les outils numériques (logiciels et services en ligne) utilisés dans le monde entier pour renforcer la démocratie et promouvoir la transparence, la participation et la collaboration dans l'action publique. Ce catalogue crowdsourcé rassemble des outils développés et utilisés par des acteurs publics (gouvernements, administrations, parlements et collectivités territoriales), comme des acteurs du secteur privé (entreprises et start-ups) ou des acteurs de la société civile (associations, mouvements et citoyens engagés).                L'OGP Toolbox est conçue comme un réseau social : des cas d'usages concrets, des critères techniques expertisés par la communauté et des recommandations sous forme de collections d'outils permettent de profiter du savoir-faire des acteurs ayant déjà utilisé les solutions disponibles. " ]
                        ]
                    ]
                ]
            ]
        , section [ id "content" ]
            [ div [ class "container" ]
                [ div [ class "row" ]
                    [ div [ class "col-lg-12 text-center" ]
                        [ h2 [ class "section-heading" ]
                            [ text (I18n.translate language (I18n.AboutTypes)) ]
                        , h3 [ class "section-subheading text-muted" ]
                            [ text (I18n.translate language (I18n.AboutTypesContent)) ]
                        ]
                    ]
                , div [ class "row text-center" ]
                    [ div [ class "col-md-3" ]
                        [ span [ class "fa-stack fa-4x" ]
                            [ i [ class "fa fa-circle fa-stack-2x text-primary" ]
                                []
                            , i [ class "fa fa-wrench fa-stack-1x fa-inverse" ]
                                []
                            ]
                        , h4 [ class "service-heading" ]
                            [ text (I18n.translate language (I18n.Tool I18n.Singular)) ]
                        , p [ class "text-muted service-text" ]
                            [ text (I18n.translate language (I18n.AboutTypesContentTool)) ]
                        ]
                    , div [ class "col-md-3" ]
                        [ span [ class "fa-stack fa-4x" ]
                            [ i [ class "fa fa-circle fa-stack-2x text-primary" ]
                                []
                            , i [ class "fa fa-bookmark fa-stack-1x fa-inverse" ]
                                []
                            ]
                        , h4 [ class "service-heading" ]
                            [ text (I18n.translate language (I18n.UseCase I18n.Singular)) ]
                        , p [ class "text-muted service-text" ]
                            [ text (I18n.translate language (I18n.AboutTypesContentUseCase)) ]
                        ]
                    , div [ class "col-md-3" ]
                        [ span [ class "fa-stack fa-4x" ]
                            [ i [ class "fa fa-circle fa-stack-2x text-primary" ]
                                []
                            , i [ class "fa fa-user fa-stack-1x fa-inverse" ]
                                []
                            ]
                        , h4 [ class "service-heading" ]
                            [ text (I18n.translate language (I18n.Actor I18n.Singular)) ]
                        , p [ class "text-muted service-text" ]
                            [ text (I18n.translate language (I18n.AboutTypesContentActor)) ]
                        ]
                    , div [ class "col-md-3" ]
                        [ span [ class "fa-stack fa-4x" ]
                            [ i [ class "fa fa-circle fa-stack-2x text-primary" ]
                                []
                            , i [ class "fa fa-heart fa-stack-1x fa-inverse" ]
                                []
                            ]
                        , h4 [ class "service-heading" ]
                            [ text "Collection" ]
                        , p [ class "text-muted service-text" ]
                            [ text (I18n.translate language (I18n.AboutTypesContentCollection)) ]
                        ]
                    ]
                ]
            ]
        , section [ class "bg-light-gray", id "why" ]
            [ div [ class "container" ]
                [ div [ class "row" ]
                    [ div [ class "col-lg-12 text-center" ]
                        [ h2 [ class "section-heading" ]
                            [ text (I18n.translate language (I18n.AboutWhy)) ]
                        ]
                    ]
                , div [ class "row" ]
                    [ div [ class "col-md-12" ]
                        [ p []
                            [ text (I18n.translate language (I18n.AboutWhyContent1)) ]
                        , p []
                            [ text (I18n.translate language (I18n.AboutWhyContent2)) ]
                        ]
                    ]
                ]
            ]
        , section [ id "target" ]
            [ div [ class "container" ]
                [ div [ class "row" ]
                    [ div [ class "col-lg-12 text-center" ]
                        [ h2 [ class "section-heading" ]
                            [ text (I18n.translate language (I18n.AboutTarget)) ]
                        ]
                    ]
                , div [ class "row" ]
                    [ div [ class "col-md-12" ]
                        [ p []
                            [ text (I18n.translate language (I18n.AboutTargetContent)) ]
                        ]
                    ]
                ]
            ]
        , section [ class "bg-light-gray", id "dev" ]
            [ div [ class "container" ]
                [ div [ class "row" ]
                    [ div [ class "col-lg-12 text-center" ]
                        [ h2 [ class "section-heading" ]
                            [ text (I18n.translate language (I18n.AboutDev)) ]
                        ]
                    ]
                , div [ class "row" ]
                    [ div [ class "col-md-12" ]
                        [ p []
                            [ text (I18n.translate language (I18n.AboutDevContent)) ]
                        ]
                    ]
                ]
            ]
        , section [ id "languages" ]
            [ div [ class "container" ]
                [ div [ class "row" ]
                    [ div [ class "col-lg-12 text-center" ]
                        [ h2 [ class "section-heading" ]
                            [ text (I18n.translate language (I18n.AboutLanguages)) ]
                        ]
                    ]
                , div [ class "row" ]
                    [ div [ class "col-md-12" ]
                        [ p []
                            [ text (I18n.translate language (I18n.AboutLanguagesContent)) ]
                        ]
                    ]
                ]
            ]
        , section [ class "bg-light-gray", id "categories" ]
            [ div [ class "container" ]
                [ div [ class "row" ]
                    [ div [ class "col-lg-12 text-center" ]
                        [ h2 [ class "section-heading" ]
                            [ text (I18n.translate language (I18n.AboutCategories)) ]
                        ]
                    ]
                , div [ class "row" ]
                    [ div [ class "col-md-12" ]
                        [ p []
                            [ text (I18n.translate language (I18n.AboutCategoriesContent1))
                            , a [ href (I18n.translate language (I18n.AboutCategoriesContentLink)), target "_blank" ]
                                [ text (" (" ++ (I18n.translate language (I18n.AboutCategoriesContentLink)) ++ "). ") ]
                            , text (I18n.translate language (I18n.AboutCategoriesContent2))
                            ]
                        ]
                    ]
                ]
            ]
        , section [ id "data" ]
            [ div [ class "container" ]
                [ div [ class "row" ]
                    [ div [ class "col-lg-12 text-center" ]
                        [ h2 [ class "section-heading" ]
                            [ text (I18n.translate language (I18n.AboutData)) ]
                        ]
                    ]
                , div [ class "row" ]
                    [ div [ class "col-md-12" ]
                        [ p []
                            [ text (I18n.translate language (I18n.AboutDataContent0))
                            , ul []
                                [ li []
                                    [ text (I18n.translate language (I18n.AboutDataContent1))
                                    , ul []
                                        [ li []
                                            [ text "Appstream Debian" ]
                                        , li []
                                            [ text "Civicstack" ]
                                        , li []
                                            [ text "Tech Platforms for Civic Participation" ]
                                        , li []
                                            [ text "Ultimate Debian Database" ]
                                        , li []
                                            [ text "Wikidata" ]
                                        , li []
                                            [ text "Wiki Nuit Debout" ]
                                        , li []
                                            [ text "ParticipateDB" ]
                                        ]
                                    ]
                                , li []
                                    [ text (I18n.translate language (I18n.AboutDataContent2)) ]
                                ]
                            ]
                        ]
                    ]
                ]
            ]
        , section [ id "contribution", class "bg-light-gray" ]
            [ div [ class "container" ]
                [ div [ class "row" ]
                    [ div [ class "col-lg-12 text-center" ]
                        [ h2 [ class "section-heading" ]
                            [ text (I18n.translate language (I18n.AboutContribution)) ]
                        ]
                    ]
                , div [ class "row" ]
                    [ div [ class "col-md-12" ]
                        [ p []
                            [ text (I18n.translate language (I18n.AboutContributionContent)) ]
                        ]
                    ]
                ]
            ]
        , section [ id "moderation" ]
            [ div [ class "container" ]
                [ div [ class "row" ]
                    [ div [ class "col-lg-12 text-center" ]
                        [ h2 [ class "section-heading" ]
                            [ text (I18n.translate language (I18n.AboutModeration)) ]
                        ]
                    ]
                , div [ class "row" ]
                    [ div [ class "col-md-12" ]
                        [ p []
                            [ text (I18n.translate language (I18n.AboutModerationContent)) ]
                        ]
                    ]
                ]
            ]
        , section [ id "access", class "bg-light-gray" ]
            [ div [ class "container" ]
                [ div [ class "row" ]
                    [ div [ class "col-lg-12 text-center" ]
                        [ h2 [ class "section-heading" ]
                            [ text (I18n.translate language (I18n.AboutAccess)) ]
                        ]
                    ]
                , div [ class "row" ]
                    [ div [ class "col-md-12" ]
                        [ p []
                            [ text (I18n.translate language (I18n.AboutAccessContent))
                            , ul []
                                [ li []
                                    [ a [ href "https://framagit.org/codegouv/open-software-base-yaml", target "_blank" ]
                                        [ text "https://framagit.org/codegouv/open-software-base-yaml" ]
                                    ]
                                , li []
                                    [ a [ href "https://git.framasoft.org/codegouv/merge-open-software-base-yaml", target "_blank" ]
                                        [ text "https://git.framasoft.org/codegouv/merge-open-software-base-yaml" ]
                                    ]
                                ]
                            ]
                        ]
                    ]
                ]
            ]
        , section [ id "source" ]
            [ div [ class "container" ]
                [ div [ class "row" ]
                    [ div [ class "col-lg-12 text-center" ]
                        [ h2 [ class "section-heading" ]
                            [ text (I18n.translate language (I18n.AboutSource)) ]
                        ]
                    ]
                , div [ class "row" ]
                    [ div [ class "col-md-12" ]
                        [ p []
                            [ text (I18n.translate language (I18n.AboutSourceContent))
                            , ul []
                                [ li []
                                    [ a [ href "https://framagit.org/etalab/ogptoolbox-ui", target "_blank" ]
                                        [ text "https://framagit.org/etalab/ogptoolbox-ui" ]
                                    ]
                                , li []
                                    [ a [ href "https://framagit.org/retruco/retruco-api", target "_blank" ]
                                        [ text "https://framagit.org/retruco/retruco-api" ]
                                    ]
                                , li []
                                    [ a [ href "https://framagit.org/retruco/retruco-ui", target "_blank" ]
                                        [ text "https://framagit.org/retruco/retruco-ui" ]
                                    ]
                                ]
                            ]
                        ]
                    ]
                ]
            ]
        , section [ id "mentions" ]
            [ div [ class "container" ]
                [ div [ class "row" ]
                    [ div [ class "col-lg-12 text-center" ]
                        [ h2 [ class "section-heading" ]
                            [ text (I18n.translate language (I18n.AboutLegal)) ]
                        ]
                    ]
                , div [ class "row" ]
                    [ div [ class "col-md-12 text-center" ]
                        [ p []
                            [ text (I18n.translate language (I18n.AboutLegalContent)) ]
                        ]
                    ]
                ]
            ]
        , section [ id "mentions" ]
            [ div [ class "container" ]
                [ div [ class "row" ]
                    [ div [ class "col-lg-12 text-center" ]
                        [ h2 [ class "section-heading" ]
                            [ text (I18n.translate language (I18n.AboutCredits)) ]
                        ]
                    ]
                , div [ class "row" ]
                    [ div [ class "col-md-12 text-center" ]
                        [ p []
                            [ text (I18n.translate language (I18n.AboutCreditsContent))
                            , a [ href "https://github.com/WengerK/d3bubbles", target "_blank" ]
                                [ text "D3bubbles de Kevin Wenger." ]
                            ]
                        ]
                    ]
                ]
            ]
        , aside [ class "clients" ]
            [ div [ class "container" ]
                [ div [ class "row" ]
                    [ div [ class "col-md-3 col-sm-6" ]
                        [ a [ href "#" ]
                            [ img [ alt "", class "img-responsive img-centered", src "/img/logo/france.png" ]
                                []
                            ]
                        ]
                    , div [ class "col-md-3 col-sm-6" ]
                        [ a [ href "#" ]
                            [ img [ alt "", class "img-responsive img-centered", src "/img/logo/elyse.png" ]
                                []
                            ]
                        ]
                    , div [ class "col-md-3 col-sm-6" ]
                        [ a [ href "#" ]
                            [ img [ alt "", class "img-responsive img-centered", src "/img/logo/etalab.png" ]
                                []
                            ]
                        ]
                    , div [ class "col-md-3 col-sm-6" ]
                        [ a [ href "#" ]
                            [ img [ alt "", class "img-responsive img-centered", src "/img/logo/ogp.jpg" ]
                                []
                            ]
                        ]
                    ]
                ]
            ]
        ]
