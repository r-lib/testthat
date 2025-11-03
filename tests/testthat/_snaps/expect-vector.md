# basic properties upheld

    Code
      expect_vector(x, size = 5)
    Condition
      Error:
      ! `x` must have size 5, not size 10.

---

    Code
      expect_vector(y)
    Condition
      Error:
      ! `y` must be a vector, not `NULL`.

# expect_vector validates its inputs

    Code
      expect_vector(1:5, size = "large")
    Condition
      Error in `expect_vector()`:
      ! `size` must be a whole number or `NULL`, not the string "large".

