import Html exposing (Html, text, div, button)
import Html.Events exposing (onClick)

main = Html.beginnerProgram { model = model, update = update, view = view }

type Msg = Increment | Decrement

type alias Model = Int

model : Model
model = 0

update : Msg -> Model -> Model
update msg model =
  case msg of
    Increment ->
      model + 1
    Decrement ->
      model - 1

view : Model -> Html Msg
view model = div [] [ button [onClick Increment] [text "+"]
              , div [] [text (toString model)]
              , button [onClick Decrement] [text "-"]
              ]
