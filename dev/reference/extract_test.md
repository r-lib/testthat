# Extract a reprex from a failed expectation

`extract_test()` creates a minimal reprex for a failed expectation. It
extracts all non-test code before the failed expectation as well as all
code inside the test up to and including the failed expectation.

This is particularly useful when you're debugging test failures in
someone else's package.

## Usage

``` r
extract_test(location, path = stdout(), package = Sys.getenv("TESTTHAT_PKG"))
```

## Arguments

- location:

  A string giving the location in the form `FILE:LINE[:COLUMN]`.

- path:

  Path to write the reprex to. Defaults to
  [`stdout()`](https://rdrr.io/r/base/showConnections.html).

- package:

  If supplied, will be used to construct a test environment for the
  extracted code.

## Value

This function is called for its side effect of rendering a reprex to
`path`. This function will never error: if extraction fails, the error
message will be written to `path`.

## Examples

``` r
# If you see a test failure like this:
# ── Failure (test-extract.R:46:3): errors if can't find test ───────────────
# Expected FALSE to be TRUE.
# Differences:
# `actual`:   FALSE
# `expected`: TRUE

# You can run this:
if (FALSE) extract_test("test-extract.R:46:3") # \dontrun{}
# to see just the code needed to reproduce the failure
```
