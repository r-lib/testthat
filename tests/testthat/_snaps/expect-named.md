# provide useful feedback on failure

    c(a = 1) (`actual`) and c("a", "b") (`expected`) don't have the same values.
    * Only in `expected`: "b"
    

---

    c(a = 1, b = 1) (`actual`) and c("a") (`expected`) don't have the same values.
    * Only in `actual`: "b"
    

---

    c(a = 1) (`actual`) and c("b") (`expected`) don't have the same values.
    * Only in `actual`: "a"
    * Only in `expected`: "b"
    

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

