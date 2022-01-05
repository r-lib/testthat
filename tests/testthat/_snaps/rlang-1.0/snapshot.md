# full condition message is printed with rlang

    Code
      foo <- error_cnd("foo", message = "Title parent.")
      abort("Title.", parent = foo)
    Condition
      Error:
        Title.
      Caused by error:
        Title parent.

# can print with and without condition classes

    Code
      f()
    Message <simpleMessage>
      foo
    Condition <simpleWarning>
      Warning in `f()`: bar
    Condition <simpleError>
      Error in `f()`: baz

---

    Code
      f()
    Message
      foo
    Condition
      Warning in `f()`: bar
      Error in `f()`: baz

# errors and warnings are folded

    Code
      f()
    Condition
      Warning in `f()`: foo
      Error in `f()`: bar

