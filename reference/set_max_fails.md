# Set maximum number of test failures allowed before aborting the run

This sets the `TESTTHAT_MAX_FAILS` env var which will affect both the
current R process and any processes launched from it.

## Usage

``` r
set_max_fails(n)
```

## Arguments

- n:

  Maximum number of failures allowed.
