# expect = string checks for match

    `g()` does not match regexp "x".
    Output: "!"

---

    Expected "a" to produce output.

# expect_output validates its inputs

    Code
      expect_output(cat("hello"), "hello", width = "wide")
    Condition
      Error in `expect_output()`:
      ! `width` must be a whole number, not the string "wide".

