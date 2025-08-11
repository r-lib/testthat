# logical tests act as expected

    Code
      expect_true(df)
    Condition
      Error:
      ! Expected `df` to be equal to TRUE.
      
      `actual` is an S3 object of class <data.frame>, a list
      `expected` is a logical vector (TRUE)

---

    Code
      expect_false(df)
    Condition
      Error:
      ! Expected `df` to be equal to FALSE.
      
      `actual` is an S3 object of class <data.frame>, a list
      `expected` is a logical vector (FALSE)

# additional info returned in message

    Code
      expect_true(FALSE, "NOPE")
    Condition
      Error:
      ! Expected FALSE to be equal to TRUE.
      
      `actual`:   FALSE
      `expected`: TRUE 
      NOPE

---

    Code
      expect_false(TRUE, "YUP")
    Condition
      Error:
      ! Expected TRUE to be equal to FALSE.
      
      `actual`:   TRUE 
      `expected`: FALSE
      YUP

# expect_null works

    Code
      expect_null(df)
    Condition
      Error:
      ! Expected `df` to be equal to FALSE.
      
      `actual` is an S3 object of class <data.frame>, a list
      `expected` is NULL

