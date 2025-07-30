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

# expect_no_match works

    `x` does match string "e*".
    Text: "te*st"

---

    `x` does match regexp "TEST".
    Text: "test"

