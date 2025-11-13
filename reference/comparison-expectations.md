# Do you expect a value bigger or smaller than this?

These functions compare values of comparable data types, such as
numbers, dates, and times.

## Usage

``` r
expect_lt(object, expected, label = NULL, expected.label = NULL)

expect_lte(object, expected, label = NULL, expected.label = NULL)

expect_gt(object, expected, label = NULL, expected.label = NULL)

expect_gte(object, expected, label = NULL, expected.label = NULL)
```

## Arguments

- object, expected:

  A value to compare and its expected bound.

- label, expected.label:

  Used to customise failure messages. For expert use only.

## See also

Other expectations:
[`equality-expectations`](https://testthat.r-lib.org/reference/equality-expectations.md),
[`expect_error()`](https://testthat.r-lib.org/reference/expect_error.md),
[`expect_length()`](https://testthat.r-lib.org/reference/expect_length.md),
[`expect_match()`](https://testthat.r-lib.org/reference/expect_match.md),
[`expect_named()`](https://testthat.r-lib.org/reference/expect_named.md),
[`expect_null()`](https://testthat.r-lib.org/reference/expect_null.md),
[`expect_output()`](https://testthat.r-lib.org/reference/expect_output.md),
[`expect_reference()`](https://testthat.r-lib.org/reference/expect_reference.md),
[`expect_silent()`](https://testthat.r-lib.org/reference/expect_silent.md),
[`inheritance-expectations`](https://testthat.r-lib.org/reference/inheritance-expectations.md),
[`logical-expectations`](https://testthat.r-lib.org/reference/logical-expectations.md)

## Examples

``` r
a <- 9
expect_lt(a, 10)

if (FALSE) { # \dontrun{
expect_lt(11, 10)
} # }

a <- 11
expect_gt(a, 10)
if (FALSE) { # \dontrun{
expect_gt(9, 10)
} # }
```
