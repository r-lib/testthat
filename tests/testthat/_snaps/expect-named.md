# expected_named verifies presence of names

    Expected `1:10` to have names.

# expected_named verifies actual of names

    Names of Expected `c(a = 1)` to be equal to "b".
    
    `actual`:   "a"
    `expected`: "b"

# provide useful feedback on failure

    Names of `c(a = 1)` doesn't have the same values as `c("a", "b")`.
    * Only in `expected`: "b"
    

---

    Names of `c(a = 1, b = 1)` doesn't have the same values as `c("a")`.
    * Only in `actual`: "b"
    

---

    Names of `c(a = 1)` doesn't have the same values as `c("b")`.
    * Only in `actual`: "a"
    * Only in `expected`: "b"
    

---

    Names of Expected `c(a = 1)` to be equal to `c("a", "b")`.
    
    `actual`:   "a"    
    `expected`: "a" "b"

---

    Names of Expected `c(a = 1, b = 1)` to be equal to `c("a")`.
    
    `actual`:   "a" "b"
    `expected`: "a"    

---

    Names of Expected `c(a = 1)` to be equal to `c("b")`.
    
    `actual`:   "a"
    `expected`: "b"

# expect_named validates its inputs

    Code
      expect_named(c(a = 1), "a", ignore.order = "yes")
    Condition
      Error in `expect_named()`:
      ! `ignore.order` must be `TRUE` or `FALSE`, not the string "yes".
    Code
      expect_named(c(a = 1), "a", ignore.case = "yes")
    Condition
      Error in `expect_named()`:
      ! `ignore.case` must be `TRUE` or `FALSE`, not the string "yes".

