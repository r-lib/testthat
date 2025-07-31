# captures error before first test

    v | F W  S  OK | Context
    
    / |          0 | reporters/error-setup                                          
    - | 1        0 | reporters/error-setup                                          
    x | 1        0 | reporters/error-setup
    --------------------------------------------------------------------------------
    Error ('reporters/error-setup.R:3:6'): (code run outside of `test_that()`)
    Error in `h()`: !
    Backtrace:
        x
     1. +-testthat::setup(f())
     2. | \-rlang::eval_tidy(enquo(code), env = env)
     3. \-f()
     4.   \-g()
     5.     \-h()
    --------------------------------------------------------------------------------
    
    == Results =====================================================================
    -- Failed tests ----------------------------------------------------------------
    Error ('reporters/error-setup.R:3:6'): (code run outside of `test_that()`)
    Error in `h()`: !
    Backtrace:
        x
     1. +-testthat::setup(f())
     2. | \-rlang::eval_tidy(enquo(code), env = env)
     3. \-f()
     4.   \-g()
     5.     \-h()
    
    [ FAIL 1 | WARN 0 | SKIP 0 | PASS 0 ]
    
    No one gets it right on their first try

# gracefully handles multiple contexts

    v | F W  S  OK | Context
    
    / |          0 | reporters/context                                              
    / |          0 | my context                                                     
    - |          1 | my context                                                     
    v |          1 | my context
    
    == Results =====================================================================
    [ FAIL 0 | WARN 0 | SKIP 0 | PASS 1 ]
    
    Way to go!

# fails after max_fail tests

    v | F W  S  OK | Context
    
    / |          0 | reporters/fail-many                                            
    - | 1        0 | reporters/fail-many                                            
    \ | 2        0 | reporters/fail-many                                            
    | | 3        0 | reporters/fail-many                                            
    / | 4        0 | reporters/fail-many                                            
    - | 5        0 | reporters/fail-many                                            
    \ | 6        0 | reporters/fail-many                                            
    | | 7        0 | reporters/fail-many                                            
    / | 8        0 | reporters/fail-many                                            
    - | 9        0 | reporters/fail-many                                            
    \ | 10        0 | reporters/fail-many                                           
    | | 11        0 | reporters/fail-many                                           
    x | 11        0 | reporters/fail-many
    --------------------------------------------------------------------------------
    Failure ('reporters/fail-many.R:3:5'): Example
    FALSE is not equal to TRUE.
    
    `actual`:   FALSE
    `expected`: TRUE 
    
    Failure ('reporters/fail-many.R:3:5'): Example
    FALSE is not equal to TRUE.
    
    `actual`:   FALSE
    `expected`: TRUE 
    
    Failure ('reporters/fail-many.R:3:5'): Example
    FALSE is not equal to TRUE.
    
    `actual`:   FALSE
    `expected`: TRUE 
    
    Failure ('reporters/fail-many.R:3:5'): Example
    FALSE is not equal to TRUE.
    
    `actual`:   FALSE
    `expected`: TRUE 
    
    Failure ('reporters/fail-many.R:3:5'): Example
    FALSE is not equal to TRUE.
    
    `actual`:   FALSE
    `expected`: TRUE 
    
    Failure ('reporters/fail-many.R:3:5'): Example
    FALSE is not equal to TRUE.
    
    `actual`:   FALSE
    `expected`: TRUE 
    
    Failure ('reporters/fail-many.R:3:5'): Example
    FALSE is not equal to TRUE.
    
    `actual`:   FALSE
    `expected`: TRUE 
    
    Failure ('reporters/fail-many.R:3:5'): Example
    FALSE is not equal to TRUE.
    
    `actual`:   FALSE
    `expected`: TRUE 
    
    Failure ('reporters/fail-many.R:3:5'): Example
    FALSE is not equal to TRUE.
    
    `actual`:   FALSE
    `expected`: TRUE 
    
    Failure ('reporters/fail-many.R:3:5'): Example
    FALSE is not equal to TRUE.
    
    `actual`:   FALSE
    `expected`: TRUE 
    
    Failure ('reporters/fail-many.R:3:5'): Example
    FALSE is not equal to TRUE.
    
    `actual`:   FALSE
    `expected`: TRUE 
    --------------------------------------------------------------------------------
    Maximum number of failures exceeded; quitting at end of file.
    i Increase this number with (e.g.) `testthat::set_max_fails(Inf)` 
    
    == Results =====================================================================
    -- Failed tests ----------------------------------------------------------------
    Failure ('reporters/fail-many.R:3:5'): Example
    FALSE is not equal to TRUE.
    
    `actual`:   FALSE
    `expected`: TRUE 
    
    Failure ('reporters/fail-many.R:3:5'): Example
    FALSE is not equal to TRUE.
    
    `actual`:   FALSE
    `expected`: TRUE 
    
    Failure ('reporters/fail-many.R:3:5'): Example
    FALSE is not equal to TRUE.
    
    `actual`:   FALSE
    `expected`: TRUE 
    
    Failure ('reporters/fail-many.R:3:5'): Example
    FALSE is not equal to TRUE.
    
    `actual`:   FALSE
    `expected`: TRUE 
    
    Failure ('reporters/fail-many.R:3:5'): Example
    FALSE is not equal to TRUE.
    
    `actual`:   FALSE
    `expected`: TRUE 
    
    Failure ('reporters/fail-many.R:3:5'): Example
    FALSE is not equal to TRUE.
    
    `actual`:   FALSE
    `expected`: TRUE 
    
    Failure ('reporters/fail-many.R:3:5'): Example
    FALSE is not equal to TRUE.
    
    `actual`:   FALSE
    `expected`: TRUE 
    
    Failure ('reporters/fail-many.R:3:5'): Example
    FALSE is not equal to TRUE.
    
    `actual`:   FALSE
    `expected`: TRUE 
    
    Failure ('reporters/fail-many.R:3:5'): Example
    FALSE is not equal to TRUE.
    
    `actual`:   FALSE
    `expected`: TRUE 
    
    Failure ('reporters/fail-many.R:3:5'): Example
    FALSE is not equal to TRUE.
    
    `actual`:   FALSE
    `expected`: TRUE 
    
    Failure ('reporters/fail-many.R:3:5'): Example
    FALSE is not equal to TRUE.
    
    `actual`:   FALSE
    `expected`: TRUE 
    
    [ FAIL 11 | WARN 0 | SKIP 0 | PASS 0 ]
    == Terminated early ============================================================
    
    No one gets it right on their first try

# can fully suppress incremental updates

    v | F W  S  OK | Context
    
    / |          0 | reporters/successes                                            
    - |          1 | reporters/successes                                            
    \ |          2 | reporters/successes                                            
    | |          3 | reporters/successes                                            
    / |          4 | reporters/successes                                            
    - |          5 | reporters/successes                                            
    \ |          6 | reporters/successes                                            
    | |          7 | reporters/successes                                            
    v |          7 | reporters/successes
    
    == Results =====================================================================
    [ FAIL 0 | WARN 0 | SKIP 0 | PASS 7 ]
    
    Way to go!

---

    v | F W  S  OK | Context
    
    v |          7 | reporters/successes
    
    == Results =====================================================================
    [ FAIL 0 | WARN 0 | SKIP 0 | PASS 7 ]
    
    Way to go!

# reports backtraces

    v | F W  S  OK | Context
    
    / |          0 | reporters/backtraces                                           
    - | 1        0 | reporters/backtraces                                           
    \ | 2        0 | reporters/backtraces                                           
    | | 3        0 | reporters/backtraces                                           
    / | 4        0 | reporters/backtraces                                           
    - | 5        0 | reporters/backtraces                                           
    \ | 6        0 | reporters/backtraces                                           
    | | 6 1      0 | reporters/backtraces                                           
    / | 6 1      1 | reporters/backtraces                                           
    - | 7 1      1 | reporters/backtraces                                           
    \ | 8 1      1 | reporters/backtraces                                           
    | | 9 1      1 | reporters/backtraces                                           
    x | 9 1      1 | reporters/backtraces
    --------------------------------------------------------------------------------
    Error ('reporters/backtraces.R:3:8'): errors thrown at block level are entraced
    Error in `g()`: foo
    Backtrace:
        x
     1. \-f()
     2.   \-g()
    
    Error ('reporters/backtraces.R:8:10'): errors thrown from a quasi-labelled argument are entraced
    Error in `foo()`: foo
    Backtrace:
        x
     1. +-testthat::expect_s3_class(foo(), "foo")
     2. | \-testthat::quasi_label(enquo(object), arg = "object")
     3. |   \-rlang::eval_bare(expr, quo_get_env(quo))
     4. \-foo()
    
    Error ('reporters/backtraces.R:13:10'): errors thrown from a quasi-labelled argument are entraced (deep case)
    Error in `foo()`: foo
    Backtrace:
        x
     1. +-testthat::expect_s3_class(f(), "foo")
     2. | \-testthat::quasi_label(enquo(object), arg = "object")
     3. |   \-rlang::eval_bare(expr, quo_get_env(quo))
     4. \-f()
     5.   \-g()
     6.     +-testthat::expect_s3_class(foo(), "foo")
     7.     | \-testthat::quasi_label(enquo(object), arg = "object")
     8.     |   \-rlang::eval_bare(expr, quo_get_env(quo))
     9.     \-foo()
    
    Error ('reporters/backtraces.R:21:10'): errors thrown from a quasi-labelled argument are entraced (deep deep case)
    Error in `bar()`: foobar
    Backtrace:
        x
     1. \-f()
     2.   \-g()
     3.     +-testthat::expect_s3_class(foo(), "foo")
     4.     | \-testthat::quasi_label(enquo(object), arg = "object")
     5.     |   \-rlang::eval_bare(expr, quo_get_env(quo))
     6.     \-foo()
     7.       \-bar()
    
    Error ('reporters/backtraces.R:32:16'): failed expect_error() prints a backtrace
    Error in `signaller()`: bar
    Backtrace:
        x
     1. +-testthat::expect_error(f(), "foo")
     2. | \-testthat:::expect_condition_matching_(...)
     3. |   \-testthat:::quasi_capture(...)
     4. |     +-testthat (local) .capture(...)
     5. |     | \-base::withCallingHandlers(...)
     6. |     \-rlang::eval_bare(quo_get_expr(.quo), quo_get_env(.quo))
     7. \-f()
     8.   \-signaller()
    
    Error ('reporters/backtraces.R:41:3'): Errors are inspected with `conditionMessage()`
    <foobar/rlang_error/error/condition>
    Error in `eval(code, test_env)`: dispatched
    Backtrace:
        x
     1. \-rlang::abort("Wrong message", "foobar")
    
    Warning ('reporters/backtraces.R:46:10'): also get backtraces for warnings
    foobar
    Backtrace:
        x
     1. \-foo()
     2.   \-bar()
    
    Error ('reporters/backtraces.R:54:5'): deep stacks are shown
    Error in `f(x - 1)`: This is deep
    Backtrace:
         x
      1. \-f(25)
      2.   \-f(x - 1)
      3.     \-f(x - 1)
      4.       \-f(x - 1)
      5.         \-f(x - 1)
      6.           \-f(x - 1)
      7.             \-f(x - 1)
      8.               \-f(x - 1)
      9.                 \-f(x - 1)
     10.                   \-f(x - 1)
     11.                     \-f(x - 1)
     12.                       \-f(x - 1)
     13.                         \-f(x - 1)
     14.                           \-f(x - 1)
     15.                             \-f(x - 1)
     16.                               \-f(x - 1)
     17.                                 \-f(x - 1)
     18.                                   \-f(x - 1)
     19.                                     \-f(x - 1)
     20.                                       \-f(x - 1)
     21.                                         \-f(x - 1)
     22.                                           \-f(x - 1)
     23.                                             \-f(x - 1)
     24.                                               \-f(x - 1)
     25.                                                 \-f(x - 1)
     26.                                                   \-f(x - 1)
    
    Failure ('reporters/backtraces.R:62:6'): (code run outside of `test_that()`)
    FALSE is not equal to TRUE.
    
    `actual`:   FALSE
    `expected`: TRUE 
    Backtrace:
        x
     1. \-f()
     2.   \-g()
     3.     \-h()
     4.       \-testthat::expect_true(FALSE)
    
    Failure ('reporters/backtraces.R:67:3'): nested expectations get backtraces
    FALSE is not equal to TRUE.
    
    `actual`:   FALSE
    `expected`: TRUE 
    Backtrace:
        x
     1. \-f()
     2.   \-g()
     3.     \-h()
     4.       \-testthat::expect_true(FALSE)
    --------------------------------------------------------------------------------
    
    == Results =====================================================================
    -- Failed tests ----------------------------------------------------------------
    Error ('reporters/backtraces.R:3:8'): errors thrown at block level are entraced
    Error in `g()`: foo
    Backtrace:
        x
     1. \-f()
     2.   \-g()
    
    Error ('reporters/backtraces.R:8:10'): errors thrown from a quasi-labelled argument are entraced
    Error in `foo()`: foo
    Backtrace:
        x
     1. +-testthat::expect_s3_class(foo(), "foo")
     2. | \-testthat::quasi_label(enquo(object), arg = "object")
     3. |   \-rlang::eval_bare(expr, quo_get_env(quo))
     4. \-foo()
    
    Error ('reporters/backtraces.R:13:10'): errors thrown from a quasi-labelled argument are entraced (deep case)
    Error in `foo()`: foo
    Backtrace:
        x
     1. +-testthat::expect_s3_class(f(), "foo")
     2. | \-testthat::quasi_label(enquo(object), arg = "object")
     3. |   \-rlang::eval_bare(expr, quo_get_env(quo))
     4. \-f()
     5.   \-g()
     6.     +-testthat::expect_s3_class(foo(), "foo")
     7.     | \-testthat::quasi_label(enquo(object), arg = "object")
     8.     |   \-rlang::eval_bare(expr, quo_get_env(quo))
     9.     \-foo()
    
    Error ('reporters/backtraces.R:21:10'): errors thrown from a quasi-labelled argument are entraced (deep deep case)
    Error in `bar()`: foobar
    Backtrace:
        x
     1. \-f()
     2.   \-g()
     3.     +-testthat::expect_s3_class(foo(), "foo")
     4.     | \-testthat::quasi_label(enquo(object), arg = "object")
     5.     |   \-rlang::eval_bare(expr, quo_get_env(quo))
     6.     \-foo()
     7.       \-bar()
    
    Error ('reporters/backtraces.R:32:16'): failed expect_error() prints a backtrace
    Error in `signaller()`: bar
    Backtrace:
        x
     1. +-testthat::expect_error(f(), "foo")
     2. | \-testthat:::expect_condition_matching_(...)
     3. |   \-testthat:::quasi_capture(...)
     4. |     +-testthat (local) .capture(...)
     5. |     | \-base::withCallingHandlers(...)
     6. |     \-rlang::eval_bare(quo_get_expr(.quo), quo_get_env(.quo))
     7. \-f()
     8.   \-signaller()
    
    Error ('reporters/backtraces.R:41:3'): Errors are inspected with `conditionMessage()`
    <foobar/rlang_error/error/condition>
    Error in `eval(code, test_env)`: dispatched
    Backtrace:
        x
     1. \-rlang::abort("Wrong message", "foobar")
    
    Error ('reporters/backtraces.R:54:5'): deep stacks are shown
    Error in `f(x - 1)`: This is deep
    Backtrace:
         x
      1. \-f(25)
      2.   \-f(x - 1)
      3.     \-f(x - 1)
      4.       \-f(x - 1)
      5.         \-f(x - 1)
      6.           \-f(x - 1)
      7.             \-f(x - 1)
      8.               \-f(x - 1)
      9.                 \-f(x - 1)
     10.                   \-f(x - 1)
     11.                     \-f(x - 1)
     12.                       \-f(x - 1)
     13.                         \-f(x - 1)
     14.                           \-f(x - 1)
     15.                             \-f(x - 1)
     16.                               \-f(x - 1)
     17.                                 \-f(x - 1)
     18.                                   \-f(x - 1)
     19.                                     \-f(x - 1)
     20.                                       \-f(x - 1)
     21.                                         \-f(x - 1)
     22.                                           \-f(x - 1)
     23.                                             \-f(x - 1)
     24.                                               \-f(x - 1)
     25.                                                 \-f(x - 1)
     26.                                                   \-f(x - 1)
    
    Failure ('reporters/backtraces.R:62:6'): (code run outside of `test_that()`)
    FALSE is not equal to TRUE.
    
    `actual`:   FALSE
    `expected`: TRUE 
    Backtrace:
        x
     1. \-f()
     2.   \-g()
     3.     \-h()
     4.       \-testthat::expect_true(FALSE)
    
    Failure ('reporters/backtraces.R:67:3'): nested expectations get backtraces
    FALSE is not equal to TRUE.
    
    `actual`:   FALSE
    `expected`: TRUE 
    Backtrace:
        x
     1. \-f()
     2.   \-g()
     3.     \-h()
     4.       \-testthat::expect_true(FALSE)
    
    [ FAIL 9 | WARN 1 | SKIP 0 | PASS 1 ]
    
    No one gets it right on their first try

# records skips

    v | F W  S  OK | Context
    
    / |          0 | reporters/skips                                                
    - |      1   0 | reporters/skips                                                
    \ |      2   0 | reporters/skips                                                
    v |      2   0 | reporters/skips
    
    == Results =====================================================================
    -- Skipped tests (2) -----------------------------------------------------------
    * longer skip (1): 'reporters/skips.R:6:3'
    * regular skip (1): 'reporters/skips.R:2:3'
    
    [ FAIL 0 | WARN 0 | SKIP 2 | PASS 0 ]
    
    Way to go!

# compact display is informative

    
    == Testing reporters/tests.R ===================================================
    
    [ FAIL 0 | WARN 0 | SKIP 0 | PASS 0 ]
    [ FAIL 0 | WARN 0 | SKIP 0 | PASS 0 ]
    [ FAIL 0 | WARN 0 | SKIP 0 | PASS 1 ]
    [ FAIL 0 | WARN 0 | SKIP 0 | PASS 1 ]
    [ FAIL 1 | WARN 0 | SKIP 0 | PASS 1 ]
    [ FAIL 2 | WARN 0 | SKIP 0 | PASS 1 ]
    
    -- Failure ('reporters/tests.R:12:3'): Failure:1 -------------------------------
    FALSE is not equal to TRUE.
    
    `actual`:   FALSE
    `expected`: TRUE 
    
    -- Failure ('reporters/tests.R:16:8'): Failure:2a ------------------------------
    FALSE is not equal to TRUE.
    
    `actual`:   FALSE
    `expected`: TRUE 
    Backtrace:
        x
     1. \-f()
     2.   \-testthat::expect_true(FALSE)
    
    [ FAIL 2 | WARN 0 | SKIP 0 | PASS 1 ]
    [ FAIL 3 | WARN 0 | SKIP 0 | PASS 1 ]
    [ FAIL 4 | WARN 0 | SKIP 0 | PASS 1 ]
    
    -- Error ('reporters/tests.R:23:3'): Error:1 -----------------------------------
    Error in `eval(code, test_env)`: stop
    
    -- Error ('reporters/tests.R:29:8'): errors get tracebacks ---------------------
    Error in `h()`: !
    Backtrace:
        x
     1. \-f()
     2.   \-g()
     3.     \-h()
    
    [ FAIL 4 | WARN 0 | SKIP 0 | PASS 1 ]
    [ FAIL 4 | WARN 0 | SKIP 1 | PASS 1 ]
    [ FAIL 4 | WARN 0 | SKIP 2 | PASS 1 ]
    [ FAIL 4 | WARN 0 | SKIP 2 | PASS 1 ]
    [ FAIL 4 | WARN 1 | SKIP 2 | PASS 1 ]
    [ FAIL 4 | WARN 1 | SKIP 3 | PASS 1 ]
    
    -- Warning ('reporters/tests.R:46:5'): warnings get backtraces -----------------
    def
    Backtrace:
        x
     1. \-f()
    
    -- Skipped tests (3) -----------------------------------------------------------
    * empty test (2): 'reporters/tests.R:40:1', 'reporters/tests.R:44:1'
    * skip (1): 'reporters/tests.R:37:3'
    
    
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

    
    == Testing reporters/skips.R ===================================================
    
    [ FAIL 0 | WARN 0 | SKIP 0 | PASS 0 ]
    [ FAIL 0 | WARN 0 | SKIP 1 | PASS 0 ]
    [ FAIL 0 | WARN 0 | SKIP 2 | PASS 0 ]
    
    -- Skipped tests (2) -----------------------------------------------------------
    * longer skip (1): 'reporters/skips.R:6:3'
    * regular skip (1): 'reporters/skips.R:2:3'
    

---

    
    [ FAIL 0 | WARN 0 | SKIP 0 | PASS 0 ]
    [ FAIL 0 | WARN 0 | SKIP 0 | PASS 1 ]
    [ FAIL 0 | WARN 0 | SKIP 0 | PASS 2 ]
    [ FAIL 0 | WARN 0 | SKIP 0 | PASS 3 ]
    [ FAIL 0 | WARN 0 | SKIP 0 | PASS 4 ]
    [ FAIL 0 | WARN 0 | SKIP 0 | PASS 5 ]
    [ FAIL 0 | WARN 0 | SKIP 0 | PASS 6 ]
    [ FAIL 0 | WARN 0 | SKIP 0 | PASS 7 ]

