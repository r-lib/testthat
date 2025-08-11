# expect_failure() requires 1 failure and zero successes

    Expectation did not fail

---

    Expectation did not fail

---

    Expected expectation to never succeed.
    Actually succeeded: 1 times

---

    Expectation failed more than once

# expect_failure() can optionally match message

    Expected Failure message to match regexp "banana".
    Actual text:
    apple

# expect_success() requires 1 success and zero failures

    Expectation did not succeed

---

    Expectation did not succeed

---

    Expected expectation to not fail.
    Actually failed: 1 times

---

    Expected expectation to succeed once.
    Actually succeeded: 2 times

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
      Expected FALSE to be equal to TRUE.
      
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

# expect_no still work

    Expectation failed

---

    Expectation succeeded

