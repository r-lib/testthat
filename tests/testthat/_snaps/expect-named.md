# expected_named verifies presence of names

    Code
      expect_named(1:10)
    Condition
      Error:
      ! Expected `1:10` to have names.

# expected_named verifies actual of names

    Code
      expect_named(c(a = 1), "b")
    Condition
      Error:
      ! Expected names(`c(a = 1)`) to be equal to "b".
      Differences:
      `actual`:   "a"
      `expected`: "b"

# provide useful feedback on failure

    Code
      expect_named(x1, c("a", "b"), ignore.order = TRUE)
    Condition
      Error:
      ! Expected names(`x1`) to have the same values as `c("a", "b")`.
      Extra: "b"

---

    Code
      expect_named(x2, "a", ignore.order = TRUE)
    Condition
      Error:
      ! Expected names(`x2`) to have the same values as "a".
      Needs: "b"

---

    Code
      expect_named(x1, "b", ignore.order = TRUE)
    Condition
      Error:
      ! Expected names(`x1`) to have the same values as "b".
      Needs: "a"
      Extra: "b"

---

    Code
      expect_named(x1, c("a", "b"), ignore.order = FALSE)
    Condition
      Error:
      ! Expected names(`x1`) to be equal to `c("a", "b")`.
      Differences:
      `actual`:   "a"    
      `expected`: "a" "b"

---

    Code
      expect_named(x2, "a", ignore.order = FALSE)
    Condition
      Error:
      ! Expected names(`x2`) to be equal to "a".
      Differences:
      `actual`:   "a" "b"
      `expected`: "a"    

---

    Code
      expect_named(x1, c("b"), ignore.order = FALSE)
    Condition
      Error:
      ! Expected names(`x1`) to be equal to `c("b")`.
      Differences:
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

