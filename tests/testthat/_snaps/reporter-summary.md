# can control appearance of dots

    reporters/tests: 
    Successes: .
    Failures: 12
    Errors: 34
    Skips: SS
    Warnings: WS
    
    == Skipped =====================================================================
    1. explicit skips are reported (tests.R:37:3) - Reason: skip
    
    2. empty tests are implicitly skipped (tests.R:40:1) - Reason: empty test
    
    3. warnings get backtraces (tests.R:45:1) - Reason: empty test
    
    == Warnings ====================================================================
    1. warnings get backtraces (tests.R:49:3) - def
    
    == Failed ======================================================================
    -- 1. Failure (tests.R:12:3): Failure:1 ----------------------------------------
    FALSE is not TRUE
    
    `actual`:   FALSE
    `expected`: TRUE 
    
    -- 2. Failure (tests.R:17:3): Failure:2a ---------------------------------------
    FALSE is not TRUE
    
    `actual`:   FALSE
    `expected`: TRUE 
    Backtrace:
     1. f() reporters/tests.R:17:2
     2. testthat::expect_true(FALSE) reporters/tests.R:16:7
    
    -- 3. Error (tests.R:23:3): Error:1 --------------------------------------------
    Error: stop
    
    -- 4. Error (tests.R:31:3): errors get tracebacks ------------------------------
    Error: !
    Backtrace:
     1. f() reporters/tests.R:31:2
     2. g() reporters/tests.R:27:7
     3. h() reporters/tests.R:28:7
    
    == DONE ========================================================================

---

    reporters/tests: 
    Successes: 
    Failures: 12
    Errors: 34
    Skips: SS
    Warnings: WS
    
    == Skipped =====================================================================
    1. explicit skips are reported (tests.R:37:3) - Reason: skip
    
    2. empty tests are implicitly skipped (tests.R:40:1) - Reason: empty test
    
    3. warnings get backtraces (tests.R:45:1) - Reason: empty test
    
    == Warnings ====================================================================
    1. warnings get backtraces (tests.R:49:3) - def
    
    == Failed ======================================================================
    -- 1. Failure (tests.R:12:3): Failure:1 ----------------------------------------
    FALSE is not TRUE
    
    `actual`:   FALSE
    `expected`: TRUE 
    
    -- 2. Failure (tests.R:17:3): Failure:2a ---------------------------------------
    FALSE is not TRUE
    
    `actual`:   FALSE
    `expected`: TRUE 
    Backtrace:
     1. f() reporters/tests.R:17:2
     2. testthat::expect_true(FALSE) reporters/tests.R:16:7
    
    -- 3. Error (tests.R:23:3): Error:1 --------------------------------------------
    Error: stop
    
    -- 4. Error (tests.R:31:3): errors get tracebacks ------------------------------
    Error: !
    Backtrace:
     1. f() reporters/tests.R:31:2
     2. g() reporters/tests.R:27:7
     3. h() reporters/tests.R:28:7
    
    == DONE ========================================================================

# can control maximum reports

    reporters/tests: 
    Successes: .
    Failures: 12
    Errors: 34
    Skips: SS
    Warnings: WS
    
    == Skipped =====================================================================
    1. explicit skips are reported (tests.R:37:3) - Reason: skip
    
    2. empty tests are implicitly skipped (tests.R:40:1) - Reason: empty test
    
    3. warnings get backtraces (tests.R:45:1) - Reason: empty test
    
    == Warnings ====================================================================
    1. warnings get backtraces (tests.R:49:3) - def
    
    == Failed ======================================================================
    -- 1. Failure (tests.R:12:3): Failure:1 ----------------------------------------
    FALSE is not TRUE
    
    `actual`:   FALSE
    `expected`: TRUE 
    
    -- 2. Failure (tests.R:17:3): Failure:2a ---------------------------------------
    FALSE is not TRUE
    
    `actual`:   FALSE
    `expected`: TRUE 
    Backtrace:
     1. f() reporters/tests.R:17:2
     2. testthat::expect_true(FALSE) reporters/tests.R:16:7
      ... and 2 more
    
    
    Maximum number of 2 failures reached, some test results may be missing.
    
    == DONE ========================================================================

