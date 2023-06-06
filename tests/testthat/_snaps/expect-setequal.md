# useful message on faillure

    `x1` (`actual`) and `x2` (`expected`) don't have the same values.
    * Only in `actual`:   "a"
    * Only in `expected`: "c"
    

---

    `y1` (`actual`) and `y2` (`expected`) don't have the same values.
    * Only in `actual`:   1
    * Only in `expected`: 4, 5, 6, 7, 8, 9, 10, 11, 12, ...
    

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
    

