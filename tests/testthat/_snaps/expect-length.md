# expect_length validates its inputs

    Code
      expect_length(1:5, "a")
    Condition
      Error in `expect_length()`:
      ! `n` must be a whole number, not the string "a".

