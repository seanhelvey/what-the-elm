build-lists: true

# [fit]Types in Elm

![elm 80%](https://secure.meetupstatic.com/photos/event/4/b/b/highres_465721211.jpeg)

___

# Sean Helvey
* Web Dev Instructor at Galvanize in Boulder
* Programming since 2004, JavaScript since 2009
* Exposed to functional programming in grad school (Scheme, ML, Prolog)
* Co-organizer of Front Range Elm Meetup
* Built [Valunicorn Calculator](http://www.valunicorn.me/) with Elm

![elm 80%](https://secure.meetupstatic.com/photos/event/4/b/b/highres_465721211.jpeg)

---

# Objectives
* Discuss Elm's Hindley-Milner type system
* Understand static typing and error handling
* Read basic type signatures
* Identify records, type aliases, and union types

![elm 80%](https://secure.meetupstatic.com/photos/event/4/b/b/highres_465721211.jpeg)

---

# Hindley–Milner Type System

Elm, Haskell, ML, and many others.

Parametric polymorphism
`[] : List a`

Can be inferred at *compile time* without type annotations.

---

# Type Classes (Ad-hoc Polymorphism)

Unlike Haskell or PureScript, Elm has no support for higher-kinded types.

For example, there is no generic map, apply, fold, or filter function. Instead, such names are used prefixed by their module, such as List.map and Dict.map.

---

![inline center](https://raw.githubusercontent.com/seanhelvey/elm-denver-fp/master/img/ElmGoMemeFinal.png)

---

# Type Signature Examples

```
> String.length

<function> : String -> Int

> divide x y = x / y

<function> : Float -> Float -> Float
```

![elm 80%](https://secure.meetupstatic.com/photos/event/4/b/b/highres_465721211.jpeg)

---

# Type Signatures Explained

To start out, it is fine to think that "all the arguments are separated by arrows, and whatever is last is the result of the function".

See [Reading Types](https://guide.elm-lang.org/types/reading_types.html) for more info on currying and partial application.

![elm 80%](https://secure.meetupstatic.com/photos/event/4/b/b/highres_465721211.jpeg)

---

# How is this different than JavaScript or TypeScript?

JavaScript, Python, Ruby, even TypeScript are based on gradual typing. Some checking takes place at compile time, some at *runtime*.

These language use a subset of dynamic typing known as duck typing. In duck typing, an object's type is determined by the presence of certain methods and properties, rather than the actual type of the object.

---

![inline center](https://i.ytimg.com/vi/fK5lcaNqdj4/hqdefault.jpg)

---

# Error Handling
Java, C, JavaScript, Python, or Ruby.. you have almost certainly had your code crash because of null values or surprise exceptions from someone else's code.

[Error handling](https://guide.elm-lang.org/error_handling/) in Elm forces us to explicitly deal with invalid input.


![elm 80%](https://secure.meetupstatic.com/photos/event/4/b/b/highres_465721211.jpeg)

---

# Error Handling Example

```
type alias User =
  { name : String
  , age : Maybe Int
  }

canBuyAlcohol : User -> Bool
canBuyAlcohol user =
  case user.age of
    Nothing ->
      False

    Just age ->
      age >= 21

```
---

# Records
User in the prior example is a "record" or a set of key-value pairs, similar to objects in JavaScript or Python. You cannot ask for a field that does not exist. No field will ever be undefined or null.

`point = { x = 3, y = 4 }`

---

# Structural Typing

Records also support [structural typing](https://en.wikipedia.org/wiki/Structural_type_system) which means records in Elm can be used in any situation as long as the necessary fields exist. This gives us flexibility without compromising reliability (the check happens at compile time).

---

# Type Aliases

The whole point of type aliases is to make your type annotations easier to read.

```
type alias User =
  { name : String
  , bio : String
  , pic : String
  }
```

---

# Algebraic Data Types (ADTs)
* Product Types
* Sum Types or "Union Types" (super important in Elm!)

---

![inline center](http://aussiememes.com.au/media/created/ONE-HUNDRED-MILLION-w4ti3a.jpg)

---
# Product Types
* Logical AND
* Q: How many possible values in a 32 bit integer?
* A: 2^32 ~4bn
* So what about a string?
* A function that takes 5 strings?

![elm 80%](https://secure.meetupstatic.com/photos/event/4/b/b/highres_465721211.jpeg)

---

# Sum Types or "Union Types" in Elm
* Logical OR
* type Salsa = "Red" | "Green"
* Q: How many possible values for salsa?
* A: 2

![elm 80%](https://secure.meetupstatic.com/photos/event/4/b/b/highres_465721211.jpeg)

---

# Polymorphism with Union Types

Elm's union types let you represent complex data much more naturally.

```
type User = Anonymous | Named String

userPhoto : User -> String
userPhoto user =
  case user of
    Anonymous ->
      "anon.png"

    Named name ->
      "users/" ++ name ++ ".png"
```

---

![inline center](https://raw.githubusercontent.com/seanhelvey/elm-denver-fp/master/img/ElmAzizFinal.png)

---

# GitHub repo:
[https://github.com/seanhelvey/what-the-elm](https://github.com/seanhelvey/what-the-elm)

---

# Objectives
* Discuss Elm's Hindley-Milner type system
* Understand static typing and error handling
* Read basic type signatures
* Identify records, type aliases, and union types

![elm 80%](https://secure.meetupstatic.com/photos/event/4/b/b/highres_465721211.jpeg)

---

# Thank you!
