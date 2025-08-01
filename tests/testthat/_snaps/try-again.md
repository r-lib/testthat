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
      ! `i` (`actual`) is not equal to 0 (`expected`).
      
        `actual`: 1.0
      `expected`: 0.0

