# Do you expect an S3/S4/R6/S7 object that inherits from this class?

See <https://adv-r.hadley.nz/oo.html> for an overview of R's OO systems,
and the vocabulary used here.

- `expect_type(x, type)` checks that `typeof(x)` is `type`.

- `expect_s3_class(x, class)` checks that `x` is an S3 object that
  [`inherits()`](https://rdrr.io/r/base/class.html) from `class`

- `expect_s3_class(x, NA)` checks that `x` isn't an S3 object.

- `expect_s4_class(x, class)` checks that `x` is an S4 object that
  `is()` `class`.

- `expect_s4_class(x, NA)` checks that `x` isn't an S4 object.

- `expect_r6_class(x, class)` checks that `x` an R6 object that inherits
  from `class`.

- `expect_s7_class(x, Class)` checks that `x` is an S7 object that
  [`S7::S7_inherits()`](https://rconsortium.github.io/S7/reference/S7_inherits.html)
  from `Class`

See
[`expect_vector()`](https://testthat.r-lib.org/dev/reference/expect_vector.md)
for testing properties of objects created by vctrs.

## Usage

``` r
expect_type(object, type)

expect_s3_class(object, class, exact = FALSE)

expect_s4_class(object, class)

expect_r6_class(object, class)

expect_s7_class(object, class)
```

## Arguments

- object:

  Object to test.

  Supports limited unquoting to make it easier to generate readable
  failures within a function or for loop. See
  [quasi_label](https://testthat.r-lib.org/dev/reference/quasi_label.md)
  for more details.

- type:

  String giving base type (as returned by
  [`typeof()`](https://rdrr.io/r/base/typeof.html)).

- class:

  The required type varies depending on the function:

  - `expect_type()`: a string.

  - `expect_s3_class()`: a string or character vector. The behaviour of
    multiple values (i.e. a character vector) is controlled by the
    `exact` argument.

  - `expect_s4_class()`: a string.

  - `expect_r6_class()`: a string.

  - `expect_s7_class()`: an
    [`S7::S7_class()`](https://rconsortium.github.io/S7/reference/S7_class.html)
    object.

  For historical reasons, `expect_s3_class()` and `expect_s4_class()`
  also take `NA` to assert that the `object` is not an S3 or S4 object.

- exact:

  If `FALSE`, the default, checks that `object` inherits from any
  element of `class`. If `TRUE`, checks that object has a class that
  exactly matches `class`.

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
[`expect_silent()`](https://testthat.r-lib.org/dev/reference/expect_silent.md),
[`logical-expectations`](https://testthat.r-lib.org/dev/reference/logical-expectations.md)

## Examples

``` r
x <- data.frame(x = 1:10, y = "x", stringsAsFactors = TRUE)
# A data frame is an S3 object with class data.frame
expect_s3_class(x, "data.frame")
show_failure(expect_s4_class(x, "data.frame"))
#> Failed expectation:
#> Expected `x` to be an S4 object.
#> Actual OO type: S3.
# A data frame is built from a list:
expect_type(x, "list")

f <- factor(c("a", "b", "c"))
o <- ordered(f)

# Using multiple class names tests if the object inherits from any of them
expect_s3_class(f, c("ordered", "factor"))
# Use exact = TRUE to test for exact match
show_failure(expect_s3_class(f, c("ordered", "factor"), exact = TRUE))
#> Failed expectation:
#> Expected `f` to have class "ordered"/"factor".
#> Actual class: "factor".
expect_s3_class(o, c("ordered", "factor"), exact = TRUE)

# An integer vector is an atomic vector of type "integer"
expect_type(x$x, "integer")
# It is not an S3 object
show_failure(expect_s3_class(x$x, "integer"))
#> Failed expectation:
#> Expected `x$x` to be an S3 object.
#> Actual OO type: none.

# Above, we requested data.frame() converts strings to factors:
show_failure(expect_type(x$y, "character"))
#> Failed expectation:
#> Expected `x$y` to have type "character".
#> Actual type: "integer"
expect_s3_class(x$y, "factor")
expect_type(x$y, "integer")
```
