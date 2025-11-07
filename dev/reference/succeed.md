# Mark a test as successful

This is an older version of
[`pass()`](https://testthat.r-lib.org/dev/reference/fail.md) that exists
for backwards compatibility. You should now use
[`pass()`](https://testthat.r-lib.org/dev/reference/fail.md) instead.

## Usage

``` r
succeed(message = "Success has been forced", info = NULL)
```

## Arguments

- message:

  A character vector describing the failure. The first element should
  describe the expected value, and the second (and optionally
  subsequence) elements should describe what was actually seen.

- info:

  Character vector continuing additional information. Included for
  backward compatibility only and new expectations should not use it.
