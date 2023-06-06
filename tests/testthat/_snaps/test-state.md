# set_state_inspector() verifies its inputs

    Code
      set_state_inspector(function(x) 123)
    Condition
      Error in `set_state_inspector()`:
      ! `callback` must be a zero-arg function, or NULL

# can detect state changes

    [ FAIL 0 | WARN 1 | SKIP 0 | PASS 1 ]
    
    == Warnings ====================================================================
    -- Warning ('reporters/state-change.R:1:1'): options ---------------------------
    Global state has changed:
    `before$x` is NULL
    `after$x` is a double vector (1)
    
    [ FAIL 0 | WARN 1 | SKIP 0 | PASS 1 ]

