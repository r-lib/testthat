# Capture output to console

Evaluates `code` in a special context in which all output is captured,
similar to
[`capture.output()`](https://rdrr.io/r/utils/capture.output.html).

## Usage

``` r
capture_output(code, print = FALSE, width = 80)

capture_output_lines(code, print = FALSE, width = 80)

testthat_print(x)
```

## Arguments

- code:

  Code to evaluate.

- print:

  If `TRUE` and the result of evaluating `code` is visible, print the
  result using `testthat_print()`.

- width:

  Number of characters per line of output. This does not inherit from
  `getOption("width")` so that tests always use the same output width,
  minimising spurious differences.

## Value

`capture_output()` returns a single string. `capture_output_lines()`
returns a character vector with one entry for each line

## Details

Results are printed using the `testthat_print()` generic, which defaults
to [`print()`](https://rdrr.io/r/base/print.html), giving you the
ability to customise the printing of your object in tests, if needed.

## Examples

``` r
capture_output({
  cat("Hi!\n")
  cat("Bye\n")
})
#> [1] "Hi!\nBye"

capture_output_lines({
  cat("Hi!\n")
  cat("Bye\n")
})
#> [1] "Hi!" "Bye"

capture_output("Hi")
#> [1] ""
capture_output("Hi", print = TRUE)
#> [1] "[1] \"Hi\""
```
