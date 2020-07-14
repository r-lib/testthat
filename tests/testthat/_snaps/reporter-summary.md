## can control appearance of dots

    reporters/tests: 
    Successes: .
    Failures: 12
    Errors: 34
    Skips: SS
    Warnings: W
    
    ══ Skipped ═════════════════════════════════════════════════════════════════════
    1. explicit skips are reported (tests.R:37:3) - Reason: skip
    
    2. empty tests are implicitly skipped (tests.R:40:1) - Reason: empty test
    
    ══ Warnings ════════════════════════════════════════════════════════════════════
    1. warnings get backtraces (tests.R:49:3) - def
    
    ══ Failed ══════════════════════════════════════════════════════════════════════
    ── 1. Failure: Failure:1 (tests.R:12:3) ────────────────────────────────────────
    FALSE isn't true.
    
    ── 2. Failure: Failure:2a (tests.R:17:3) ───────────────────────────────────────
    FALSE isn't true.
    
    ── 3. Error: Error:1 (tests.R:23:3) ────────────────────────────────────────────
    Error: stop
    
    ── 4. Error: errors get tracebacks (tests.R:31:3) ──────────────────────────────
    Error: !
    Backtrace:
     1. f()
     2. g()
     3. h()
    
    ══ DONE ════════════════════════════════════════════════════════════════════════

---

    reporters/tests: 
    Successes: 
    Failures: 12
    Errors: 34
    Skips: SS
    Warnings: W
    
    ══ Skipped ═════════════════════════════════════════════════════════════════════
    1. explicit skips are reported (tests.R:37:3) - Reason: skip
    
    2. empty tests are implicitly skipped (tests.R:40:1) - Reason: empty test
    
    ══ Warnings ════════════════════════════════════════════════════════════════════
    1. warnings get backtraces (tests.R:49:3) - def
    
    ══ Failed ══════════════════════════════════════════════════════════════════════
    ── 1. Failure: Failure:1 (tests.R:12:3) ────────────────────────────────────────
    FALSE isn't true.
    
    ── 2. Failure: Failure:2a (tests.R:17:3) ───────────────────────────────────────
    FALSE isn't true.
    
    ── 3. Error: Error:1 (tests.R:23:3) ────────────────────────────────────────────
    Error: stop
    
    ── 4. Error: errors get tracebacks (tests.R:31:3) ──────────────────────────────
    Error: !
    Backtrace:
     1. f()
     2. g()
     3. h()
    
    ══ DONE ════════════════════════════════════════════════════════════════════════

## can control maximum reports

    reporters/tests: 
    Successes: .
    Failures: 12
    Errors: 34
    Skips: SS
    Warnings: W
    
    ══ Skipped ═════════════════════════════════════════════════════════════════════
    1. explicit skips are reported (tests.R:37:3) - Reason: skip
    
    2. empty tests are implicitly skipped (tests.R:40:1) - Reason: empty test
    
    ══ Warnings ════════════════════════════════════════════════════════════════════
    1. warnings get backtraces (tests.R:49:3) - def
    
    ══ Failed ══════════════════════════════════════════════════════════════════════
    ── 1. Failure: Failure:1 (tests.R:12:3) ────────────────────────────────────────
    FALSE isn't true.
    
    ── 2. Failure: Failure:2a (tests.R:17:3) ───────────────────────────────────────
    FALSE isn't true.
      ... and 2 more
    
    
    Maximum number of 2 failures reached, some test results may be missing.
    
    ══ DONE ════════════════════════════════════════════════════════════════════════

