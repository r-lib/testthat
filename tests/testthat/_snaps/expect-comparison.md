# basic comparisons work

    Code
      expect_lt(x, 10)
    Condition
      Error:
      ! Expected `x` < 10.
      Actual comparison: 10.0 >= 10.0
      Difference: 0.0 >= 0

---

    Code
      expect_gt(x, 10)
    Condition
      Error:
      ! Expected `x` > 10.
      Actual comparison: 10.0 <= 10.0
      Difference: 0.0 <= 0

# useful output when numbers are very small

    Code
      expect_lte(1.1 * x, x)
    Condition
      Error:
      ! Expected `1.1 * x` <= `x`.
      Actual comparison: 0.0000110 > 0.0000100
      Difference: 0.0000010 > 0

---

    Code
      expect_gt(x, 1.1 * x)
    Condition
      Error:
      ! Expected `x` > `1.1 * x`.
      Actual comparison: 0.0000100 <= 0.0000110
      Difference: -0.0000010 <= 0

# useful output when difference is zero

    Code
      expect_lt(x, 100)
    Condition
      Error:
      ! Expected `x` < 100.
      Actual comparison: 100.0 >= 100.0
      Difference: 0.0 >= 0

# useful output when differnce is large

    Code
      expect_lt(x, 0.001)
    Condition
      Error:
      ! Expected `x` < 0.001.
      Actual comparison: 100.000 >= 0.001
      Difference: 99.999 >= 0

# comparisons with Inf work

    Code
      expect_lt(x, Inf)
    Condition
      Error:
      ! Expected `x` < Inf.
      Actual comparison: Inf >= Inf
      Difference: incomparable.

# comparisons with NA work

    Code
      expect_lt(x, 10)
    Condition
      Error:
      ! Expected `x` < 10.
      Actual comparison: NA >= 10.0
      Difference: NA.

# comparison must yield a single logical

    Code
      expect_lt(1:10, 5)
    Condition
      Error in `expect_lt()`:
      ! Result of comparison must be a single logical value.

