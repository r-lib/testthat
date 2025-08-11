# checks both directions of containment

    `letters` doesn't have the same values as `letters[-1]`.
    * Only in `actual`: "a"
    

---

    `letters[-1]` doesn't have the same values as `letters`.
    * Only in `expected`: "a"
    

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

    "actual" doesn't have the same values as "expected".
    * Only in `actual`: "actual"
    * Only in `expected`: "expected"
    

---

    `x` doesn't have the same values as `y`.
    * Only in `actual`: 1
    

---

    `x` doesn't have the same values as `y`.
    * Only in `expected`: 3
    

---

    `x` doesn't have the same values as `y`.
    * Only in `actual`: 1
    * Only in `expected`: 3
    

---

    `x` doesn't have the same values as `y`.
    * Only in `actual`: "a"
    * Only in `expected`: "b"
    

---

    `x` doesn't have the same values as `c("a", "b", "c", "d")`.
    * Only in `expected`: "d"
    

# truncates long vectors

    `x` doesn't have the same values as `y`.
    * Only in `expected`: 3, 4, 5, 6, 7, 8, 9, 10, 11, ...
    

# error if any names are duplicated

    Expected `list(a = 1, b = 2, b = 3)` to be equal to `list(b = 2, a = 1)`.
    
    `actual` is length 3
    `expected` is length 2
    
    `names(actual)`:   "a" "b" "b"
    `names(expected)`: "a" "b"    
    
    `actual[[3]]` is a double vector (3)
    `expected[[3]]` is absent

---

    Expected `list(a = 1, b = 2)` to be equal to `list(b = 3, b = 2, a = 1)`.
    
    `actual` is length 2
    `expected` is length 3
    
    `names(actual)`:   "a" "b"    
    `names(expected)`: "a" "b" "b"
    
      `actual[[2]]`: 2.0
    `expected[[2]]`: 3.0
    
    `actual[[3]]` is absent
    `expected[[3]]` is a double vector (2)

---

    Expected `list(a = 1, b = 2, b = 3)` to be equal to `list(b = 3, b = 2, a = 1)`.
    
      `actual[[2]]`: 2.0
    `expected[[2]]`: 3.0
    
      `actual[[3]]`: 3.0
    `expected[[3]]`: 2.0

# fail if names don't match

    Expected `list(a = 1, b = 2)` to be equal to `list(a = 1)`.
    
    `actual` is length 2
    `expected` is length 1
    
    `names(actual)`:   "a" "b"
    `names(expected)`: "a"    
    
    `actual$b` is a double vector (2)
    `expected$b` is absent

---

    Expected `list(a = 1)` to be equal to `list(a = 1, b = 2)`.
    
    `actual` is length 1
    `expected` is length 2
    
    `names(actual)`:   "a"    
    `names(expected)`: "a" "b"
    
    `actual$b` is absent
    `expected$b` is a double vector (2)

# fails if values don't match

    Expected `list(a = 1, b = 2)` to be equal to `list(a = 1, b = 3)`.
    
      `actual$b`: 2.0
    `expected$b`: 3.0

# fails if unnamed values in different location if any unnamed values

    Expected `list(1, b = 2, c = 3)` to be equal to `list(b = 2, 1, c = 3)`.
    
    `names(actual)`:   ""  "b" "c"
    `names(expected)`: "b" ""  "c"
    
      `actual[[1]]`: 1.0
    `expected[[1]]`: 2.0
    
      `actual[[2]]`: 2.0
    `expected[[2]]`: 1.0

# expect_contains() gives useful message on failure

    `x1` doesn't fully contain all the values in `x2`.
    * Missing from `x1`: "d"
    * Present in `x1`:   "a", "b", "c"
    

---

    `x1` doesn't fully contain all the values in `x3`.
    * Missing from `x1`: "d", "e"
    * Present in `x1`:   "a", "b", "c"
    

# expect_in() gives useful message on failure

    `x1` isn't fully contained within `x2`.
    * Missing from `x1`: "a"
    * Present in `x1`:   "b", "c"
    

---

    `x1` isn't fully contained within `x3`.
    * Missing from `x1`: "a", "b"
    * Present in `x1`:   "d", "e"
    

