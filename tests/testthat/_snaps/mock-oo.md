# validates its inputs

    Code
      local_mocked_s3_method(1)
    Condition
      Error in `local_mocked_s3_method()`:
      ! `generic` must be a single string, not the number 1.
    Code
      local_mocked_s3_method("mean", 1)
    Condition
      Error in `local_mocked_s3_method()`:
      ! `signature` must be a single string, not the number 1.
    Code
      local_mocked_s3_method("mean", "bar", 1)
    Condition
      Error in `local_mocked_s3_method()`:
      ! `definition` must be a function, not the number 1.
    Code
      local_mocked_s3_method("mean", "bar", function() { })
    Condition
      Error in `local_mocked_s3_method()`:
      ! Can't find existing S3 method `mean.bar()`.

---

    Code
      local_mocked_s4_method(1)
    Condition
      Error in `local_mocked_s4_method()`:
      ! `generic` must be a single string, not the number 1.
    Code
      local_mocked_s4_method("mean", 1)
    Condition
      Error in `local_mocked_s4_method()`:
      ! `signature` must be a character vector, not the number 1.
    Code
      local_mocked_s4_method("mean", "bar", 1)
    Condition
      Error in `local_mocked_s4_method()`:
      ! `definition` must be a function, not the number 1.
    Code
      local_mocked_s4_method("mean", "bar", function() { })
    Condition
      Error in `local_mocked_s4_method()`:
      ! Can't find existing S4 method `mean(bar)`.

