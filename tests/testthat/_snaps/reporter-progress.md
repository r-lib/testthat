# captures error before first test

    v |  OK F W S | Context
    
    / |   0       | reporters/error-setup                                           
    - |   0 1     | reporters/error-setup                                           
    x |   0 1     | reporters/error-setup
    --------------------------------------------------------------------------------
    Error (error-setup.R:6:1): (code run outside of `test_that()`)
    Error: !
    Backtrace:
     1. testthat::setup(f()) reporters/error-setup.R:6:0
     3. f()
     4. g() reporters/error-setup.R:1:5
     5. h() reporters/error-setup.R:2:5
    --------------------------------------------------------------------------------
    
    == Results =====================================================================
    [ FAIL 1 | WARN 0 | SKIP 0 | PASS 0 ]
    
    I believe in you!

# gracefully handles multiple contexts

    v |  OK F W S | Context
    
    / |   0       | reporters/context                                               
    / |   0       | my context                                                      
    - |   1       | my context                                                      
    v |   1       | my context
    
    == Results =====================================================================
    [ FAIL 0 | WARN 0 | SKIP 0 | PASS 1 ]
    
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
    Failure (fail-many.R:3:5): Example
    FALSE is not TRUE
    
    `actual`:   FALSE
    `expected`: TRUE 
    
    Failure (fail-many.R:3:5): Example
    FALSE is not TRUE
    
    `actual`:   FALSE
    `expected`: TRUE 
    
    Failure (fail-many.R:3:5): Example
    FALSE is not TRUE
    
    `actual`:   FALSE
    `expected`: TRUE 
    
    Failure (fail-many.R:3:5): Example
    FALSE is not TRUE
    
    `actual`:   FALSE
    `expected`: TRUE 
    
    Failure (fail-many.R:3:5): Example
    FALSE is not TRUE
    
    `actual`:   FALSE
    `expected`: TRUE 
    
    Failure (fail-many.R:3:5): Example
    FALSE is not TRUE
    
    `actual`:   FALSE
    `expected`: TRUE 
    
    Failure (fail-many.R:3:5): Example
    FALSE is not TRUE
    
    `actual`:   FALSE
    `expected`: TRUE 
    
    Failure (fail-many.R:3:5): Example
    FALSE is not TRUE
    
    `actual`:   FALSE
    `expected`: TRUE 
    
    Failure (fail-many.R:3:5): Example
    FALSE is not TRUE
    
    `actual`:   FALSE
    `expected`: TRUE 
    
    Failure (fail-many.R:3:5): Example
    FALSE is not TRUE
    
    `actual`:   FALSE
    `expected`: TRUE 
    --------------------------------------------------------------------------------
    Maximum number of failures exceeded; quitting early.
    You can increase this number by setting `options(testthat.progress.max_fails)` 
    
    == Results =====================================================================
    [ FAIL 10 | WARN 0 | SKIP 0 | PASS 0 ]
    == Terminated early ============================================================
    
    I believe in you!

# can fully suppress incremental updates

    v |  OK F W S | Context
    
    / |   0       | reporters/successes                                             
    - |   1       | reporters/successes                                             
    \ |   2       | reporters/successes                                             
    | |   3       | reporters/successes                                             
    / |   4       | reporters/successes                                             
    - |   5       | reporters/successes                                             
    \ |   6       | reporters/successes                                             
    | |   7       | reporters/successes                                             
    v |   7       | reporters/successes
    
    == Results =====================================================================
    [ FAIL 0 | WARN 0 | SKIP 0 | PASS 7 ]
    
    You rock!

---

    v |  OK F W S | Context
    
    v |   7       | reporters/successes
    
    == Results =====================================================================
    [ FAIL 0 | WARN 0 | SKIP 0 | PASS 7 ]
    
    You rock!

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
    Error (backtraces.R:6:3): errors thrown at block level are entraced
    Error: foo
    Backtrace:
     1. f() reporters/backtraces.R:6:2
     2. g() reporters/backtraces.R:4:7
    
    Error (backtraces.R:11:3): errors thrown from a quasi-labelled argument are entraced
    Error: foo
    Backtrace:
     1. testthat::expect_s3_class(foo(), "foo") reporters/backtraces.R:11:2
     4. foo()
    
    Error (backtraces.R:18:3): errors thrown from a quasi-labelled argument are entraced (deep case)
    Error: foo
    Backtrace:
     1. testthat::expect_s3_class(f(), "foo") reporters/backtraces.R:18:2
     4. f()
     5. g() reporters/backtraces.R:16:7
     9. foo()
    
    Error (backtraces.R:28:3): errors thrown from a quasi-labelled argument are entraced (deep deep case)
    Error: foobar
    Backtrace:
     1. f() reporters/backtraces.R:28:2
     2. g() reporters/backtraces.R:25:7
     6. foo()
     7. bar() reporters/backtraces.R:22:9
    
    Error (backtraces.R:35:3): failed expect_error() prints a backtrace
    Error: bar
    Backtrace:
     1. testthat::expect_error(f(), "foo") reporters/backtraces.R:35:2
     7. f()
     8. signaller() reporters/backtraces.R:32:7
    
    Error (backtraces.R:43:3): Errors are inspected with `conditionMessage()`
    Error: dispatched
    
    Warning (backtraces.R:50:3): also get backtraces for warnings
    foobar
    Backtrace:
     1. foo() reporters/backtraces.R:50:2
     2. bar() reporters/backtraces.R:47:9
    
    Error (backtraces.R:58:3): deep stacks are trimmed
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
    [ FAIL 7 | WARN 1 | SKIP 0 | PASS 1 ]
    
    I believe in you!

# compact display is informative

    
    == Testing reporters/tests.R ===================================================
    
    [ FAIL 0 | WARN 0 | SKIP 0 | PASS 0 ]
    [ FAIL 0 | WARN 0 | SKIP 0 | PASS 0 ]
    [ FAIL 0 | WARN 0 | SKIP 0 | PASS 1 ]
    [ FAIL 0 | WARN 0 | SKIP 0 | PASS 1 ]
    [ FAIL 1 | WARN 0 | SKIP 0 | PASS 1 ]
    [ FAIL 2 | WARN 0 | SKIP 0 | PASS 1 ]
    
    -- Failure (tests.R:12:3): Failure:1 -------------------------------------------
    FALSE is not TRUE
    
    `actual`:   FALSE
    `expected`: TRUE 
    
    -- Failure (tests.R:17:3): Failure:2a ------------------------------------------
    FALSE is not TRUE
    
    `actual`:   FALSE
    `expected`: TRUE 
    
    
    [ FAIL 2 | WARN 0 | SKIP 0 | PASS 1 ]
    [ FAIL 3 | WARN 0 | SKIP 0 | PASS 1 ]
    [ FAIL 4 | WARN 0 | SKIP 0 | PASS 1 ]
    
    -- Error (tests.R:23:3): Error:1 -----------------------------------------------
    Error: stop
    
    -- Error (tests.R:31:3): errors get tracebacks ---------------------------------
    Error: !
    Backtrace:
     1. f()
     2. g()
     3. h()
    
    
    [ FAIL 4 | WARN 0 | SKIP 0 | PASS 1 ]
    [ FAIL 4 | WARN 0 | SKIP 1 | PASS 1 ]
    [ FAIL 4 | WARN 0 | SKIP 2 | PASS 1 ]
    
    -- Skip (tests.R:37:3): explicit skips are reported ----------------------------
    Reason: skip
    
    -- Skip (tests.R:40:1): empty tests are implicitly skipped ---------------------
    Reason: empty test
    
    
    [ FAIL 4 | WARN 0 | SKIP 2 | PASS 1 ]
    [ FAIL 4 | WARN 1 | SKIP 2 | PASS 1 ]
    
    -- Warning (tests.R:49:3): warnings get backtraces -----------------------------
    def
    Backtrace:
     1. f() reporters/tests.R:49:2
    
    
    [ FAIL 4 | WARN 1 | SKIP 2 | PASS 1 ]

# display of successes only is compact

    
    == Testing reporters/successes.R ===============================================
    
    [ FAIL 0 | WARN 0 | SKIP 0 | PASS 0 ]
    [ FAIL 0 | WARN 0 | SKIP 0 | PASS 1 ]
    [ FAIL 0 | WARN 0 | SKIP 0 | PASS 2 ]
    [ FAIL 0 | WARN 0 | SKIP 0 | PASS 3 ]
    [ FAIL 0 | WARN 0 | SKIP 0 | PASS 4 ]
    [ FAIL 0 | WARN 0 | SKIP 0 | PASS 5 ]
    [ FAIL 0 | WARN 0 | SKIP 0 | PASS 6 ]
    [ FAIL 0 | WARN 0 | SKIP 0 | PASS 7 ] Done!

---

    
    [ FAIL 0 | WARN 0 | SKIP 0 | PASS 0 ]
    [ FAIL 0 | WARN 0 | SKIP 0 | PASS 1 ]
    [ FAIL 0 | WARN 0 | SKIP 0 | PASS 2 ]
    [ FAIL 0 | WARN 0 | SKIP 0 | PASS 3 ]
    [ FAIL 0 | WARN 0 | SKIP 0 | PASS 4 ]
    [ FAIL 0 | WARN 0 | SKIP 0 | PASS 5 ]
    [ FAIL 0 | WARN 0 | SKIP 0 | PASS 6 ]
    [ FAIL 0 | WARN 0 | SKIP 0 | PASS 7 ]

