# snapshot tests in describe / and in it

    Code
      1 + 1
    Output
      [1] 2

# has to have a valid description for the block

    Code
      describe()
    Condition
      Error in `describe()`:
      ! `description` must be a single string, not absent.
    Code
      describe(c("a", "b"))
    Condition
      Error in `describe()`:
      ! `description` must be a single string, not a character vector.
    Code
      it()
    Condition
      Error in `it()`:
      ! `description` must be a single string, not absent.
    Code
      it(c("a", "b"))
    Condition
      Error in `it()`:
      ! `description` must be a single string, not a character vector.

