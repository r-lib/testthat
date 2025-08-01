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

    "actual" (`actual`) and "expected" (`expected`) don't have the same values.
    * Only in `actual`: "actual"
    * Only in `expected`: "expected"
    

---

    1:2 (`actual`) and 2 (`expected`) don't have the same values.
    * Only in `actual`: 1
    

---

    2 (`actual`) and 2:3 (`expected`) don't have the same values.
    * Only in `expected`: 3
    

---

    1:2 (`actual`) and 2:3 (`expected`) don't have the same values.
    * Only in `actual`: 1
    * Only in `expected`: 3
    

---

    c("a", "a") (`actual`) and c("b", "b", "b") (`expected`) don't have the same values.
    * Only in `actual`: "a"
    * Only in `expected`: "b"
    

# truncates long vectors

    1:2 (`actual`) and 1:50 (`expected`) don't have the same values.
    * Only in `expected`: 3, 4, 5, 6, 7, 8, 9, 10, 11, ...
    

# check inputs

    Code
      expect_mapequal(sum, named)
    Condition
      Error in `expect_mapequal()`:
      ! `object` must be a vector, not a primitive function.
    Code
      expect_mapequal(named, sum)
    Condition
      Error in `expect_mapequal()`:
      ! `expected` must be a vector, not a primitive function.
    Code
      expect_mapequal(unnamed, named)
    Condition
      Error in `expect_mapequal()`:
      ! All elements in `object` must have names.
      x Empty names at position: 1
    Code
      expect_mapequal(named, unnamed)
    Condition
      Error in `expect_mapequal()`:
      ! All elements in `expected` must have names.
      x Empty names at position: 1
    Code
      expect_mapequal(named, duplicated)
    Condition
      Error in `expect_mapequal()`:
      ! All elements in `expected` must have unique names.
      x Duplicate names: "x"
    Code
      expect_mapequal(duplicated, named)
    Condition
      Error in `expect_mapequal()`:
      ! All elements in `object` must have unique names.
      x Duplicate names: "x"

# expect_contains() gives useful message on failure

    `x1` (`actual`) doesn't fully contain all the values in `x2` (`expected`).
    * Missing from `actual`: "d"
    * Present in `actual`:   "a", "b", "c"
    

---

    `x1` (`actual`) doesn't fully contain all the values in `x3` (`expected`).
    * Missing from `actual`: "d", "e"
    * Present in `actual`:   "a", "b", "c"
    

# expect_in() gives useful message on failure

    `x1` (`actual`) isn't fully contained within `x2` (`expected`).
    * Missing from `expected`: "a"
    * Present in `expected`:   "b", "c"
    

---

    `x1` (`actual`) isn't fully contained within `x3` (`expected`).
    * Missing from `expected`: "a", "b"
    * Present in `expected`:   "d", "e"
    

