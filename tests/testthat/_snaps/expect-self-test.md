# expect_failure() generates a useful error messages

    Code
      expect_failure(expect_no_failure())
    Condition
      Error:
      ! Expected one failure.
      Actually failed 0 times
    Code
      expect_failure(expect_many_failures())
    Condition
      Error:
      ! Expected one failure.
      Actually failed 2 times
    Code
      expect_failure(expect_has_success())
    Condition
      Error:
      ! Expected zero successes.
      Actually succeeded 1 times
    Code
      expect_failure(expect_failure_foo(), "bar")
    Condition
      Error:
      ! Expected failure message to match regexp "bar".
      Actual message:
      x | foo

# errors in expect_success bubble up

    Code
      expect_success(abort("error"))
    Condition
      Error:
      ! error

# show_failure

    Code
      show_failure(expect_true(FALSE))
    Output
      Failed expectation:
      Expected FALSE to be TRUE.
      Differences:
      `actual`:   FALSE
      `expected`: TRUE 
      

# expect_success() generates a useful error messages

    Code
      expect_success(expect_no_success())
    Condition
      Error:
      ! Expected one success.
      Actually succeeded 0 times
    Code
      expect_success(expect_many_successes())
    Condition
      Error:
      ! Expected one success.
      Actually succeeded 2 times
    Code
      expect_success(expect_has_failure())
    Condition
      Error:
      ! Expected zero failures.
      Actually failed 1 times

# expect_no are deprecated

    Code
      expect_no_failure(pass())
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

