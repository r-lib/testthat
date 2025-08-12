# provide useful feedback on failure

    Code
      expect_identical(x, "a")
    Condition
      Error:
      ! Expected `x` to be identical to "a".
      Differences:
      `actual` is a double vector (1)
      `expected` is a character vector ('a')

---

    Code
      expect_equal(x, "a")
    Condition
      Error:
      ! Expected `x` to be equal to "a".
      Differences:
      `actual` is a double vector (1)
      `expected` is a character vector ('a')

---

    Code
      expect_identical(x, "a")
    Condition
      Error:
      ! Expected `x` to be identical to "a".
      Differences:
      Types not compatible: double is not character

---

    Code
      expect_equal(x, "a")
    Condition
      Error:
      ! Expected `x` to equal "a".
      Differences:
      Types not compatible: double is not character

# default labels use unquoting

    Code
      expect_equal(1, !!x)
    Condition
      Error:
      ! Expected 1 to equal 2.
      Differences:
      1/1 mismatches
      [1] 1 - 2 == -1

# useful message if objects equal but not identical

    Code
      expect_identical(f, g)
    Condition
      Error:
      ! Expected `f` to be identical to `g`.
      Differences:
      Objects equal but not identical

# attributes for object (#452)

    Code
      expect_equal(oops, 0)
    Condition
      Error:
      ! Expected `oops` to equal 0.
      Differences:
      Attributes: < Modes: list, NULL >
      Attributes: < Lengths: 1, 0 >
      Attributes: < names for target but not for current >
      Attributes: < current is not list-like >

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

