# useful error message if can't find reporter

    Code
      find_reporter(1)
    Condition
      Error in `find_reporter()`:
      ! `reporter` must be a string, a character vector, a reporter object, or a reporter class, not the number 1.
    Code
      find_reporter("blah")
    Condition
      Error in `find_reporter()`:
      ! Cannot find test reporter "blah".
    Code
      find_reporter(c("summary", "blah"))
    Condition
      Error in `lapply()`:
      ! Cannot find test reporter "blah".
