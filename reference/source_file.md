# Source a file, directory of files, or various important subsets

These are used by
[`test_dir()`](https://testthat.r-lib.org/reference/test_dir.md) and
friends

## Usage

``` r
source_file(
  path,
  env = test_env(),
  chdir = TRUE,
  desc = NULL,
  wrap = TRUE,
  shuffle = FALSE,
  error_call = caller_env()
)

source_dir(
  path,
  pattern = "\\.[rR]$",
  env = test_env(),
  chdir = TRUE,
  wrap = TRUE,
  shuffle = FALSE
)

source_test_helpers(path = "tests/testthat", env = test_env())

source_test_setup(path = "tests/testthat", env = test_env())

source_test_teardown(path = "tests/testthat", env = test_env())
```

## Arguments

- path:

  Path to files.

- env:

  Environment in which to evaluate code.

- chdir:

  Change working directory to `dirname(path)`?

- desc:

  A character vector used to filter tests. This is used to (recursively)
  filter the content of the file, so that only the non-test code up to
  and including the matching test is run.

- wrap:

  Automatically wrap all code within
  [`test_that()`](https://testthat.r-lib.org/reference/test_that.md)?
  This ensures that all expectations are reported, even if outside a
  test block.

- shuffle:

  If `TRUE`, randomly reorder the top-level expressions in the file.

- pattern:

  Regular expression used to filter files.
