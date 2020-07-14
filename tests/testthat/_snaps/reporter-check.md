## basic report works

    ── Failure: Failure:1 (tests.R:12:3) ───────────────────────────────────────────
    Failure has been forced
    
    ── Failure: Failure:2a (tests.R:16:3) ──────────────────────────────────────────
    Failure has been forced
    
    ── Failure: Failure:2b (tests.R:19:3) ──────────────────────────────────────────
    FALSE isn't true.
    
    ── Failure: Failure:loop (tests.R:24:5) ────────────────────────────────────────
    `i` not equal to 2.
    1/1 mismatches
    [1] 1 - 2 == -1
    
    ── Error: Error:1 (tests.R:33:3) ───────────────────────────────────────────────
    Error: stop
    
    ── Error: Error:3 (tests.R:47:3) ───────────────────────────────────────────────
    Error: !
    Backtrace:
        █
     1. └─f()
     2.   └─g()
     3.     └─h()
    
    ── Error: Recursion:1 (tests.R:56:3) ───────────────────────────────────────────
    Error: This is deep
    Backtrace:
         █
      1. └─f(25)
      2.   └─f(x - 1)
      3.     └─f(x - 1)
      4.       └─f(x - 1)
      5.         └─f(x - 1)
      6.           └─f(x - 1)
      7.             └─f(x - 1)
      8.               └─f(x - 1)
      9.                 └─f(x - 1)
     10.                   └─f(x - 1)
     11.                     └─f(x - 1)
     12.                       └─f(x - 1)
     13.                         └─f(x - 1)
     14.                           └─f(x - 1)
     15.                             └─f(x - 1)
     16.                               └─f(x - 1)
     17.                                 └─f(x - 1)
     18.                                   └─f(x - 1)
     19.                                     └─f(x - 1)
     20.                                       └─f(x - 1)
     21.                                         └─f(x - 1)
     22.                                           └─f(x - 1)
     23.                                             └─f(x - 1)
     24.                                               └─f(x - 1)
     25.                                                 └─f(x - 1)
     26.                                                   └─f(x - 1)
    
    ── Skip: Skip:1 (tests.R:62:3) ─────────────────────────────────────────────────
    Reason: skip
    
    ── Skip: Skip:2 (tests.R:69:3) ─────────────────────────────────────────────────
    Reason: skip
    
    ── Skip: Skip:3 (tests.R:72:1) ─────────────────────────────────────────────────
    Reason: empty test
    
    ── Warning: Warning:1 (tests.R:78:3) ───────────────────────────────────────────
    abc
    
    ── Warning: Warning:2 (tests.R:84:3) ───────────────────────────────────────────
    def
    
    ── Warning: Warning:2 (tests.R:85:3) ───────────────────────────────────────────
    ghi
    Backtrace:
        █
     1. └─f()
    
    ── Skipped tests  ──────────────────────────────────────────────────────────────
    ● empty test (1)
    ● skip (2)
    
    ══ testthat results  ═══════════════════════════════════════════════════════════
    [ OK: 5 | SKIPPED: 3 | WARNINGS: 3 | FAILED: 7 ]
    1. Failure: Failure:1 (tests.R:12:3)
    2. Failure: Failure:2a (tests.R:16:3)
    3. Failure: Failure:2b (tests.R:19:3)
    4. Failure: Failure:loop (tests.R:24:5)
    5. Error: Error:1 (tests.R:33:3)
    6. Error: Error:3 (tests.R:47:3)
    7. Error: Recursion:1 (tests.R:56:3)
    8. Skip: Skip:1 (tests.R:62:3)
    9. Skip: Skip:2 (tests.R:69:3)
    ... and 3 more
    

