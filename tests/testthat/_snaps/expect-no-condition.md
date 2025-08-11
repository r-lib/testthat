# expect_no_* conditions behave as expected

    Expected `stop("error")` to run without any errors.
    i Actually got a <simpleError> with text:
      error

---

    Expected `warning("warning")` to run without any warnings.
    i Actually got a <simpleWarning> with text:
      warning

---

    Expected `message("message")` to run without any messages.
    i Actually got a <simpleMessage> with text:
      message
      

---

    Expected `abort("error")` to run without any errors.
    i Actually got a <rlang_error> with text:
      error

---

    Expected `warn("warning")` to run without any warnings.
    i Actually got a <rlang_warning> with text:
      warning

---

    Expected `inform("message")` to run without any messages.
    i Actually got a <rlang_message> with text:
      message

# expect_no_ continues execution

    Expected `{ ... }` to run without any warnings.
    i Actually got a <simpleWarning> with text:
      x

# expect_no_* don't emit success when they fail

    Expected `stop("!")` to run without any errors.
    i Actually got a <simpleError> with text:
      !

# matched conditions give informative message

    Code
      expect_no_warning(foo())
    Condition
      Error:
      ! Expected `foo()` to run without any warnings.
      i Actually got a <test> with text:
        This is a problem!
    Code
      expect_no_warning(foo(), message = "problem")
    Condition
      Error:
      ! Expected `foo()` to run without any warnings matching pattern 'problem'.
      i Actually got a <test> with text:
        This is a problem!
    Code
      expect_no_warning(foo(), class = "test")
    Condition
      Error:
      ! Expected `foo()` to run without any warnings of class 'test'.
      i Actually got a <test> with text:
        This is a problem!
    Code
      expect_no_warning(foo(), message = "problem", class = "test")
    Condition
      Error:
      ! Expected `foo()` to run without any warnings of class 'test' matching pattern 'problem'.
      i Actually got a <test> with text:
        This is a problem!

