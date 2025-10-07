# validates its inputs

    Code
      expect_all_equal(mean, 1)
    Condition
      Error in `expect_all_equal()`:
      ! `object` must be a vector, not a function.
    Code
      expect_all_equal(logical(), 1)
    Condition
      Error in `expect_all_equal()`:
      ! `object` must not be empty.
    Code
      expect_all_equal(1:10, mean)
    Condition
      Error in `expect_all_equal()`:
      ! `expected` must be a vector, not a function.
    Code
      expect_all_equal(1:10, 1:2)
    Condition
      Error in `expect_all_equal()`:
      ! `expected` must be length 1.

# can compare atomic vectors

    Code
      expect_all_equal(x, TRUE)
    Condition
      Error:
      ! Expected every element of `x` to equal TRUE.
      Differences:
      `actual[2:8]`:   TRUE TRUE TRUE FALSE TRUE TRUE TRUE
      `expected[2:8]`: TRUE TRUE TRUE TRUE  TRUE TRUE TRUE

# can compare named lists

    Code
      expect_all_equal(x, list(1))
    Condition
      Error:
      ! Expected every element of `x` to equal `list(1)`.
      Differences:
        `actual$c`: 2.0
      `expected$c`: 1.0

# truncates very long differences

    Code
      expect_all_equal(x, FALSE)
    Condition
      Error:
      ! Expected every element of `x` to equal FALSE.
      Differences:
      `actual`:   TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE 
      `expected`: FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE

