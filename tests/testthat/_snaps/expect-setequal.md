# useful message on faillure

    `x1` (`actual`) and `x2` (`expected`) don't have the same values.
    * Only in `actual`:   "a"
    * Only in `expected`: "c"
    

---

    `y1` (`actual`) and `y2` (`expected`) don't have the same values.
    * Only in `actual`:   1
    * Only in `expected`: 4, 5, 6, 7, 8, 9, 10, 11, 12, ...
    

# expect_contains() gives useful message on faillure

    `x1` doesn't contain all the values in `x2`.
    * Missing from `actual`: "d"
    * Present in `actual`:   "a", "b", "c"
    

---

    `x1` doesn't contain all the values in `x3`.
    * Missing from `actual`: "d", "e"
    * Present in `actual`:   "a", "b", "c"
    

