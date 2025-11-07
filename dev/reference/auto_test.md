# Watches code and tests for changes, rerunning tests as appropriate.

**\[superseded\]**

The idea behind `auto_test()` is that you just leave it running while
you develop your code. Every time you save a file it will be
automatically tested and you can easily see if your changes have caused
any test failures.

The current strategy for rerunning tests is as follows:

- if any code has changed, then those files are reloaded and all tests
  rerun

- otherwise, each new or modified test is run

## Usage

``` r
auto_test(
  code_path,
  test_path,
  reporter = default_reporter(),
  env = test_env(),
  hash = TRUE
)

auto_test_package(pkg = ".", reporter = default_reporter(), hash = TRUE)
```

## Arguments

- code_path:

  path to directory containing code

- test_path:

  path to directory containing tests

- reporter:

  test reporter to use

- env:

  environment in which to execute test suite.

- hash:

  Passed on to
  [`watch()`](https://testthat.r-lib.org/dev/reference/watch.md). When
  FALSE, uses less accurate modification time stamps, but those are
  faster for large files.

- pkg:

  path to package

## See also

`auto_test_package()`
