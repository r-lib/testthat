# Find slow tests

`SlowReporter` is designed to identify slow tests. It reports the
execution time for each test and can optionally filter out tests that
run faster than a specified threshold (default: 1 second). This reporter
is useful for performance optimization and identifying tests that may
benefit from optimization or parallelization.

`SlowReporter` is designed to identify slow tests. It reports the
execution time for each test, ignoring tests faster than a specified
threshold (default: 0.5s).

The easiest way to run it over your package is with
`devtools::test(reporter = "slow")`.

## See also

Other reporters:
[`CheckReporter`](https://testthat.r-lib.org/reference/CheckReporter.md),
[`DebugReporter`](https://testthat.r-lib.org/reference/DebugReporter.md),
[`FailReporter`](https://testthat.r-lib.org/reference/FailReporter.md),
[`JunitReporter`](https://testthat.r-lib.org/reference/JunitReporter.md),
[`ListReporter`](https://testthat.r-lib.org/reference/ListReporter.md),
[`LocationReporter`](https://testthat.r-lib.org/reference/LocationReporter.md),
[`MinimalReporter`](https://testthat.r-lib.org/reference/MinimalReporter.md),
[`MultiReporter`](https://testthat.r-lib.org/reference/MultiReporter.md),
[`ProgressReporter`](https://testthat.r-lib.org/reference/ProgressReporter.md),
[`RStudioReporter`](https://testthat.r-lib.org/reference/RStudioReporter.md),
[`Reporter`](https://testthat.r-lib.org/reference/Reporter.md),
[`SilentReporter`](https://testthat.r-lib.org/reference/SilentReporter.md),
[`StopReporter`](https://testthat.r-lib.org/reference/StopReporter.md),
[`SummaryReporter`](https://testthat.r-lib.org/reference/SummaryReporter.md),
[`TapReporter`](https://testthat.r-lib.org/reference/TapReporter.md),
[`TeamcityReporter`](https://testthat.r-lib.org/reference/TeamcityReporter.md)

Other reporters:
[`CheckReporter`](https://testthat.r-lib.org/reference/CheckReporter.md),
[`DebugReporter`](https://testthat.r-lib.org/reference/DebugReporter.md),
[`FailReporter`](https://testthat.r-lib.org/reference/FailReporter.md),
[`JunitReporter`](https://testthat.r-lib.org/reference/JunitReporter.md),
[`ListReporter`](https://testthat.r-lib.org/reference/ListReporter.md),
[`LocationReporter`](https://testthat.r-lib.org/reference/LocationReporter.md),
[`MinimalReporter`](https://testthat.r-lib.org/reference/MinimalReporter.md),
[`MultiReporter`](https://testthat.r-lib.org/reference/MultiReporter.md),
[`ProgressReporter`](https://testthat.r-lib.org/reference/ProgressReporter.md),
[`RStudioReporter`](https://testthat.r-lib.org/reference/RStudioReporter.md),
[`Reporter`](https://testthat.r-lib.org/reference/Reporter.md),
[`SilentReporter`](https://testthat.r-lib.org/reference/SilentReporter.md),
[`StopReporter`](https://testthat.r-lib.org/reference/StopReporter.md),
[`SummaryReporter`](https://testthat.r-lib.org/reference/SummaryReporter.md),
[`TapReporter`](https://testthat.r-lib.org/reference/TapReporter.md),
[`TeamcityReporter`](https://testthat.r-lib.org/reference/TeamcityReporter.md)
