# expect_no_* conditions behave as expected

    Code
      expect_no_error(stop("error"))
    Condition
      Error:
      ! Expected `stop("error")` to run without any errors.
      Actually got a <simpleError> with message:
        error

---

    Code
      expect_no_warning(warning("warning"))
    Condition
      Error:
      ! Expected `warning("warning")` to run without any warnings.
      Actually got a <simpleWarning> with message:
        warning

---

    Code
      expect_no_message(message("message"))
    Condition
      Error:
      ! Expected `message("message")` to run without any messages.
      Actually got a <simpleMessage> with message:
        message
        

---

    Code
      expect_no_error(abort("error"))
    Condition
      Error:
      ! Expected `abort("error")` to run without any errors.
      Actually got a <rlang_error> with message:
        error

---

    Code
      expect_no_warning(warn("warning"))
    Condition
      Error:
      ! Expected `warn("warning")` to run without any warnings.
      Actually got a <rlang_warning> with message:
        warning

---

    Code
      expect_no_message(inform("message"))
    Condition
      Error:
      ! Expected `inform("message")` to run without any messages.
      Actually got a <rlang_message> with message:
        message

# expect_no_ continues execution

    Code
      expect_no_warning({
        warning("x")
        b <- 2
      })
    Condition
      Error:
      ! Expected `{ ... }` to run without any warnings.
      Actually got a <simpleWarning> with message:
        x

# expect_no_* don't emit success when they fail

    Code
      expect_no_error(stop("!"))
    Condition
      Error:
      ! Expected `stop("!")` to run without any errors.
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

