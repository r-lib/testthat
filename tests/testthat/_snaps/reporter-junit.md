# reporter doesn't change without warning

    <?xml version="1.0" encoding="UTF-8"?>
    <testsuites>
      <testsuite name="Successes" timestamp="1999:12:31 23:59:59" hostname="nodename" tests="1" skipped="0" failures="0" errors="0" time="0">
        <testcase time="0" classname="Successes" name="Success"/>
      </testsuite>
      <testsuite name="Failures" timestamp="1999:12:31 23:59:59" hostname="nodename" tests="2" skipped="0" failures="2" errors="0" time="0">
        <testcase time="0" classname="Failures" name="Failure_1">
          <failure type="failure" message="FALSE is not TRUE ('reporters/tests.R:12:3')">FALSE is not TRUE
    
    `actual`:   FALSE
    `expected`: TRUE </failure>
        </testcase>
        <testcase time="0" classname="Failures" name="Failure_2a">
          <failure type="failure" message="FALSE is not TRUE ('reporters/tests.R:17:3')">FALSE is not TRUE
    
    `actual`:   FALSE
    `expected`: TRUE 
    Backtrace:
        x
     1. \-f()
     2.   \-testthat::expect_true(FALSE)</failure>
        </testcase>
      </testsuite>
      <testsuite name="Errors" timestamp="1999:12:31 23:59:59" hostname="nodename" tests="2" skipped="0" failures="0" errors="2" time="0">
        <testcase time="0" classname="Errors" name="Error_1">
          <error type="error" message="Error in `eval(code, test_env)`: stop ('reporters/tests.R:23:3')">Error in `eval(code, test_env)`: stop</error>
        </testcase>
        <testcase time="0" classname="Errors" name="errors_get_tracebacks">
          <error type="error" message="Error in `h()`: ! ('reporters/tests.R:31:3')">Error in `h()`: !
    Backtrace:
        x
     1. \-f()
     2.   \-g()
     3.     \-h()</error>
        </testcase>
      </testsuite>
      <testsuite name="Skips" timestamp="1999:12:31 23:59:59" hostname="nodename" tests="2" skipped="2" failures="0" errors="0" time="0">
        <testcase time="0" classname="Skips" name="explicit_skips_are_reported">
          <skipped message="Reason: skip ('reporters/tests.R:37:3')"/>
        </testcase>
        <testcase time="0" classname="Skips" name="empty_tests_are_implicitly_skipped">
          <skipped message="Reason: empty test ('reporters/tests.R:40:1')"/>
        </testcase>
      </testsuite>
      <testsuite name="Warnings" timestamp="1999:12:31 23:59:59" hostname="nodename" tests="2" skipped="1" failures="0" errors="0" time="0">
        <testcase time="0" classname="Warnings" name="warnings_get_backtraces"/>
        <testcase time="0" classname="Warnings" name="warnings_get_backtraces">
          <skipped message="Reason: empty test ('reporters/tests.R:45:1')"/>
        </testcase>
      </testsuite>
    </testsuites>

