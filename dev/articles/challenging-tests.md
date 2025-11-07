# Testing challenging functions

This vignette is a quick reference guide for testing challenging
functions. It’s organized by problem type rather than technique, so you
can quickly skim the whole vignette, spot the problem you’re facing, and
then learn more about useful tools for solving it. In it, you’ll learn
how to overcome the following challenges:

- Functions with implicit inputs, like options and environment
  variables.
- Random number generators.
- Tests that can’t be run in some environments.
- Testing web APIs.
- Testing graphical output.
- User interaction.
- User-facing text.
- Repeated code.

## Options and environment variables

If your function depends on options or environment variables, first try
refactoring the function to make the [inputs
explicit](https://design.tidyverse.org/inputs-explicit.html). If that’s
not possible, use functions like
[`withr::local_options()`](https://withr.r-lib.org/reference/with_options.html)
or
[`withr::local_envvar()`](https://withr.r-lib.org/reference/with_envvar.html)
to temporarily change options and environment values within a test.
Learn more in
[`vignette("test-fixtures")`](https://testthat.r-lib.org/dev/articles/test-fixtures.md).

## Random numbers

What happens if you want to test a function that relies on randomness in
some way? If you’re writing a random number generator, you probably want
to generate a large quantity of random numbers and then apply some
statistical test. But what if your function just happens to use a little
bit of pre-existing randomness? How do you make your tests repeatable
and reproducible? Under the hood, random number generators generate
different numbers because they update a special `.Random.seed` variable
stored in the global environment. You can temporarily set this seed to a
known value to make your random numbers reproducible with
[`withr::local_seed()`](https://withr.r-lib.org/reference/with_seed.html),
making random numbers a special case of test fixtures
([`vignette("test-fixtures")`](https://testthat.r-lib.org/dev/articles/test-fixtures.md)).

Here’s a simple example showing how you might test the basic operation
of a function that rolls a die:

``` r
dice <- function() {
  sample(6, 1)
}

test_that("dice returns different numbers", {
  withr::local_seed(1234)

  expect_equal(dice(), 4)
  expect_equal(dice(), 2)
  expect_equal(dice(), 6)
})
#> Test passed with 3 successes 🥇.
```

Alternatively, you might want to mock
([`vignette("mocking")`](https://testthat.r-lib.org/dev/articles/mocking.md))
the function to eliminate randomness.

``` r
roll_three <- function() {
  sum(dice(), dice(), dice())
}

test_that("three dice adds values of individual calls", {
  local_mocked_bindings(dice = mock_output_sequence(1, 2, 3))
  expect_equal(roll_three(), 6)
})
#> Test passed with 1 success 🌈.
```

When should you set the seed and when should you use mocking? As a
general rule of thumb, set the seed when you want to test the actual
random behavior, and use mocking when you want to test the logic that
uses the random results.

## Some tests can’t be run in some circumstances

You can skip a test without it passing or failing if you can’t or don’t
want to run it (e.g., it’s OS dependent, it only works interactively, or
it shouldn’t be tested on CRAN). Learn more in
[`vignette("skipping")`](https://testthat.r-lib.org/dev/articles/skipping.md).

## HTTP requests

If you’re trying to test functions that rely on HTTP requests, we
recommend using {vcr} or {httptest2}. These packages both allow you to
interactively record HTTP responses and then later replay them in tests.
This is a specialized type of mocking
([`vignette("mocking")`](https://testthat.r-lib.org/dev/articles/mocking.md))
that works with {httr} and {httr2} to isolates your tests from failures
in the underlying API.

If your package is going to CRAN, you **must** either use one of these
packages or use
[`skip_on_cran()`](https://testthat.r-lib.org/dev/reference/skip.md) for
all internet-facing tests. Otherwise, you are at high risk of failing
`R CMD check` if the underlying API is temporarily down. This sort of
failure causes extra work for the CRAN maintainers and extra hassle for
you.

## Graphics

The only type of testing you can use for graphics is snapshot testing
([`vignette("snapshotting")`](https://testthat.r-lib.org/dev/articles/snapshotting.md))
via
[`expect_snapshot_file()`](https://testthat.r-lib.org/dev/reference/expect_snapshot_file.md).
Graphical snapshot testing is surprisingly challenging because you need
pixel-perfect rendering across multiple versions of multiple operating
systems, and this is hard, mostly due to imperceptible differences in
font rendering. Fortunately we’ve needed to overcome these challenges in
order to test {ggplot2}, and you can benefit from our experience by
using {vdiffr} when testing graphical output.

## User interaction

If you’re testing a function that relies on user feedback (e.g. from
[`readline()`](https://rdrr.io/r/base/readline.html),
[`utils::menu()`](https://rdrr.io/r/utils/menu.html), or
[`utils::askYesNo()`](https://rdrr.io/r/utils/askYesNo.html)), you can
use mocking
([`vignette("mocking")`](https://testthat.r-lib.org/dev/articles/mocking.md))
to return fixed values within the test. For example, imagine that you’ve
written the following function that asks the user if they want to
continue:

``` r
continue <- function(prompt) {
  cat(prompt, "\n", sep = "")

  repeat {
    val <- readline("Do you want to continue? (y/n) ")
    if (val %in% c("y", "n")) {
      return(val == "y")
    }
    cat("! You must enter y or n\n")
  }  
}

readline <- NULL
```

You could test its behavior by mocking
[`readline()`](https://rdrr.io/r/base/readline.html) and using a
snapshot test:

``` r
test_that("user must respond y or n", {
  mock_readline <- local({
    i <- 0
    function(prompt) {
      i <<- i + 1
      cat(prompt)
      val <- if (i == 1) "x" else "y"
      cat(val, "\n", sep = "")
      val
    }
  })

  local_mocked_bindings(readline = mock_readline)
  expect_snapshot(val <- continue("This is dangerous"))
  expect_true(val)
})
#> ── Warning: user must respond y or n ──────────────────────────────────
#> Adding new snapshot:
#> Code
#>   val <- continue("This is dangerous")
#> Output
#>   This is dangerous
#>   Do you want to continue? (y/n) x
#>   ! You must enter y or n
#>   Do you want to continue? (y/n) y
#> Test passed with 2 successes 🎊.
```

If you don’t care about reproducing the output of `continue()` and just
want to recreate its return value, you can use
[`mock_output_sequence()`](https://testthat.r-lib.org/dev/reference/mock_output_sequence.md).
This creates a function that returns the input supplied to
[`mock_output_sequence()`](https://testthat.r-lib.org/dev/reference/mock_output_sequence.md)
in sequence: the first input at the first call, the second input at the
second call, etc. The following code shows how it works and how you
might use it to test
[`readline()`](https://rdrr.io/r/base/readline.html):

``` r
f <- mock_output_sequence(1, 12, 123)
f()
#> [1] 1
f()
#> [1] 12
f()
#> [1] 123
```

And

``` r
test_that("user must respond y or n", {
  local_mocked_bindings(readline = mock_output_sequence("x", "y"))
  expect_true(continue("This is dangerous"))
})
#> This is dangerous
#> ! You must enter y or n
#> Test passed with 1 success 😀.
```

If you were testing the behavior of some function that uses
`continue()`, you might want to mock `continue()` instead of
[`readline()`](https://rdrr.io/r/base/readline.html). For example, the
function below requires user confirmation before overwriting an existing
file. In order to focus our tests on the behavior of just this function,
we mock `continue()` to return either `TRUE` or `FALSE` without any user
messaging.

``` r
save_file <- function(path, data) {
  if (file.exists(path)) {
    if (!continue("`path` already exists")) {
      stop("Failed to continue")
    }
  }
  writeLines(data, path)
}

test_that("save_file() requires confirmation to overwrite file", {
  path <- withr::local_tempfile(lines = letters)

  local_mocked_bindings(continue = function(...) TRUE)
  save_file(path, "a")
  expect_equal(readLines(path), "a")

  local_mocked_bindings(continue = function(...) FALSE)
  expect_snapshot(save_file(path, "a"), error = TRUE)
})
#> ── Warning: save_file() requires confirmation to overwrite file ───────
#> Adding new snapshot:
#> Code
#>   save_file(path, "a")
#> Condition
#>   Error in `save_file()`:
#>   ! Failed to continue
#> Test passed with 2 successes 🥇.
```

## User-facing text

Errors, warnings, and other user-facing text should be tested to ensure
they’re both actionable and consistent across the package. Obviously,
it’s not possible to test this automatically, but you can use snapshots
([`vignette("snapshotting")`](https://testthat.r-lib.org/dev/articles/snapshotting.md))
to ensure that user-facing messages are clearly shown in PRs and easily
reviewed by another human.

## Repeated code

If you find yourself repeating the same set of expectations again and
again across your test suite, it may be a sign that you should design
your own expectation. Learn how in
[`vignette("custom-expectation")`](https://testthat.r-lib.org/dev/articles/custom-expectation.md).
