# Do you expect the output/result to equal a known good value?

`expect_output_file()` behaves identically to
[`expect_known_output()`](https://testthat.r-lib.org/reference/expect_known_output.md).

## Usage

``` r
expect_output_file(
  object,
  file,
  update = TRUE,
  ...,
  info = NULL,
  label = NULL,
  print = FALSE,
  width = 80
)
```

## 3rd edition

**\[deprecated\]**

`expect_output_file()` is deprecated in the 3rd edition; please use
[`expect_snapshot_output()`](https://testthat.r-lib.org/reference/expect_snapshot_output.md)
and friends instead.
