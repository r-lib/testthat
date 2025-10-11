# produces useful output

    Code
      with_reporter("stop", run_tests())
    Output
      Test passed with 1 success.
      -- Failure: Failure:1 ----------------------------------------------------------
      Expected `x` to be TRUE.
      Differences:
      `actual`:   FALSE
      `expected`: TRUE 
      
    Condition
      Error:
      ! Test failed with 1 failure and 0 successes.

# works nicely with nested tests

    Code
      with_reporter("stop", run_tests())
    Output
      Test passed with 2 successes.
      -- Failure: failed then succeeded / failed-1 -----------------------------------
      Expected FALSE to be TRUE.
      Differences:
      `actual`:   FALSE
      `expected`: TRUE 
      
      -- Failure: failed then succeeded / failed-2 -----------------------------------
      Expected FALSE to be TRUE.
      Differences:
      `actual`:   FALSE
      `expected`: TRUE 
      
    Condition
      Error:
      ! Test failed with 2 failures and 1 success.

# errors when needed

    Code
      r$end_test()
    Condition
      Error:
      ! Test failed with 1 failure and 0 successes.

