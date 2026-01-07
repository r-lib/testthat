# Report results in jUnit XML format

This reporter includes detailed results about each test and summaries,
written to a file (or stdout) in jUnit XML format. This can be read by
the Jenkins Continuous Integration System to report on a dashboard etc.
Requires the *xml2* package.

To fit into the jUnit structure,
[`context()`](https://testthat.r-lib.org/reference/context.md) becomes
the `<testsuite>` name as well as the base of the
`<testcase> classname`. The
[`test_that()`](https://testthat.r-lib.org/reference/test_that.md) name
becomes the rest of the `<testcase> classname`. The deparsed
[`expect_that()`](https://testthat.r-lib.org/reference/expect_that.md)
call becomes the `<testcase>` name. On failure, the message goes into
the `<failure>` node message argument (first line only) and into its
text content (full message). Execution time and some other details are
also recorded.

References for the jUnit XML format:
<https://github.com/testmoapp/junitxml>

## See also

Other reporters:
[`CheckReporter`](https://testthat.r-lib.org/reference/CheckReporter.md),
[`DebugReporter`](https://testthat.r-lib.org/reference/DebugReporter.md),
[`FailReporter`](https://testthat.r-lib.org/reference/FailReporter.md),
[`ListReporter`](https://testthat.r-lib.org/reference/ListReporter.md),
[`LlmReporter`](https://testthat.r-lib.org/reference/LlmReporter.md),
[`LocationReporter`](https://testthat.r-lib.org/reference/LocationReporter.md),
[`MinimalReporter`](https://testthat.r-lib.org/reference/MinimalReporter.md),
[`MultiReporter`](https://testthat.r-lib.org/reference/MultiReporter.md),
[`ProgressReporter`](https://testthat.r-lib.org/reference/ProgressReporter.md),
[`RStudioReporter`](https://testthat.r-lib.org/reference/RStudioReporter.md),
[`Reporter`](https://testthat.r-lib.org/reference/Reporter.md),
[`SilentReporter`](https://testthat.r-lib.org/reference/SilentReporter.md),
[`SlowReporter`](https://testthat.r-lib.org/reference/SlowReporter.md),
[`StopReporter`](https://testthat.r-lib.org/reference/StopReporter.md),
[`SummaryReporter`](https://testthat.r-lib.org/reference/SummaryReporter.md),
[`TapReporter`](https://testthat.r-lib.org/reference/TapReporter.md),
[`TeamcityReporter`](https://testthat.r-lib.org/reference/TeamcityReporter.md)
