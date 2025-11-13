# Do you expect `TRUE` or `FALSE`?

These are fall-back expectations that you can use when none of the other
more specific expectations apply. The disadvantage is that you may get a
less informative error message.

Attributes are ignored.

## Usage

``` r
expect_true(object, info = NULL, label = NULL)

expect_false(object, info = NULL, label = NULL)
```

## Arguments

- object:

  Object to test.

  Supports limited unquoting to make it easier to generate readable
  failures within a function or for loop. See
  [quasi_label](https://testthat.r-lib.org/reference/quasi_label.md) for
  more details.

- info:

  Extra information to be included in the message. This argument is
  soft-deprecated and should not be used in new code. Instead see
  alternatives in
  [quasi_label](https://testthat.r-lib.org/reference/quasi_label.md).

- label:

  Used to customise failure messages. For expert use only.

## See also

Other expectations:
[`comparison-expectations`](https://testthat.r-lib.org/reference/comparison-expectations.md),
[`equality-expectations`](https://testthat.r-lib.org/reference/equality-expectations.md),
[`expect_error()`](https://testthat.r-lib.org/reference/expect_error.md),
[`expect_length()`](https://testthat.r-lib.org/reference/expect_length.md),
[`expect_match()`](https://testthat.r-lib.org/reference/expect_match.md),
[`expect_named()`](https://testthat.r-lib.org/reference/expect_named.md),
[`expect_null()`](https://testthat.r-lib.org/reference/expect_null.md),
[`expect_output()`](https://testthat.r-lib.org/reference/expect_output.md),
[`expect_reference()`](https://testthat.r-lib.org/reference/expect_reference.md),
[`expect_silent()`](https://testthat.r-lib.org/reference/expect_silent.md),
[`inheritance-expectations`](https://testthat.r-lib.org/reference/inheritance-expectations.md)

## Examples

``` r
expect_true(2 == 2)
# Failed expectations will throw an error
show_failure(expect_true(2 != 2))
#> Failed expectation:
#> Expected `2 != 2` to be TRUE.
#> Differences:
#> `actual`:   FALSE
#> `expected`: TRUE 
#> 

# where possible, use more specific expectations, to get more informative
# error messages
a <- 1:4
show_failure(expect_true(length(a) == 3))
#> Failed expectation:
#> Expected `length(a) == 3` to be TRUE.
#> Differences:
#> `actual`:   FALSE
#> `expected`: TRUE 
#> 
show_failure(expect_equal(length(a), 3))
#> Failed expectation:
#> Expected `length(a)` to equal 3.
#> Differences:
#>   `actual`: 4.0
#> `expected`: 3.0
#> 

x <- c(TRUE, TRUE, FALSE, TRUE)
show_failure(expect_true(all(x)))
#> Failed expectation:
#> Expected `all(x)` to be TRUE.
#> Differences:
#> `actual`:   FALSE
#> `expected`: TRUE 
#> 
show_failure(expect_all_true(x))
#> Failed expectation:
#> Expected every element of `x` to equal TRUE.
#> Differences:
#> `actual`:   TRUE TRUE FALSE TRUE
#> `expected`: TRUE TRUE TRUE  TRUE
#> 
```
