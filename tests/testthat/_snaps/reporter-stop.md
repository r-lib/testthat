# produces useful output

    -- Failure ('reporters/tests.R:12:3'): Failure:1 -------------------------------
    Expected FALSE to be equal to TRUE.
    Differences:
    `actual`:   FALSE
    `expected`: TRUE 
    
    
    -- Failure ('reporters/tests.R:16:8'): Failure:2a ------------------------------
    Expected FALSE to be equal to TRUE.
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
    
    -- Skip ('reporters/tests.R:37:3'): explicit skips are reported ----------------
    Reason: skip
    
    -- Skip ('reporters/tests.R:40:1'): empty tests are implicitly skipped ---------
    Reason: empty test
    
    -- Warning ('reporters/tests.R:46:5'): warnings get backtraces -----------------
    def
    Backtrace:
        x
     1. \-f()
    
    -- Skip ('reporters/tests.R:44:1'): warnings get backtraces --------------------
    Reason: empty test
    

# can suppress praise

    

# stop if needed errors when needed

    Code
      r$stop_if_needed()
    Condition
      Error:
      ! Test failed.

