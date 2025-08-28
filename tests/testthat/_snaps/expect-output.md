# expect = NA checks for no output

    Code
      expect_output(g(), NA)
    Condition
      Error:
      ! Expected `g()` to produce no output.
      Actual output:
      !

# expect = NULL checks for some output

    Code
      expect_output(f(), NULL)
    Condition
      Error:
      ! Expected `f()` to produce output.

# expect = string checks for match

    Code
      expect_output(g(), "x")
    Condition
      Error:
      ! Expected `g()` to match regexp "x".
      Actual output:
      x | !

---

    Code
      expect_output("a", "x")
    Condition
      Error:
      ! Expected "a" to produce output.

# expect_output validates its inputs

    Code
      expect_output(cat("hello"), "hello", width = "wide")
    Condition
      Error in `expect_output()`:
      ! `width` must be a whole number, not the string "wide".

