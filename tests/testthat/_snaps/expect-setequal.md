# checks both directions of containment

    Code
      expect_setequal(letters, letters[-1])
    Condition
      Error:
      ! Expected `letters` to have the same values as `letters[-1]`.
      Needs: "a"

---

    Code
      expect_setequal(letters[-1], letters)
    Condition
      Error:
      ! Expected `letters[-1]` to have the same values as `letters`.
      Extra: "a"

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
      Needs: "actual"
      Extra: "expected"

---

    Code
      expect_setequal(x, y)
    Condition
      Error:
      ! Expected `x` to have the same values as `y`.
      Needs: 1

---

    Code
      expect_setequal(x, y)
    Condition
      Error:
      ! Expected `x` to have the same values as `y`.
      Extra: 3

---

    Code
      expect_setequal(x, y)
    Condition
      Error:
      ! Expected `x` to have the same values as `y`.
      Needs: 1
      Extra: 3

---

    Code
      expect_setequal(x, y)
    Condition
      Error:
      ! Expected `x` to have the same values as `y`.
      Needs: "a"
      Extra: "b"

---

    Code
      expect_setequal(x, c("a", "b", "c", "d"))
    Condition
      Error:
      ! Expected `x` to have the same values as `c("a", "b", "c", "d")`.
      Extra: "d"

# truncates long vectors

    Code
      expect_setequal(x, y)
    Condition
      Error:
      ! Expected `x` to have the same values as `y`.
      Extra: 3, 4, 5, 6, 7, 8, 9, 10, 11, ...

# error if any names are duplicated

    Code
      expect_mapequal(list(a = 1, b = 2, b = 3), list(b = 2, a = 1))
    Condition
      Error:
      ! Expected `list(a = 1, b = 2, b = 3)` to be equal to `list(b = 2, a = 1)`.
      Differences:
      `actual` is length 3
      `expected` is length 2
      
      `names(actual)`:   "a" "b" "b"
      `names(expected)`: "a" "b"    
      
      `actual[[3]]` is a double vector (3)
      `expected[[3]]` is absent

---

    Code
      expect_mapequal(list(a = 1, b = 2), list(b = 3, b = 2, a = 1))
    Condition
      Error:
      ! Expected `list(a = 1, b = 2)` to be equal to `list(b = 3, b = 2, a = 1)`.
      Differences:
      `actual` is length 2
      `expected` is length 3
      
      `names(actual)`:   "a" "b"    
      `names(expected)`: "a" "b" "b"
      
        `actual[[2]]`: 2.0
      `expected[[2]]`: 3.0
      
      `actual[[3]]` is absent
      `expected[[3]]` is a double vector (2)

---

    Code
      expect_mapequal(list(a = 1, b = 2, b = 3), list(b = 3, b = 2, a = 1))
    Condition
      Error:
      ! Expected `list(a = 1, b = 2, b = 3)` to be equal to `list(b = 3, b = 2, a = 1)`.
      Differences:
        `actual[[2]]`: 2.0
      `expected[[2]]`: 3.0
      
        `actual[[3]]`: 3.0
      `expected[[3]]`: 2.0

# fail if names don't match

    Code
      expect_mapequal(list(a = 1, b = 2), list(a = 1))
    Condition
      Error:
      ! Expected `list(a = 1, b = 2)` to be equal to `list(a = 1)`.
      Differences:
      `actual` is length 2
      `expected` is length 1
      
      `names(actual)`:   "a" "b"
      `names(expected)`: "a"    
      
      `actual$b` is a double vector (2)
      `expected$b` is absent

---

    Code
      expect_mapequal(list(a = 1), list(a = 1, b = 2))
    Condition
      Error:
      ! Expected `list(a = 1)` to be equal to `list(a = 1, b = 2)`.
      Differences:
      `actual` is length 1
      `expected` is length 2
      
      `names(actual)`:   "a"    
      `names(expected)`: "a" "b"
      
      `actual$b` is absent
      `expected$b` is a double vector (2)

# fails if values don't match

    Code
      expect_mapequal(list(a = 1, b = 2), list(a = 1, b = 3))
    Condition
      Error:
      ! Expected `list(a = 1, b = 2)` to be equal to `list(a = 1, b = 3)`.
      Differences:
        `actual$b`: 2.0
      `expected$b`: 3.0

# fails if unnamed values in different location if any unnamed values

    Code
      expect_mapequal(list(1, b = 2, c = 3), list(b = 2, 1, c = 3))
    Condition
      Error:
      ! Expected `list(1, b = 2, c = 3)` to be equal to `list(b = 2, 1, c = 3)`.
      Differences:
      `names(actual)`:   ""  "b" "c"
      `names(expected)`: "b" ""  "c"
      
        `actual[[1]]`: 1.0
      `expected[[1]]`: 2.0
      
        `actual[[2]]`: 2.0
      `expected[[2]]`: 1.0

# expect_contains() gives useful message on failure

    Code
      expect_contains(x1, x2)
    Condition
      Error:
      ! Expected `x1` to contain all values in `x2`.
      Missing: "d"

---

    Code
      expect_contains(x1, x3)
    Condition
      Error:
      ! Expected `x1` to contain all values in `x3`.
      Missing: "d", "e"

# expect_in() gives useful message on failure

    Code
      expect_in(x1, x2)
    Condition
      Error:
      ! Expected all values in `x1` to be in `x2`.
      Extra: "a"

---

    Code
      expect_in(x1, x3)
    Condition
      Error:
      ! Expected all values in `x1` to be in `x3`.
      Extra: "a", "b"

