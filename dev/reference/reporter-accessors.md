# Get and set active reporter.

`get_reporter()` and `set_reporter()` access and modify the current
"active" reporter. Generally, these functions should not be called
directly; instead use `with_reporter()` to temporarily change, then
reset, the active reporter.

## Usage

``` r
set_reporter(reporter)

get_reporter()

with_reporter(reporter, code, start_end_reporter = TRUE)
```

## Arguments

- reporter:

  Reporter to use to summarise output. Can be supplied as a string (e.g.
  "summary") or as an R6 object (e.g. `SummaryReporter$new()`).

  See [Reporter](https://testthat.r-lib.org/dev/reference/Reporter.md)
  for more details and a list of built-in reporters.

- code:

  Code to execute.

- start_end_reporter:

  Should the reporters `start_reporter()` and `end_reporter()` methods
  be called? For expert use only.

## Value

`with_reporter()` invisible returns the reporter active when `code` was
evaluated.
