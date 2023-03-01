# produces useful output

    Test passed 
    -- Failure ('reporters/tests.R:12:3'): Failure:1 -------------------------------
    FALSE is not TRUE
    
    `actual`:   FALSE
    `expected`: TRUE 
    
    -- Failure ('reporters/tests.R:17:3'): Failure:2a ------------------------------
    FALSE is not TRUE
    
    `actual`:   FALSE
    `expected`: TRUE 
    Backtrace:
     1. f()
          at reporters/tests.R:17:2
     2. testthat::expect_true(FALSE)
          at reporters/tests.R:16:7
    
    -- Error ('reporters/tests.R:23:3'): Error:1 -----------------------------------
    Error in `eval(code, test_env)`: stop
    
    -- Error ('reporters/tests.R:31:3'): errors get tracebacks ---------------------
    Error in `h()`: !
    Backtrace:
     1. f()
          at reporters/tests.R:31:2
     2. g()
          at reporters/tests.R:27:7
     3. h()
          at reporters/tests.R:28:7
    
    -- Skip ('reporters/tests.R:37:3'): explicit skips are reported ----------------
    Reason: skip
    
    -- Skip ('reporters/tests.R:40:1'): empty tests are implicitly skipped ---------
    Reason: empty test
    
    -- Warning ('reporters/tests.R:49:3'): warnings get backtraces -----------------
    def
    Backtrace:
     1. f()
          at reporters/tests.R:49:2
    
    -- Skip ('reporters/tests.R:45:1'): warnings get backtraces --------------------
    Reason: empty test
    

