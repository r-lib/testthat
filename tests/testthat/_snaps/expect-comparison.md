# basic comparisons work

    Code
      expect_lt(10, 10)
    Condition
      Error:
      ! Expected 10 < 10.
      Actual 10.0 >= 10.0
      Difference 0.0 >= 0

---

    Code
      expect_gt(10, 10)
    Condition
      Error:
      ! Expected 10 > 10.
      Actual 10.0 <= 10.0
      Difference 0.0 <= 0

# useful output when numbers are very small

    Code
      expect_lte(1.1 * x, x)
    Condition
      Error:
      ! Expected `1.1 * x` <= `x`.
      Actual 0.0000110 > 0.0000100
      Difference 0.0000010 > 0

---

    Code
      expect_gt(x, 1.1 * x)
    Condition
      Error:
      ! Expected `x` > `1.1 * x`.
      Actual 0.0000100 <= 0.0000110
      Difference -0.0000010 <= 0

# useful output when difference is zero

    Code
      expect_lt(x, 100)
    Condition
      Error:
      ! Expected `x` < 100.
      Actual 100.0 >= 100.0
      Difference 0.0 >= 0

# useful output when differnce is large

    Code
      expect_lt(x, 0.001)
    Condition
      Error:
      ! Expected `x` < 0.001.
      Actual 100.000 >= 0.001
      Difference 99.999 >= 0

# comparisons with Inf work

    Code
      expect_lt(Inf, Inf)
    Condition
      Error:
      ! Expected Inf < Inf.
      Actual values are incomparable.

---

    Code
      expect_gt(Inf, Inf)
    Condition
      Error:
      ! Expected Inf > Inf.
      Actual values are incomparable.

# comparisons with NA work

    Code
      expect_lt(10, NA_real_)
    Condition
      Error:
      ! Expected 10 < NA_real_.
      Actual comparison is NA.

---

    Code
      expect_lt(NA_real_, 10)
    Condition
      Error:
      ! Expected NA_real_ < 10.
      Actual comparison is NA.

---

    Code
      expect_lt(NA_real_, NA_real_)
    Condition
      Error:
      ! Expected NA_real_ < NA_real_.
      Actual comparison is NA.

---

    Code
      expect_lte(NA_real_, NA_real_)
    Condition
      Error:
      ! Expected NA_real_ <= NA_real_.
      Actual comparison is NA.

---

    Code
      expect_gt(10, NA_real_)
    Condition
      Error:
      ! Expected 10 > NA_real_.
      Actual comparison is NA.

---

    Code
      expect_gt(NA_real_, 10)
    Condition
      Error:
      ! Expected NA_real_ > 10.
      Actual comparison is NA.

---

    Code
      expect_gt(NA_real_, NA_real_)
    Condition
      Error:
      ! Expected NA_real_ > NA_real_.
      Actual comparison is NA.

---

    Code
      expect_gte(NA_real_, NA_real_)
    Condition
      Error:
      ! Expected NA_real_ >= NA_real_.
      Actual comparison is NA.

# comparison must yield a single logical

    Code
      expect_lt(1:10, 5)
    Condition
      Error in `expect_lt()`:
      ! Result of comparison must be a single logical value.

