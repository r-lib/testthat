# basic report works

    * Failure (tests.R:12:3): Failure:1
    * Failure (tests.R:17:3): Failure:2a
    * Error   (tests.R:23:3): Error:1
    * Error   (tests.R:31:3): errors get tracebacks
    * Skip    (tests.R:37:3): explicit skips are reported
    * Skip    (tests.R:40:1): empty tests are implicitly skipped
    * Warning (tests.R:49:3): warnings get backtraces
    
    == Skipped tests ===============================================================
    * empty test (1)
    * skip (1)
    
    == Failed tests ================================================================
    -- Failure (tests.R:12:3): Failure:1 -------------------------------------------
    FALSE is not TRUE
    
    `actual`:   FALSE
    `expected`: TRUE 
    -- Failure (tests.R:17:3): Failure:2a ------------------------------------------
    FALSE is not TRUE
    
    `actual`:   FALSE
    `expected`: TRUE 
    -- Error (tests.R:23:3): Error:1 -----------------------------------------------
    Error: stop
    -- Error (tests.R:31:3): errors get tracebacks ---------------------------------
    Error: !
    Backtrace:
        x
     1. \-f() reporters/tests.R:31:2
     2.   \-g() reporters/tests.R:27:7
     3.     \-h() reporters/tests.R:28:7
    
    [ FAIL 4 | WARN 1 | SKIP 2 | PASS 1 ]

# doesn't truncate long lines

    * Failure (long-test.R:2:3): That very long test messages are not truncated because they contain useful information that you probably want to read
    == Failed tests ================================================================
    -- Failure (long-test.R:2:3): That very long test messages are not truncated because they contain useful information that you probably want to read --
    Failure has been forced
    
    [ FAIL 1 | WARN 0 | SKIP 0 | PASS 0 ]

