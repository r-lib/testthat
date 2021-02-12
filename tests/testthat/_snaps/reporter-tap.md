# reporter works

    1..8
    # Context Successes
    ok 1 Success
    # Context Failures
    not ok 2 Failure:1
      FALSE is not TRUE
      
      `actual`:   FALSE
      `expected`: TRUE 
    not ok 3 Failure:2a
      FALSE is not TRUE
      
      `actual`:   FALSE
      `expected`: TRUE 
      Backtrace:
       1. f() reporters/tests.R:17:2
       2. testthat::expect_true(FALSE) reporters/tests.R:16:7
    # Context Errors
    not ok 4 Error:1
      Error: stop
    not ok 5 errors get tracebacks
      Error: !
      Backtrace:
       1. f() reporters/tests.R:31:2
       2. g() reporters/tests.R:27:7
       3. h() reporters/tests.R:28:7
    # Context Skips
    ok 6 # SKIP Reason: skip
    ok 7 # SKIP Reason: empty test
    # Context Warnings
    ok 8 # WARNING def
    Backtrace:
     1. f() reporters/tests.R:49:2

