# generates actionable failure message

    Expected `x` to have length 2.
    Actual length: 10

# expect_length validates its inputs

    Code
      expect_length(1:5, "a")
    Condition
      Error in `expect_length()`:
      ! `n` must be a whole number, not the string "a".

# dim compared correctly

    Expected matrix(nrow = 6, ncol = 3) to have dim (6, 2).
    Actual dim: (6, 3)

---

    Expected matrix(nrow = 6, ncol = 3) to have dim (7, 3).
    Actual dim: (6, 3)

---

    Expected array(dim = 1:3) to have 2 dimensions.
    Actual dimensions: 3

---

    Expected array(dim = 1:3) to have 4 dimensions.
    Actual dimensions: 3

# nrow compared correctly

    Expected matrix(nrow = 5, ncol = 5) to have 6 rows.
    Actual rows: 5

---

    Expected 1 to have dimensions.

# ncol compared correctly

    Expected matrix(nrow = 5, ncol = 5) to have 7 columns.
    Actual columns: 5

---

    Expected array(1) to have more than one dimension.

---

    Expected array(integer()) to have more than one dimension.

# NA handling (e.g. dbplyr)

    Expected `x` to have 10 rows.
    Actual rows: NA

---

    Expected `x` to have NA columns.
    Actual columns: 10

---

    Expected `x` to have dim (10, NA).
    Actual dim: (NA, 10)

# checks inputs arguments, 

    Code
      expect_shape(1:10)
    Condition
      Error in `expect_shape()`:
      ! One of `nrow`, `ncol`, or `dim` must be supplied.
    Code
      expect_shape(1:10, nrow = 1L, ncol = 2L)
    Condition
      Error in `expect_shape()`:
      ! Exactly one of `nrow`, `ncol`, or `dim` must be supplied.
      x `nrow` and `ncol` were supplied together.
    Code
      expect_shape(1:10, 2)
    Condition
      Error in `expect_shape()`:
      ! `...` must be empty.
      x Problematic argument:
      * ..1 = 2
      i Did you forget to name an argument?
    Code
      expect_shape(array(1), nrow = "x")
    Condition
      Error in `expect_shape()`:
      ! `nrow` must be a whole number or `NA`, not the string "x".
    Code
      expect_shape(array(1), ncol = "x")
    Condition
      Error in `expect_shape()`:
      ! `ncol` must be a whole number or `NA`, not the string "x".
    Code
      expect_shape(array(1), dim = "x")
    Condition
      Error in `expect_shape()`:
      ! `dim` must be a numeric vector, not the string "x".

