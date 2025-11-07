# Do you expect a reference to this object?

`expect_reference()` compares the underlying memory addresses of two
symbols. It is for expert use only.

## Usage

``` r
expect_reference(
  object,
  expected,
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

- info:

  Extra information to be included in the message. This argument is
  soft-deprecated and should not be used in new code. Instead see
  alternatives in
  [quasi_label](https://testthat.r-lib.org/dev/reference/quasi_label.md).

- label, expected.label:

  Used to customise failure messages. For expert use only.

## 3rd edition

**\[deprecated\]**

`expect_reference()` is deprecated in the third edition. If you know
what you're doing, and you really need this behaviour, just use
`is_reference()` directly: `expect_true(rlang::is_reference(x, y))`.

## See also

Other expectations:
[`comparison-expectations`](https://testthat.r-lib.org/dev/reference/comparison-expectations.md),
[`equality-expectations`](https://testthat.r-lib.org/dev/reference/equality-expectations.md),
[`expect_error()`](https://testthat.r-lib.org/dev/reference/expect_error.md),
[`expect_length()`](https://testthat.r-lib.org/dev/reference/expect_length.md),
[`expect_match()`](https://testthat.r-lib.org/dev/reference/expect_match.md),
[`expect_named()`](https://testthat.r-lib.org/dev/reference/expect_named.md),
[`expect_null()`](https://testthat.r-lib.org/dev/reference/expect_null.md),
[`expect_output()`](https://testthat.r-lib.org/dev/reference/expect_output.md),
[`expect_silent()`](https://testthat.r-lib.org/dev/reference/expect_silent.md),
[`inheritance-expectations`](https://testthat.r-lib.org/dev/reference/inheritance-expectations.md),
[`logical-expectations`](https://testthat.r-lib.org/dev/reference/logical-expectations.md)
