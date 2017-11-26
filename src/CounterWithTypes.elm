import Html exposing (Html, div, button, text)
import Html.Events exposing (onClick)

main =
  Html.beginnerProgram { model = model, update = update, view = view}

-- model

type alias Model = Int

model : Model
model = 0

-- update

type Msg = Increment | Decrement | Reset

update : Msg -> Model -> Model
update msg model =
  case msg of
    Increment ->
      model + 1
    Decrement ->
      model - 1
    Reset ->
      0

-- view

view : Model -> Html Msg
view model =
  div []
    [ button [onClick Increment] [text "+"]
    , div [] [text (toString model)]
    , button [onClick Decrement] [text "-"]
    , button [onClick Reset] [text "0"]
  ]
