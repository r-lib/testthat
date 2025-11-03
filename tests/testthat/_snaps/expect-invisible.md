# basic principles of visibility hold

    Code
      expect_invisible(x)
    Condition
      Error:
      ! Expected `x` to return invisibly.
      Actual visibility: visible.

---

    Code
      expect_visible(x <- 1)
    Condition
      Error:
      ! Expected `x <- 1` to return visibly.
      Actual visibility: invisible.

# generates useful failure messages

    Code
      expect_visible(invisible(1))
    Condition
      Error:
      ! Expected `invisible(1)` to return visibly.
      Actual visibility: invisible.

---

    Code
      expect_invisible(1)
    Condition
      Error:
      ! Expected 1 to return invisibly.
      Actual visibility: visible.

