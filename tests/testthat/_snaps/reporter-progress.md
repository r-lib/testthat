# captures error before first test

    v |  OK F W S | Context
    
    / |   0       | reporters/error-setup                                           
    - |   0 1     | reporters/error-setup                                           
    x |   0 1     | reporters/error-setup
    --------------------------------------------------------------------------------
    error-setup.R:6:1: error: (code run outside of `test_that()`)
    Error: !
    Backtrace:
     1. testthat::setup(f()) reporters/error-setup.R:6:0
     3. f()
     4. g() reporters/error-setup.R:1:5
     5. h() reporters/error-setup.R:2:5
    --------------------------------------------------------------------------------
    
    == Results =====================================================================
    [ PASS x0 FAIL x1 WARN x0 SKIP x0 ]
    
    I believe in you!

# gracefully handles multiple contexts

    v |  OK F W S | Context
    
    / |   0       | reporters/context                                               
    / |   0       | my context                                                      
    - |   1       | my context                                                      
    v |   1       | my context
    
    == Results =====================================================================
    [ PASS x1 FAIL x0 WARN x0 SKIP x0 ]
    
    You rock!

# fails after max_fail tests

    v |  OK F W S | Context
    
    / |   0       | reporters/fail-many                                             
    - |   0 1     | reporters/fail-many                                             
    \ |   0 2     | reporters/fail-many                                             
    | |   0 3     | reporters/fail-many                                             
    / |   0 4     | reporters/fail-many                                             
    - |   0 5     | reporters/fail-many                                             
    \ |   0 6     | reporters/fail-many                                             
    | |   0 7     | reporters/fail-many                                             
    / |   0 8     | reporters/fail-many                                             
    - |   0 9     | reporters/fail-many                                             
    x |   0 10     | reporters/fail-many
    --------------------------------------------------------------------------------
    fail-many.R:3:5: failure: Example
    FALSE is not TRUE
    
    `actual`:   FALSE
    `expected`: TRUE 
    
    fail-many.R:3:5: failure: Example
    FALSE is not TRUE
    
    `actual`:   FALSE
    `expected`: TRUE 
    
    fail-many.R:3:5: failure: Example
    FALSE is not TRUE
    
    `actual`:   FALSE
    `expected`: TRUE 
    
    fail-many.R:3:5: failure: Example
    FALSE is not TRUE
    
    `actual`:   FALSE
    `expected`: TRUE 
    
    fail-many.R:3:5: failure: Example
    FALSE is not TRUE
    
    `actual`:   FALSE
    `expected`: TRUE 
    
    fail-many.R:3:5: failure: Example
    FALSE is not TRUE
    
    `actual`:   FALSE
    `expected`: TRUE 
    
    fail-many.R:3:5: failure: Example
    FALSE is not TRUE
    
    `actual`:   FALSE
    `expected`: TRUE 
    
    fail-many.R:3:5: failure: Example
    FALSE is not TRUE
    
    `actual`:   FALSE
    `expected`: TRUE 
    
    fail-many.R:3:5: failure: Example
    FALSE is not TRUE
    
    `actual`:   FALSE
    `expected`: TRUE 
    
    fail-many.R:3:5: failure: Example
    FALSE is not TRUE
    
    `actual`:   FALSE
    `expected`: TRUE 
    --------------------------------------------------------------------------------
    Maximum number of failures exceeded; quitting early.
    You can increase this number by setting `options(testthat.progress.max_fails)` 
    
    == Results =====================================================================
    [ PASS x0 FAIL x10 WARN x0 SKIP x0 ]
    == Terminated early ============================================================
    
    I believe in you!

# reports backtraces

    v |  OK F W S | Context
    
    / |   0       | reporters/backtraces                                            
    - |   0 1     | reporters/backtraces                                            
    \ |   0 2     | reporters/backtraces                                            
    | |   0 3     | reporters/backtraces                                            
    / |   0 4     | reporters/backtraces                                            
    - |   0 5     | reporters/backtraces                                            
    \ |   0 6     | reporters/backtraces                                            
    | |   0 6 1   | reporters/backtraces                                            
    / |   1 6 1   | reporters/backtraces                                            
    - |   1 7 1   | reporters/backtraces                                            
    x |   1 7 1   | reporters/backtraces
    --------------------------------------------------------------------------------
    backtraces.R:6:3: error: errors thrown at block level are entraced
    Error: foo
    Backtrace:
     1. f() reporters/backtraces.R:6:2
     2. g() reporters/backtraces.R:4:7
    
    backtraces.R:11:3: error: errors thrown from a quasi-labelled argument are entraced
    Error: foo
    Backtrace:
     1. testthat::expect_s3_class(foo(), "foo") reporters/backtraces.R:11:2
     4. foo()
    
    backtraces.R:18:3: error: errors thrown from a quasi-labelled argument are entraced (deep case)
    Error: foo
    Backtrace:
     1. testthat::expect_s3_class(f(), "foo") reporters/backtraces.R:18:2
     4. f()
     5. g() reporters/backtraces.R:16:7
     9. foo()
    
    backtraces.R:28:3: error: errors thrown from a quasi-labelled argument are entraced (deep deep case)
    Error: foobar
    Backtrace:
     1. f() reporters/backtraces.R:28:2
     2. g() reporters/backtraces.R:25:7
     6. foo()
     7. bar() reporters/backtraces.R:22:9
    
    backtraces.R:35:3: error: failed expect_error() prints a backtrace
    Error: bar
    Backtrace:
     1. testthat::expect_error(f(), "foo") reporters/backtraces.R:35:2
     7. f()
     8. signaller() reporters/backtraces.R:32:7
    
    backtraces.R:43:3: error: Errors are inspected with `conditionMessage()`
    Error: dispatched
    
    backtraces.R:50:3: warning: also get backtraces for warnings
    foobar
    Backtrace:
     1. foo() reporters/backtraces.R:50:2
     2. bar() reporters/backtraces.R:47:9
    
    backtraces.R:58:3: error: deep stacks are trimmed
    Error: This is deep
    Backtrace:
      1. f(25) reporters/backtraces.R:58:2
      2. f(x - 1) reporters/backtraces.R:56:4
      3. f(x - 1) reporters/backtraces.R:56:4
      4. f(x - 1) reporters/backtraces.R:56:4
      5. f(x - 1) reporters/backtraces.R:56:4
      6. f(x - 1) reporters/backtraces.R:56:4
      7. f(x - 1) reporters/backtraces.R:56:4
      8. f(x - 1) reporters/backtraces.R:56:4
      9. f(x - 1) reporters/backtraces.R:56:4
     10. f(x - 1) reporters/backtraces.R:56:4
         ...
     17. f(x - 1) reporters/backtraces.R:56:4
     18. f(x - 1) reporters/backtraces.R:56:4
     19. f(x - 1) reporters/backtraces.R:56:4
     20. f(x - 1) reporters/backtraces.R:56:4
     21. f(x - 1) reporters/backtraces.R:56:4
     22. f(x - 1) reporters/backtraces.R:56:4
     23. f(x - 1) reporters/backtraces.R:56:4
     24. f(x - 1) reporters/backtraces.R:56:4
     25. f(x - 1) reporters/backtraces.R:56:4
     26. f(x - 1) reporters/backtraces.R:56:4
    --------------------------------------------------------------------------------
    
    == Results =====================================================================
    [ PASS x1 FAIL x7 WARN x1 SKIP x0 ]
    
    I believe in you!

# compact display is informative

    
    == Testing reporters/tests.R ===================================================
    
    [ PASS x0 FAIL x0 WARN x0 SKIP x0 ]
    [ PASS x0 FAIL x0 WARN x0 SKIP x0 ]
    [ PASS x1 FAIL x0 WARN x0 SKIP x0 ]
    [ PASS x1 FAIL x0 WARN x0 SKIP x0 ]
    [ PASS x1 FAIL x1 WARN x0 SKIP x0 ]
    [ PASS x1 FAIL x2 WARN x0 SKIP x0 ]
    
    -- tests.R:12:3: failure: Failure:1 --------------------------------------------
    FALSE is not TRUE
    
    `actual`:   FALSE
    `expected`: TRUE 
    
    -- tests.R:17:3: failure: Failure:2a -------------------------------------------
    FALSE is not TRUE
    
    `actual`:   FALSE
    `expected`: TRUE 
    
    
    [ PASS x1 FAIL x2 WARN x0 SKIP x0 ]
    [ PASS x1 FAIL x3 WARN x0 SKIP x0 ]
    [ PASS x1 FAIL x4 WARN x0 SKIP x0 ]
    
    -- tests.R:23:3: error: Error:1 ------------------------------------------------
    Error: stop
    
    -- tests.R:31:3: error: errors get tracebacks ----------------------------------
    Error: !
    Backtrace:
     1. f()
     2. g()
     3. h()
    
    
    [ PASS x1 FAIL x4 WARN x0 SKIP x0 ]
    [ PASS x1 FAIL x4 WARN x0 SKIP x1 ]
    [ PASS x1 FAIL x4 WARN x0 SKIP x2 ]
    
    -- tests.R:37:3: skip: explicit skips are reported -----------------------------
    Reason: skip
    
    -- tests.R:40:1: skip: empty tests are implicitly skipped ----------------------
    Reason: empty test
    
    
    [ PASS x1 FAIL x4 WARN x0 SKIP x2 ]
    [ PASS x1 FAIL x4 WARN x1 SKIP x2 ]
    
    -- tests.R:49:3: warning: warnings get backtraces ------------------------------
    def
    Backtrace:
     1. f() reporters/tests.R:49:2
    
    
    [ PASS x1 FAIL x4 WARN x1 SKIP x2 ]

