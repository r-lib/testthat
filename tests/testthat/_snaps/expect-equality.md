# basical principles of equality hold

    Code
      expect_equal(1, 2)
    Condition
      Error:
      ! Expected 1 to equal 2.
      Actual:
      1/1 mismatches
      [1] 1 - 2 == -1

---

    Code
      expect_identical(1, 2)
    Condition
      Error:
      ! Expected 1 to be identical to 2.
      1/1 mismatches
      [1] 1 - 2 == -1

---

    Code
      expect_equal(1, 2)
    Condition
      Error:
      ! Expected 1 to be equal to 2.
      
        `actual`: 1.0
      `expected`: 2.0

---

    Code
      expect_identical(1, 2)
    Condition
      Error:
      ! Expected 1 to be identical to 2.
      
        `actual`: 1.0
      `expected`: 2.0

# expect_equal() ignores numeric type; expect_identical() does not

    Code
      expect_identical(1, 1L)
    Condition
      Error:
      ! Expected 1 to be identical to 1L.
      Objects equal but not identical

---

    Code
      expect_identical(1, 1L)
    Condition
      Error:
      ! Expected 1 to be identical to 1L.
      
      `actual` is a double vector (1)
      `expected` is an integer vector (1)

# can control numeric tolerance

    Code
      expect_equal(x1, x2)
    Condition
      Error:
      ! Expected `x1` to equal `x2`.
      Actual:
      1/1 mismatches
      [1] 1 - 1 == -1e-06

---

    Code
      expect_equal(x1, x2)
    Condition
      Error:
      ! Expected `x1` to be equal to `x2`.
      
        `actual`: 1.0000000
      `expected`: 1.0000010

# provide useful feedback on failure

    Code
      expect_identical(x, "a")
    Condition
      Error:
      ! Expected `x` to be identical to "a".
      
      `actual` is a double vector (1)
      `expected` is a character vector ('a')

---

    Code
      expect_equal(x, "a")
    Condition
      Error:
      ! Expected `x` to be equal to "a".
      
      `actual` is a double vector (1)
      `expected` is a character vector ('a')

---

    Code
      expect_identical(x, "a")
    Condition
      Error:
      ! Expected `x` to be identical to "a".
      Types not compatible: double is not character

---

    Code
      expect_equal(x, "a")
    Condition
      Error:
      ! Expected `x` to equal "a".
      Actual:
      Types not compatible: double is not character

# default labels use unquoting

    Code
      expect_equal(1, !!x)
    Condition
      Error:
      ! Expected 1 to equal 2.
      Actual:
      1/1 mismatches
      [1] 1 - 2 == -1

# % is not treated as sprintf format specifier (#445)

    Code
      expect_equal("+", "%")
    Condition
      Error:
      ! Expected "+" to be equal to "%".
      
      `actual`:   "+"
      `expected`: "%"

---

    Code
      expect_equal("%", "+")
    Condition
      Error:
      ! Expected "%" to be equal to "+".
      
      `actual`:   "%"
      `expected`: "+"

# useful message if objects equal but not identical

    Code
      expect_identical(f, g)
    Condition
      Error:
      ! Expected `f` to be identical to `g`.
      names for target but not for current
      Length mismatch: comparison on first 0 components

# attributes for object (#452)

    Code
      expect_equal(oops, 0)
    Condition
      Error:
      ! Expected `oops` to equal 0.
      Actual:
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

