# full condition message is printed with rlang

    Code
      foo <- error_cnd("foo", message = "Title parent.")
      abort("Title.", parent = foo)
    Error <rlang_error>
      Title.

# can print with and without condition classes

    Code
      f()
    Message <simpleMessage>
      foo
    Warning <simpleWarning>
      bar
    Error <simpleError>
      baz

---

    Code
      f()
    Message <simpleMessage>
      foo
    Warning <simpleWarning>
      bar
    Error <simpleError>
      baz

# errors and warnings are folded

    Code
      f()
    Warning <simpleWarning>
      foo
    Error <simpleError>
      bar

