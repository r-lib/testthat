# Do you expect a string to match this pattern?

Do you expect a string to match this pattern?

## Usage

``` r
expect_match(
  object,
  regexp,
  perl = FALSE,
  fixed = FALSE,
  ...,
  all = TRUE,
  info = NULL,
  label = NULL
)

expect_no_match(
  object,
  regexp,
  perl = FALSE,
  fixed = FALSE,
  ...,
  all = TRUE,
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

- regexp:

  Regular expression to test against.

- perl:

  logical. Should Perl-compatible regexps be used?

- fixed:

  If `TRUE`, treats `regexp` as a string to be matched exactly (not a
  regular expressions). Overrides `perl`.

- ...:

  Arguments passed on to
  [`base::grepl`](https://rdrr.io/r/base/grep.html)

  `ignore.case`

  :   logical. if `FALSE`, the pattern matching is *case sensitive* and
      if `TRUE`, case is ignored during matching.

  `useBytes`

  :   logical. If `TRUE` the matching is done byte-by-byte rather than
      character-by-character. See ‘Details’.

- all:

  Should all elements of actual value match `regexp` (TRUE), or does
  only one need to match (FALSE).

- info:

  Extra information to be included in the message. This argument is
  soft-deprecated and should not be used in new code. Instead see
  alternatives in
  [quasi_label](https://testthat.r-lib.org/reference/quasi_label.md).

- label:

  Used to customise failure messages. For expert use only.

## Details

`expect_match()` checks if a character vector matches a regular
expression, powered by [`grepl()`](https://rdrr.io/r/base/grep.html).

`expect_no_match()` provides the complementary case, checking that a
character vector *does not* match a regular expression.

## Functions

- `expect_no_match()`: Check that a string doesn't match a regular
  expression.

## See also

Other expectations:
[`comparison-expectations`](https://testthat.r-lib.org/reference/comparison-expectations.md),
[`equality-expectations`](https://testthat.r-lib.org/reference/equality-expectations.md),
[`expect_error()`](https://testthat.r-lib.org/reference/expect_error.md),
[`expect_length()`](https://testthat.r-lib.org/reference/expect_length.md),
[`expect_named()`](https://testthat.r-lib.org/reference/expect_named.md),
[`expect_null()`](https://testthat.r-lib.org/reference/expect_null.md),
[`expect_output()`](https://testthat.r-lib.org/reference/expect_output.md),
[`expect_reference()`](https://testthat.r-lib.org/reference/expect_reference.md),
[`expect_silent()`](https://testthat.r-lib.org/reference/expect_silent.md),
[`inheritance-expectations`](https://testthat.r-lib.org/reference/inheritance-expectations.md),
[`logical-expectations`](https://testthat.r-lib.org/reference/logical-expectations.md)

## Examples

``` r
expect_match("Testing is fun", "fun")
expect_match("Testing is fun", "f.n")
expect_no_match("Testing is fun", "horrible")

show_failure(expect_match("Testing is fun", "horrible"))
#> Failed expectation:
#> Expected "Testing is fun" to match regexp "horrible".
#> Actual text:
#> ✖ │ Testing is fun
show_failure(expect_match("Testing is fun", "horrible", fixed = TRUE))
#> Failed expectation:
#> Expected "Testing is fun" to match string "horrible".
#> Actual text:
#> ✖ │ Testing is fun

# Zero-length inputs always fail
show_failure(expect_match(character(), "."))
#> Failed expectation:
#> Expected `character()` to have at least one element.
```
