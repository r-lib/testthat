# Do you expect a vector with this size and/or prototype?

`expect_vector()` is a thin wrapper around
[`vctrs::vec_assert()`](https://vctrs.r-lib.org/reference/vec_assert.html),
converting the results of that function in to the expectations used by
testthat. This means that it used the vctrs of `ptype` (prototype) and
`size`. See details in <https://vctrs.r-lib.org/articles/type-size.html>

## Usage

``` r
expect_vector(object, ptype = NULL, size = NULL)
```

## Arguments

- object:

  Object to test.

  Supports limited unquoting to make it easier to generate readable
  failures within a function or for loop. See
  [quasi_label](https://testthat.r-lib.org/reference/quasi_label.md) for
  more details.

- ptype:

  (Optional) Vector prototype to test against. Should be a size-0
  (empty) generalised vector.

- size:

  (Optional) Size to check for.

## Examples

``` r
expect_vector(1:10, ptype = integer(), size = 10)
show_failure(expect_vector(1:10, ptype = integer(), size = 5))
#> Failed expectation:
#> `1:10` must have size 5, not size 10.
show_failure(expect_vector(1:10, ptype = character(), size = 5))
#> Failed expectation:
#> `1:10` must be a vector with type <character>.
#> Instead, it has type <integer>.
```
