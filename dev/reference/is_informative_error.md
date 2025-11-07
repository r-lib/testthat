# Is an error informative?

**\[deprecated\]**

`is_informative_error()` is a generic predicate that indicates whether
testthat users should explicitly test for an error class. Since we no
longer recommend you do that, this generic has been deprecated.

## Usage

``` r
is_informative_error(x, ...)
```

## Arguments

- x:

  An error object.

- ...:

  These dots are for future extensions and must be empty.

## Details

A few classes are hard-coded as uninformative:

- `simpleError`

- `rlang_error` unless a subclass is detected

- `Rcpp::eval_error`

- `Rcpp::exception`
