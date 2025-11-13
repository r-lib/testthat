# Do you expect to inherit from this class?

**\[superseded\]**

`expect_is()` is an older form that uses
[`inherits()`](https://rdrr.io/r/base/class.html) without checking
whether `x` is S3, S4, or neither. Instead, I'd recommend using
[`expect_type()`](https://testthat.r-lib.org/reference/inheritance-expectations.md),
[`expect_s3_class()`](https://testthat.r-lib.org/reference/inheritance-expectations.md),
or
[`expect_s4_class()`](https://testthat.r-lib.org/reference/inheritance-expectations.md)
to more clearly convey your intent.

## Usage

``` r
expect_is(object, class, info = NULL, label = NULL)
```

## Arguments

- object:

  Object to test.

  Supports limited unquoting to make it easier to generate readable
  failures within a function or for loop. See
  [quasi_label](https://testthat.r-lib.org/reference/quasi_label.md) for
  more details.

- class:

  Class name passed to
  [`inherits()`](https://rdrr.io/r/base/class.html).

## 3rd edition

**\[deprecated\]**

`expect_is()` is formally deprecated in the 3rd edition.
