# Test package examples

These helper functions make it easier to test the examples in a package.
Each example counts as one test, and it succeeds if the code runs
without an error. Generally, this is redundant with R CMD check, and is
not recommended in routine practice.

## Usage

``` r
test_examples(path = "../..")

test_rd(rd, title = attr(rd, "Rdfile"))

test_example(path, title = path)
```

## Arguments

- path:

  For `test_examples()`, path to directory containing Rd files. For
  `test_example()`, path to a single Rd file. Remember the working
  directory for tests is `tests/testthat`.

- rd:

  A parsed Rd object, obtained from
  [`tools::Rd_db()`](https://rdrr.io/r/tools/Rdutils.html) or otherwise.

- title:

  Test title to use
