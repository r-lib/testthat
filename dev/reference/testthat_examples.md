# Retrieve paths to built-in example test files

`testthat_examples()` retrieves path to directory of test files,
`testthat_example()` retrieves path to a single test file.

## Usage

``` r
testthat_examples()

testthat_example(filename)
```

## Arguments

- filename:

  Name of test file

## Examples

``` r
dir(testthat_examples())
#> [1] "_snaps"         "test-failure.R" "test-success.R"
testthat_example("success")
#> [1] "/home/runner/work/_temp/Library/testthat/examples/test-success.R"
```
