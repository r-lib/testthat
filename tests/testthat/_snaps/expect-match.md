# generates useful failure messages

    `zero` is empty.

---

    `one` does not match regexp "asdf".
    Text:
    ✖ │ bcde

---

    Every element of `many` does not match regexp "a".
    Text:
    ✔ │ a
    ✔ │ a
    ✖ │ b

---

    Some element of `many` does not match regexp "c".
    Text:
    ✖ │ a
    ✖ │ a
    ✖ │ b

---

    Every element of `paragraph` does not match regexp "paragraph".
    Text:
    ✔ │ This is a multiline
      │ paragraph.
    ✖ │ Second element.

---

    Every element of `na` does not match regexp "NA".
    Text:
    ✔ │ NA
    ✖ │ <NA>

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

# expect_no_match works

    `x` matches string "e*".
    Text:
    x | te*st

---

    `x` matches regexp "TEST".
    Text:
    x | test

