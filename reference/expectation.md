# Expectation conditions

`new_expectation()` creates an expectation condition object and
`exp_signal()` signals it. `expectation()` does both. `is.expectation()`
tests if a captured condition is a testthat expectation.

These functions are primarily for internal use. If you are creating your
own expectation, you do not need these functions are instead should use
[`pass()`](https://testthat.r-lib.org/reference/fail.md) or
[`fail()`](https://testthat.r-lib.org/reference/fail.md). See
[`vignette("custom-expectation")`](https://testthat.r-lib.org/articles/custom-expectation.md)
for more details.

## Usage

``` r
expectation(type, message, ..., srcref = NULL, trace = NULL)

new_expectation(
  type,
  message,
  ...,
  srcref = NULL,
  trace = NULL,
  .subclass = NULL
)

exp_signal(exp)

is.expectation(x)
```

## Arguments

- type:

  Expectation type. Must be one of "success", "failure", "error",
  "skip", "warning".

- message:

  Message describing test failure

- ...:

  Additional attributes for the expectation object.

- srcref:

  Optional `srcref` giving location of test.

- trace:

  An optional backtrace created by
  [`rlang::trace_back()`](https://rlang.r-lib.org/reference/trace_back.html).
  When supplied, the expectation is displayed with the backtrace. Expert
  use only.

- .subclass:

  An optional subclass for the expectation object.

- exp:

  An expectation object, as created by `new_expectation()`.

- x:

  object to test for class membership
