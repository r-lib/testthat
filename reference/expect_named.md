# Do you expect a vector with (these) names?

You can either check for the presence of names (leaving `expected`
blank), specific names (by supplying a vector of names), or absence of
names (with `NULL`).

## Usage

``` r
expect_named(
  object,
  expected,
  ignore.order = FALSE,
  ignore.case = FALSE,
  info = NULL,
  label = NULL
)
```

## Arguments

- object:

  Object to test.

  Supports limited unquoting to make it easier to generate readable
  failures within a function or for loop. See
  [quasi_label](https://testthat.r-lib.org/reference/quasi_label.md) for
  more details.

- expected:

  Character vector of expected names. Leave missing to match any names.
  Use `NULL` to check for absence of names.

- ignore.order:

  If `TRUE`, sorts names before comparing to ignore the effect of order.

- ignore.case:

  If `TRUE`, lowercases all names to ignore the effect of case.

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
[`expect_null()`](https://testthat.r-lib.org/reference/expect_null.md),
[`expect_output()`](https://testthat.r-lib.org/reference/expect_output.md),
[`expect_reference()`](https://testthat.r-lib.org/reference/expect_reference.md),
[`expect_silent()`](https://testthat.r-lib.org/reference/expect_silent.md),
[`inheritance-expectations`](https://testthat.r-lib.org/reference/inheritance-expectations.md),
[`logical-expectations`](https://testthat.r-lib.org/reference/logical-expectations.md)

## Examples

``` r
x <- c(a = 1, b = 2, c = 3)
expect_named(x)
expect_named(x, c("a", "b", "c"))

# Use options to control sensitivity
expect_named(x, c("B", "C", "A"), ignore.order = TRUE, ignore.case = TRUE)

# Can also check for the absence of names with NULL
z <- 1:4
expect_named(z, NULL)
```
