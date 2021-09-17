# captures error before first test

    v | F W S  OK | Context
    
    / |         0 | reporters/error-setup                                           
    - | 1       0 | reporters/error-setup                                           
    x | 1       0 | reporters/error-setup
    --------------------------------------------------------------------------------
    Error (error-setup.R:6:1): (code run outside of `test_that()`)
    Error in `h()`: !
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

    v | F W S  OK | Context
    
    / |         0 | reporters/context                                               
    / |         0 | my context                                                      
    - |         1 | my context                                                      
    v |         1 | my context
    
    == Results =====================================================================
    [ FAIL 0 | WARN 0 | SKIP 0 | PASS 1 ]
    
    You rock!

# fails after max_fail tests

    v | F W S  OK | Context
    
    / |         0 | reporters/fail-many                                             
    - | 1       0 | reporters/fail-many                                             
    \ | 2       0 | reporters/fail-many                                             
    | | 3       0 | reporters/fail-many                                             
    / | 4       0 | reporters/fail-many                                             
    - | 5       0 | reporters/fail-many                                             
    \ | 6       0 | reporters/fail-many                                             
    | | 7       0 | reporters/fail-many                                             
    / | 8       0 | reporters/fail-many                                             
    - | 9       0 | reporters/fail-many                                             
    \ | 10       0 | reporters/fail-many                                            
    | | 11       0 | reporters/fail-many                                            
    x | 11       0 | reporters/fail-many
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
    
    Failure (fail-many.R:3:5): Example
    FALSE is not TRUE
    
    `actual`:   FALSE
    `expected`: TRUE 
    --------------------------------------------------------------------------------
    Maximum number of failures exceeded; quitting at end of file.
    Increase this number with (e.g.) `Sys.setenv('TESTTHAT_MAX_FAILS' = Inf)` 
    
    == Results =====================================================================
    [ FAIL 11 | WARN 0 | SKIP 0 | PASS 0 ]
    == Terminated early ============================================================
    
    I believe in you!

# can fully suppress incremental updates

    v | F W S  OK | Context
    
    / |         0 | reporters/successes                                             
    - |         1 | reporters/successes                                             
    \ |         2 | reporters/successes                                             
    | |         3 | reporters/successes                                             
    / |         4 | reporters/successes                                             
    - |         5 | reporters/successes                                             
    \ |         6 | reporters/successes                                             
    | |         7 | reporters/successes                                             
    v |         7 | reporters/successes
    
    == Results =====================================================================
    [ FAIL 0 | WARN 0 | SKIP 0 | PASS 7 ]
    
    You rock!

---

    v | F W S  OK | Context
    
    v |         7 | reporters/successes
    
    == Results =====================================================================
    [ FAIL 0 | WARN 0 | SKIP 0 | PASS 7 ]
    
    You rock!

# reports backtraces

    v | F W S  OK | Context
    
    / |         0 | reporters/backtraces                                            
    - | 1       0 | reporters/backtraces                                            
    \ | 2       0 | reporters/backtraces                                            
    | | 3       0 | reporters/backtraces                                            
    / | 4       0 | reporters/backtraces                                            
    - | 5       0 | reporters/backtraces                                            
    \ | 6       0 | reporters/backtraces                                            
    | | 6 1     0 | reporters/backtraces                                            
    / | 6 1     1 | reporters/backtraces                                            
    - | 7 1     1 | reporters/backtraces                                            
    \ | 8 1     1 | reporters/backtraces                                            
    | | 9 1     1 | reporters/backtraces                                            
    x | 9 1     1 | reporters/backtraces
    --------------------------------------------------------------------------------
    Error (backtraces.R:6:3): errors thrown at block level are entraced
    Error in `g()`: foo
    Backtrace:
     1. f() reporters/backtraces.R:6:2
     2. g() reporters/backtraces.R:4:7
    
    Error (backtraces.R:11:3): errors thrown from a quasi-labelled argument are entraced
    Error in `foo()`: foo
    Backtrace:
     1. testthat::expect_s3_class(foo(), "foo") reporters/backtraces.R:11:2
     4. foo()
    
    Error (backtraces.R:18:3): errors thrown from a quasi-labelled argument are entraced (deep case)
    Error in `foo()`: foo
    Backtrace:
     1. testthat::expect_s3_class(f(), "foo") reporters/backtraces.R:18:2
     4. f()
     5. g() reporters/backtraces.R:16:7
     9. foo()
    
    Error (backtraces.R:28:3): errors thrown from a quasi-labelled argument are entraced (deep deep case)
    Error in `bar()`: foobar
    Backtrace:
     1. f() reporters/backtraces.R:28:2
     2. g() reporters/backtraces.R:25:7
     6. foo()
     7. bar() reporters/backtraces.R:22:9
    
    Error (backtraces.R:35:3): failed expect_error() prints a backtrace
    Error in `signaller()`: bar
    Backtrace:
     1. testthat::expect_error(f(), "foo") reporters/backtraces.R:35:2
     7. f()
     8. signaller() reporters/backtraces.R:32:7
    
    Error (backtraces.R:43:3): Errors are inspected with `conditionMessage()`
    <foobar/rlang_error/error/condition>
    Error: dispatched
    
    Warning (backtraces.R:50:3): also get backtraces for warnings
    foobar
    Backtrace:
     1. foo() reporters/backtraces.R:50:2
     2. bar() reporters/backtraces.R:47:9
    
    Error (backtraces.R:58:3): deep stacks are trimmed
    Error in `f(x - 1)`: This is deep
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
    
    Failure (backtraces.R:66:1): (code run outside of `test_that()`)
    FALSE is not TRUE
    
    `actual`:   FALSE
    `expected`: TRUE 
    Backtrace:
     1. f() reporters/backtraces.R:66:0
     2. g() reporters/backtraces.R:62:5
     3. h() reporters/backtraces.R:63:5
     4. testthat::expect_true(FALSE) reporters/backtraces.R:64:5
    
    Failure (backtraces.R:69:3): nested expectations get backtraces
    FALSE is not TRUE
    
    `actual`:   FALSE
    `expected`: TRUE 
    Backtrace:
     1. f() reporters/backtraces.R:69:2
     2. g() reporters/backtraces.R:62:5
     3. h() reporters/backtraces.R:63:5
     4. testthat::expect_true(FALSE) reporters/backtraces.R:64:5
    --------------------------------------------------------------------------------
    
    == Results =====================================================================
    [ FAIL 9 | WARN 1 | SKIP 0 | PASS 1 ]
    
    I believe in you!

# records skips

    v | F W S  OK | Context
    
    / |         0 | reporters/skips                                                 
    - |     1   0 | reporters/skips                                                 
    \ |     2   0 | reporters/skips                                                 
    v |     2   0 | reporters/skips
    --------------------------------------------------------------------------------
    Skip (skips.R:2:3): regular skip
    Reason: regular skip
    
    Skip (skips.R:6:3): skip with details
    Reason: longer skip:
    this is what happened
    --------------------------------------------------------------------------------
    
    == Results =====================================================================
    -- Skipped tests  --------------------------------------------------------------
    * longer skip (1)
    * regular skip (1)
    
    [ FAIL 0 | WARN 0 | SKIP 2 | PASS 0 ]
    
    You rock!

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
    Backtrace:
     1. f()
     2. testthat::expect_true(FALSE)
    
    
    [ FAIL 2 | WARN 0 | SKIP 0 | PASS 1 ]
    [ FAIL 3 | WARN 0 | SKIP 0 | PASS 1 ]
    [ FAIL 4 | WARN 0 | SKIP 0 | PASS 1 ]
    
    -- Error (tests.R:23:3): Error:1 -----------------------------------------------
    Error in `eval(code, test_env)`: stop
    
    -- Error (tests.R:31:3): errors get tracebacks ---------------------------------
    Error in `h()`: !
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
    [ FAIL 4 | WARN 1 | SKIP 3 | PASS 1 ]
    
    -- Warning (tests.R:49:3): warnings get backtraces -----------------------------
    def
    Backtrace:
     1. f() reporters/tests.R:49:2
    
    -- Skip (tests.R:45:1): warnings get backtraces --------------------------------
    Reason: empty test
    
    
    [ FAIL 4 | WARN 1 | SKIP 3 | PASS 1 ]

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

