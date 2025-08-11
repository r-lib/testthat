# expect = NA checks for no output

    Expected `g()` to produce no output.
    Actual output:
    !

# expect = NULL checks for some output

    Expected `f()` to produce output.

# expect = string checks for match

    Expected `g()` to match regexp "x".
    Actual output:
    !

---

    Expected "a" to produce output.

# expect_output validates its inputs

    Code
      expect_output(cat("hello"), "hello", width = "wide")
    Condition
      Error in `expect_output()`:
      ! `width` must be a whole number, not the string "wide".

