## captures error before first test

    ✔ |  OK F W S | Context
    
    ⠏ |   0       | reporters/error-setup                                           
    ✖ |   0 1     | reporters/error-setup
    ────────────────────────────────────────────────────────────────────────────────
    error-setup.R:6:1: error: (code run outside of `test_that()`)
    Error: !
    Backtrace:
     1. testthat::setup(f())
     3. f()
     4. g()
     5. h()
    ────────────────────────────────────────────────────────────────────────────────
    
    ══ Results ═════════════════════════════════════════════════════════════════════
    OK:       0
    Failed:   1
    Warnings: 0
    Skipped:  0

## gracefully handles multiple contexts

    ✔ |  OK F W S | Context
    
    ⠏ |   0       | reporters/context                                               
    ⠏ |   0       | my context                                                      
    ✔ |   1       | my context
    
    ══ Results ═════════════════════════════════════════════════════════════════════
    OK:       1
    Failed:   0
    Warnings: 0
    Skipped:  0

## fails after max_fail tests

    ✔ |  OK F W S | Context
    
    ⠏ |   0       | reporters/fail-many                                             
    ✖ |   0 10     | reporters/fail-many
    ────────────────────────────────────────────────────────────────────────────────
    fail-many.R:3:5: failure: Example
    FALSE isn't true.
    
    fail-many.R:3:5: failure: Example
    FALSE isn't true.
    
    fail-many.R:3:5: failure: Example
    FALSE isn't true.
    
    fail-many.R:3:5: failure: Example
    FALSE isn't true.
    
    fail-many.R:3:5: failure: Example
    FALSE isn't true.
    
    fail-many.R:3:5: failure: Example
    FALSE isn't true.
    
    fail-many.R:3:5: failure: Example
    FALSE isn't true.
    
    fail-many.R:3:5: failure: Example
    FALSE isn't true.
    
    fail-many.R:3:5: failure: Example
    FALSE isn't true.
    
    fail-many.R:3:5: failure: Example
    FALSE isn't true.
    ────────────────────────────────────────────────────────────────────────────────
    max_fails exceded 
    
    ══ Results ═════════════════════════════════════════════════════════════════════
    OK:       0
    Failed:   10
    Warnings: 0
    Skipped:  0
    ══ Terminated early ════════════════════════════════════════════════════════════

## reports backtraces

    ✔ |  OK F W S | Context
    
    ⠏ |   0       | reporters/backtraces                                            
    ⠋ |   0 1     | reporters/backtraces                                            
    ⠙ |   0 2     | reporters/backtraces                                            
    ⠹ |   0 3     | reporters/backtraces                                            
    ⠸ |   0 4     | reporters/backtraces                                            
    ⠼ |   0 5     | reporters/backtraces                                            
    ⠴ |   0 6     | reporters/backtraces                                            
    ⠦ |   0 6 1   | reporters/backtraces                                            
    ⠧ |   1 6 1   | reporters/backtraces                                            
    ⠇ |   1 7 1   | reporters/backtraces                                            
    ✖ |   1 7 1   | reporters/backtraces
    ────────────────────────────────────────────────────────────────────────────────
    backtraces.R:6:3: error: errors thrown at block level are entraced
    Error: foo
    Backtrace:
     1. f()
     2. g()
    
    backtraces.R:11:3: error: errors thrown from a quasi-labelled argument are entraced
    Error: foo
    Backtrace:
     1. testthat::expect_s3_class(foo(), "foo")
     4. foo()
    
    backtraces.R:18:3: error: errors thrown from a quasi-labelled argument are entraced (deep case)
    Error: foo
    Backtrace:
     1. testthat::expect_s3_class(f(), "foo")
     4. f()
     5. g()
     9. foo()
    
    backtraces.R:28:3: error: errors thrown from a quasi-labelled argument are entraced (deep deep case)
    Error: foobar
    Backtrace:
     1. f()
     2. g()
     6. foo()
     7. bar()
    
    backtraces.R:35:3: error: failed expect_error() prints a backtrace
    Error: bar
    Backtrace:
     1. testthat::expect_error(f(), "foo")
     7. f()
     8. signaller()
    
    backtraces.R:43:3: error: Errors are inspected with `conditionMessage()`
    Error: dispatched
    
    backtraces.R:50:3: warning: also get backtraces for warnings
    foobar
    Backtrace:
     1. foo()
     2. bar()
    
    backtraces.R:58:3: error: deep stacks are trimmed
    Error: This is deep
    Backtrace:
      1. f(25)
      2. f(x - 1)
      3. f(x - 1)
      4. f(x - 1)
      5. f(x - 1)
      6. f(x - 1)
      7. f(x - 1)
      8. f(x - 1)
      9. f(x - 1)
     10. f(x - 1)
         ...
     17. f(x - 1)
     18. f(x - 1)
     19. f(x - 1)
     20. f(x - 1)
     21. f(x - 1)
     22. f(x - 1)
     23. f(x - 1)
     24. f(x - 1)
     25. f(x - 1)
     26. f(x - 1)
    ────────────────────────────────────────────────────────────────────────────────
    
    ══ Results ═════════════════════════════════════════════════════════════════════
    OK:       1
    Failed:   7
    Warnings: 1
    Skipped:  0

## compact display is informative

    
    ══ Testing reporters/tests.R ═══════════════════════════════════════════════════
    
    PASS x0 FAIL x0 WARN x0 SKIP x0
    PASS x0 FAIL x0 WARN x0 SKIP x0
    PASS x1 FAIL x0 WARN x0 SKIP x0
    PASS x1 FAIL x0 WARN x0 SKIP x0
    PASS x1 FAIL x1 WARN x0 SKIP x0
    PASS x1 FAIL x2 WARN x0 SKIP x0
    
    ── tests.R:12:3: failure: Failure:1 ────────────────────────────────────────────
    FALSE isn't true.
    
    ── tests.R:17:3: failure: Failure:2a ───────────────────────────────────────────
    FALSE isn't true.
    
    
    PASS x1 FAIL x2 WARN x0 SKIP x0
    PASS x1 FAIL x3 WARN x0 SKIP x0
    PASS x1 FAIL x4 WARN x0 SKIP x0
    
    ── tests.R:23:3: error: Error:1 ────────────────────────────────────────────────
    Error: stop
    
    ── tests.R:31:3: error: errors get tracebacks ──────────────────────────────────
    Error: !
    Backtrace:
     1. f()
     2. g()
     3. h()
    
    
    PASS x1 FAIL x4 WARN x0 SKIP x0
    PASS x1 FAIL x4 WARN x0 SKIP x1
    PASS x1 FAIL x4 WARN x0 SKIP x2
    
    ── tests.R:37:3: skip: explicit skips are reported ─────────────────────────────
    Reason: skip
    
    ── tests.R:40:1: skip: empty tests are implicitly skipped ──────────────────────
    Reason: empty test
    
    
    PASS x1 FAIL x4 WARN x0 SKIP x2
    PASS x1 FAIL x4 WARN x1 SKIP x2
    
    ── tests.R:49:3: warning: warnings get backtraces ──────────────────────────────
    def
    Backtrace:
     1. f()
    
    
    PASS x1 FAIL x4 WARN x1 SKIP x2

