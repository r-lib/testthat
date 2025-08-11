# regexp = NULL checks for presence of error

    Expected `f()` to throw a error.

# regexp = NA checks for absence of error

    Expected `stop("Yes")` to not throw a error.
    Actual <simpleError/error/condition>:
    Yes

# regexp = string matches for error message

    Expected "OK" to throw a error.

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

    Expected `fb()` to not throw a error.
    Actual <foobar/rlang_error/error/condition>:
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

    Expected `message("!")` to not throw a message.
    Actual <simpleMessage/message/condition>:
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

    Expected `f1()` to throw a condition with class <bar>.

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

    `f("error")` threw an error with unexpected message.
    Expected match: "not a match"
    Actual message: "error"

---

    `f("warning")` produced unexpected warnings.
    Expected match: not a match
    Actual values:
    * warning

---

    `f("message")` produced unexpected messages.
    Expected match: not a match
    Actual values:
    * message
    

---

    `f("condition")` threw an condition with unexpected message.
    Expected match: "not a match"
    Actual message: "signal"

---

    `f("error")` threw an error with unexpected class.
    Expected class: not a match
    Actual class:   simpleError/error/condition
    Message:        error

---

    `f("message")` threw an condition with unexpected class.
    Expected class: not a match
    Actual class:   simpleMessage/message/condition
    Message:        message
    

