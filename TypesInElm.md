build-lists: true

# [fit]Types in Elm

![elm 80%](https://secure.meetupstatic.com/photos/event/4/b/b/highres_465721211.jpeg)

---

# Objectives
* Appraise the benefits of functional programming
* Explain why one might use Elm
* Read basic type signatures
* Identify algebraic data types

![elm 80%](https://secure.meetupstatic.com/photos/event/4/b/b/highres_465721211.jpeg)

---

# Who is this guy?
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
* type Salsa = "Red" | "Green"
* Q: How many possible values for salsa?
* A: 2

![elm 80%](https://secure.meetupstatic.com/photos/event/4/b/b/highres_465721211.jpeg)

---

# Let's do this!
* GitHub repo:
[https://github.com/seanhelvey/what-the-elm](https://github.com/seanhelvey/what-the-elm)
* Follow instructions on README

---

# Objectives
* Appraise the benefits of functional programming
* Explain why one might use Elm
* Read basic type signatures
* Identify algebraic data types

![elm 80%](https://secure.meetupstatic.com/photos/event/4/b/b/highres_465721211.jpeg)

---

# Thank you!
