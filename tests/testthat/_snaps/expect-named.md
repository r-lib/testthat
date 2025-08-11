# expected_named verifies presence of names

    Expected `1:10` to have names.

# expected_named verifies actual of names

    Expected names(`c(a = 1)`) to be equal to "b".
    
    `actual`:   "a"
    `expected`: "b"

# provide useful feedback on failure

    names(`x1`) doesn't have the same values as `c("a", "b")`.
    * Only in `expected`: "b"
    

---

    names(`x2`) doesn't have the same values as "a".
    * Only in `actual`: "b"
    

---

    names(`x1`) doesn't have the same values as "b".
    * Only in `actual`: "a"
    * Only in `expected`: "b"
    

---

    Expected names(`x1`) to be equal to `c("a", "b")`.
    
    `actual`:   "a"    
    `expected`: "a" "b"

---

    Expected names(`x2`) to be equal to "a".
    
    `actual`:   "a" "b"
    `expected`: "a"    

---

    Expected names(`x1`) to be equal to `c("b")`.
    
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

