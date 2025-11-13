# Test your custom expectations

`expect_success()` checks that there's exactly one success and no
failures; `expect_failure()` checks that there's exactly one failure and
no successes. `expect_snapshot_failure()` records the failure message so
that you can manually check that it is informative.

Use `show_failure()` in examples to print the failure message without
throwing an error.

## Usage

``` r
expect_success(expr)

expect_failure(expr, message = NULL, ...)

expect_snapshot_failure(expr)

show_failure(expr)
```

## Arguments

- expr:

  Code to evaluate

- message:

  Check that the failure message matches this regexp.

- ...:

  Other arguments passed on to
  [`expect_match()`](https://testthat.r-lib.org/reference/expect_match.md).
