# Do you expect this value?

These functions provide two levels of strictness when comparing a
computation to a reference value. `expect_identical()` is the baseline;
`expect_equal()` relaxes the test to ignore small numeric differences.

In the 2nd edition, `expect_identical()` uses
[`identical()`](https://rdrr.io/r/base/identical.html) and
`expect_equal` uses
[`all.equal()`](https://rdrr.io/r/base/all.equal.html). In the 3rd
edition, both functions use [waldo](https://github.com/r-lib/waldo).
They differ only in that `expect_equal()` sets
`tolerance = testthat_tolerance()` so that small floating point
differences are ignored; this also implies that (e.g.) `1` and `1L` are
treated as equal.

## Usage

``` r
expect_equal(
  object,
  expected,
  ...,
  tolerance = if (edition_get() >= 3) testthat_tolerance(),
  info = NULL,
  label = NULL,
  expected.label = NULL
)

expect_identical(
  object,
  expected,
  info = NULL,
  label = NULL,
  expected.label = NULL,
  ...
)
```

## Arguments

- object, expected:

  Computation and value to compare it to.

  Both arguments supports limited unquoting to make it easier to
  generate readable failures within a function or for loop. See
  [quasi_label](https://testthat.r-lib.org/reference/quasi_label.md) for
  more details.

- ...:

  **3e**: passed on to
  [`waldo::compare()`](https://waldo.r-lib.org/reference/compare.html).
  See its docs to see other ways to control comparison.

  **2e**: passed on to
  [`compare()`](https://testthat.r-lib.org/reference/compare.md)/[`identical()`](https://rdrr.io/r/base/identical.html).

- tolerance:

  **3e**: passed on to
  [`waldo::compare()`](https://waldo.r-lib.org/reference/compare.html).
  If non-`NULL`, will ignore small floating point differences. It uses
  same algorithm as
  [`all.equal()`](https://rdrr.io/r/base/all.equal.html) so the
  tolerance is usually relative (i.e.
  `mean(abs(x - y) / mean(abs(y)) < tolerance`), except when the
  differences are very small, when it becomes absolute (i.e.
  `mean(abs(x - y) < tolerance`). See waldo documentation for more
  details.

  **2e**: passed on to
  [`compare()`](https://testthat.r-lib.org/reference/compare.md), if
  set. It's hard to reason about exactly what tolerance means because
  depending on the precise code path it could be either an absolute or
  relative tolerance.

- info:

  Extra information to be included in the message. This argument is
  soft-deprecated and should not be used in new code. Instead see
  alternatives in
  [quasi_label](https://testthat.r-lib.org/reference/quasi_label.md).

- label, expected.label:

  Used to customise failure messages. For expert use only.

## See also

- [`expect_setequal()`](https://testthat.r-lib.org/reference/expect_setequal.md)/[`expect_mapequal()`](https://testthat.r-lib.org/reference/expect_setequal.md)
  to test for set equality.

- [`expect_reference()`](https://testthat.r-lib.org/reference/expect_reference.md)
  to test if two names point to same memory address.

Other expectations:
[`comparison-expectations`](https://testthat.r-lib.org/reference/comparison-expectations.md),
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
a <- 10
expect_equal(a, 10)

# Use expect_equal() when testing for numeric equality
if (FALSE) { # \dontrun{
expect_identical(sqrt(2) ^ 2, 2)
} # }
expect_equal(sqrt(2) ^ 2, 2)
```
