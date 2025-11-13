# Simulate a test environment

This function is designed to allow you to simulate testthat's testing
environment in an interactive session. To undo it's affect, you will
need to restart your R session.

## Usage

``` r
simulate_test_env(package, path)
```

## Arguments

- package:

  Name of installed package.

- path:

  Path to `tests/testthat`.
