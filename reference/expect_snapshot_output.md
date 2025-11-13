# Snapshot helpers

**\[questioning\]**

These snapshotting functions are questioning because they were developed
before
[`expect_snapshot()`](https://testthat.r-lib.org/reference/expect_snapshot.md)
and we're not sure that they still have a role to play.

- `expect_snapshot_output()` captures just output printed to the
  console.

- `expect_snapshot_error()` captures an error message and optionally
  checks its class.

- `expect_snapshot_warning()` captures a warning message and optionally
  checks its class.

## Usage

``` r
expect_snapshot_output(x, cran = FALSE, variant = NULL)

expect_snapshot_error(x, class = "error", cran = FALSE, variant = NULL)

expect_snapshot_warning(x, class = "warning", cran = FALSE, variant = NULL)
```

## Arguments

- x:

  Code to evaluate.

- cran:

  Should these expectations be verified on CRAN? By default, they are
  not, because snapshot tests tend to be fragile because they often rely
  on minor details of dependencies.

- variant:

  If non-`NULL`, results will be saved in `_snaps/{variant}/{test.md}`,
  so `variant` must be a single string suitable for use as a directory
  name.

  You can use variants to deal with cases where the snapshot output
  varies and you want to capture and test the variations. Common use
  cases include variations for operating system, R version, or version
  of key dependency. Variants are an advanced feature. When you use
  them, you'll need to carefully think about your testing strategy to
  ensure that all important variants are covered by automated tests, and
  ensure that you have a way to get snapshot changes out of your CI
  system and back into the repo.

  Note that there's no way to declare all possible variants up front
  which means that as soon as you start using variants, you are
  responsible for deleting snapshot variants that are no longer used.
  (testthat will still delete all variants if you delete the test.)

- class:

  Class of expected error or warning. The expectation will always fail
  (even on CRAN) if an error of this class isn't seen when executing
  `x`.
