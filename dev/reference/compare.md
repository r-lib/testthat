# Provide human-readable comparison of two objects

**\[superseded\]**

`compare` is similar to
[`base::all.equal()`](https://rdrr.io/r/base/all.equal.html), but
somewhat buggy in its use of `tolerance`. Please use
[waldo](https://waldo.r-lib.org/) instead.

## Usage

``` r
compare(x, y, ...)

# Default S3 method
compare(x, y, ..., max_diffs = 9)

# S3 method for class 'character'
compare(
  x,
  y,
  check.attributes = TRUE,
  ...,
  max_diffs = 5,
  max_lines = 5,
  width = cli::console_width()
)

# S3 method for class 'numeric'
compare(
  x,
  y,
  tolerance = testthat_tolerance(),
  check.attributes = TRUE,
  ...,
  max_diffs = 9
)

# S3 method for class 'POSIXt'
compare(x, y, tolerance = 0.001, ..., max_diffs = 9)
```

## Arguments

- x, y:

  Objects to compare

- ...:

  Additional arguments used to control specifics of comparison

- max_diffs:

  Maximum number of differences to show

- check.attributes:

  If `TRUE`, also checks values of attributes.

- max_lines:

  Maximum number of lines to show from each difference

- width:

  Width of output device

- tolerance:

  Numerical tolerance: any differences (in the sense of
  [`base::all.equal()`](https://rdrr.io/r/base/all.equal.html)) smaller
  than this value will be ignored.

  The default tolerance is `sqrt(.Machine$double.eps)`, unless long
  doubles are not available, in which case the test is skipped.

## Examples

``` r
# Character -----------------------------------------------------------------
x <- c("abc", "def", "jih")
compare(x, x)
#> Equal

y <- paste0(x, "y")
compare(x, y)
#> 3/3 mismatches
#> x[1]: "abc"
#> y[1]: "abcy"
#> 
#> x[2]: "def"
#> y[2]: "defy"
#> 
#> x[3]: "jih"
#> y[3]: "jihy"

compare(letters, paste0(letters, "-"))
#> 26/26 mismatches
#> x[1]: "a"
#> y[1]: "a-"
#> 
#> x[2]: "b"
#> y[2]: "b-"
#> 
#> x[3]: "c"
#> y[3]: "c-"
#> 
#> x[4]: "d"
#> y[4]: "d-"
#> 
#> x[5]: "e"
#> y[5]: "e-"

x <- "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis cursus
 tincidunt auctor. Vestibulum ac metus bibendum, facilisis nisi non, pulvinar
 dolor. Donec pretium iaculis nulla, ut interdum sapien ultricies a. "
y <- "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis cursus
 tincidunt auctor. Vestibulum ac metus1 bibendum, facilisis nisi non, pulvinar
 dolor. Donec pretium iaculis nulla, ut interdum sapien ultricies a. "
compare(x, y)
#> 1/1 mismatches
#> x[1]: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis cu
#> x[1]: rsus\n tincidunt auctor. Vestibulum ac metus bibendum, facilisis 
#> x[1]: nisi non, pulvinar\n dolor. Donec pretium iaculis nulla, ut inter
#> x[1]: dum sapien ultricies a. "
#> y[1]: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis cu
#> y[1]: rsus\n tincidunt auctor. Vestibulum ac metus1 bibendum, facilisis
#> y[1]:  nisi non, pulvinar\n dolor. Donec pretium iaculis nulla, ut inte
#> y[1]: rdum sapien ultricies a. "
compare(c(x, x), c(y, y))
#> 2/2 mismatches
#> x[1]: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis cu
#> x[1]: rsus\n tincidunt auctor. Vestibulum ac metus bibendum, facilisis 
#> x[1]: nisi non, pulvinar\n dolor. Donec pretium iaculis nulla, ut inter
#> x[1]: dum sapien ultricies a. "
#> y[1]: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis cu
#> y[1]: rsus\n tincidunt auctor. Vestibulum ac metus1 bibendum, facilisis
#> y[1]:  nisi non, pulvinar\n dolor. Donec pretium iaculis nulla, ut inte
#> y[1]: rdum sapien ultricies a. "
#> 
#> x[2]: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis cu
#> x[2]: rsus\n tincidunt auctor. Vestibulum ac metus bibendum, facilisis 
#> x[2]: nisi non, pulvinar\n dolor. Donec pretium iaculis nulla, ut inter
#> x[2]: dum sapien ultricies a. "
#> y[2]: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis cu
#> y[2]: rsus\n tincidunt auctor. Vestibulum ac metus1 bibendum, facilisis
#> y[2]:  nisi non, pulvinar\n dolor. Donec pretium iaculis nulla, ut inte
#> y[2]: rdum sapien ultricies a. "

# Numeric -------------------------------------------------------------------

x <- y <- runif(100)
y[sample(100, 10)] <- 5
compare(x, y)
#> 10/100 mismatches (average diff: 4.6)
#> [5]  0.0342 - 5 == -4.97
#> [13] 0.2899 - 5 == -4.71
#> [17] 0.9805 - 5 == -4.02
#> [32] 0.2169 - 5 == -4.78
#> [33] 0.6802 - 5 == -4.32
#> [55] 0.5700 - 5 == -4.43
#> [69] 0.3770 - 5 == -4.62
#> [76] 0.2901 - 5 == -4.71
#> [77] 0.4801 - 5 == -4.52
#> ...

x <- y <- 1:10
x[5] <- NA
x[6] <- 6.5
compare(x, y)
#> 2/10 mismatches (average diff: 0.5)
#> [5]  NA - 5 ==  NA
#> [6] 6.5 - 6 == 0.5

# Compare ignores minor numeric differences in the same way
# as all.equal.
compare(x, x + 1e-9)
#> Equal
```
