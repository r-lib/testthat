# checks its inputs

    Code
      local_edition("x")
    Condition
      Error in `local_edition()`:
      ! `x` must be a whole number, not the string "x".
    Code
      local_edition(5)
    Condition
      Error in `local_edition()`:
      ! `x` must be a whole number between 2 and 3, not the number 5.

# deprecation only fired for newer edition

    Code
      edition_deprecate(3, "old stuff")
    Condition
      Warning:
      `old stuff` was deprecated in the 3rd edition.

