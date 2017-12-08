import Html exposing (Html, text, div, button)
import Html.Events exposing (onClick)

main =
  Html.beginnerProgram { model = model, update = update, view = view }

type alias Model = Int

model : Model
model = 0

type Msg = Increment

update : Msg -> Model -> Model
update msg model =
  case msg of
    Increment ->
      model + 1

view : Model -> Html Msg
view model =
  div []
  [ button [onClick Increment] [text "+"]
  , div [] [text (toString model)] ]
