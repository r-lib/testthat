# Mock a sequence of output from a function

Specify multiple return values for mocking

## Usage

``` r
mock_output_sequence(..., recycle = FALSE)
```

## Arguments

- ...:

  \<[`dynamic-dots`](https://rlang.r-lib.org/reference/dyn-dots.html)\>
  Values to return in sequence.

- recycle:

  whether to recycle. If `TRUE`, once all values have been returned,
  they will be returned again in sequence.

## Value

A function that you can use within
[`local_mocked_bindings()`](https://testthat.r-lib.org/reference/local_mocked_bindings.md)
and
[`with_mocked_bindings()`](https://testthat.r-lib.org/reference/local_mocked_bindings.md)

## See also

Other mocking:
[`local_mocked_bindings()`](https://testthat.r-lib.org/reference/local_mocked_bindings.md)

## Examples

``` r
# inside local_mocked_bindings()
if (FALSE) { # \dontrun{
local_mocked_bindings(readline = mock_output_sequence("3", "This is a note", "n"))
} # }
# for understanding
mocked_sequence <- mock_output_sequence("3", "This is a note", "n")
mocked_sequence()
#> [1] "3"
mocked_sequence()
#> [1] "This is a note"
mocked_sequence()
#> [1] "n"
try(mocked_sequence())
#> Error in mocked_sequence() : Can't find value for 4th iteration.
#> ℹ `...` has only 3 values.
#> ℹ You can set `recycle` to `TRUE`.
recycled_mocked_sequence <- mock_output_sequence(
  "3", "This is a note", "n",
  recycle = TRUE
)
recycled_mocked_sequence()
#> [1] "3"
recycled_mocked_sequence()
#> [1] "This is a note"
recycled_mocked_sequence()
#> [1] "n"
recycled_mocked_sequence()
#> [1] "3"
```
