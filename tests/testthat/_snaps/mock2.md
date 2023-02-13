# with_mocked_env() validates its inputs

    Code
      with_mocked_env(1)
    Condition
      Error in `with_mocked_env()`:
      ! `f` must be a function, not a number.
    Code
      with_mocked_env(f, function() 2)
    Condition
      Error in `with_mocked_env()`:
      ! All elements of `...` must be named.
    Code
      with_mocked_env(f, x = 2)
    Condition
      Error in `with_mocked_env()`:
      ! All elements of `...` must be functions.

