# Run code after all test files

This environment has no purpose other than as a handle for
[`withr::defer()`](https://withr.r-lib.org/reference/defer.html): use it
when you want to run code after all tests have been run. Typically,
you'll use `withr::defer(cleanup(), teardown_env())` immediately after
you've made a mess in a `setup-*.R` file.

## Usage

``` r
teardown_env()
```
