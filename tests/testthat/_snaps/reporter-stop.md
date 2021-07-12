# produces useful output

    Test passed 
    -- Failure (tests.R:12:3): Failure:1 -------------------------------------------
    FALSE is not TRUE
    
    `actual`:   FALSE
    `expected`: TRUE 
    
    -- Failure (tests.R:17:3): Failure:2a ------------------------------------------
    FALSE is not TRUE
    
    `actual`:   FALSE
    `expected`: TRUE 
    Backtrace:
     1. f()
     2. testthat::expect_true(FALSE)
    
    -- Error (tests.R:23:3): Error:1 -----------------------------------------------
    Error: stop
    
    -- Error (tests.R:31:3): errors get tracebacks ---------------------------------
    Error: !
    Backtrace:
     1. f()
     2. g()
     3. h()
    
    -- Skip (tests.R:37:3): explicit skips are reported ----------------------------
    Reason: skip
    
    -- Skip (tests.R:40:1): empty tests are implicitly skipped ---------------------
    Reason: empty test
    
    -- Warning (tests.R:49:3): warnings get backtraces -----------------------------
    def
    Backtrace:
     1. f()
    
    -- Skip (tests.R:45:1): warnings get backtraces --------------------------------
    Reason: empty test
    

# stop stops at first failure

    -- Failure (fail.R:4:3): two failures ------------------------------------------
    FALSE is not TRUE
    
    `actual`:   FALSE
    `expected`: TRUE 
    
    -- Failure (fail.R:5:3): two failures ------------------------------------------
    TRUE is not FALSE
    
    `actual`:   TRUE 
    `expected`: FALSE
    
    Test failed 

