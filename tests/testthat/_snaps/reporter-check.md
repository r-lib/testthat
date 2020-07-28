# basic report works

    -- Failure: Failure:1 (tests.R:12:3) -------------------------------------------
    FALSE is not TRUE
    
    `actual`:   FALSE
    `expected`: TRUE 
    
    -- Failure: Failure:2a (tests.R:17:3) ------------------------------------------
    FALSE is not TRUE
    
    `actual`:   FALSE
    `expected`: TRUE 
    
    -- Error: Error:1 (tests.R:23:3) -----------------------------------------------
    Error: stop
    
    -- Error: errors get tracebacks (tests.R:31:3) ---------------------------------
    Error: !
    Backtrace:
        x
     1. \-f()
     2.   \-g()
     3.     \-h()
    
    -- Skip: explicit skips are reported (tests.R:37:3) ----------------------------
    Reason: skip
    
    -- Skip: empty tests are implicitly skipped (tests.R:40:1) ---------------------
    Reason: empty test
    
    -- Warning: warnings get backtraces (tests.R:49:3) -----------------------------
    def
    Backtrace:
        x
     1. \-f()
    
    -- Skipped tests  --------------------------------------------------------------
    * empty test (1)
    * skip (1)
    
    == testthat results  ===========================================================
    Failure: Failure:1 (tests.R:12:3)
    Failure: Failure:2a (tests.R:17:3)
    Error: Error:1 (tests.R:23:3)
    Error: errors get tracebacks (tests.R:31:3)
    Skip: explicit skips are reported (tests.R:37:3)
    Skip: empty tests are implicitly skipped (tests.R:40:1)
    Warning: warnings get backtraces (tests.R:49:3)
    
    [ PASS x1 FAIL x4 WARN x1 SKIP x2 ]

