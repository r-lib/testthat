# reporter as expected

    Start test: Success ('reporters/tests.R:5:22')
      'reporters/tests.R:6:3' [success]
    End test: Success
    
    Start test: Failure:1 ('reporters/tests.R:11:24')
      'reporters/tests.R:13:3' [failure]
    End test: Failure:1
    
    Start test: Failure:2a ('reporters/tests.R:16:25')
      'reporters/tests.R:17:8' [failure]
    End test: Failure:2a
    
    Start test: Error:1 ('reporters/tests.R:23:22')
      'reporters/tests.R:24:3' [error]
    End test: Error:1
    
    Start test: errors get tracebacks ('reporters/tests.R:27:36')
      'reporters/tests.R:30:8' [error]
    End test: errors get tracebacks
    
    Start test: explicit skips are reported ('reporters/tests.R:37:42')
      'reporters/tests.R:38:3' [skip]
    End test: explicit skips are reported
    
    Start test: empty tests are implicitly skipped ('reporters/tests.R:41:49')
      'reporters/tests.R:41:1' [skip]
    End test: empty tests are implicitly skipped
    
    Start test: warnings get backtraces ('reporters/tests.R:45:38')
      'reporters/tests.R:47:5' [warning]
      'reporters/tests.R:45:1' [skip]
    End test: warnings get backtraces
    

---

    Start test: x ('reporters/nested.R:1:15')
    Start test: x / y ('reporters/nested.R:2:17')
    Start test: x / y / z1 ('reporters/nested.R:3:20')
      'reporters/nested.R:4:7' [success]
    End test: x / y / z1
    
    Start test: x / y / z2 ('reporters/nested.R:7:20')
      'reporters/nested.R:8:7' [failure]
    End test: x / y / z2
    
    End test: x / y
    
    End test: x
    

