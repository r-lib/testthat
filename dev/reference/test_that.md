# Run a test

A test encapsulates a series of expectations about a small,
self-contained unit of functionality. Each test contains one or more
expectations, such as
[`expect_equal()`](https://testthat.r-lib.org/dev/reference/equality-expectations.md)
or
[`expect_error()`](https://testthat.r-lib.org/dev/reference/expect_error.md),
and lives in a `test/testhat/test*` file, often together with other
tests that relate to the same function or set of functions.

Each test has its own execution environment, so an object created in a
test also dies with the test. Note that this cleanup does not happen
automatically for other aspects of global state, such as session options
or filesystem changes. Avoid changing global state, when possible, and
reverse any changes that you do make.

## Usage

``` r
test_that(desc, code)
```

## Arguments

- desc:

  Test name. Names should be brief, but evocative. It's common to write
  the description so that it reads like a natural sentence, e.g.
  `test_that("multiplication works", { ... })`.

- code:

  Test code containing expectations. Braces
  ([`{}`](https://rdrr.io/r/base/Paren.html)) should always be used in
  order to get accurate location data for test failures.

## Value

When run interactively, returns `invisible(TRUE)` if all tests pass,
otherwise throws an error.

## Examples

``` r
test_that("trigonometric functions match identities", {
  expect_equal(sin(pi / 4), 1 / sqrt(2))
  expect_equal(cos(pi / 4), 1 / sqrt(2))
  expect_equal(tan(pi / 4), 1)
})
#> Test passed with 3 successes 🎊.

if (FALSE) { # \dontrun{
test_that("trigonometric functions match identities", {
  expect_equal(sin(pi / 4), 1)
})
} # }
```
