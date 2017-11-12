module Hello exposing (..)

import Html exposing (text)


main =
    text "Examples in this file should be typed direcly into the repl."

-- `elm repl` will start the elm repl
-- see examples https://guide.elm-lang.org/core_language.html

isNegative n = n < 0

if True then "hello" else "world"

-- don't forget the slash and whitespace or simply put on single line
isNegativeAgain n = \
  if n < 0 then True else False

noCoJS = ["Mark", "Michael", "Bill", "Matt", "Dan", "Jeff", "Amy", "Alvaro", "Roger", "Tim", "Dan", "Andre", "BJ", "Amber"]

List.map String.length noCoJS

josh = { appearance = "amazing", skillLevel = 10}

josh.appearance
