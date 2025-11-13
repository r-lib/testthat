# The previous building block of all `expect_` functions

Previously, we recommended using `expect()` when writing your own
expectations. Now we instead recommend
[`pass()`](https://testthat.r-lib.org/reference/fail.md) and
[`fail()`](https://testthat.r-lib.org/reference/fail.md). See
[`vignette("custom-expectation")`](https://testthat.r-lib.org/articles/custom-expectation.md)
for details.

## Usage

``` r
expect(
  ok,
  failure_message,
  info = NULL,
  srcref = NULL,
  trace = NULL,
  trace_env = caller_env()
)
```

## Arguments

- ok:

  `TRUE` or `FALSE` indicating if the expectation was successful.

- failure_message:

  A character vector describing the failure. The first element should
  describe the expected value, and the second (and optionally
  subsequence) elements should describe what was actually seen.

- info:

  Character vector continuing additional information. Included for
  backward compatibility only and new expectations should not use it.

- srcref:

  Location of the failure. Should only needed to be explicitly supplied
  when you need to forward a srcref captured elsewhere.

- trace:

  An optional backtrace created by
  [`rlang::trace_back()`](https://rlang.r-lib.org/reference/trace_back.html).
  When supplied, the expectation is displayed with the backtrace. Expert
  use only.

- trace_env:

  If `trace` is not specified, this is used to generate an informative
  traceback for failures. You should only need to set this if you're
  calling [`fail()`](https://testthat.r-lib.org/reference/fail.md) from
  a helper function; see
  [`vignette("custom-expectation")`](https://testthat.r-lib.org/articles/custom-expectation.md)
  for details.

## Value

An expectation object from either
[`succeed()`](https://testthat.r-lib.org/reference/succeed.md) or
[`fail()`](https://testthat.r-lib.org/reference/fail.md). with a
`muffle_expectation` restart.

## See also

[`exp_signal()`](https://testthat.r-lib.org/reference/expectation.md)
