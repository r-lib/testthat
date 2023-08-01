# source_file wraps error

    Code
      source_file(test_path("reporters/error-setup.R"), wrap = FALSE)
    Condition
      Error:
      ! In path: "reporters/error-setup.R"
      Caused by error in `h()`:
      ! !

# can find only matching test

    Code
      filter_label(code, "baz")
    Condition
      Error:
      ! Failed to find test with specified label

# preserve srcrefs

    Code
      filter_label(code, "foo")
    Output
      expression(test_that("foo", {
            # this is a comment
          }))

# errors if duplicate labels

    Code
      filter_label(code, "baz")
    Condition
      Error:
      ! Found multiple tests with specified label

