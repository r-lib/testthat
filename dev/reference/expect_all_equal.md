# Do you expect every value in a vector to have this value?

These expectations are similar to `expect_true(all(x == "x"))`,
`expect_true(all(x))` and `expect_true(all(!x))` but give more
informative failure messages if the expectations are not met.

## Usage

``` r
expect_all_equal(object, expected)

expect_all_true(object)

expect_all_false(object)
```

## Arguments

- object, expected:

  Computation and value to compare it to.

  Both arguments supports limited unquoting to make it easier to
  generate readable failures within a function or for loop. See
  [quasi_label](https://testthat.r-lib.org/dev/reference/quasi_label.md)
  for more details.

## Examples

``` r
x1 <- c(1, 1, 1, 1, 1, 1)
expect_all_equal(x1, 1)

x2 <- c(1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 2)
show_failure(expect_all_equal(x2, 1))
#> Failed expectation:
#> Expected every element of `x2` to equal 1.
#> Differences:
#>   `actual[1:7]`: 1.0 1.0 1.0 2.0 1.0 1.0 1.0
#> `expected[1:7]`: 1.0 1.0 1.0 1.0 1.0 1.0 1.0
#> 
#>   `actual[9:12]`: 1.0 1.0 1.0 2.0
#> `expected[9:12]`: 1.0 1.0 1.0 1.0
#> 

# expect_all_true() and expect_all_false() are helpers for common cases
set.seed(1016)
show_failure(expect_all_true(rpois(100, 10) < 20))
#> Failed expectation:
#> Expected every element of `rpois(100, 10) < 20` to equal TRUE.
#> Differences:
#> `actual[58:64]`:   TRUE TRUE TRUE FALSE TRUE TRUE TRUE
#> `expected[58:64]`: TRUE TRUE TRUE TRUE  TRUE TRUE TRUE
#> 
#> `actual[91:97]`:   TRUE TRUE TRUE FALSE TRUE TRUE TRUE
#> `expected[91:97]`: TRUE TRUE TRUE TRUE  TRUE TRUE TRUE
#> 
show_failure(expect_all_false(rpois(100, 10) > 20))
#> Failed expectation:
#> Expected every element of `rpois(100, 10) > 20` to equal FALSE.
#> Differences:
#> `actual[38:44]`:   FALSE FALSE FALSE TRUE  FALSE FALSE FALSE
#> `expected[38:44]`: FALSE FALSE FALSE FALSE FALSE FALSE FALSE
#> 
```
