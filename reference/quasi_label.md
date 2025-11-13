# Quasi-labelling

The first argument to every `expect_` function can use unquoting to
construct better labels. This makes it easy to create informative labels
when expectations are used inside a function or a for loop.
`quasi_label()` wraps up the details, returning the expression and
label.

## Usage

``` r
quasi_label(quo, label = NULL, arg = NULL)
```

## Arguments

- quo:

  A quosure created by
  [`rlang::enquo()`](https://rlang.r-lib.org/reference/enquo.html).

- label:

  An optional label to override the default. This is only provided for
  internal usage. Modern expectations should not include a `label`
  parameter.

- arg:

  Argument name shown in error message if `quo` is missing.

## Value

A list containing two elements:

- val:

  The evaluate value of `quo`

- lab:

  The quasiquoted label generated from `quo`

## Limitations

Because all `expect_` function use unquoting to generate more
informative labels, you can not use unquoting for other purposes.
Instead, you'll need to perform all other unquoting outside of the
expectation and only test the results.

## Examples

``` r
f <- function(i) if (i > 3) i * 9 else i * 10
i <- 10

# This sort of expression commonly occurs inside a for loop or function
# And the failure isn't helpful because you can't see the value of i
# that caused the problem:
show_failure(expect_equal(f(i), i * 10))
#> Failed expectation:
#> Expected `f(i)` to equal `i * 10`.
#> Differences:
#>   `actual`:  90.0
#> `expected`: 100.0
#> 

# To overcome this issue, testthat allows you to unquote expressions using
# !!. This causes the failure message to show the value rather than the
# variable name
show_failure(expect_equal(f(!!i), !!(i * 10)))
#> Failed expectation:
#> Expected `f(10)` to equal 100.
#> Differences:
#>   `actual`:  90.0
#> `expected`: 100.0
#> 
```
