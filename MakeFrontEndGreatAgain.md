build-lists: true

# [fit]Intro to Elm

![elm 80%](https://secure.meetupstatic.com/photos/event/4/b/b/highres_465721211.jpeg)

---

# Colorado Elm Community is Thriving!
* 12/4 What the Elm? @ NoCo JS (30 or so attendees)
* 12/6 Elm Instructor Training @ Galvanize Boulder
* 1/23 Types in Elm @ DenverScript (Over 100 people)
* 1/25 Elm: The Gateway Drug @ Denver FP
* 2/7 Elm For Everyone @ Women Who Code Denver

![elm 80%](https://secure.meetupstatic.com/photos/event/4/b/b/highres_465721211.jpeg)

---

# Objectives
* Appraise the benefits of functional programming
* Explain why one might use Elm
* Read basic type signatures
* Identify algebraic data types
* Write functions in the core Elm language
* Use The Elm Architecture to build apps

![elm 80%](https://secure.meetupstatic.com/photos/event/4/b/b/highres_465721211.jpeg)

---

# Who is this guy? (@seanhelvey)
* Web Dev Instructor at Galvanize in Boulder
* Programming since 2004, JavaScript since 2009
* Exposed to functional programming in grad school (Scheme, ML, Prolog)
* Co-organizer of Front Range Elm Meetup
* Built [Valunicorn Calculator](http://www.valunicorn.me/) with Elm

![elm 80%](https://secure.meetupstatic.com/photos/event/4/b/b/highres_465721211.jpeg)

---


# Why Functional Programming?
* Empathy!
* Testable / maintainable code
* Isolated [side effects](https://www.aomran.com/pure-functional-programming/)
* Enforced [immutability](https://redux.js.org/docs/faq/ImmutableData.html#benefits-of-immutability)

![elm 80%](https://secure.meetupstatic.com/photos/event/4/b/b/highres_465721211.jpeg)

---

# Why Elm?
* Clear vision -> supportive community
* Static typing, friendly compiler
* Easy to introduce gradually
* No runtime errors!
* Separation of data and logic
* Types (especially Union types)

![elm 80%](https://secure.meetupstatic.com/photos/event/4/b/b/highres_465721211.jpeg)

---

# Can't I just use JavaScript libraries?
>> "No combination of JS libraries can ever give you this, yet it is all free and easy in Elm. Now these nice things are only possible because Elm builds upon 40+ years of work on typed functional languages. So Elm is a functional language because the practical benefits are worth the couple hours you'll spend reading this guide."

![elm 80%](https://secure.meetupstatic.com/photos/event/4/b/b/highres_465721211.jpeg)

---

# Clear vision
A simple functional alternative to JavaScript
> "Forget what you have heard about functional programming. Fancy words, weird ideas, bad tooling. Barf."

![elm 80%](https://secure.meetupstatic.com/photos/event/4/b/b/highres_465721211.jpeg)

---

# No runtime errors
Compiler type inference prevents undefined or null

More info on [error handling in Elm](https://guide.elm-lang.org/error_handling/)

![elm 80%](https://secure.meetupstatic.com/photos/event/4/b/b/highres_465721211.jpeg)

---


# Easy to introduce gradually
See [Valunicorn Calculator](http://www.valunicorn.me/) example.

![elm 80%](https://secure.meetupstatic.com/photos/event/4/b/b/highres_465721211.jpeg)

---

# Separation of data and logic
Pure functions and no object oriented "this"

> "Elm functions represent reusable logic. They are not objects. They have no fields, no prototypes, and no ability to store state. All they do is accept values as arguments, and then return a value." - Richard Feldman, Elm in Action

![elm 80%](https://secure.meetupstatic.com/photos/event/4/b/b/highres_465721211.jpeg)

---

# Types
double : number -> number
double x = x * 2

firstAndLastName : String -> String -> String
firstAndLastName a b = a ++ b

Try the one above ^^ in repl and discuss

![elm 80%](https://secure.meetupstatic.com/photos/event/4/b/b/highres_465721211.jpeg)

---

# Algebraic Data Types (ADTs)
* Product Types
* Sum Types

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
* type Salsa = Red | Green
* Q: How many possible values for salsa?
* A: 2

![elm 80%](https://secure.meetupstatic.com/photos/event/4/b/b/highres_465721211.jpeg)

---

# What is Elm?
* Core language
* The Elm Architecture

![elm 80%](https://secure.meetupstatic.com/photos/event/4/b/b/highres_465721211.jpeg)

---

# Core Language
* Values, functions, lists, records..
* Pretty much what you'd expect!
* Function application looks different than JavaScript
* add(3,4) becomes (add 3 4)

![elm 80%](https://secure.meetupstatic.com/photos/event/4/b/b/highres_465721211.jpeg)

---

# Elm Architecture
## Model, Update, View
> "When the user clicks on a button, it produces a message. That message is piped into the update function, producing a new model. We use the view function to show the new model on screen. And then we just repeat this forever!"

![elm 80%](https://secure.meetupstatic.com/photos/event/4/b/b/highres_465721211.jpeg)

---

# Let's do this!
* GitHub repo:
[https://github.com/seanhelvey/what-the-elm](https://github.com/seanhelvey/what-the-elm)
* Follow instructions on README

---

# Your boss *will* let you use Elm
* Richard Feldman's talk
* No runtime errors
* Easy to attract developers (counterintuitive)

![elm 80%](https://secure.meetupstatic.com/photos/event/4/b/b/highres_465721211.jpeg)

---

# Objectives
* Appraise the benefits of functional programming
* Explain why one might use Elm
* Read basic type signatures
* Identify algebraic data types
* Write functions in the core Elm language
* Use The Elm Architecture to build apps

![elm 80%](https://secure.meetupstatic.com/photos/event/4/b/b/highres_465721211.jpeg)

---

# Thank you!
