# generates useful failure messages

    Expected `zero` to not be empty.

---

    Expected `one` to match regexp "asdf".
    Actual text:
    bcde

---

    Expected every element of `many` to match regexp "a".
    Actual text:
    a
    a
    b

---

    Expected some element of `many` to match regexp "c".
    Actual text:
    a
    a
    b

# expect_match validates its inputs

    Code
      expect_match(1)
    Condition
      Error in `expect_match()`:
      ! `object` must be a character vector, not the number 1.
    Code
      expect_match("x", 1)
    Condition
      Error in `expect_match()`:
      ! `regexp` must be a single string, not the number 1.
    Code
      expect_match("x", "x", fixed = 1)
    Condition
      Error in `expect_match()`:
      ! `fixed` must be `TRUE` or `FALSE`, not the number 1.
    Code
      expect_match("x", "x", perl = 1)
    Condition
      Error in `expect_match()`:
      ! `perl` must be `TRUE` or `FALSE`, not the number 1.
    Code
      expect_match("x", "x", all = 1)
    Condition
      Error in `expect_match()`:
      ! `all` must be `TRUE` or `FALSE`, not the number 1.

# expect_no_match validates its inputs

    Code
      expect_no_match(1, "x")
    Condition
      Error in `expect_no_match()`:
      ! `object` must be a character vector, not the number 1.
    Code
      expect_no_match("x", 1)
    Condition
      Error in `expect_no_match()`:
      ! `regexp` must be a single string, not the number 1.
    Code
      expect_no_match("x", "x", fixed = 1)
    Condition
      Error in `expect_no_match()`:
      ! `fixed` must be `TRUE` or `FALSE`, not the number 1.
    Code
      expect_no_match("x", "x", perl = 1)
    Condition
      Error in `expect_no_match()`:
      ! `perl` must be `TRUE` or `FALSE`, not the number 1.
    Code
      expect_no_match("x", "x", all = 1)
    Condition
      Error in `expect_no_match()`:
      ! `all` must be `TRUE` or `FALSE`, not the number 1.

# extra arguments passed onto grepl

    Expected "\\s" to match regexp "\\s".
    Actual text:
    \\s

---

    Expected "test" to match regexp "TEST".
    Actual text:
    test

# expect_no_match works

    Expected `x` not to match string "e*".
    Actual text:
    te*st

---

    Expected `x` not to match regexp "TEST".
    Actual text:
    test

