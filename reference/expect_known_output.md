# Do you expect the results/output to equal a known value?

For complex printed output and objects, it is often challenging to
describe exactly what you expect to see. `expect_known_value()` and
`expect_known_output()` provide a slightly weaker guarantee, simply
asserting that the values have not changed since the last time that you
ran them.

## Usage

``` r
expect_known_output(
  object,
  file,
  update = TRUE,
  ...,
  info = NULL,
  label = NULL,
  print = FALSE,
  width = 80
)

expect_known_value(
  object,
  file,
  update = TRUE,
  ...,
  info = NULL,
  label = NULL,
  version = 2
)

expect_known_hash(object, hash = NULL)
```

## Arguments

- file:

  File path where known value/output will be stored.

- update:

  Should the file be updated? Defaults to `TRUE`, with the expectation
  that you'll notice changes because of the first failure, and then see
  the modified files in git.

- ...:

  Passed on to
  [`waldo::compare()`](https://waldo.r-lib.org/reference/compare.html).

- info:

  Extra information to be included in the message. This argument is
  soft-deprecated and should not be used in new code. Instead see
  alternatives in
  [quasi_label](https://testthat.r-lib.org/reference/quasi_label.md).

- print:

  If `TRUE` and the result of evaluating `code` is visible, print the
  result using
  [`testthat_print()`](https://testthat.r-lib.org/reference/capture_output.md).

- width:

  Number of characters per line of output. This does not inherit from
  `getOption("width")` so that tests always use the same output width,
  minimising spurious differences.

- version:

  The serialization format version to use. The default, 2, was the
  default format from R 1.4.0 to 3.5.3. Version 3 became the default
  from R 3.6.0 and can only be read by R versions 3.5.0 and higher.

- hash:

  Known hash value. Leave empty and you'll be informed what to use in
  the test output.

## Details

These expectations should be used in conjunction with git, as otherwise
there is no way to revert to previous values. Git is particularly useful
in conjunction with `expect_known_output()` as the diffs will show you
exactly what has changed.

Note that known values updates will only be updated when running tests
interactively. `R CMD check` clones the package source so any changes to
the reference files will occur in a temporary directory, and will not be
synchronised back to the source package.

## 3rd edition

**\[deprecated\]**

`expect_known_output()` and friends are deprecated in the 3rd edition;
please use
[`expect_snapshot_output()`](https://testthat.r-lib.org/reference/expect_snapshot_output.md)
and friends instead.

## Examples

``` r
tmp <- tempfile()

# The first run always succeeds
expect_known_output(mtcars[1:10, ], tmp, print = TRUE)
#> Warning: `expect_known_output()` was deprecated in the 3rd edition.
#> ℹ Please use `expect_snapshot_output()` instead
#> Warning: Creating reference output.

# Subsequent runs will succeed only if the file is unchanged
# This will succeed:
expect_known_output(mtcars[1:10, ], tmp, print = TRUE)
#> Warning: `expect_known_output()` was deprecated in the 3rd edition.
#> ℹ Please use `expect_snapshot_output()` instead

if (FALSE) { # \dontrun{
# This will fail
expect_known_output(mtcars[1:9, ], tmp, print = TRUE)
} # }
```
