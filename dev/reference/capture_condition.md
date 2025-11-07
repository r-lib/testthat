# Capture conditions, including messages, warnings, expectations, and errors.

**\[superseded\]**

These functions allow you to capture the side-effects of a function call
including printed output, messages and warnings. We no longer recommend
that you use these functions, instead relying on the
[`expect_message()`](https://testthat.r-lib.org/dev/reference/expect_error.md)
and friends to bubble up unmatched conditions. If you just want to
silence unimportant warnings, use
[`suppressWarnings()`](https://rdrr.io/r/base/warning.html).

## Usage

``` r
capture_condition(code, entrace = FALSE)

capture_error(code, entrace = FALSE)

capture_expectation(code, entrace = FALSE)

capture_message(code, entrace = FALSE)

capture_warning(code, entrace = FALSE)

capture_messages(code)

capture_warnings(code, ignore_deprecation = FALSE)
```

## Arguments

- code:

  Code to evaluate

- entrace:

  Whether to add a
  [backtrace](https://rlang.r-lib.org/reference/trace_back.html) to the
  captured condition.

## Value

Singular functions (`capture_condition`, `capture_expectation` etc)
return a condition object. `capture_messages()` and `capture_warnings`
return a character vector of message text.

## Examples

``` r
f <- function() {
  message("First")
  warning("Second")
  message("Third")
}

capture_message(f())
#> <simpleMessage in message("First"): First
#> >
capture_messages(f())
#> Warning: Second
#> [1] "First\n" "Third\n"

capture_warning(f())
#> First
#> <simpleWarning in f(): Second>
capture_warnings(f())
#> First
#> Third
#> [1] "Second"

# Condition will capture anything
capture_condition(f())
#> <simpleMessage in message("First"): First
#> >
```
