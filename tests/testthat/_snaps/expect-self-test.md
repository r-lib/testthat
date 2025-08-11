# expect_failure() requires 1 failure and zero successes

    Code
      expect_failure({ })
    Condition
      Error:
      ! Expectation did not fail

---

    Code
      expect_failure(pass(NULL))
    Condition
      Error:
      ! Expectation did not fail

---

    Code
      expect_failure({
        pass(NULL)
        fail()
      })
    Condition
      Error:
      ! Expected expectation to never succeed.
      Actually succeeded: 1 times

---

    Code
      expect_failure({
        fail()
        pass(NULL)
        fail()
      })
    Condition
      Error:
      ! Expectation failed more than once

# expect_failure() can optionally match message

    Code
      expect_failure(fail("apple"), "banana")
    Condition
      Error:
      ! Expected Failure message to match regexp "banana".
      Actual text:
      apple

# expect_success() requires 1 success and zero failures

    Code
      expect_success({ })
    Condition
      Error:
      ! Expectation did not succeed

---

    Code
      expect_success(fail())
    Condition
      Error:
      ! Expectation did not succeed

---

    Code
      expect_success({
        pass(NULL)
        fail()
      })
    Condition
      Error:
      ! Expected expectation to not fail.
      Actually failed: 1 times

---

    Code
      expect_success({
        pass(NULL)
        pass(NULL)
      })
    Condition
      Error:
      ! Expected expectation to succeed once.
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
      Expected FALSE to be TRUE.
      Differences:
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

    Code
      expect_no_failure(fail())
    Condition
      Error:
      ! Expectation failed

---

    Code
      expect_no_success(pass(NULL))
    Condition
      Error:
      ! Expectation succeeded

