# expect_failure() can optionally match message

    Failure message does not match regexp "banana".
    Text: "apple"

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
      FALSE (`actual`) is not equal to TRUE (`expected`).
      
      `actual`:   FALSE
      `expected`: TRUE 

# expect_no are deprecated

    Code
      expect_no_failure(pass(NULL))
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

