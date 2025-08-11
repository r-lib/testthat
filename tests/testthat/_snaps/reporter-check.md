# basic report works

    [ FAIL 4 | WARN 1 | SKIP 3 | PASS 1 ]
    
    == Skipped tests (3) ===========================================================
    * empty test (2): 'reporters/tests.R:40:1', 'reporters/tests.R:44:1'
    * skip (1): 'reporters/tests.R:37:3'
    
    == Warnings ====================================================================
    -- Warning ('reporters/tests.R:46:5'): warnings get backtraces -----------------
    def
    Backtrace:
        x
     1. \-f()
    
    == Failed tests ================================================================
    -- Failure ('reporters/tests.R:12:3'): Failure:1 -------------------------------
    Expected FALSE to be TRUE.
    Differences:
    `actual`:   FALSE
    `expected`: TRUE 
    
    -- Failure ('reporters/tests.R:16:8'): Failure:2a ------------------------------
    Expected FALSE to be TRUE.
    Differences:
    `actual`:   FALSE
    `expected`: TRUE 
    
    Backtrace:
        x
     1. \-f()
     2.   \-testthat::expect_true(FALSE)
    -- Error ('reporters/tests.R:23:3'): Error:1 -----------------------------------
    Error in `eval(code, test_env)`: stop
    -- Error ('reporters/tests.R:29:8'): errors get tracebacks ---------------------
    Error in `h()`: !
    Backtrace:
        x
     1. \-f()
     2.   \-g()
     3.     \-h()
    
    [ FAIL 4 | WARN 1 | SKIP 3 | PASS 1 ]

# doesn't truncate long lines

    [ FAIL 1 | WARN 0 | SKIP 0 | PASS 0 ]
    
    == Failed tests ================================================================
    -- Failure ('reporters/long-test.R:2:3'): That very long test messages are not truncated because they contain useful information that you probably want to read --
    Failure has been forced
    
    [ FAIL 1 | WARN 0 | SKIP 0 | PASS 0 ]

# always shows summary

    [ FAIL 0 | WARN 0 | SKIP 0 | PASS 7 ]

# shows warnings when not on CRAN

    [ FAIL 4 | WARN 1 | SKIP 3 | PASS 1 ]
    
    == Skipped tests (3) ===========================================================
    * empty test (2): 'reporters/tests.R:40:1', 'reporters/tests.R:44:1'
    * skip (1): 'reporters/tests.R:37:3'
    
    == Warnings ====================================================================
    -- Warning ('reporters/tests.R:46:5'): warnings get backtraces -----------------
    def
    Backtrace:
        x
     1. \-f()
    
    == Failed tests ================================================================
    -- Failure ('reporters/tests.R:12:3'): Failure:1 -------------------------------
    Expected FALSE to be TRUE.
    Differences:
    `actual`:   FALSE
    `expected`: TRUE 
    
    -- Failure ('reporters/tests.R:16:8'): Failure:2a ------------------------------
    Expected FALSE to be TRUE.
    Differences:
    `actual`:   FALSE
    `expected`: TRUE 
    
    Backtrace:
        x
     1. \-f()
     2.   \-testthat::expect_true(FALSE)
    -- Error ('reporters/tests.R:23:3'): Error:1 -----------------------------------
    Error in `eval(code, test_env)`: stop
    -- Error ('reporters/tests.R:29:8'): errors get tracebacks ---------------------
    Error in `h()`: !
    Backtrace:
        x
     1. \-f()
     2.   \-g()
     3.     \-h()
    
    [ FAIL 4 | WARN 1 | SKIP 3 | PASS 1 ]

