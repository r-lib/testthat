# useful output when numbers are very small

    1.1 * x (1.1e-05) is not less than `x` (1e-05).
    0.0000110 - 0.0000100 = 0.0000010 > 0

---

    `x` (1e-05) is not strictly greater than 1.1 * x (1.1e-05).
    0.0000100 - 0.0000110 = -0.0000010 <= 0

# useful output when difference is zero

    `x` (100) is not strictly less than 100.
    100.0 - 100.0 = 0.0 >= 0

# useful output when differnce is large

    `x` (100) is not strictly less than 0.001.
    100.000 - 0.001 = 99.999 >= 0

# comparison must yield a single logical

    Code
      expect_lt(1:10, 5)
    Condition
      Error in `expect_lt()`:
      ! Result of comparison must be a single logical value.

