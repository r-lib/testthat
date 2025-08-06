# source_file wraps error

    Code
      source_file(test_path("reporters/error-setup.R"), wrap = FALSE)
    Condition
      Error:
      ! In path: "reporters/error-setup.R"
      Caused by error in `h()`:
      ! !

# errors if duplicate labels

    Code
      filter_desc(code, "baz")
    Condition
      Error in `filter_desc()`:
      ! could not find function "filter_desc"

