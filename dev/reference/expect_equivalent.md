# Is an object equal to the expected value, ignoring attributes?

Compares `object` and `expected` using
[`all.equal()`](https://rdrr.io/r/base/all.equal.html) and
`check.attributes = FALSE`.

## Usage

``` r
expect_equivalent(
  object,
  expected,
  ...,
  info = NULL,
  label = NULL,
  expected.label = NULL
)
```

## Arguments

- object, expected:

  Computation and value to compare it to.

  Both arguments supports limited unquoting to make it easier to
  generate readable failures within a function or for loop. See
  [quasi_label](https://testthat.r-lib.org/dev/reference/quasi_label.md)
  for more details.

- ...:

  Passed on to
  [`compare()`](https://testthat.r-lib.org/dev/reference/compare.md).

- info:

  Extra information to be included in the message. This argument is
  soft-deprecated and should not be used in new code. Instead see
  alternatives in
  [quasi_label](https://testthat.r-lib.org/dev/reference/quasi_label.md).

- label, expected.label:

  Used to customise failure messages. For expert use only.

## 3rd edition

**\[deprecated\]**

`expect_equivalent()` is deprecated in the 3rd edition. Instead use
`expect_equal(ignore_attr = TRUE)`.

## Examples

``` r
#' # expect_equivalent() ignores attributes
a <- b <- 1:3
names(b) <- letters[1:3]
if (FALSE) { # \dontrun{
expect_equal(a, b)
} # }
expect_equivalent(a, b)
#> Warning: `expect_equivalent()` was deprecated in the 3rd edition.
#> ℹ Use expect_equal(ignore_attr = TRUE)
```
