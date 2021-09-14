# can snapshot output

    y

---

    y

---

    y

---

    y

# can snapshot everything

    Code
      f()
    Output
      [1] "1"
    Message <simpleMessage>
      2
    Warning <warning>
      3
    Error <rlang_error>
      4

# multiple outputs of same type are collapsed

    Code
      x <- 1
      y <- 1
      {
        message("a")
        message("b")
      }
    Message <simpleMessage>
      a
      b
    Code
      {
        warn("a")
        warn("b")
      }
    Warning <warning>
      a
      b

# can scrub output/messages/warnings/errors

    Code
      secret()
    Output
      [1] "<redacted>"
    Message <simpleMessage>
      <redacted>
    Warning <warning>
      <redacted>
    Error <rlang_error>
      <redacted>

---

    Code
      print("secret")
    Output
      [1] "****"

# snapshot handles multi-line input

    Code
      1 + 2
    Output
      [1] 3
    Code
      3 + 4
    Output
      [1] 7
    Code
      # this is a comment

# snapshot captures output if visible

    Code
      f_visible()
    Output
      [1] "x"

---

    Code
      f_invisible()

# captures custom classes

    Code
      f()
    Message <testthat_greeting>
      Hello
    Warning <testthat_farewell>
      Goodbye
    Error <testthat_scream>
      Eeek!

# even with multiple lines

    a
    b
    c

---

    a
    b
    c

# can snapshot values

    [
      "a",
      1.5,
      1,
      true
    ]

---

    {
      "type": "list",
      "attributes": {},
      "value": [
        {
          "type": "character",
          "attributes": {},
          "value": ["a"]
        },
        {
          "type": "double",
          "attributes": {},
          "value": [1.5]
        },
        {
          "type": "integer",
          "attributes": {},
          "value": [1]
        },
        {
          "type": "logical",
          "attributes": {},
          "value": [true]
        }
      ]
    }

---

    list("a", 1.5, 1L, TRUE)

---

    WAoAAAACAAMGAwACAwAAAAATAAAABAAAABAAAAABAAQACQAAAAFhAAAADgAAAAE/+AAAAAAA
    AAAAAA0AAAABAAAAAQAAAAoAAAABAAAAAQ==

# can control snapshot value details

    1.1

# tolerance passed to check_roundtrip

    0.9

