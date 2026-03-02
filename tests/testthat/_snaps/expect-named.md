# expected_named verifies presence of names

    Code
      expect_named(x)
    Condition
      Error:
      ! Expected `x` to have names.

# expected_named verifies actual of names

    Code
      expect_named(x, "b")
    Condition
      Error:
      ! Expected `x` to have names "b".
      Differences:
      `actual`:   "a"
      `expected`: "b"

# provide useful feedback on failure

    Code
      expect_named(x1, c("a", "b"), ignore.order = TRUE)
    Condition
      Error:
      ! Expected `x1` to have names `c("a", "b")`.
      Actual: "a"
      Expected: "a", "b"
      Absent: "b"

---

    Code
      expect_named(x2, "a", ignore.order = TRUE)
    Condition
      Error:
      ! Expected `x2` to have names "a".
      Actual: "a", "b"
      Expected: "a"
      Extra: "b"

---

    Code
      expect_named(x1, "b", ignore.order = TRUE)
    Condition
      Error:
      ! Expected `x1` to have names "b".
      Actual: "a"
      Expected: "b"
      Extra: "a"
      Absent: "b"

---

    Code
      expect_named(x1, c("a", "b"), ignore.order = FALSE)
    Condition
      Error:
      ! Expected `x1` to have names `c("a", "b")`.
      Differences:
      `actual`:   "a"    
      `expected`: "a" "b"

---

    Code
      expect_named(x2, "a", ignore.order = FALSE)
    Condition
      Error:
      ! Expected `x2` to have names "a".
      Differences:
      `actual`:   "a" "b"
      `expected`: "a"    

---

    Code
      expect_named(x1, "b", ignore.order = FALSE)
    Condition
      Error:
      ! Expected `x1` to have names "b".
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

