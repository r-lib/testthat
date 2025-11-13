# Report progress interactively

`ProgressReporter` is designed for interactive use. Its goal is to give
you actionable insights to help you understand the status of your code.
This reporter also praises you from time-to-time if all your tests pass.
It's the default reporter for
[`test_dir()`](https://testthat.r-lib.org/reference/test_dir.md).

`ParallelProgressReporter` is very similar to `ProgressReporter`, but
works better for packages that want parallel tests.

`CompactProgressReporter` is a minimal version of `ProgressReporter`
designed for use with single files. It's the default reporter for
[`test_file()`](https://testthat.r-lib.org/reference/test_file.md).

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
[`RStudioReporter`](https://testthat.r-lib.org/reference/RStudioReporter.md),
[`Reporter`](https://testthat.r-lib.org/reference/Reporter.md),
[`SilentReporter`](https://testthat.r-lib.org/reference/SilentReporter.md),
[`SlowReporter`](https://testthat.r-lib.org/reference/SlowReporter.md),
[`StopReporter`](https://testthat.r-lib.org/reference/StopReporter.md),
[`SummaryReporter`](https://testthat.r-lib.org/reference/SummaryReporter.md),
[`TapReporter`](https://testthat.r-lib.org/reference/TapReporter.md),
[`TeamcityReporter`](https://testthat.r-lib.org/reference/TeamcityReporter.md)
