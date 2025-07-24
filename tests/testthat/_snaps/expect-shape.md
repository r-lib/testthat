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

