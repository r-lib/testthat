# expect_failure() generates a useful error messages

    Code
      expect_failure(expect_no_failure())
    Condition
      Error:
      ! Expected 0 successes and 1 failure.
      v Observed 0 successes.
      x Observed 0 failures.
    Code
      expect_failure(expect_many_failures())
    Condition
      Error:
      ! Expected 0 successes and 1 failure.
      v Observed 0 successes.
      x Observed 2 failures.
    Code
      expect_failure(expect_has_success())
    Condition
      Error:
      ! Expected 0 successes and 1 failure.
      x Observed 1 success.
      v Observed 1 failure.
    Code
      expect_failure(expect_both_wrong())
    Condition
      Error:
      ! Expected 0 successes and 1 failure.
      x Observed 1 success.
      x Observed 0 failures.
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
      ! Expected 1 success and 0 failures.
      x Observed 0 successes.
      v Observed 0 failures.
    Code
      expect_success(expect_many_successes())
    Condition
      Error:
      ! Expected 1 success and 0 failures.
      x Observed 2 successes.
      v Observed 0 failures.
    Code
      expect_success(expect_has_failure())
    Condition
      Error:
      ! Expected 1 success and 0 failures.
      v Observed 1 success.
      x Observed 1 failure.
    Code
      expect_success(expect_both_wrong())
    Condition
      Error:
      ! Expected 1 success and 0 failures.
      x Observed 0 successes.
      x Observed 1 failure.

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

