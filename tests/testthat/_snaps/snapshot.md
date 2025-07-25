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

# line-endings fixed before comparison

    Code
      cat(x)
    Output
      a
      b

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

# snapshot captures deprecations

    Code
      foo()
    Condition
      Warning:
      `foo()` was deprecated in testthat 1.0.0.

---

    `foo()` was deprecated in testthat 1.0.0.

---

    `foo()` was deprecated in testthat 1.0.0.

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

# `expect_snapshot()` does not inject

    Code
      x <- quote(!!foo)
      expect_equal(x, call("!", call("!", quote(foo))))

# full condition message is printed with rlang

    Code
      foo <- error_cnd("foo", message = "Title parent.")
      abort("Title.", parent = foo)
    Condition
      Error:
      ! Title.
      Caused by error:
      ! Title parent.

# can print with and without condition classes

    Code
      f()
    Message <simpleMessage>
      foo
    Condition <simpleWarning>
      Warning in `f()`:
      bar
    Condition <simpleError>
      Error in `f()`:
      ! baz

---

    Code
      f()
    Message
      foo
    Condition
      Warning in `f()`:
      bar
      Error in `f()`:
      ! baz

# errors and warnings are folded

    Code
      f()
    Condition
      Warning in `f()`:
      foo
      Error in `f()`:
      ! bar

# hint is informative

    Code
      cat(snapshot_accept_hint("_default", "bar.R", reset_output = FALSE))
    Output
      * Run ]8;;ide:run:testthat::snapshot_accept('bar.R')testthat::snapshot_accept('bar.R')]8;; to accept the change.
      * Run ]8;;ide:run:testthat::snapshot_review('bar.R')testthat::snapshot_review('bar.R')]8;; to interactively review the change.
    Code
      cat(snapshot_accept_hint("foo", "bar.R", reset_output = FALSE))
    Output
      * Run ]8;;ide:run:testthat::snapshot_accept('foo/bar.R')testthat::snapshot_accept('foo/bar.R')]8;; to accept the change.
      * Run ]8;;ide:run:testthat::snapshot_review('foo/bar.R')testthat::snapshot_review('foo/bar.R')]8;; to interactively review the change.

