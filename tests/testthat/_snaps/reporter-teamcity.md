# reporter basics work

    ##teamcity[testSuiteStarted name='Successes']
    ##teamcity[testSuiteStarted name='Success']
    ##teamcity[testStarted name='expectation 1']
    ##teamcity[testFinished name='expectation 1']
    ##teamcity[testSuiteFinished name='Success']
    
    ##teamcity[testSuiteFinished name='Successes']
    
    
    ##teamcity[testSuiteStarted name='Failures']
    ##teamcity[testSuiteStarted name='Failure:1']
    ##teamcity[testStarted name='expectation 1']
    ##teamcity[testFailed name='expectation 1' message='FALSE is not TRUE' details='|n`actual`:   FALSE|n`expected`: TRUE ']
    ##teamcity[testFinished name='expectation 1']
    ##teamcity[testSuiteFinished name='Failure:1']
    
    ##teamcity[testSuiteStarted name='Failure:2a']
    ##teamcity[testStarted name='expectation 1']
    ##teamcity[testFailed name='expectation 1' message='FALSE is not TRUE' details='|n`actual`:   FALSE|n`expected`: TRUE |nBacktrace:|n 1. f()|n      at reporters/tests.R:17:2|n 2. testthat::expect_true(FALSE)|n      at reporters/tests.R:16:7']
    ##teamcity[testFinished name='expectation 1']
    ##teamcity[testSuiteFinished name='Failure:2a']
    
    ##teamcity[testSuiteFinished name='Failures']
    
    
    ##teamcity[testSuiteStarted name='Errors']
    ##teamcity[testSuiteStarted name='Error:1']
    ##teamcity[testStarted name='expectation 1']
    ##teamcity[testFailed name='expectation 1' message='Error in `eval(code, test_env)`: stop' details='']
    ##teamcity[testFinished name='expectation 1']
    ##teamcity[testSuiteFinished name='Error:1']
    
    ##teamcity[testSuiteStarted name='errors get tracebacks']
    ##teamcity[testStarted name='expectation 1']
    ##teamcity[testFailed name='expectation 1' message='Error in `h()`: !' details='Backtrace:|n 1. f()|n      at reporters/tests.R:31:2|n 2. g()|n      at reporters/tests.R:27:7|n 3. h()|n      at reporters/tests.R:28:7']
    ##teamcity[testFinished name='expectation 1']
    ##teamcity[testSuiteFinished name='errors get tracebacks']
    
    ##teamcity[testSuiteFinished name='Errors']
    
    
    ##teamcity[testSuiteStarted name='Skips']
    ##teamcity[testSuiteStarted name='explicit skips are reported']
    ##teamcity[testIgnored name='expectation 1' message='Reason: skip']
    ##teamcity[testSuiteFinished name='explicit skips are reported']
    
    ##teamcity[testSuiteStarted name='empty tests are implicitly skipped']
    ##teamcity[testIgnored name='expectation 1' message='Reason: empty test']
    ##teamcity[testSuiteFinished name='empty tests are implicitly skipped']
    
    ##teamcity[testSuiteFinished name='Skips']
    
    
    ##teamcity[testSuiteStarted name='Warnings']
    ##teamcity[testSuiteStarted name='warnings get backtraces']
    ##teamcity[testStarted name='expectation 1']
    ##teamcity[testFinished name='expectation 1']
    ##teamcity[testIgnored name='expectation 2' message='Reason: empty test']
    ##teamcity[testSuiteFinished name='warnings get backtraces']
    
    ##teamcity[testSuiteFinished name='Warnings']
    
    

