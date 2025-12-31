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
      ! `definition` must be a function or `NULL`, not the number 1.

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
      ! `definition` must be a function or `NULL`, not the number 1.
    Code
      local_mocked_s4_method("notAGeneric", "bar", function() { })
    Condition
      Error in `local_mocked_s4_method()`:
      ! Can't find generic `notAGeneric()`.

---

    Code
      local_mocked_r6_class(mean)
    Condition
      Error in `local_mocked_r6_class()`:
      ! `class` must be an R6 class definition, not a function.
    Code
      local_mocked_r6_class(TestMockClass, public = 1)
    Condition
      Error in `local_mocked_r6_class()`:
      ! `public` must be a list, not the number 1.
    Code
      local_mocked_r6_class(TestMockClass, private = 1)
    Condition
      Error in `local_mocked_r6_class()`:
      ! `private` must be a list, not the number 1.

