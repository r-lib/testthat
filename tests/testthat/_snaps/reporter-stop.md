# produces useful output

    Test passed 
    -- tests.R:12:3: failure: Failure:1 --------------------------------------------
    FALSE is not TRUE
    
    `actual`:   FALSE
    `expected`: TRUE 
    
    -- tests.R:17:3: failure: Failure:2a -------------------------------------------
    FALSE is not TRUE
    
    `actual`:   FALSE
    `expected`: TRUE 
    
    -- tests.R:23:3: error: Error:1 ------------------------------------------------
    Error: stop
    
    -- tests.R:31:3: error: errors get tracebacks ----------------------------------
    Error: !
    Backtrace:
     1. f()
     2. g()
     3. h()
    
    -- tests.R:37:3: skip: explicit skips are reported -----------------------------
    Reason: skip
    
    -- tests.R:40:1: skip: empty tests are implicitly skipped ----------------------
    Reason: empty test
    
    -- tests.R:49:3: warning: warnings get backtraces ------------------------------
    def
    Backtrace:
     1. f()
    

# stop stops at first failure

    -- fail.R:4:3: failure: two failures -------------------------------------------
    FALSE is not TRUE
    
    `actual`:   FALSE
    `expected`: TRUE 
    
    -- fail.R:5:3: failure: two failures -------------------------------------------
    TRUE is not FALSE
    
    `actual`:   TRUE 
    `expected`: FALSE
    
    Test failed 

