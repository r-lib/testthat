## basic report works

    ── Failure: Failure:1 (tests.R:12:3) ───────────────────────────────────────────
    FALSE isn't true.
    
    ── Failure: Failure:2a (tests.R:17:3) ──────────────────────────────────────────
    FALSE isn't true.
    
    ── Error: Error:1 (tests.R:23:3) ───────────────────────────────────────────────
    Error: stop
    
    ── Error: errors get tracebacks (tests.R:31:3) ─────────────────────────────────
    Error: !
    Backtrace:
        █
     1. └─f()
     2.   └─g()
     3.     └─h()
    
    ── Skip: explicit skips are reported (tests.R:37:3) ────────────────────────────
    Reason: skip
    
    ── Skip: empty tests are implicitly skipped (tests.R:40:1) ─────────────────────
    Reason: empty test
    
    ── Warning: warnings get backtraces (tests.R:49:3) ─────────────────────────────
    def
    Backtrace:
        █
     1. └─f()
    
    ── Skipped tests  ──────────────────────────────────────────────────────────────
    ● empty test (1)
    ● skip (1)
    
    ══ testthat results  ═══════════════════════════════════════════════════════════
    [ OK: 1 | SKIPPED: 2 | WARNINGS: 1 | FAILED: 4 ]
    1. Failure: Failure:1 (tests.R:12:3)
    2. Failure: Failure:2a (tests.R:17:3)
    3. Error: Error:1 (tests.R:23:3)
    4. Error: errors get tracebacks (tests.R:31:3)
    5. Skip: explicit skips are reported (tests.R:37:3)
    6. Skip: empty tests are implicitly skipped (tests.R:40:1)
    7. Warning: warnings get backtraces (tests.R:49:3)
    

