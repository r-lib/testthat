# can control appearance of dots

    reporters/tests: 
    Successes: .
    Failures: 12
    Errors: 34
    Skips: SS
    Warnings: WS
    
    == Skipped =====================================================================
    1. explicit skips are reported ('reporters/tests.R:37') - Reason: skip
    
    2. empty tests are implicitly skipped ('reporters/tests.R:40') - Reason: empty test
    
    3. warnings get backtraces ('reporters/tests.R:45') - Reason: empty test
    
    == Warnings ====================================================================
    1. warnings get backtraces ('reporters/tests.R:49') - def
    
    == Failed ======================================================================
    -- 1. Failure ('reporters/tests.R:12'): Failure:1 ------------------------------
    FALSE is not TRUE
    
    `actual`:   FALSE
    `expected`: TRUE 
    
    -- 2. Failure ('reporters/tests.R:17'): Failure:2a -----------------------------
    FALSE is not TRUE
    
    `actual`:   FALSE
    `expected`: TRUE 
    Backtrace:
     1. f()
          at reporters/tests.R:17:2
     2. testthat::expect_true(FALSE)
          at reporters/tests.R:16:7
    
    -- 3. Error ('reporters/tests.R:23'): Error:1 ----------------------------------
    Error in `eval(code, test_env)`: stop
    
    -- 4. Error ('reporters/tests.R:31'): errors get tracebacks --------------------
    Error in `h()`: !
    Backtrace:
     1. f()
          at reporters/tests.R:31:2
     2. g()
          at reporters/tests.R:27:7
     3. h()
          at reporters/tests.R:28:7
    
    == DONE ========================================================================

---

    reporters/tests: 
    Successes: 
    Failures: 12
    Errors: 34
    Skips: SS
    Warnings: WS
    
    == Skipped =====================================================================
    1. explicit skips are reported ('reporters/tests.R:37') - Reason: skip
    
    2. empty tests are implicitly skipped ('reporters/tests.R:40') - Reason: empty test
    
    3. warnings get backtraces ('reporters/tests.R:45') - Reason: empty test
    
    == Warnings ====================================================================
    1. warnings get backtraces ('reporters/tests.R:49') - def
    
    == Failed ======================================================================
    -- 1. Failure ('reporters/tests.R:12'): Failure:1 ------------------------------
    FALSE is not TRUE
    
    `actual`:   FALSE
    `expected`: TRUE 
    
    -- 2. Failure ('reporters/tests.R:17'): Failure:2a -----------------------------
    FALSE is not TRUE
    
    `actual`:   FALSE
    `expected`: TRUE 
    Backtrace:
     1. f()
          at reporters/tests.R:17:2
     2. testthat::expect_true(FALSE)
          at reporters/tests.R:16:7
    
    -- 3. Error ('reporters/tests.R:23'): Error:1 ----------------------------------
    Error in `eval(code, test_env)`: stop
    
    -- 4. Error ('reporters/tests.R:31'): errors get tracebacks --------------------
    Error in `h()`: !
    Backtrace:
     1. f()
          at reporters/tests.R:31:2
     2. g()
          at reporters/tests.R:27:7
     3. h()
          at reporters/tests.R:28:7
    
    == DONE ========================================================================

# can control maximum reports

    reporters/tests: 
    Successes: .
    Failures: 12
    Errors: 34
    Skips: SS
    Warnings: WS
    
    == Skipped =====================================================================
    1. explicit skips are reported ('reporters/tests.R:37') - Reason: skip
    
    2. empty tests are implicitly skipped ('reporters/tests.R:40') - Reason: empty test
    
    3. warnings get backtraces ('reporters/tests.R:45') - Reason: empty test
    
    == Warnings ====================================================================
    1. warnings get backtraces ('reporters/tests.R:49') - def
    
    == Failed ======================================================================
    -- 1. Failure ('reporters/tests.R:12'): Failure:1 ------------------------------
    FALSE is not TRUE
    
    `actual`:   FALSE
    `expected`: TRUE 
    
    -- 2. Failure ('reporters/tests.R:17'): Failure:2a -----------------------------
    FALSE is not TRUE
    
    `actual`:   FALSE
    `expected`: TRUE 
    Backtrace:
     1. f()
          at reporters/tests.R:17:2
     2. testthat::expect_true(FALSE)
          at reporters/tests.R:16:7
      ... and 2 more
    
    
    Maximum number of 2 failures reached, some test results may be missing.
    
    == DONE ========================================================================

