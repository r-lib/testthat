# shape computed correctly

    `object` has length 1, not length 2.

---

    matrix(nrow = 6, ncol = 3) has shape (6, 3), not (6, 2).

---

    matrix(nrow = 6, ncol = 3) has shape (6, 3), not (7, 3).

---

    matrix(nrow = 5, ncol = 5) has 5 rows, not 6.

---

    matrix(nrow = 5, ncol = 5) has 5 columns, not 7.

# at least one argument is required

    Code
      expect_shape(1:10)
    Condition
      Error in `expect_shape()`:
      ! Exactly one of `length`, `nrow`, `ncol`, or `dim` must be provided.

---

    Code
      expect_shape(1:10, 2)
    Condition
      Error in `expect_shape()`:
      ! Exactly one of `length`, `nrow`, `ncol`, or `dim` must be provided.

---

    Code
      expect_shape(1:10, nrow = 1L, ncol = 2L)
    Condition
      Error in `expect_shape()`:
      ! Exactly one of `length`, `nrow`, `ncol`, or `dim` must be provided.

