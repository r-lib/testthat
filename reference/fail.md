# Declare that an expectation either passes or fails

These are the primitives that you can use to implement your own
expectations. Every path through an expectation should either call
`pass()`, `fail()`, or throw an error (e.g. if the arguments are
invalid). Expectations should always return `invisible(act$val)`.

Learn more about creating your own expectations in
[`vignette("custom-expectation")`](https://testthat.r-lib.org/articles/custom-expectation.md).

## Usage

``` r
fail(
  message = "Failure has been forced",
  info = NULL,
  srcref = NULL,
  trace_env = caller_env(),
  trace = NULL
)

pass()
```

## Arguments

- message:

  A character vector describing the failure. The first element should
  describe the expected value, and the second (and optionally
  subsequence) elements should describe what was actually seen.

- info:

  Character vector continuing additional information. Included for
  backward compatibility only and new expectations should not use it.

- srcref:

  Location of the failure. Should only needed to be explicitly supplied
  when you need to forward a srcref captured elsewhere.

- trace_env:

  If `trace` is not specified, this is used to generate an informative
  traceback for failures. You should only need to set this if you're
  calling `fail()` from a helper function; see
  [`vignette("custom-expectation")`](https://testthat.r-lib.org/articles/custom-expectation.md)
  for details.

- trace:

  An optional backtrace created by
  [`rlang::trace_back()`](https://rlang.r-lib.org/reference/trace_back.html).
  When supplied, the expectation is displayed with the backtrace. Expert
  use only.

## Examples

``` r
expect_length <- function(object, n) {
  act <- quasi_label(rlang::enquo(object), arg = "object")

  act_n <- length(act$val)
  if (act_n != n) {
    fail(sprintf("%s has length %i, not length %i.", act$lab, act_n, n))
  } else {
    pass()
  }

  invisible(act$val)
}
```
