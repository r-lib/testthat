# warns if both inputs are named

    Code
      expect_setequal(c(a = 1), c(b = 1))
    Condition
      Warning:
      expect_setequal() ignores names

# checks inputs

    Code
      expect_setequal(sum, 1)
    Condition
      Error in `expect_setequal()`:
      ! `object` must be a vector, not a primitive function.
    Code
      expect_setequal(1, sum)
    Condition
      Error in `expect_setequal()`:
      ! `expected` must be a vector, not a primitive function.

# useful message on failure

    Code
      expect_setequal("actual", "expected")
    Condition
      Error:
      ! Expected "actual" to have the same values as "expected".
      Actual: "actual"
      Expected: "expected"
      Needs: "actual"
      Absent: "expected"

---

    Code
      expect_setequal(x, y)
    Condition
      Error:
      ! Expected `x` to have the same values as `y`.
      Actual: 1, 2
      Expected: 2
      Needs: 1

---

    Code
      expect_setequal(x, y)
    Condition
      Error:
      ! Expected `x` to have the same values as `y`.
      Actual: 2
      Expected: 2, 3
      Absent: 3

---

    Code
      expect_setequal(x, y)
    Condition
      Error:
      ! Expected `x` to have the same values as `y`.
      Actual: 1, 2
      Expected: 2, 3
      Needs: 1
      Absent: 3

---

    Code
      expect_setequal(x, y)
    Condition
      Error:
      ! Expected `x` to have the same values as `y`.
      Actual: "a", "a"
      Expected: "b", "b", "b"
      Needs: "a"
      Absent: "b"

---

    Code
      expect_setequal(x, c("a", "b", "c", "d"))
    Condition
      Error:
      ! Expected `x` to have the same values as `c("a", "b", "c", "d")`.
      Actual: "a", "b", "c"
      Expected: "a", "b", "c", "d"
      Absent: "d"

# truncates long vectors

    Code
      expect_setequal(x, y)
    Condition
      Error:
      ! Expected `x` to have the same values as `y`.
      Actual: 1, 2
      Expected: 1, 2, 3, 4, 5, 6, 7, 8, 9, ...
      Absent: 3, 4, 5, 6, 7, 8, 9, 10, 11, ...

# expect_contains() gives useful message on failure

    Code
      expect_contains(x1, x2)
    Condition
      Error:
      ! Expected `x1` to contain all values in `x2`.
      Actual: "a", "b", "c"
      Expected: "c", "d"
      Missing: "d"

---

    Code
      expect_contains(x1, x3)
    Condition
      Error:
      ! Expected `x1` to contain all values in `x3`.
      Actual: "a", "b", "c"
      Expected: "d", "e"
      Missing: "d", "e"

# expect_in() gives useful message on failure

    Code
      expect_in(x1, x2)
    Condition
      Error:
      ! Expected `x1` to only contain values from `x2`.
      Actual: "a", "b"
      Expected: "b", "c"
      Invalid: "a"

---

    Code
      expect_in(x1, x3)
    Condition
      Error:
      ! Expected `x1` to only contain values from `x3`.
      Actual: "a", "b"
      Expected: "d", "e"
      Invalid: "a", "b"

