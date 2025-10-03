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

# expect_true(required = 'all')

    Code
      expect_true(FALSE, required = "all")
    Condition
      Error:
      ! FALSE is not TRUE at index: 1

---

    Code
      expect_true(c(FALSE, FALSE), required = "all")
    Condition
      Error:
      ! `c(FALSE, FALSE)` is not TRUE at index: 1, 2

---

    Code
      expect_true(c(TRUE, FALSE), required = "all")
    Condition
      Error:
      ! `c(TRUE, FALSE)` is not TRUE at index: 2

---

    Code
      expect_true("not logical", required = "all")
    Condition
      Error:
      ! "not logical" is not TRUE at index: 1

# expect_true(required = 'any')

    Code
      expect_true(FALSE, required = "any")
    Condition
      Error:
      ! No values in FALSE are TRUE.

---

    Code
      expect_true(c(FALSE, FALSE), required = "any")
    Condition
      Error:
      ! No values in `c(FALSE, FALSE)` are TRUE.

---

    Code
      expect_true("not logical", required = "any")
    Condition
      Error in `expect_true_any()`:
      ! "not logical" must be a logical vector

