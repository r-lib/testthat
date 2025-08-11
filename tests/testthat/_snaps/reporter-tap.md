# reporter works

    1..9
    # Context Successes
    ok 1 Success
    # Context Failures
    not ok 2 Failure:1
      Expected FALSE to be equal to TRUE.
      Differences:
      `actual`:   FALSE
      `expected`: TRUE 
      
    not ok 3 Failure:2a
      Expected FALSE to be equal to TRUE.
      Differences:
      `actual`:   FALSE
      `expected`: TRUE 
      
      Backtrace:
          x
       1. \-f()
       2.   \-testthat::expect_true(FALSE)
    # Context Errors
    not ok 4 Error:1
      Error in `eval(code, test_env)`: stop
    not ok 5 errors get tracebacks
      Error in `h()`: !
      Backtrace:
          x
       1. \-f()
       2.   \-g()
       3.     \-h()
    # Context Skips
    ok 6 # SKIP Reason: skip
    ok 7 # SKIP Reason: empty test
    # Context Warnings
    ok 8 # WARNING def
    Backtrace:
        x
     1. \-f()
    ok 9 # SKIP Reason: empty test

