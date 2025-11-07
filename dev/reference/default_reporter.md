# Retrieve the default reporter

The defaults are:

- [ProgressReporter](https://testthat.r-lib.org/dev/reference/ProgressReporter.md)
  for interactive, non-parallel; override with
  `testthat.default_reporter`

- [ParallelProgressReporter](https://testthat.r-lib.org/dev/reference/ProgressReporter.md)
  for interactive, parallel packages; override with
  `testthat.default_parallel_reporter`

- [CompactProgressReporter](https://testthat.r-lib.org/dev/reference/ProgressReporter.md)
  for single-file interactive; override with
  `testthat.default_compact_reporter`

- [CheckReporter](https://testthat.r-lib.org/dev/reference/CheckReporter.md)
  for R CMD check; override with `testthat.default_check_reporter`

## Usage

``` r
default_reporter()

default_parallel_reporter()

default_compact_reporter()

check_reporter()
```
