# Find reporter object given name or object.

If not found, will return informative error message. Pass a character
vector to create a
[MultiReporter](https://testthat.r-lib.org/dev/reference/MultiReporter.md)
composed of individual reporters. Will return null if given NULL.

## Usage

``` r
find_reporter(reporter)
```

## Arguments

- reporter:

  name of reporter(s), or reporter object(s)
