# regexp = NULL checks for presence of error

    `{ ... }` did not throw the expected error.

# regexp = string matches for error message

    "OK" did not throw the expected error.

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

    `fb()` threw an unexpected error.
    Message: dispatched!
    Class:   foobar/rlang_error/error/condition

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

    `f1()` did not throw a condition with class <bar>.

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

