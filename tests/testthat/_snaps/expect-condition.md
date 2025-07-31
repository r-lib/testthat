# regexp = NULL checks for presence of error

    `{ ... }` did not throw the expected error.

# regexp = string matches for error message

    "OK" did not throw the expected error.

# check type of class and pattern

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

# message method is called when expecting error

    `fb()` threw an unexpected error.
    Message: dispatched!
    Class:   foobar/rlang_error/error/condition

# condition class is included in failure

    `f1()` did not throw a condition with class <bar>.

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

