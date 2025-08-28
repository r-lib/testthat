# logical tests act as expected

    Code
      expect_true(df)
    Condition
      Error:
      ! Expected `df` to be TRUE.
      Differences:
      `actual` is an S3 object of class <data.frame>, a list
      `expected` is a logical vector (TRUE)

---

    Code
      expect_false(df)
    Condition
      Error:
      ! Expected `df` to be FALSE.
      Differences:
      `actual` is an S3 object of class <data.frame>, a list
      `expected` is a logical vector (FALSE)

# expect_null works

    Code
      expect_null(df)
    Condition
      Error:
      ! Expected `df` to be NULL.
      Differences:
      `actual` is an S3 object of class <data.frame>, a list
      `expected` is NULL

