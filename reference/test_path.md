# Locate a file in the testing directory

Many tests require some external file (e.g. a `.csv` if you're testing a
data import function) but the working directory varies depending on the
way that you're running the test (e.g. interactively, with
`devtools::test()`, or with `R CMD check`). `test_path()` understands
these variations and automatically generates a path relative to
`tests/testthat`, regardless of where that directory might reside
relative to the current working directory.

## Usage

``` r
test_path(...)
```

## Arguments

- ...:

  Character vectors giving path components.

## Value

A character vector giving the path.

## Examples

``` r
if (FALSE) { # \dontrun{
test_path("foo.csv")
test_path("data", "foo.csv")
} # }
```
