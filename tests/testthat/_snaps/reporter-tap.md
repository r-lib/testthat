## reporter works

    1..8
    # Context Successes
    ok 1 Success
    # Context Failures
    not ok 2 Failure:1
      FALSE isn't true.
    not ok 3 Failure:2a
      FALSE isn't true.
    # Context Errors
    not ok 4 Error:1
      Error: stop
    not ok 5 errors get tracebacks
      Error: !
      Backtrace:
       1. f()
       2. g()
       3. h()
    # Context Skips
    ok 6 # SKIP Reason: skip
    ok 7 # SKIP Reason: empty test
    # Context Warnings
    ok 8 # WARNING def
    Backtrace:
     1. f()

