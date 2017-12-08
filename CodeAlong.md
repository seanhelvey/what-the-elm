`elm repl` will start the elm repl

See examples https://guide.elm-lang.org/core_language.html

isNegative n = n < 0

if True then "hello" else "world"

isNegativeAgain n = \
  if n < 0 then True else False

elmTraining = ["Pira", "Chelsea", "Jeffrey", "John", "Pete", "Sherif", "Gina", "Meryl", "Mary"]

List.map String.length elmTraining

brooks = { specialty = "JavaScript", skillLevel = 10}

brooks.specialty

{ brooks | skillLevel = 11}

chad = { brooks | skillLevel = 11}
