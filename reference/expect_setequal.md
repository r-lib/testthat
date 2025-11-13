# Do you expect a vector containing these values?

- `expect_setequal(x, y)` tests that every element of `x` occurs in `y`,
  and that every element of `y` occurs in `x`.

- `expect_contains(x, y)` tests that `x` contains every element of `y`
  (i.e. `y` is a subset of `x`).

- `expect_in(x, y)` tests that every element of `x` is in `y` (i.e. `x`
  is a subset of `y`).

- `expect_disjoint(x, y)` tests that no element of `x` is in `y` (i.e.
  `x` is disjoint from `y`).

- `expect_mapequal(x, y)` treats lists as if they are mappings between
  names and values. Concretely, checks that `x` and `y` have the same
  names, then checks that `x[names(y)]` equals `y`.

## Usage

``` r
expect_setequal(object, expected)

expect_mapequal(object, expected)

expect_contains(object, expected)

expect_in(object, expected)

expect_disjoint(object, expected)
```

## Arguments

- object, expected:

  Computation and value to compare it to.

  Both arguments supports limited unquoting to make it easier to
  generate readable failures within a function or for loop. See
  [quasi_label](https://testthat.r-lib.org/reference/quasi_label.md) for
  more details.

## Details

Note that `expect_setequal()` ignores names, and you will be warned if
both `object` and `expected` have them.

## Examples

``` r
expect_setequal(letters, rev(letters))
show_failure(expect_setequal(letters[-1], rev(letters)))
#> Failed expectation:
#> Expected `letters[-1]` to have the same values as `rev(letters)`.
#> Actual: "b", "c", "d", "e", "f", "g", "h", "i", "j", ...
#> Expected: "z", "y", "x", "w", "v", "u", "t", "s", "r", ...
#> Absent: "a"

x <- list(b = 2, a = 1)
expect_mapequal(x, list(a = 1, b = 2))
show_failure(expect_mapequal(x, list(a = 1)))
#> Failed expectation:
#> Expected `x` to have the same names as `list(a = 1)`.
#> Actual: "b", "a"
#> Expected: "a"
#> Needs: "b"
show_failure(expect_mapequal(x, list(a = 1, b = "x")))
#> Failed expectation:
#> Expected `x` to contain the same values as `list(a = 1, b = "x")`.
#> Differences:
#> `actual$b` is a double vector (2)
#> `expected$b` is a character vector ('x')
#> 
show_failure(expect_mapequal(x, list(a = 1, b = 2, c = 3)))
#> Failed expectation:
#> Expected `x` to have the same names as `list(a = 1, b = 2, c = 3)`.
#> Actual: "b", "a"
#> Expected: "a", "b", "c"
#> Absent: "c"
```
