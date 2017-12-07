import Html exposing (Html, text, div, button, p)
import Html.Events exposing (onClick)

main =
    Html.beginnerProgram { model = 0, update = update, view = view}

type alias Model = Int
model : Model
model = 0

type Msg = Increment | Decrement

update : Msg -> Model -> Model
update msg model =
    case msg of
      Increment ->
        model + 1
      Decrement ->
        model - 1

view : Model -> Html Msg
view model =
    div []
    [ button [onClick Increment] [text "+"]
    , div [] [text (toString model)]
    , button [onClick Decrement] [text "-"]
    ]
