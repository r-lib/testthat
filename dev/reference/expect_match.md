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
  [quasi_label](https://testthat.r-lib.org/dev/reference/quasi_label.md)
  for more details.

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

  `value`

  :   logical. If `FALSE`, a vector containing the (`integer`) indices
      of the matches determined by `grep` is returned, and if `TRUE`, a
      vector containing the matching elements themselves is returned.

  `useBytes`

  :   logical. If `TRUE` the matching is done byte-by-byte rather than
      character-by-character. See ‘Details’.

  `invert`

  :   logical. If `TRUE` return indices or values for elements that do
      *not* match.

  `replacement`

  :   a replacement for the matched pattern in `sub` and `gsub`. Coerced
      to character if possible. For `fixed = FALSE` this can include
      backreferences `"\1"` to `"\9"` to parenthesized subexpressions of
      `pattern`. For `perl = TRUE` only, it can also contain `"\U"` or
      `"\L"` to convert the rest of the replacement to upper or lower
      case and `"\E"` to end case conversion. If a character vector of
      length 2 or more is supplied, the first element is used with a
      warning. If `NA`, all elements in the result corresponding to
      matches will be set to `NA`.

- all:

  Should all elements of actual value match `regexp` (TRUE), or does
  only one need to match (FALSE).

- info:

  Extra information to be included in the message. This argument is
  soft-deprecated and should not be used in new code. Instead see
  alternatives in
  [quasi_label](https://testthat.r-lib.org/dev/reference/quasi_label.md).

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
[`comparison-expectations`](https://testthat.r-lib.org/dev/reference/comparison-expectations.md),
[`equality-expectations`](https://testthat.r-lib.org/dev/reference/equality-expectations.md),
[`expect_error()`](https://testthat.r-lib.org/dev/reference/expect_error.md),
[`expect_length()`](https://testthat.r-lib.org/dev/reference/expect_length.md),
[`expect_named()`](https://testthat.r-lib.org/dev/reference/expect_named.md),
[`expect_null()`](https://testthat.r-lib.org/dev/reference/expect_null.md),
[`expect_output()`](https://testthat.r-lib.org/dev/reference/expect_output.md),
[`expect_reference()`](https://testthat.r-lib.org/dev/reference/expect_reference.md),
[`expect_silent()`](https://testthat.r-lib.org/dev/reference/expect_silent.md),
[`inheritance-expectations`](https://testthat.r-lib.org/dev/reference/inheritance-expectations.md),
[`logical-expectations`](https://testthat.r-lib.org/dev/reference/logical-expectations.md)

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
