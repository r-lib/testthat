# source_file wraps error

    Code
      source_file(test_path("reporters/error-setup.R"), wrap = FALSE)
    Condition
      Error:
      ! Failed to evaluate 'reporters/error-setup.R'.
      Caused by error in `h()`:
      ! !

# checks its inputs

    Code
      source_file(1)
    Condition
      Error:
      ! `path` must be a single string, not the number 1.
    Code
      source_file("x")
    Condition
      Error:
      ! `path` does not exist.
    Code
      source_file(".", "x")
    Condition
      Error:
      ! `env` must be an environment, not the string "x".

# works on code like the describe() example

    Code
      filter_desc(code, c("math library", "division()", "can handle division by 0"))
    Condition
      Error:
      ! Failed to find test with description "can handle division by 0".

# preserve srcrefs

    Code
      filter_desc(code, "foo")
    Output
      expression(test_that("foo", {
            # this is a comment
          }))

# errors if zero or duplicate labels

    Code
      filter_desc(code, "baz")
    Condition
      Error:
      ! Found multiple tests with description "baz".
    Code
      filter_desc(code, "missing")
    Condition
      Error:
      ! Failed to find test with description "missing".

