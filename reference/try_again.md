# Evaluate an expectation multiple times until it succeeds

If you have a flaky test, you can use `try_again()` to run it a few
times until it succeeds. In most cases, you are better fixing the
underlying cause of the flakeyness, but sometimes that's not possible.

## Usage

``` r
try_again(times, code)
```

## Arguments

- times:

  Number of times to retry.

- code:

  Code to evaluate.

## Examples

``` r
usually_return_1 <- function(i) {
  if (runif(1) < 0.1) 0 else 1
}

if (FALSE) { # \dontrun{
# 10% chance of failure:
expect_equal(usually_return_1(), 1)

# 1% chance of failure:
try_again(1, expect_equal(usually_return_1(), 1))

# 0.1% chance of failure:
try_again(2, expect_equal(usually_return_1(), 1))
} # }
```
