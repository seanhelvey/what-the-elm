`elm repl` will start the elm repl

See examples https://guide.elm-lang.org/core_language.html

isNegative n = n < 0

if True then "hello" else "world"

isNegativeAgain n = \
  if n < 0 then True else False

noCoJS = ["Mark", "Michael", "Bill", "Matt", "Dan", "Jeff", "Amy", "Alvaro", "Roger", "Tim", "Dan", "Andre", "BJ", "Amber"]

List.map String.length noCoJS

josh = { appearance = "amazing", skillLevel = 10}

josh.appearance

{ josh | skillLevel = 11}

mark = { josh | skillLevel = 11}
