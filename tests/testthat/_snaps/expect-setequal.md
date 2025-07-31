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
    

