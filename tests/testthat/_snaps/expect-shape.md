# length compared correctly

    `object` has length 1, not length 2.

# dim compared correctly

    matrix(nrow = 6, ncol = 3) has shape (6, 3), not (6, 2).

---

    matrix(nrow = 6, ncol = 3) has shape (6, 3), not (7, 3).

---

    array(dim = 1:3) has 3 dimensions, not 2

---

    array(dim = 1:3) has 3 dimensions, not 4

# nrow compared correctly

    matrix(nrow = 5, ncol = 5) has 5 rows, not 6.

---

    1 has no dimensions.

# ncol compared correctly

    matrix(nrow = 5, ncol = 5) has 5 columns, not 7.

---

    array(1) has only one dimension.

---

    array() has only one dimension.

# NA handling (e.g. dbplyr)

    `x` has NA rows, not 10.

---

    `x` has 10 columns, not NA.

---

    `x` has shape (NA, 10), not (10, NA).

# at least one argument is required

    Code
      expect_shape(1:10)
    Condition
      Error in `expect_shape()`:
      ! One of `length`, `nrow`, `ncol`, or `dim` must be supplied.

---

    Code
      expect_shape(1:10, 2)
    Condition
      Error in `expect_shape()`:
      ! One of `length`, `nrow`, `ncol`, or `dim` must be supplied.

---

    Code
      expect_shape(1:10, nrow = 1L, ncol = 2L)
    Condition
      Error in `expect_shape()`:
      ! Exactly one of `length`, `nrow`, `ncol`, or `dim` must be supplied.
      x `nrow` and `ncol` were supplied together.

