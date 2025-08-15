# generates useful failure messages

    Code
      expect_match(zero, "asdf")
    Condition
      Error:
      ! Expected `zero` to not be empty.

---

    Code
      expect_match(one, "asdf")
    Condition
      Error:
      ! Expected `one` to match regexp "asdf".
      Actual text:
      ✖ │ bcde

---

    Code
      expect_match(many, "a")
    Condition
      Error:
      ! Expected every element of `many` to match regexp "a".
      Actual text:
      ✔ │ a
      ✔ │ a
      ✖ │ b

---

    Code
      expect_match(many, "c", all = FALSE)
    Condition
      Error:
      ! Expected some element of `many` to match regexp "c".
      Actual text:
      ✖ │ a
      ✖ │ a
      ✖ │ b

---

    Code
      expect_match(paragraph, "paragraph")
    Condition
      Error:
      ! Expected every element of `paragraph` to match regexp "paragraph".
      Actual text:
      ✔ │ This is a multiline
        │ paragraph.
      ✖ │ Second element.

---

    Code
      expect_match(na, "NA")
    Condition
      Error:
      ! Expected every element of `na` to match regexp "NA".
      Actual text:
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

# extra arguments passed onto grepl

    Code
      expect_match("\\s", "\\s")
    Condition
      Error:
      ! Expected "\\s" to match regexp "\\s".
      Actual text:
      x | \s

---

    Code
      expect_match("test", "TEST")
    Condition
      Error:
      ! Expected "test" to match regexp "TEST".
      Actual text:
      x | test

# expect_no_match works

    Code
      expect_no_match(x, "e*", fixed = TRUE)
    Condition
      Error:
      ! Expected `x` to not match string "e*".
      Actual text:
      x | te*st

---

    Code
      expect_no_match(x, "TEST", ignore.case = TRUE)
    Condition
      Error:
      ! Expected `x` to not match regexp "TEST".
      Actual text:
      x | test

