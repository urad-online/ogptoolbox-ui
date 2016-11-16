module Organization exposing (..)

import Html exposing (..)
import Tool
import Types exposing (Statement)
import WebData exposing (LoadingStatus)


view : LoadingStatus Statement -> Maybe (Html msg)
view =
    -- TODO Use real Organization.view, from the designer mockup.
    Tool.view
