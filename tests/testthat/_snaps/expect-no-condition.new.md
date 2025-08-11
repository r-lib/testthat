# expect_no_* conditions behave as expected

    Expected `stop("error")` to run without any errors.
    Actually got a <simpleError> with message:
      error

---

    Expected `warning("warning")` to run without any warnings.
    Actually got a <simpleWarning> with message:
      warning

---

    Expected `message("message")` to run without any messages.
    Actually got a <simpleMessage> with message:
      message
      

---

    Expected `abort("error")` to run without any errors.
    Actually got a <rlang_error> with message:
      error

---

    Expected `warn("warning")` to run without any warnings.
    Actually got a <rlang_warning> with message:
      warning

---

    Expected `inform("message")` to run without any messages.
    Actually got a <rlang_message> with message:
      message

# expect_no_ continues execution

    Expected `{ ... }` to run without any warnings.
    Actually got a <simpleWarning> with message:
      x

# expect_no_* don't emit success when they fail

    Expected `stop("!")` to run without any errors.
    Actually got a <simpleError> with message:
      !

# matched conditions give informative message

    Code
      expect_no_warning(foo())
    Condition
      Error:
      ! Expected `foo()` to run without any warnings.
      Actually got a <test> with message:
        This is a problem!
    Code
      expect_no_warning(foo(), message = "problem")
    Condition
      Error:
      ! Expected `foo()` to run without any warnings matching pattern 'problem'.
      Actually got a <test> with message:
        This is a problem!
    Code
      expect_no_warning(foo(), class = "test")
    Condition
      Error:
      ! Expected `foo()` to run without any warnings of class 'test'.
      Actually got a <test> with message:
        This is a problem!
    Code
      expect_no_warning(foo(), message = "problem", class = "test")
    Condition
      Error:
      ! Expected `foo()` to run without any warnings of class 'test' matching pattern 'problem'.
      Actually got a <test> with message:
        This is a problem!

