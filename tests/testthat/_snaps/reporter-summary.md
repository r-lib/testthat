# can control appearance of dots

    reporters/tests: 
    Successes: .
    Failures: 12
    Errors: 34
    Skips: SS
    Warnings: WS
    
    == Skipped =====================================================================
    1. explicit skips are reported ('reporters/tests.R:37:3') - Reason: skip
    
    2. empty tests are implicitly skipped ('reporters/tests.R:40:1') - Reason: empty test
    
    3. warnings get backtraces ('reporters/tests.R:44:1') - Reason: empty test
    
    == Warnings ====================================================================
    1. warnings get backtraces ('reporters/tests.R:46:5') - def
    
    == Failed ======================================================================
    -- 1. Failure ('reporters/tests.R:12:3'): Failure:1 ----------------------------
    FALSE is not equal to TRUE.
    
    `actual`:   FALSE
    `expected`: TRUE 
    
    -- 2. Failure ('reporters/tests.R:16:8'): Failure:2a ---------------------------
    FALSE is not equal to TRUE.
    
    `actual`:   FALSE
    `expected`: TRUE 
    Backtrace:
        x
     1. \-f()
     2.   \-testthat::expect_true(FALSE)
    
    -- 3. Error ('reporters/tests.R:23:3'): Error:1 --------------------------------
    Error in `eval(code, test_env)`: stop
    
    -- 4. Error ('reporters/tests.R:29:8'): errors get tracebacks ------------------
    Error in `h()`: !
    Backtrace:
        x
     1. \-f()
     2.   \-g()
     3.     \-h()
    
    == DONE ========================================================================

---

    reporters/tests: 
    Successes: 
    Failures: 12
    Errors: 34
    Skips: SS
    Warnings: WS
    
    == Skipped =====================================================================
    1. explicit skips are reported ('reporters/tests.R:37:3') - Reason: skip
    
    2. empty tests are implicitly skipped ('reporters/tests.R:40:1') - Reason: empty test
    
    3. warnings get backtraces ('reporters/tests.R:44:1') - Reason: empty test
    
    == Warnings ====================================================================
    1. warnings get backtraces ('reporters/tests.R:46:5') - def
    
    == Failed ======================================================================
    -- 1. Failure ('reporters/tests.R:12:3'): Failure:1 ----------------------------
    FALSE is not equal to TRUE.
    
    `actual`:   FALSE
    `expected`: TRUE 
    
    -- 2. Failure ('reporters/tests.R:16:8'): Failure:2a ---------------------------
    FALSE is not equal to TRUE.
    
    `actual`:   FALSE
    `expected`: TRUE 
    Backtrace:
        x
     1. \-f()
     2.   \-testthat::expect_true(FALSE)
    
    -- 3. Error ('reporters/tests.R:23:3'): Error:1 --------------------------------
    Error in `eval(code, test_env)`: stop
    
    -- 4. Error ('reporters/tests.R:29:8'): errors get tracebacks ------------------
    Error in `h()`: !
    Backtrace:
        x
     1. \-f()
     2.   \-g()
     3.     \-h()
    
    == DONE ========================================================================

# can control maximum reports

    reporters/tests: 
    Successes: .
    Failures: 12
    Errors: 34
    Skips: SS
    Warnings: WS
    
    == Skipped =====================================================================
    1. explicit skips are reported ('reporters/tests.R:37:3') - Reason: skip
    
    2. empty tests are implicitly skipped ('reporters/tests.R:40:1') - Reason: empty test
    
    3. warnings get backtraces ('reporters/tests.R:44:1') - Reason: empty test
    
    == Warnings ====================================================================
    1. warnings get backtraces ('reporters/tests.R:46:5') - def
    
    == Failed ======================================================================
    -- 1. Failure ('reporters/tests.R:12:3'): Failure:1 ----------------------------
    FALSE is not equal to TRUE.
    
    `actual`:   FALSE
    `expected`: TRUE 
    
    -- 2. Failure ('reporters/tests.R:16:8'): Failure:2a ---------------------------
    FALSE is not equal to TRUE.
    
    `actual`:   FALSE
    `expected`: TRUE 
    Backtrace:
        x
     1. \-f()
     2.   \-testthat::expect_true(FALSE)
      ... and 2 more
    
    
    Maximum number of 2 failures reached, some test results may be missing.
    
    == DONE ========================================================================

