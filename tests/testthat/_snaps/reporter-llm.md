# reports issues immediately but not successes

    FAILURE: 'reporters/tests.R:13:3' -----------------
    Expected `x` to be TRUE.
    Differences:
    `actual`:   FALSE
    `expected`: TRUE 
    
    FAILURE: 'reporters/tests.R:17:8' -----------------
    Expected FALSE to be TRUE.
    Differences:
    `actual`:   FALSE
    `expected`: TRUE 
    
    Backtrace:
        x
     1. \-f()
     2.   \-testthat::expect_true(FALSE)
    ERROR: 'reporters/tests.R:24:3' -------------------
    Error in `eval(code, test_env)`: stop
    ERROR: 'reporters/tests.R:30:8' -------------------
    Error in `h()`: !
    Backtrace:
        x
     1. \-f()
     2.   \-g()
     3.     \-h()
    SKIP: 'reporters/tests.R:38:3' --------------------
    Reason: skip
    SKIP: 'reporters/tests.R:41:1' --------------------
    Reason: empty test
    WARNING: 'reporters/tests.R:47:5' -----------------
    def
    Backtrace:
        x
     1. \-f()
    SKIP: 'reporters/tests.R:45:1' --------------------
    Reason: empty test
    
    [ FAIL 4 | WARN 1 | SKIP 3 | PASS 1 ]

# reports only summary for all successes

    
    [ FAIL 0 | WARN 0 | SKIP 0 | PASS 7 ]

# fails after max_fail tests

    FAILURE: 'reporters/fail-many.R:3:5' --------------
    Expected FALSE to be TRUE.
    Differences:
    `actual`:   FALSE
    `expected`: TRUE 
    
    FAILURE: 'reporters/fail-many.R:3:5' --------------
    Expected FALSE to be TRUE.
    Differences:
    `actual`:   FALSE
    `expected`: TRUE 
    
    FAILURE: 'reporters/fail-many.R:3:5' --------------
    Expected FALSE to be TRUE.
    Differences:
    `actual`:   FALSE
    `expected`: TRUE 
    
    FAILURE: 'reporters/fail-many.R:3:5' --------------
    Expected FALSE to be TRUE.
    Differences:
    `actual`:   FALSE
    `expected`: TRUE 
    
    FAILURE: 'reporters/fail-many.R:3:5' --------------
    Expected FALSE to be TRUE.
    Differences:
    `actual`:   FALSE
    `expected`: TRUE 
    
    
    Maximum number of failures exceeded; quitting.
    i Increase this number with (e.g.) `testthat::set_max_fails(Inf)` 

