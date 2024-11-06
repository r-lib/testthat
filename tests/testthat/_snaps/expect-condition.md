# regexp = NULL checks for presence of error

    `null()` did not throw the expected error.

# regexp = string matches for error message

    "OK" did not throw the expected error.

# check type of class and pattern

    Code
      expect_error(stop("!"), regexp = 1)
    Condition
      Error in `expect_error()`:
      ! `pattern` must be a single string, `NA`, or `NULL`, not the number 1.
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
      ! Can't specify `...` without `pattern`.
    Code
      expect_condition(stop("Hi!"), "x", foo = "bar")
    Condition
      Error in `expect_condition()`:
      ! Failed to compare condition to `pattern`.
      Caused by error in `grepl()`:
      ! unused argument (foo = "bar")

