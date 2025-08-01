# provide useful feedback on failure

    1 (`actual`) is not identical to "a" (`expected`).
    
    `actual` is a double vector (1)
    `expected` is a character vector ('a')

---

    1 (`actual`) is not equal to "a" (`expected`).
    
    `actual` is a double vector (1)
    `expected` is a character vector ('a')

---

    1 not identical to "a".
    Types not compatible: double is not character

---

    1 not equal to "a".
    Types not compatible: double is not character

# expect_equal validates its inputs

    Code
      expect_equal(1, 2, tolerance = "high")
    Condition
      Error in `expect_equal()`:
      ! `tolerance` must be a number or `NULL`, not the string "high".
    Code
      expect_equal(1, 2, tolerance = -1)
    Condition
      Error in `expect_equal()`:
      ! `tolerance` must be a number larger than or equal to 0 or `NULL`, not the number -1.

