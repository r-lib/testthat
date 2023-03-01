# with_mocked_bindings() validates its inputs

    Code
      with_mocked_bindings(1 + 1, function() 2)
    Condition
      Error in `local_mocked_bindings()`:
      ! All elements of `...` must be named.
    Code
      with_mocked_bindings(1 + 1, x = 2)
    Condition
      Error in `local_mocked_bindings()`:
      ! All elements of `...` must be functions.

