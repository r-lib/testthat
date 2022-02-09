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
    Message
      2
    Condition
      Warning in `f()`:
      3
      Error in `f()`:
      ! 4

# empty lines are preserved

    Code
      f()
    Output
      1
      
    Message
      2
      
    Condition
      Warning in `f()`:
      3
      Error in `f()`:
      ! 4

# multiple outputs of same type are collapsed

    Code
      x <- 1
      y <- 1
      {
        message("a")
        message("b")
      }
    Message
      a
      b
    Code
      {
        warning("a")
        warning("b")
      }
    Condition
      Warning:
      a
      Warning:
      b

# can scrub output/messages/warnings/errors

    Code
      secret()
    Output
      [1] "<redacted>"
    Message
      <redacted>
    Condition
      Warning in `<redacted>()`:
      <redacted>
      Error in `<redacted>()`:
      ! <redacted>

---

    Code
      print("secret")
    Output
      [1] "****"

# can capture error/warning messages

    This is an error

---

    This is a warning

# can check error/warning classes

    Code
      expect_snapshot_error(1)
    Condition
      Error:
      ! 1 did not generate error

---

    Code
      expect_snapshot_error(1, class = "myerror")
    Condition
      Error:
      ! 1 did not generate error with class 'myerror'

---

    Code
      expect_snapshot_warning(1)
    Condition
      Error:
      ! 1 did not generate warning

---

    Code
      expect_snapshot_warning(1, class = "mywarning")
    Condition
      Error:
      ! 1 did not generate warning with class 'mywarning'

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
    Message
      Hello
    Condition
      Warning:
      Goodbye
      Error in `f()`:
      ! Eeek!

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

# `expect_snapshot()` does not inject

    Code
      x <- quote(!!foo)
      expect_equal(x, call("!", call("!", quote(foo))))

# hint is informative

    Code
      cat(snapshot_accept_hint("_default", "bar.R"))
    Output
      * Run `snapshot_accept('bar.R')` to accept the change
      * Run `snapshot_review('bar.R')` to interactively review the change
    Code
      cat(snapshot_accept_hint("foo", "bar.R"))
    Output
      * Run `snapshot_accept('foo/bar.R')` to accept the change
      * Run `snapshot_review('foo/bar.R')` to interactively review the change

