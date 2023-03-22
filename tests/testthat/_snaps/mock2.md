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

# can't mock bindings that don't exist

    Code
      local_mocked_bindings(f = function() "x")
    Condition
      Error in `local_mocked_bindings()`:
      ! Can't find binding for `f`

