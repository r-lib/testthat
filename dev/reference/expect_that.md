# Expect that a condition holds.

**\[superseded\]**

An old style of testing that's no longer encouraged.

## Usage

``` r
expect_that(object, condition, info = NULL, label = NULL)
```

## Arguments

- object:

  Object to test.

  Supports limited unquoting to make it easier to generate readable
  failures within a function or for loop. See
  [quasi_label](https://testthat.r-lib.org/dev/reference/quasi_label.md)
  for more details.

- condition, :

  a function that returns whether or not the condition is met, and if
  not, an error message to display.

- info:

  Extra information to be included in the message. This argument is
  soft-deprecated and should not be used in new code. Instead see
  alternatives in
  [quasi_label](https://testthat.r-lib.org/dev/reference/quasi_label.md).

- label:

  Used to customise failure messages. For expert use only.

## Value

the (internal) expectation result as an invisible list

## 3rd edition

**\[deprecated\]**

This style of testing is formally deprecated as of the 3rd edition. Use
a more specific `expect_` function instead.

## See also

[`fail()`](https://testthat.r-lib.org/dev/reference/fail.md) for an
expectation that always fails.

## Examples

``` r
expect_that(5 * 2, equals(10))
#> Warning: `expect_that()` was deprecated in the 3rd edition.
expect_that(sqrt(2) ^ 2, equals(2))
#> Warning: `expect_that()` was deprecated in the 3rd edition.
if (FALSE) { # \dontrun{
expect_that(sqrt(2) ^ 2, is_identical_to(2))
} # }
```
