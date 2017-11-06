import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Http
import Json.Decode as Decode



main =
  Html.program
    { init = init "USD"
    , view = view
    , update = update
    , subscriptions = subscriptions
    }



-- MODEL


type alias Model =
  { currency : String
  , rate : String
  }


init : String -> (Model, Cmd Msg)
init currency =
  ( Model "USD" "0"
  , getCoinRate currency
  )



-- UPDATE


type Msg
  = MorePlease
  | SetCurrency String
  | NewGif (Result Http.Error String)


update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
  case msg of
    MorePlease ->
      (model, getCoinRate model.currency)

    SetCurrency newCurrency ->
      ({ model | currency = newCurrency }, Cmd.none)

    NewGif (Ok newRate) ->
      ({ model | rate = newRate }, Cmd.none)

    NewGif (Err _) ->
      (model, Cmd.none)



-- VIEW


view : Model -> Html Msg
view model =
  div []
    [ select [id "currency", class "form-control", onInput SetCurrency]
      [ option [ value "USD" ]
          [ text "USD" ]
      , option [ value "EUR" ]
          [ text "EUR" ]
      ]
    , button [ onClick MorePlease ] [ text "More Please!" ]
    , br [] []
    , h2 [] [text model.rate]
    ]



-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions model =
  Sub.none



-- HTTP


getCoinRate : String -> Cmd Msg
getCoinRate currency =
  let
    url =
      ("https://api.coindesk.com/v1/bpi/currentprice/" ++ currency ++ ".json")
  in
    Http.send NewGif (Http.get url (decodeCoinUrl currency))


decodeCoinUrl : String -> Decode.Decoder String
decodeCoinUrl currency =
  Decode.at ["bpi", currency, "rate"] Decode.string
