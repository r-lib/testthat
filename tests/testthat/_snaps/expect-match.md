# generates useful failure messages

    `zero` is empty.

---

    `one` does not match regexp "asdf".
    Text: "bcde"

---

    `many` does not match regexp "asdf".
    Text:
    * a
    * b
    * c
    * d
    * e

# checks its inputs

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

# expect_no_match works

    `x` does match string "e*".
    Text: "te*st"

---

    `x` does match regexp "TEST".
    Text: "test"

