# Determine testing status

These functions help you determine if you code is running in a
particular testing context:

- `is_testing()` is `TRUE` inside a test.

- `is_snapshot()` is `TRUE` inside a snapshot test

- `is_checking()` is `TRUE` inside of `R CMD check` (i.e. by
  [`test_check()`](https://testthat.r-lib.org/reference/test_package.md)).

- `is_parallel()` is `TRUE` if the tests are run in parallel.

- `testing_package()` gives name of the package being tested.

A common use of these functions is to compute a default value for a
`quiet` argument with `is_testing() && !is_snapshot()`. In this case,
you'll want to avoid an run-time dependency on testthat, in which case
you should just copy the implementation of these functions into a
`utils.R` or similar.

## Usage

``` r
is_testing()

is_parallel()

is_checking()

is_snapshot()

testing_package()
```
