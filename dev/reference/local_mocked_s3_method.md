# Mock S3 and S4 methods

These functions temporarily override S3 or S4 methods. They can mock
methods that don't already exist, or temporarily remove a method by
setting `definition = NULL`.

Learn more about mocking in
[`vignette("mocking")`](https://testthat.r-lib.org/dev/articles/mocking.md).

## Usage

``` r
local_mocked_s3_method(generic, signature, definition, frame = caller_env())

local_mocked_s4_method(generic, signature, definition, frame = caller_env())
```

## Arguments

- generic:

  A string giving the name of the generic.

- signature:

  A character vector giving the signature of the method.

- definition:

  A function providing the method definition, or `NULL` to temporarily
  remove the method.

- frame:

  Calling frame which determines the scope of the mock. Only needed when
  wrapping in another local helper.

## Examples

``` r
x <- as.POSIXlt(Sys.time())
local({
  local_mocked_s3_method("length", "POSIXlt", function(x) 42)
  length(x)
})
#> [1] 42

length(x)
#> [1] 1
```
