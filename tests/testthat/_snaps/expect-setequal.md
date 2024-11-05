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
    

# truncates long vectors

    1:2 (`actual`) and 1:50 (`expected`) don't have the same values.
    * Only in `expected`: 3, 4, 5, 6, 7, 8, 9, 10, 11, ...
    

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
    

