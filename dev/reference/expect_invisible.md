# Do you expect the result to be (in)visible?

Use this to test whether a function returns a visible or invisible
output. Typically you'll use this to check that functions called
primarily for their side-effects return their data argument invisibly.

## Usage

``` r
expect_invisible(call, label = NULL)

expect_visible(call, label = NULL)
```

## Arguments

- call:

  A function call.

- label:

  Used to customise failure messages. For expert use only.

## Value

The evaluated `call`, invisibly.

## Examples

``` r
expect_invisible(x <- 10)
expect_visible(x)

# Typically you'll assign the result of the expectation so you can
# also check that the value is as you expect.
greet <- function(name) {
  message("Hi ", name)
  invisible(name)
}
out <- expect_invisible(greet("Hadley"))
#> Hi Hadley
expect_equal(out, "Hadley")
```
