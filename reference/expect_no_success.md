# Test for absence of success or failure

**\[deprecated\]**

These functions are deprecated because
[`expect_success()`](https://testthat.r-lib.org/reference/expect_success.md)
and
[`expect_failure()`](https://testthat.r-lib.org/reference/expect_success.md)
now test for exactly one success or no failures, and exactly one failure
and no successes.

## Usage

``` r
expect_no_success(expr)

expect_no_failure(expr)
```
