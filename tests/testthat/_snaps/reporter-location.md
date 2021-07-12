# reporter as expected

    Start test: Success
      tests.R:6:3 [success]
    End test: Success
    
    Start test: Failure:1
      tests.R:12:3 [failure]
    End test: Failure:1
    
    Start test: Failure:2a
      tests.R:17:3 [failure]
    End test: Failure:2a
    
    Start test: Error:1
      tests.R:23:3 [error]
    End test: Error:1
    
    Start test: errors get tracebacks
      tests.R:31:3 [error]
    End test: errors get tracebacks
    
    Start test: explicit skips are reported
      tests.R:37:3 [skip]
    End test: explicit skips are reported
    
    Start test: empty tests are implicitly skipped
      tests.R:40:1 [skip]
    End test: empty tests are implicitly skipped
    
    Start test: warnings get backtraces
      tests.R:49:3 [warning]
      tests.R:45:1 [skip]
    End test: warnings get backtraces
    

