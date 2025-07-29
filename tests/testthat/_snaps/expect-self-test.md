# errors in expect_success bubble up

    Code
      expect_success(abort("error"))
    Condition
      Error:
      ! error

# expect_no are deprecated

    Code
      expect_no_failure(succeed())
    Condition
      Warning:
      `expect_no_failure()` was deprecated in testthat 3.3.0.
      i Please use `expect_success()` instead.
    Code
      expect_no_success(fail())
    Condition
      Warning:
      `expect_no_success()` was deprecated in testthat 3.3.0.
      i Please use `expect_failure()` instead.

