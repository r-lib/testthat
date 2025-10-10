# tries multiple times

    Code
      result <- try_again(3, third_try())
    Message
      i Expectation failed; trying again (1)...
      i Expectation failed; trying again (2)...

---

    Code
      try_again(1, third_try())
    Message
      i Expectation failed; trying again (1)...
    Condition
      Error:
      ! Expected `i` to equal 0.
      Differences:
        `actual`: 1.0
      `expected`: 0.0

# handles errors

    Code
      result <- try_again(3, expect_equal(fails_twice(), 1))
    Message
      i Expectation errored; trying again (1)...
      i Expectation errored; trying again (2)...

