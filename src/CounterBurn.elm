import Html exposing (text, div, button)
import Html.Events exposing (onClick)

main =
  Html.beginnerProgram { model = 0, update = update, view = view }

type Msg = Increment

update msg model =
  case msg of
    Increment ->
      model + 1

view model =
  div []
  [ button [onClick Increment] [text "+"]
  , div [] [text (toString model)]
  ]
