# basic principles of visibility hold

    Code
      expect_invisible(x)
    Condition
      Error:
      ! Expected `x` to return invisibly.
      Actually returned visibly.

---

    Code
      expect_visible(x <- 1)
    Condition
      Error:
      ! Expected `x <- 1` to return visibly.
      Actually returned invisibly.

# generates useful failure messages

    Code
      expect_visible(invisible(1))
    Condition
      Error:
      ! Expected `invisible(1)` to return visibly.
      Actually returned invisibly.

---

    Code
      expect_invisible(1)
    Condition
      Error:
      ! Expected 1 to return invisibly.
      Actually returned visibly.

