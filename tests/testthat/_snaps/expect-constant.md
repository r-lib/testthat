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

# additional info returned in message

    Code
      expect_true(FALSE, "NOPE")
    Condition
      Error:
      ! Expected FALSE to be TRUE.
      Differences:
      `actual`:   FALSE
      `expected`: TRUE 
      
      NOPE

---

    Code
      expect_false(TRUE, "YUP")
    Condition
      Error:
      ! Expected TRUE to be FALSE.
      Differences:
      `actual`:   TRUE 
      `expected`: FALSE
      
      YUP

# expect_null works

    Code
      expect_null(df)
    Condition
      Error:
      ! Expected `df` to be FALSE.
      Differences:
      `actual` is an S3 object of class <data.frame>, a list
      `expected` is NULL

