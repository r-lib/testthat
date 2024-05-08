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

# unused arguments generate a warning

    Code
      expect_condition(stop("Hi!"), foo = "bar")
    Condition
      Warning in `expect_condition()`:
      Arguments in `...` must be used.
      x Problematic argument:
      * foo = "bar"
      i Did you misspell an argument name?

