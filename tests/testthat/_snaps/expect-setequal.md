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

    `x` doesn't have the same values as `y` (2).
    * Only in `actual`: 1
    

---

    `x` (2) doesn't have the same values as `y`.
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

    `x` doesn't have the same values as c("a", "b", "c", "d").
    * Only in `expected`: "d"
    

# truncates long vectors

    `x` doesn't have the same values as `y`.
    * Only in `expected`: 3, 4, 5, 6, 7, 8, 9, 10, 11, ...
    

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
    

