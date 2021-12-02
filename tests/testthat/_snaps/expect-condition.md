# regexp = NULL checks for presence of error

    `null()` did not throw the expected error.

# regexp = string matches for error message

    "OK" did not throw the expected error.

# message method is called when expecting error

    `fb()` threw an unexpected error.
    Message: dispatched!
    Class:   foobar/rlang_error/error/condition

# expected conditions are returned visibly while in a snapshotter (#1471)

    Code
      expect_error(abort("Oh no!"))
    Output
      <error/rlang_error>
      Oh no!

