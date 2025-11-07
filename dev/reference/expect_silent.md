# Do you expect code to execute silently?

Checks that the code produces no output, messages, or warnings.

## Usage

``` r
expect_silent(object)
```

## Arguments

- object:

  Object to test.

  Supports limited unquoting to make it easier to generate readable
  failures within a function or for loop. See
  [quasi_label](https://testthat.r-lib.org/dev/reference/quasi_label.md)
  for more details.

## Value

The first argument, invisibly.

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
[`expect_reference()`](https://testthat.r-lib.org/dev/reference/expect_reference.md),
[`inheritance-expectations`](https://testthat.r-lib.org/dev/reference/inheritance-expectations.md),
[`logical-expectations`](https://testthat.r-lib.org/dev/reference/logical-expectations.md)

## Examples

``` r
expect_silent("123")

f <- function() {
  message("Hi!")
  warning("Hey!!")
  print("OY!!!")
}
if (FALSE) { # \dontrun{
expect_silent(f())
} # }
```
