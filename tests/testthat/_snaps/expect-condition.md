# regexp = NULL checks for presence of error

    Code
      expect_error(f())
    Condition
      Error:
      ! Expected `f()` to throw a error.

# regexp = NA checks for absence of error

    Code
      expect_error(stop("Yes"), NA)
    Condition
      Error:
      ! Expected `stop("Yes")` to not throw a error.
      Actually got a <simpleError> with message:
        Yes

# regexp = string matches for error message

    Code
      expect_error("OK", "No")
    Condition
      Error:
      ! Expected "OK" to throw a error.

# expect_error validates its inputs

    Code
      expect_error(stop("!"), regexp = 1)
    Condition
      Error in `expect_error()`:
      ! `regexp` must be a single string, `NA`, or `NULL`, not the number 1.
    Code
      expect_error(stop("!"), class = 1)
    Condition
      Error in `expect_error()`:
      ! `class` must be a single string or `NULL`, not the number 1.
    Code
      expect_error(stop("!"), inherit = "yes")
    Condition
      Error in `expect_error()`:
      ! `inherit` must be `TRUE` or `FALSE`, not the string "yes".

# message method is called when expecting error

    Code
      expect_error(fb(), NA)
    Condition
      Error:
      ! Expected `fb()` to not throw a error.
      Actually got a <foobar> with message:
        dispatched!

# expect_warning validates its inputs

    Code
      expect_warning(warning("!"), regexp = 1)
    Condition
      Error in `expect_warning()`:
      ! `regexp` must be a single string, `NA`, or `NULL`, not the number 1.
    Code
      expect_warning(warning("!"), class = 1)
    Condition
      Error in `expect_warning()`:
      ! `class` must be a single string or `NULL`, not the number 1.
    Code
      expect_warning(warning("!"), inherit = "yes")
    Condition
      Error in `expect_warning()`:
      ! `inherit` must be `TRUE` or `FALSE`, not the string "yes".
    Code
      expect_warning(warning("!"), all = "yes")
    Condition
      Error in `expect_warning()`:
      ! `all` must be `TRUE` or `FALSE`, not the string "yes".

# regexp = NA checks for absence of message

    Code
      expect_message(message("!"), NA)
    Condition
      Error:
      ! Expected `message("!")` to not throw a message.
      Actually got a <simpleMessage> with message:
        !
        

# expect_message validates its inputs

    Code
      expect_message(message("!"), regexp = 1)
    Condition
      Error in `expect_message()`:
      ! `regexp` must be a single string, `NA`, or `NULL`, not the number 1.
    Code
      expect_message(message("!"), class = 1)
    Condition
      Error in `expect_message()`:
      ! `class` must be a single string or `NULL`, not the number 1.
    Code
      expect_message(message("!"), inherit = "yes")
    Condition
      Error in `expect_message()`:
      ! `inherit` must be `TRUE` or `FALSE`, not the string "yes".
    Code
      expect_message(message("!"), all = "yes")
    Condition
      Error in `expect_message()`:
      ! `all` must be `TRUE` or `FALSE`, not the string "yes".

# condition class is included in failure

    Code
      expect_condition(f1(), class = "bar")
    Condition
      Error:
      ! Expected `f1()` to throw a condition with class <bar>.

# expect_condition validates its inputs

    Code
      expect_condition(stop("!"), regexp = 1)
    Condition
      Error in `expect_condition()`:
      ! `regexp` must be a single string, `NA`, or `NULL`, not the number 1.
    Code
      expect_condition(stop("!"), class = 1)
    Condition
      Error in `expect_condition()`:
      ! `class` must be a single string or `NULL`, not the number 1.
    Code
      expect_condition(stop("!"), inherit = "yes")
    Condition
      Error in `expect_condition()`:
      ! `inherit` must be `TRUE` or `FALSE`, not the string "yes".

# unused arguments generate an error

    Code
      expect_condition(stop("Hi!"), foo = "bar")
    Condition
      Error in `expect_condition()`:
      ! Can't supply `...` unless `regexp` is set.
      * Unused arguments: `foo`.
      i Did you mean to use `regexp` so `...` is passed to `grepl()`?
    Code
      expect_condition(stop("Hi!"), , , "bar")
    Condition
      Error in `expect_condition()`:
      ! Can't supply `...` unless `regexp` is set.
      * Unused arguments: `..1`.
      i Did you mean to use `regexp` so `...` is passed to `grepl()`?
    Code
      expect_condition(stop("Hi!"), , , "bar", fixed = TRUE)
    Condition
      Error in `expect_condition()`:
      ! Can't supply `...` unless `regexp` is set.
      * Unused arguments: `..1` and `fixed`.
      i Did you mean to use `regexp` so `...` is passed to `grepl()`?
    Code
      expect_condition(stop("Hi!"), "x", foo = "bar")
    Condition
      Error in `expect_condition()`:
      ! Failed to compare condition to `regexp`.
      Caused by error in `grepl()`:
      ! unused argument (foo = "bar")
    Code
      expect_condition(stop("Hi!"), pattern = "bar", fixed = TRUE)
    Condition
      Error in `expect_condition()`:
      ! Can't supply `...` unless `regexp` is set.
      * Unused arguments: `pattern` and `fixed`.
      i Did you mean to use `regexp` so `...` is passed to `grepl()`?

# other conditions are swallowed

    Code
      expect_error(f("error"), "not a match")
    Condition
      Error:
      ! `f("error")` threw an error with unexpected message.
      Expected match: "not a match"
      Actual message: "error"

---

    Code
      expect_warning(f("warning"), "not a match")
    Condition
      Error:
      ! `f("warning")` produced unexpected warnings.
      Expected match: not a match
      Actual values:
      * warning

---

    Code
      expect_message(f("message"), "not a match")
    Condition
      Error:
      ! `f("message")` produced unexpected messages.
      Expected match: not a match
      Actual values:
      * message

---

    Code
      expect_condition(f("condition"), "not a match")
    Condition
      Error:
      ! `f("condition")` threw an condition with unexpected message.
      Expected match: "not a match"
      Actual message: "signal"

---

    Code
      expect_error(f("error"), class = "not a match")
    Condition
      Error:
      ! `f("error")` threw an error with unexpected class.
      Expected class: not a match
      Actual class:   simpleError/error/condition
      Message:        error

---

    Code
      expect_condition(f("message"), class = "not a match")
    Condition
      Error:
      ! `f("message")` threw an condition with unexpected class.
      Expected class: not a match
      Actual class:   simpleMessage/message/condition
      Message:        message

