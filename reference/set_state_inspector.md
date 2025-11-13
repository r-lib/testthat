# Check for global state changes

One of the most pernicious challenges to debug is when a test runs fine
in your test suite, but fails when you run it interactively (or
similarly, it fails randomly when running your tests in parallel). One
of the most common causes of this problem is accidentally changing
global state in a previous test (e.g. changing an option, an environment
variable, or the working directory). This is hard to debug, because it's
very hard to figure out which test made the change.

Luckily testthat provides a tool to figure out if tests are changing
global state. You can register a state inspector with
`set_state_inspector()` and testthat will run it before and after each
test, store the results, then report if there are any differences. For
example, if you wanted to see if any of your tests were changing options
or environment variables, you could put this code in
`tests/testthat/helper-state.R`:

    set_state_inspector(function() {
      list(
        options = options(),
        envvars = Sys.getenv()
      )
    })

(You might discover other packages outside your control are changing the
global state, in which case you might want to modify this function to
ignore those values.)

Other problems that can be troublesome to resolve are CRAN check notes
that report things like connections being left open. You can easily
debug that problem with:

    set_state_inspector(function() {
      getAllConnections()
    })

## Usage

``` r
set_state_inspector(callback, tolerance = testthat_tolerance())
```

## Arguments

- callback:

  Either a zero-argument function that returns an object capturing
  global state that you're interested in, or `NULL`.

- tolerance:

  If non-`NULL`, used as threshold for ignoring small floating point
  difference when comparing numeric vectors. Using any non-`NULL` value
  will cause integer and double vectors to be compared based on their
  values, not their types, and will ignore the difference between `NaN`
  and `NA_real_`.

  It uses the same algorithm as
  [`all.equal()`](https://rdrr.io/r/base/all.equal.html), i.e., first we
  generate `x_diff` and `y_diff` by subsetting `x` and `y` to look only
  locations with differences. Then we check that
  `mean(abs(x_diff - y_diff)) / mean(abs(y_diff))` (or just
  `mean(abs(x_diff - y_diff))` if `y_diff` is small) is less than
  `tolerance`.
