# Do you expect an object with this length or shape?

`expect_length()` inspects the
[`length()`](https://rdrr.io/r/base/length.html) of an object;
`expect_shape()` inspects the "shape" (i.e.
[`nrow()`](https://rdrr.io/r/base/nrow.html),
[`ncol()`](https://rdrr.io/r/base/nrow.html), or
[`dim()`](https://rdrr.io/r/base/dim.html)) of higher-dimensional
objects like data.frames, matrices, and arrays.

## Usage

``` r
expect_length(object, n)

expect_shape(object, ..., nrow, ncol, dim)
```

## Arguments

- object:

  Object to test.

  Supports limited unquoting to make it easier to generate readable
  failures within a function or for loop. See
  [quasi_label](https://testthat.r-lib.org/dev/reference/quasi_label.md)
  for more details.

- n:

  Expected length.

- ...:

  Not used; used to force naming of other arguments.

- nrow, ncol:

  Expected
  [`nrow()`](https://rdrr.io/r/base/nrow.html)/[`ncol()`](https://rdrr.io/r/base/nrow.html)
  of `object`.

- dim:

  Expected [`dim()`](https://rdrr.io/r/base/dim.html) of `object`.

## See also

[`expect_vector()`](https://testthat.r-lib.org/dev/reference/expect_vector.md)
to make assertions about the "size" of a vector.

Other expectations:
[`comparison-expectations`](https://testthat.r-lib.org/dev/reference/comparison-expectations.md),
[`equality-expectations`](https://testthat.r-lib.org/dev/reference/equality-expectations.md),
[`expect_error()`](https://testthat.r-lib.org/dev/reference/expect_error.md),
[`expect_match()`](https://testthat.r-lib.org/dev/reference/expect_match.md),
[`expect_named()`](https://testthat.r-lib.org/dev/reference/expect_named.md),
[`expect_null()`](https://testthat.r-lib.org/dev/reference/expect_null.md),
[`expect_output()`](https://testthat.r-lib.org/dev/reference/expect_output.md),
[`expect_reference()`](https://testthat.r-lib.org/dev/reference/expect_reference.md),
[`expect_silent()`](https://testthat.r-lib.org/dev/reference/expect_silent.md),
[`inheritance-expectations`](https://testthat.r-lib.org/dev/reference/inheritance-expectations.md),
[`logical-expectations`](https://testthat.r-lib.org/dev/reference/logical-expectations.md)

## Examples

``` r
expect_length(1, 1)
expect_length(1:10, 10)
show_failure(expect_length(1:10, 1))
#> Failed expectation:
#> Expected `1:10` to have length 1.
#> Actual length: 10.

x <- matrix(1:9, nrow = 3)
expect_shape(x, nrow = 3)
show_failure(expect_shape(x, nrow = 4))
#> Failed expectation:
#> Expected `x` to have 4 rows.
#> Actual rows: 3.
expect_shape(x, ncol = 3)
show_failure(expect_shape(x, ncol = 4))
#> Failed expectation:
#> Expected `x` to have 4 columns.
#> Actual columns: 3.
expect_shape(x, dim = c(3, 3))
show_failure(expect_shape(x, dim = c(3, 4, 5)))
#> Failed expectation:
#> Expected `x` to have 3 dimensions.
#> Actual dimensions: 2.
```
