# Find test files

Find test files

## Usage

``` r
find_test_scripts(
  path,
  filter = NULL,
  invert = FALSE,
  ...,
  full.names = TRUE,
  start_first = NULL
)
```

## Arguments

- path:

  path to tests

- filter:

  If not `NULL`, only tests with file names matching this regular
  expression will be executed. Matching is performed on the file name
  after it's stripped of `"test-"` and `".R"`.

- invert:

  If `TRUE` return files which **don't** match.

- ...:

  Additional arguments passed to
  [`grepl()`](https://rdrr.io/r/base/grep.html) to control filtering.

- start_first:

  A character vector of file patterns (globs, see
  [`utils::glob2rx()`](https://rdrr.io/r/utils/glob2rx.html)). The
  patterns are for the file names (base names), not for the whole paths.
  testthat starts the files matching the first pattern first, then the
  ones matching the second, etc. and then the rest of the files,
  alphabetically. Parallel tests tend to finish quicker if you start the
  slowest files first. `NULL` means alphabetical order.

## Value

A character vector of paths
