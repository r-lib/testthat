# basic comparisons work

    Expected 10 < 10.
    Actual 10.0 >= 10.0
    Difference 0.0 >= 0

---

    Expected 10 > 10.
    Actual 10.0 <= 10.0
    Difference 0.0 <= 0

# useful output when numbers are very small

    Expected `1.1 * x` <= `x`.
    Actual 0.0000110 > 0.0000100
    Difference 0.0000010 > 0

---

    Expected `x` > `1.1 * x`.
    Actual 0.0000100 <= 0.0000110
    Difference -0.0000010 <= 0

# useful output when difference is zero

    Expected `x` < 100.
    Actual 100.0 >= 100.0
    Difference 0.0 >= 0

# useful output when differnce is large

    Expected `x` < 0.001.
    Actual 100.000 >= 0.001
    Difference 99.999 >= 0

# comparisons with Inf work

    Expected Inf < Inf.
    Actual values are incomparable.

---

    Expected Inf > Inf.
    Actual values are incomparable.

# comparisons with NA work

    Expected 10 < NA_real_.
    Actual comparison is NA.

---

    Expected NA_real_ < 10.
    Actual comparison is NA.

---

    Expected NA_real_ < NA_real_.
    Actual comparison is NA.

---

    Expected NA_real_ <= NA_real_.
    Actual comparison is NA.

---

    Expected 10 > NA_real_.
    Actual comparison is NA.

---

    Expected NA_real_ > 10.
    Actual comparison is NA.

---

    Expected NA_real_ > NA_real_.
    Actual comparison is NA.

---

    Expected NA_real_ >= NA_real_.
    Actual comparison is NA.

# comparison must yield a single logical

    Code
      expect_lt(1:10, 5)
    Condition
      Error in `expect_lt()`:
      ! Result of comparison must be a single logical value.

