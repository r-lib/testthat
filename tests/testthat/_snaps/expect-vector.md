# expect_vector validates its inputs

    Code
      expect_vector(1:5, size = "large")
    Condition
      Error in `expect_vector()`:
      ! `size` must be a whole number or `NULL`, not the string "large".

