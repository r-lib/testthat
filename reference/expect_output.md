# Do you expect printed output to match this pattern?

Test for output produced by
[`print()`](https://rdrr.io/r/base/print.html) or
[`cat()`](https://rdrr.io/r/base/cat.html). This is best used for very
simple output; for more complex cases use
[`expect_snapshot()`](https://testthat.r-lib.org/reference/expect_snapshot.md).

## Usage

``` r
expect_output(
  object,
  regexp = NULL,
  ...,
  info = NULL,
  label = NULL,
  width = 80
)
```

## Arguments

- object:

  Object to test.

  Supports limited unquoting to make it easier to generate readable
  failures within a function or for loop. See
  [quasi_label](https://testthat.r-lib.org/reference/quasi_label.md) for
  more details.

- regexp:

  Regular expression to test against.

  - A character vector giving a regular expression that must match the
    output.

  - If `NULL`, the default, asserts that there should output, but
    doesn't check for a specific value.

  - If `NA`, asserts that there should be no output.

- ...:

  Arguments passed on to
  [`expect_match`](https://testthat.r-lib.org/reference/expect_match.md)

  `all`

  :   Should all elements of actual value match `regexp` (TRUE), or does
      only one need to match (FALSE).

  `fixed`

  :   If `TRUE`, treats `regexp` as a string to be matched exactly (not
      a regular expressions). Overrides `perl`.

  `perl`

  :   logical. Should Perl-compatible regexps be used?

- info:

  Extra information to be included in the message. This argument is
  soft-deprecated and should not be used in new code. Instead see
  alternatives in
  [quasi_label](https://testthat.r-lib.org/reference/quasi_label.md).

- label:

  Used to customise failure messages. For expert use only.

- width:

  Number of characters per line of output. This does not inherit from
  `getOption("width")` so that tests always use the same output width,
  minimising spurious differences.

## Value

The first argument, invisibly.

## See also

Other expectations:
[`comparison-expectations`](https://testthat.r-lib.org/reference/comparison-expectations.md),
[`equality-expectations`](https://testthat.r-lib.org/reference/equality-expectations.md),
[`expect_error()`](https://testthat.r-lib.org/reference/expect_error.md),
[`expect_length()`](https://testthat.r-lib.org/reference/expect_length.md),
[`expect_match()`](https://testthat.r-lib.org/reference/expect_match.md),
[`expect_named()`](https://testthat.r-lib.org/reference/expect_named.md),
[`expect_null()`](https://testthat.r-lib.org/reference/expect_null.md),
[`expect_reference()`](https://testthat.r-lib.org/reference/expect_reference.md),
[`expect_silent()`](https://testthat.r-lib.org/reference/expect_silent.md),
[`inheritance-expectations`](https://testthat.r-lib.org/reference/inheritance-expectations.md),
[`logical-expectations`](https://testthat.r-lib.org/reference/logical-expectations.md)

## Examples

``` r
str(mtcars)
#> 'data.frame':    32 obs. of  11 variables:
#>  $ mpg : num  21 21 22.8 21.4 18.7 18.1 14.3 24.4 22.8 19.2 ...
#>  $ cyl : num  6 6 4 6 8 6 8 4 4 6 ...
#>  $ disp: num  160 160 108 258 360 ...
#>  $ hp  : num  110 110 93 110 175 105 245 62 95 123 ...
#>  $ drat: num  3.9 3.9 3.85 3.08 3.15 2.76 3.21 3.69 3.92 3.92 ...
#>  $ wt  : num  2.62 2.88 2.32 3.21 3.44 ...
#>  $ qsec: num  16.5 17 18.6 19.4 17 ...
#>  $ vs  : num  0 0 1 1 0 1 0 1 1 1 ...
#>  $ am  : num  1 1 1 0 0 0 0 0 0 0 ...
#>  $ gear: num  4 4 4 3 3 3 3 4 4 4 ...
#>  $ carb: num  4 4 1 1 2 1 4 2 2 4 ...
expect_output(str(mtcars), "32 obs")
expect_output(str(mtcars), "11 variables")

# You can use the arguments of grepl to control the matching
expect_output(str(mtcars), "11 VARIABLES", ignore.case = TRUE)
expect_output(str(mtcars), "$ mpg", fixed = TRUE)
```
