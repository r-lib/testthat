# Make an equality test.

This a convenience function to make a expectation that checks that input
stays the same.

## Usage

``` r
make_expectation(x, expectation = "equals")
```

## Arguments

- x:

  a vector of values

- expectation:

  the type of equality you want to test for (`"equals"`,
  `"is_equivalent_to"`, `"is_identical_to"`)

## Examples

``` r
x <- 1:10
make_expectation(x)
#> expect_equal(x, 1:10)

make_expectation(mtcars$mpg)
#> expect_equal(mtcars$mpg, c(21, 21, 22.8, 21.4, 18.7, 18.1, 14.3, 
#> 24.4, 22.8, 19.2, 17.8, 16.4, 17.3, 15.2, 10.4, 10.4, 14.7, 32.4, 
#> 30.4, 33.9, 21.5, 15.5, 15.2, 13.3, 19.2, 27.3, 26, 30.4, 15.8, 
#> 19.7, 15, 21.4))

df <- data.frame(x = 2)
make_expectation(df)
#> expect_equal(df, structure(list(x = 2), class = "data.frame", row.names = c(NA, 
#> -1L)))
```
