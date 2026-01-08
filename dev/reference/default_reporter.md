# Determine default reporters

These three functions are used to determine the default reporters used
for
[`test_dir()`](https://testthat.r-lib.org/dev/reference/test_dir.md),
[`test_file()`](https://testthat.r-lib.org/dev/reference/test_file.md),
and
[`test_package()`](https://testthat.r-lib.org/dev/reference/test_package.md):

- `default_reporter()` returns the default reporter for
  [`test_dir()`](https://testthat.r-lib.org/dev/reference/test_dir.md).
  If `parallel` is `TRUE`, it uses
  [ParallelProgressReporter](https://testthat.r-lib.org/dev/reference/ProgressReporter.md),
  which you can override with option
  `testthat.default_parallel_reporter`. If `parallel` is `FALSE`, it
  uses
  [ProgressReporter](https://testthat.r-lib.org/dev/reference/ProgressReporter.md),
  which you can override with option `testthat.default_reporter`.

- `default_compact_reporter()` returns the default reporter for
  [`test_file()`](https://testthat.r-lib.org/dev/reference/test_file.md).
  It defaults to
  [CompactProgressReporter](https://testthat.r-lib.org/dev/reference/ProgressReporter.md),
  which you can override with the `testthat.default_compact_reporter`
  option.

- `check_reporter()` returns the default reporter for
  [`test_package()`](https://testthat.r-lib.org/dev/reference/test_package.md).
  It defaults to
  [CheckReporter](https://testthat.r-lib.org/dev/reference/CheckReporter.md),
  which you can override with the `testthat.default_check_reporter`
  option.

Both `default_reporter()` and `default_compact_reporter()` will use
[LlmReporter](https://testthat.r-lib.org/dev/reference/LlmReporter.md)
if it appears that the tests are being run by a coding agent.

## Usage

``` r
default_reporter(parallel = FALSE)

default_compact_reporter()

check_reporter()
```

## Arguments

- parallel:

  If `TRUE`, return a reporter suitable for parallel testing.
