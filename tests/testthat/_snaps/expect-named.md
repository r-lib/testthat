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

