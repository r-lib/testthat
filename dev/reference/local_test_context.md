# Temporarily set options for maximum reproducibility

`local_test_context()` is run automatically by
[`test_that()`](https://testthat.r-lib.org/dev/reference/test_that.md)
but you may want to run it yourself if you want to replicate test
results interactively. If run inside a function, the effects are
automatically reversed when the function exits; if running in the global
environment, use
[`withr::deferred_run()`](https://withr.r-lib.org/reference/defer.html)
to undo.

`local_reproducible_output()` is run automatically by
[`test_that()`](https://testthat.r-lib.org/dev/reference/test_that.md)
in the 3rd edition. You might want to call it to override the the
default settings inside a test, if you want to test Unicode, coloured
output, or a non-standard width.

## Usage

``` r
local_test_context(.env = parent.frame())

local_reproducible_output(
  width = 80,
  crayon = FALSE,
  unicode = FALSE,
  rstudio = FALSE,
  hyperlinks = FALSE,
  lang = "C",
  .env = parent.frame()
)
```

## Arguments

- .env:

  Environment to use for scoping; expert use only.

- width:

  Value of the `"width"` option.

- crayon:

  Determines whether or not crayon (now cli) colour should be applied.

- unicode:

  Value of the `"cli.unicode"` option. The test is skipped if
  `` l10n_info()$`UTF-8` `` is `FALSE`.

- rstudio:

  Should we pretend that we're inside of RStudio?

- hyperlinks:

  Should we use ANSI hyperlinks.

- lang:

  Optionally, supply a BCP47 language code to set the language used for
  translating error messages. This is a lower case two letter [ISO 639
  country code](https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes),
  optionally followed by "\_" or "-" and an upper case two letter [ISO
  3166 region code](https://en.wikipedia.org/wiki/ISO_3166-2).

## Details

`local_test_context()` sets `TESTTHAT = "true"`, which ensures that
[`is_testing()`](https://testthat.r-lib.org/dev/reference/is_testing.md)
returns `TRUE` and allows code to tell if it is run by testthat.

In the third edition, `local_test_context()` also calls
`local_reproducible_output()` which temporary sets the following
options:

- `cli.dynamic = FALSE` so that tests assume that they are not run in a
  dynamic console (i.e. one where you can move the cursor around).

- `cli.unicode` (default: `FALSE`) so that the cli package never
  generates unicode output (normally cli uses unicode on Linux/Mac but
  not Windows). Windows can't easily save unicode output to disk, so it
  must be set to false for consistency.

- `cli.condition_width = Inf` so that new lines introduced while
  width-wrapping condition messages don't interfere with message
  matching.

- `crayon.enabled` (default: `FALSE`) suppresses ANSI colours generated
  by the cli and crayon packages (normally colours are used if cli
  detects that you're in a terminal that supports colour).

- `cli.num_colors` (default: `1L`) Same as the crayon option.

- `lifecycle_verbosity = "warning"` so that every lifecycle problem
  always generates a warning (otherwise deprecated functions don't
  generate a warning every time).

- `max.print = 99999` so the same number of values are printed.

- `OutDec = "."` so numbers always uses `.` as the decimal point
  (European users sometimes set `OutDec = ","`).

- `rlang_interactive = FALSE` so that
  [`rlang::is_interactive()`](https://rlang.r-lib.org/reference/is_interactive.html)
  returns `FALSE`, and code that uses it pretends you're in a
  non-interactive environment.

- `useFancyQuotes = FALSE` so base R functions always use regular
  (straight) quotes (otherwise the default is locale dependent, see
  [`sQuote()`](https://rdrr.io/r/base/sQuote.html) for details).

- `width` (default: 80) to control the width of printed output (usually
  this varies with the size of your console).

And modifies the following env vars:

- Unsets `RSTUDIO`, which ensures that RStudio is never detected as
  running.

- Sets `LANGUAGE = "en"`, which ensures that no message translation
  occurs.

Finally, it sets the collation locale to "C", which ensures that
character sorting the same regardless of system locale.

## Examples

``` r
local({
  local_test_context()
  cat(cli::col_blue("Text will not be colored"))
  cat(cli::symbol$ellipsis)
  cat("\n")
})
#> Text will not be colored...
test_that("test ellipsis", {
  local_reproducible_output(unicode = FALSE)
  expect_equal(cli::symbol$ellipsis, "...")

  local_reproducible_output(unicode = TRUE)
  expect_equal(cli::symbol$ellipsis, "\u2026")
})
#> Test passed with 2 successes 🎊.
```
