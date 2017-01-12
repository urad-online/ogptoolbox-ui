module Press exposing (..)

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
                        [ text (I18n.translate language (I18n.Press)) ]
                    , div [ class "intro-lead-in" ]
                        [ text (I18n.translate language (I18n.PressLead)) ]
                    ]
                ]
            ]
        , section [ class "bloc-citation bg-light-gray", id "lemonde" ]
            [ div [ class "container" ]
                [ div [ class "row" ]
                    [ a [ href "http://www.lemonde.fr/pixels/article/2016/10/25/civic-tech-vers-une-boite-a-outils-de-la-democratie-numerique_5019800_4408996.html", target "_blank" ]
                        [ div [ class "col-lg-8 col-lg-offset-2 text-center" ]
                            [ h2 [ class "section-citation" ]
                                [ text "« Vers une boite à outils de la démocratie numérique. »" ]
                            , p []
                                [ text "Le Monde.fr"
                                , span [ attribute "aria-hidden" "true", class "glyphicon glyphicon-menu-right small" ]
                                    []
                                ]
                            ]
                        ]
                    ]
                ]
            ]
        , section [ class "bloc-citation", id "modernisation" ]
            [ div [ class "container" ]
                [ div [ class "row" ]
                    [ div [ class "col-lg-8 col-lg-offset-2 text-center" ]
                        [ h2 [ class "section-citation" ]
                            [ text "« L'action publique se transforme »" ]
                        , p []
                            [ a [ href "http://modernisation.gouv.fr/laction-publique-se-transforme/en-ouvrant-les-donnees-publiques/lancement-ogp-toolbox-une-plateforme-de-solutions-numeriques-pour-la-democratie", target "_blank" ]
                                [ text "Modernisation.gouv.fr"
                                , span [ attribute "aria-hidden" "true", class "glyphicon glyphicon-menu-right small" ]
                                    []
                                ]
                            ]
                        ]
                    ]
                ]
            ]
        , section [ class "bloc-citation bg-light-gray", id "mediapart" ]
            [ div [ class "container" ]
                [ div [ class "row" ]
                    [ div [ class "col-lg-8 col-lg-offset-2 text-center" ]
                        [ h2 [ class "section-citation" ]
                            [ text "« Vers un développement démocratique durable »" ]
                        , p []
                            [ a [ href "https://www.mediapart.fr/journal/culture-idees/061216/henri-verdier-vers-un-developpement-democratique-durable", target "_blank" ]
                                [ text "Mediapart"
                                , span [ attribute "aria-hidden" "true", class "glyphicon glyphicon-menu-right small" ]
                                    []
                                ]
                            ]
                        ]
                    ]
                ]
            ]
        , section [ class "bloc-citation", id "presidence" ]
            [ div [ class "container" ]
                [ div [ class "row" ]
                    [ div [ class "col-lg-8 col-lg-offset-2 text-center" ]
                        [ h2 [ class "section-citation" ]
                            [ text "Retour sur le hackathon à l'Élysée" ]
                        , p []
                            [ a [ href "https://www.dailymotion.com/video/x54m9l3_reportage-retour-sur-le-hackathon-a-l-elysee-dans-le-cadre-du-sommet-mondial-du-partenariat-pour-un_news", target "_blank" ]
                                [ text "Présidence de la République "
                                , span [ attribute "aria-hidden" "true", class "glyphicon glyphicon-film small" ]
                                    []
                                ]
                            ]
                        ]
                    ]
                ]
            ]
        , section [ class "bloc-citation bg-light-gray", id "acteurspublics" ]
            [ div [ class "container" ]
                [ div [ class "row" ]
                    [ div [ class "col-lg-8 col-lg-offset-2 text-center" ]
                        [ h2 [ class "section-citation" ]
                            [ text "« Un service public renforcé par la participation de la société civile »" ]
                        , p []
                            [ a [ href "http://www.acteurspublics.tv/play/43555/paulaforteza", target "_blank" ]
                                [ text "Acteurs Publics TV "
                                , span [ attribute "aria-hidden" "true", class "glyphicon glyphicon-film small" ]
                                    []
                                ]
                            ]
                        ]
                    ]
                ]
            ]
        , section [ class "bloc-citation", id "joinup" ]
            [ div [ class "container" ]
                [ div [ class "row" ]
                    [ div [ class "col-lg-8 col-lg-offset-2 text-center" ]
                        [ h2 [ class "section-citation" ]
                            [ text "« France to develop a toolbox for Open Government »" ]
                        , p []
                            [ a [ href "https://joinup.ec.europa.eu/community/opengov/news/france-develop-toolbox-open-government", target "_blank" ]
                                [ text "Joinup"
                                , span [ attribute "aria-hidden" "true", class "glyphicon glyphicon-menu-right small" ]
                                    []
                                ]
                            ]
                        ]
                    ]
                ]
            ]
        , section [ class "bloc-citation bg-light-gray", id "acteurspublics" ]
            [ div [ class "container" ]
                [ div [ class "row" ]
                    [ div [ class "col-lg-8 col-lg-offset-2 text-center" ]
                        [ h2 [ class "section-citation" ]
                            [ br []
                                []
                            , text "« Une boîte à outils d’applications numériques au service des administrations »"
                            ]
                        , p []
                            [ a [ href "http://www.acteurspublics.tv/play/43534/frechin", target "_blank" ]
                                [ text "Acteurs Publics TV "
                                , span [ attribute "aria-hidden" "true", class "glyphicon glyphicon-film small" ]
                                    []
                                ]
                            ]
                        ]
                    ]
                ]
            ]
        , section [ class "bloc-citation", id "opengov" ]
            [ div [ class "container" ]
                [ div [ class "row" ]
                    [ div [ class "col-lg-8 col-lg-offset-2 text-center" ]
                        [ h2 [ class "section-citation" ]
                            [ text "Launch of the OGP Toolbox hackathon" ]
                        , p []
                            [ a [ href "https://www.youtube.com/watch?v=_3w69Fzvv8I", target "_blank" ]
                                [ text "Open Government Partnership (EN)"
                                , span [ attribute "aria-hidden" "true", class "glyphicon glyphicon-film small" ]
                                    []
                                ]
                            ]
                        ]
                    ]
                ]
            ]
        , section [ class "bloc-citation bg-light-gray", id "huffington" ]
            [ div [ class "container" ]
                [ div [ class "row" ]
                    [ div [ class "col-lg-8 col-lg-offset-2 text-center" ]
                        [ h2 [ class "section-citation" ]
                            [ text "« The Future of Open Government »" ]
                        , p []
                            [ a [ href "http://www.huffingtonpost.com/manish-bapna/the-future-of-open-govern_b_13725080.html", target "_blank" ]
                                [ text "The Huffington post"
                                , span [ attribute "aria-hidden" "true", class "glyphicon glyphicon-menu-right small" ]
                                    []
                                ]
                            ]
                        ]
                    ]
                ]
            ]
        , section [ class "bloc-citation", id "nuitdebout" ]
            [ div [ class "container" ]
                [ div [ class "row" ]
                    [ div [ class "col-lg-8 col-lg-offset-2 text-center" ]
                        [ h2 [ class "section-citation" ]
                            [ text "« #HackathonDebout : Comment les geeks de Nuit Debout préparent l’avenir du mouvement ? »" ]
                        , p []
                            [ a [ href "https://nuitdebout.fr/blog/2016/07/12/hackathondebout-comment-les-geeks-de-nuit-debout-preparent-lavenir-du-mouvement/", target "_blank" ]
                                [ text "Nuitdebout.fr"
                                , span [ attribute "aria-hidden" "true", class "glyphicon glyphicon-menu-right small" ]
                                    []
                                ]
                            ]
                        ]
                    ]
                ]
            ]
        , section [ class "bloc-citation bg-light-gray", id "parisoss" ]
            [ div [ class "container" ]
                [ div [ class "row" ]
                    [ div [ class "col-lg-8 col-lg-offset-2 text-center" ]
                        [ h2 [ class "section-citation" ]
                            [ text "« La France initie un modèle de Politique de contribution aux logiciels libres pour les administrations »" ]
                        , p []
                            [ a [ href "http://empoweringopeninnovation.org/la-france-initie-un-modele-de-politique-de-contribution-aux-logiciels-libres-pour-les-administrations/", target "_blank" ]
                                [ text "Paris Open Source Summit"
                                , span [ attribute "aria-hidden" "true", class "glyphicon glyphicon-menu-right small" ]
                                    []
                                ]
                            ]
                        ]
                    ]
                ]
            ]
        , section [ class "bloc-citation", id "sinar" ]
            [ div [ class "container" ]
                [ div [ class "row" ]
                    [ div [ class "col-lg-8 col-lg-offset-2 text-center" ]
                        [ h2 [ class "section-citation" ]
                            [ text "« How people collaborate on Civic Software Project regardless of country of origin. »" ]
                        , p []
                            [ a [ href "https://nuitdebout.fr/blog/2016/07/12/hackathondebout-comment-les-geeks-de-nuit-debout-preparent-lavenir-du-mouvement/", target "_blank" ]
                                [ text "Sinar Project"
                                , span [ attribute "aria-hidden" "true", class "glyphicon glyphicon-menu-right small" ]
                                    []
                                ]
                            ]
                        ]
                    ]
                ]
            ]
        , section [ class "bloc-citation bg-light-gray", id "capcol" ]
            [ div [ class "container" ]
                [ div [ class "row" ]
                    [ div [ class "col-lg-8 col-lg-offset-2 text-center" ]
                        [ h2 [ class "section-citation" ]
                            [ text "« Gouvernement & Citoyens, inclusion, démocratie et numérique : retour sur le Sommet OGP »" ]
                        , p []
                            [ a [ href "https://cap-collectif.com/2016/12/19/gouvernement-citoyens-inclusion-democratie-et-numerique-retour-sur-le-sommet-ogp/", target "_blank" ]
                                [ text "Cap Collectif"
                                , span [ attribute "aria-hidden" "true", class "glyphicon glyphicon-menu-right small" ]
                                    []
                                ]
                            ]
                        ]
                    ]
                ]
            ]
        , section [ class "bloc-citation", id "bluenove" ]
            [ div [ class "container" ]
                [ div [ class "row" ]
                    [ div [ class "col-lg-8 col-lg-offset-2 text-center" ]
                        [ h2 [ class "section-citation" ]
                            [ text "« Assembl labellisée plateforme de consultation publique de l’Etat français. »" ]
                        , p []
                            [ a [ attribute "aria-hidden" "true", href "http://bluenove.com/blog/assembl-labellise-plateforme-de-consultation-publique-de-letat-francais/" ]
                                [ text "Bluenove"
                                , span [ attribute "aria-hidden" "true", class "glyphicon glyphicon-menu-right small" ]
                                    []
                                ]
                            ]
                        ]
                    ]
                ]
            ]
        , section [ class "bloc-citation bg-light-gray", id "linagora" ]
            [ div [ class "container" ]
                [ div [ class "row" ]
                    [ div [ class "col-lg-8 col-lg-offset-2 text-center" ]
                        [ h2 [ class "section-citation" ]
                            [ text "« Les contributions de linagora au sommet mondial du partenariat pour un gouvernement ouvert »" ]
                        , p []
                            [ a [ attribute "aria-hidden" "true", href "https://www.linagora.fr/news/les-contributions-de-linagora-au-sommet-mondial-du-partenariat-pour-un-gouvernement-ouvert" ]
                                [ text "Linagora"
                                , span [ attribute "aria-hidden" "true", class "glyphicon glyphicon-menu-right small" ]
                                    []
                                ]
                            ]
                        ]
                    ]
                ]
            ]
        , section [ class "bloc-citation", id "medium" ]
            [ div [ class "container" ]
                [ div [ class "row" ]
                    [ div [ class "col-lg-8 col-lg-offset-2 text-center" ]
                        [ h2 [ class "section-citation" ]
                            [ text "« Talking about Education at the Open Government Partnership Global Summit »" ]
                        , p []
                            [ a [ attribute "aria-hidden" "true", href "http://bluenove.com/blog/assembl-labellise-plateforme-de-consultation-publique-de-letat-francais/" ]
                                [ text "Medium"
                                , span [ attribute "aria-hidden" "true", class "glyphicon glyphicon-menu-right small" ]
                                    []
                                ]
                            ]
                        ]
                    ]
                ]
            ]
        , section [ class "bloc-citation bg-light-gray", id "etalab" ]
            [ div [ class "container" ]
                [ div [ class "row" ]
                    [ div [ class "col-lg-8 col-lg-offset-2 text-center" ]
                        [ h2 [ class "section-citation" ]
                            [ text "4th OGP Global Summit in Paris"
                            , br []
                                []
                            , text "December 2016"
                            ]
                        , p []
                            [ a [ href "https://www.dailymotion.com/video/x56807x_ogp16-4th-ogp-global-summit-in-paris-december-2016_news", target "_blank" ]
                                [ text "etalab "
                                , span [ attribute "aria-hidden" "true", class "glyphicon glyphicon-film small" ]
                                    []
                                ]
                            ]
                        ]
                    ]
                ]
            ]
        , section [ class "bloc-citation", id "opengov" ]
            [ div [ class "container" ]
                [ div [ class "row" ]
                    [ div [ class "col-lg-8 col-lg-offset-2 text-center" ]
                        [ h2 [ class "section-citation" ]
                            [ text "Launch of the OGP Toolbox hackathon" ]
                        , p []
                            [ a [ href "https://www.youtube.com/watch?v=_3w69Fzvv8I", target "_blank" ]
                                [ text "Open Government Partnership (EN)"
                                , span [ attribute "aria-hidden" "true", class "glyphicon glyphicon-film small" ]
                                    []
                                ]
                            ]
                        ]
                    ]
                ]
            ]
        , section [ class "bloc-citation bg-light-gray", id "etalab" ]
            [ div [ class "container" ]
                [ div [ class "row" ]
                    [ div [ class "col-lg-8 col-lg-offset-2 text-center" ]
                        [ h2 [ class "section-citation" ]
                            [ text "4e Sommet Mondial de l'OGP"
                            , br []
                                []
                            , text "Paris, Décembre 2016"
                            ]
                        , p []
                            [ a [ href "https://www.dailymotion.com/video/x5680a3_ogp16-4e-sommet-mondial-de-l-ogp-paris-decembre-2016_news", target "_blank" ]
                                [ text "etalab "
                                , span [ attribute "aria-hidden" "true", class "glyphicon glyphicon-film small" ]
                                    []
                                ]
                            ]
                        ]
                    ]
                ]
            ]
        ]
