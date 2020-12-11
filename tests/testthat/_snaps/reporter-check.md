# basic report works

    -- FAILURE (tests.R:12:3): Failure:1 -------------------------------------------
    FALSE is not TRUE
    
    `actual`:   FALSE
    `expected`: TRUE 
    
    -- FAILURE (tests.R:17:3): Failure:2a ------------------------------------------
    FALSE is not TRUE
    
    `actual`:   FALSE
    `expected`: TRUE 
    
    -- ERROR (tests.R:23:3): Error:1 -----------------------------------------------
    Error: stop
    
    -- ERROR (tests.R:31:3): errors get tracebacks ---------------------------------
    Error: !
    Backtrace:
        x
     1. \-f()
     2.   \-g()
     3.     \-h()
    
    -- Skip (tests.R:37:3): explicit skips are reported ----------------------------
    Reason: skip
    
    -- Skip (tests.R:40:1): empty tests are implicitly skipped ---------------------
    Reason: empty test
    
    -- Warning (tests.R:49:3): warnings get backtraces -----------------------------
    def
    
    -- Skipped tests  --------------------------------------------------------------
    * empty test (1)
    * skip (1)
    
    == testthat results  ===========================================================
    FAILURE (tests.R:12:3): Failure:1
    FAILURE (tests.R:17:3): Failure:2a
    ERROR (tests.R:23:3): Error:1
    ERROR (tests.R:31:3): errors get tracebacks
    Warning (tests.R:49:3): warnings get backtraces
    
    [ FAIL 4 | WARN 1 | SKIP 2 | PASS 1 ]

# doesn't truncate long lines

    -- FAILURE (long-test.R:2:3): That very long test messages are not truncated because they contain useful information that you probably want to read --
    Failure has been forced
    
    == testthat results  ===========================================================
    FAILURE (long-test.R:2:3): That very long test messages are not truncated because they contain useful information that you probably want to read
    
    [ FAIL 1 | WARN 0 | SKIP 0 | PASS 0 ]

