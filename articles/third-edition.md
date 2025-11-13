# testthat 3e

testthat 3.0.0 introduces the idea of an “edition” of testthat. An
edition is a bundle of behaviours that you have to explicitly choose to
use, allowing us to make otherwise backward incompatible changes. This
is particularly important for testthat since it has a very large number
of packages that use it (almost 5,000 at last count). Choosing to use
the 3rd edition allows you to use our latest recommendations for ongoing
and new work, while historical packages continue to use the old
behaviour.

(We don’t anticipate creating new editions very often, and they’ll
always be matched with major version, i.e. if there’s another edition,
it’ll be the fourth edition and will come with testthat 4.0.0.)

This vignette shows you how to activate the 3rd edition, introduces the
main features, and discusses common challenges when upgrading a package.
If you have a problem that this vignette doesn’t cover, please let me
know, as it’s likely that the problem also affects others.

``` r
library(testthat)
local_edition(3)
```

## Activating

The usual way to activate the 3rd edition is to add a line to your
`DESCRIPTION`:

    Config/testthat/edition: 3

This will activate the 3rd edition for every test in your package.

You can also control the edition used for individual tests with
[`testthat::local_edition()`](https://testthat.r-lib.org/reference/local_edition.md):

``` r
test_that("I can use the 3rd edition", {
  local_edition(3)
  expect_true(TRUE)
})
#> Test passed with 1 success 🥇.
```

This is also useful if you’ve switched to the 3rd edition and have a
couple of tests that fail. You can use `local_edition(2)` to revert back
to the old behaviour, giving you some breathing room to figure out the
underlying issue.

``` r
test_that("I want to use the 2nd edition", {
  local_edition(2)
  expect_true(TRUE)
})
#> Test passed with 1 success 🎊.
```

## Changes

There are three major changes in the 3rd edition:

- A number of outdated functions are now **deprecated**, so you’ll be
  warned about them every time you run your tests (but they won’t cause
  `R CMD check` to fail).

- testthat no longer silently swallows **messages**; you now need to
  deliberately handle them.

- [`expect_equal()`](https://testthat.r-lib.org/reference/equality-expectations.md)
  and
  [`expect_identical()`](https://testthat.r-lib.org/reference/equality-expectations.md)
  now use the [**waldo**](https://waldo.r-lib.org/) package instead of
  [`identical()`](https://rdrr.io/r/base/identical.html) and
  [`all.equal()`](https://rdrr.io/r/base/all.equal.html). This makes
  them more consistent and provides an enhanced display of differences
  when a test fails.

### Deprecations

A number of outdated functions have been deprecated. Most of these
functions have not been recommended for a number of years, but before
the introduction of the edition idea, I didn’t have a good way of
preventing people from using them without breaking a lot of code on
CRAN.

- [`context()`](https://testthat.r-lib.org/reference/context.md) is
  formally deprecated. testthat has been moving away from
  [`context()`](https://testthat.r-lib.org/reference/context.md) in
  favour of file names for quite some time, and now you’ll be strongly
  encouraged remove these calls from your tests.

- [`expect_is()`](https://testthat.r-lib.org/reference/expect_is.md) is
  deprecated in favour of the more specific
  [`expect_type()`](https://testthat.r-lib.org/reference/inheritance-expectations.md),
  [`expect_s3_class()`](https://testthat.r-lib.org/reference/inheritance-expectations.md),
  and
  [`expect_s4_class()`](https://testthat.r-lib.org/reference/inheritance-expectations.md).
  This ensures that you check the expected class along with the expected
  OO system.

- The very old
  [`expect_that()`](https://testthat.r-lib.org/reference/expect_that.md)
  syntax is now deprecated. This was an overly clever API that I
  regretted even before the release of testthat 1.0.0.

- [`expect_equivalent()`](https://testthat.r-lib.org/reference/expect_equivalent.md)
  has been deprecated since it is now equivalent (HA HA) to
  `expect_equal(ignore_attr = TRUE)`.

- [`setup()`](https://testthat.r-lib.org/reference/teardown.md) and
  [`teardown()`](https://testthat.r-lib.org/reference/teardown.md) are
  deprecated in favour of test fixtures. See
  [`vignette("test-fixtures")`](https://testthat.r-lib.org/articles/test-fixtures.md)
  for details.

- [`expect_known_output()`](https://testthat.r-lib.org/reference/expect_known_output.md),
  [`expect_known_value()`](https://testthat.r-lib.org/reference/expect_known_output.md),
  [`expect_known_hash()`](https://testthat.r-lib.org/reference/expect_known_output.md),
  and
  [`expect_equal_to_reference()`](https://testthat.r-lib.org/reference/expect_known_output.md)
  are all deprecated in favour of
  [`expect_snapshot_output()`](https://testthat.r-lib.org/reference/expect_snapshot_output.md)
  and
  [`expect_snapshot_value()`](https://testthat.r-lib.org/reference/expect_snapshot_value.md).

- [`with_mock()`](https://testthat.r-lib.org/reference/with_mock.md) and
  [`local_mock()`](https://testthat.r-lib.org/reference/with_mock.md)
  are deprecated; please use
  [`with_mocked_bindings()`](https://testthat.r-lib.org/reference/local_mocked_bindings.md)
  or
  [`local_mocked_bindings()`](https://testthat.r-lib.org/reference/local_mocked_bindings.md)
  instead.

Fixing these deprecation warnings should be straightforward.

### Warnings

In the second edition,
[`expect_warning()`](https://testthat.r-lib.org/reference/expect_error.md)
swallows all warnings regardless of whether or not they match the
`regexp` or `class`:

``` r
f <- function() {
  warning("First warning")
  warning("Second warning")
  warning("Third warning")
}

local_edition(2)
expect_warning(f(), "First")
```

In the third edition,
[`expect_warning()`](https://testthat.r-lib.org/reference/expect_error.md)
captures at most one warning so the others will bubble up:

``` r
local_edition(3)
expect_warning(f(), "First")
#> Warning in f(): Second warning
#> Warning in f(): Third warning
```

You can either add additional expectations to catch these warnings, or
silence them all with
[`suppressWarnings()`](https://rdrr.io/r/base/warning.html):

``` r
f() |> 
  expect_warning("First") |> 
  expect_warning("Second") |> 
  expect_warning("Third")

f() |> 
  expect_warning("First") |> 
  suppressWarnings()
```

Alternatively, you might want to capture them all in a snapshot test:

``` r
test_that("f() produces expected outputs/messages/warnings", {
  expect_snapshot(f())  
})
#> ── Snapshot ───────────────────────────────────────────────────────────
#> ℹ Can't save or compare to reference when testing
#> interactively.
#> Code
#>   f()
#> Condition
#>   Warning in `f()`:
#>   First warning
#>   Warning in `f()`:
#>   Second warning
#>   Warning in `f()`:
#>   Third warning
#> ───────────────────────────────────────────────────────────────────────
#> ── Skip: f() produces expected outputs/messages/warnings ──────────────
#> Reason: empty test
```

The same principle also applies to
[`expect_message()`](https://testthat.r-lib.org/reference/expect_error.md),
but message handling has changed in a more radical way, as described
next.

### Messages

For reasons that I can no longer remember, testthat silently ignores all
messages. This is inconsistent with other types of output, so as of the
3rd edition, they now bubble up to your test results. You’ll have to
explicit ignore them with
[`suppressMessages()`](https://rdrr.io/r/base/message.html), or if
they’re important, test for their presence with
[`expect_message()`](https://testthat.r-lib.org/reference/expect_error.md).

### waldo

Probably the biggest day-to-day difference (and the biggest reason to
upgrade!) is the use of
[`waldo::compare()`](https://waldo.r-lib.org/reference/compare.html)
inside of
[`expect_equal()`](https://testthat.r-lib.org/reference/equality-expectations.md)
and
[`expect_identical()`](https://testthat.r-lib.org/reference/equality-expectations.md).
The goal of waldo is to find and concisely describe the difference
between a pair of R objects, and it’s designed specifically to help you
figure out what’s gone wrong in your unit tests.

``` r
f1 <- factor(letters[1:3])
f2 <- ordered(letters[1:3], levels = letters[1:4])

local_edition(2)
expect_equal(f1, f2)
#> Error: Expected `f1` to equal `f2`.
#> Differences:
#> Attributes: < Component "class": Lengths (1, 2) differ (string compare on first 1) >
#> Attributes: < Component "class": 1 string mismatch >
#> Attributes: < Component "levels": Lengths (3, 4) differ (string compare on first 3) >

local_edition(3)
expect_equal(f1, f2)
#> Error: Expected `f1` to equal `f2`.
#> Differences:
#> `levels(actual)`:   "a" "b" "c"    
#> `levels(expected)`: "a" "b" "c" "d"
```

waldo looks even better in your console because it carefully uses
colours to help highlight the differences.

The use of waldo also makes precise the difference between
[`expect_equal()`](https://testthat.r-lib.org/reference/equality-expectations.md)
and
[`expect_identical()`](https://testthat.r-lib.org/reference/equality-expectations.md):
[`expect_equal()`](https://testthat.r-lib.org/reference/equality-expectations.md)
sets `tolerance` so that waldo will ignore small numerical differences
arising from floating point computation. Otherwise the functions are
identical (HA HA).

This change is likely to result in the most work during an upgrade,
because waldo can give slightly different results to both
[`identical()`](https://rdrr.io/r/base/identical.html) and
[`all.equal()`](https://rdrr.io/r/base/all.equal.html) in moderately
common situations. I believe on the whole the differences are meaningful
and useful, so you’ll need to handle them by tweaking your tests. The
following changes are most likely to affect you:

- [`expect_equal()`](https://testthat.r-lib.org/reference/equality-expectations.md)
  previously ignored the environments of formulas and functions. This is
  most like to arise if you are testing models. It’s worth thinking
  about what the correct values should be, but if that is to annoying
  you can opt out of the comparison with `ignore_function_env` or
  `ignore_formula_env`.

- [`expect_equal()`](https://testthat.r-lib.org/reference/equality-expectations.md)
  used a combination of
  [`all.equal()`](https://rdrr.io/r/base/all.equal.html) and a
  home-grown
  [`testthat::compare()`](https://testthat.r-lib.org/reference/compare.md)
  which unfortunately used a slightly different definition of tolerance.
  Now
  [`expect_equal()`](https://testthat.r-lib.org/reference/equality-expectations.md)
  always uses the same definition of tolerance everywhere, which may
  require tweaks to your existing tolerance values.

- [`expect_equal()`](https://testthat.r-lib.org/reference/equality-expectations.md)
  previously ignored timezone differences when one object had the
  current timezone set implicitly (with `""`) and the other had it set
  explicitly:

  ``` r
  dt1 <- dt2 <- ISOdatetime(2020, 1, 2, 3, 4, 0)
  attr(dt1, "tzone") <- ""
  attr(dt2, "tzone") <- Sys.timezone()

  local_edition(2)
  expect_equal(dt1, dt2)

  local_edition(3)
  expect_equal(dt1, dt2)
  #> Error: Expected `dt1` to equal `dt2`.
  #> Differences:
  #> `attr(actual, 'tzone')`:   ""   
  #> `attr(expected, 'tzone')`: "UTC"
  ```

### Reproducible output

In the third edition,
[`test_that()`](https://testthat.r-lib.org/reference/test_that.md)
automatically calls
[`local_reproducible_output()`](https://testthat.r-lib.org/reference/local_test_context.md)
which automatically sets a number of options and environment variables
to ensure output is as reproducible across systems. This includes
setting:

- `options(crayon.enabled = FALSE)` and `options(cli.unicode = FALSE)`
  so that the crayon and cli packages produce raw ASCII output.

- `Sys.setLocale("LC_COLLATE" = "C")` so that sorting a character vector
  returns the same order regardless of the system language.

- `options(width = 80)` so print methods always generate the same output
  regardless of your actual console width.

See the documentation for more details.

## Upgrading

The changes lend themselves to the following workflow for upgrading from
the 2nd to the 3rd edition:

1.  Activate edition 3. You can let
    [`usethis::use_testthat(3)`](https://usethis.r-lib.org/reference/use_testthat.html)
    do this for you.
2.  Remove or replace deprecated functions, going over the list of
    above.
3.  If your output got noisy, quiet things down by either capturing or
    suppressing warnings and messages.
4.  Inspect test outputs if objects are not “all equal” anymore.

## Alternatives

You might wonder why we came up with the idea of an “edition”, rather
than creating a new package like testthat3. We decided against making a
new package because the 2nd and 3rd edition share a very large amount of
code, so making a new package would have substantially increased the
maintenance burden: the majority of bugs would’ve needed to be fixed in
two places.

If you’re a programmer in other languages, you might wonder why we can’t
rely on [semantic versioning](https://semver.org). The main reason is
that CRAN checks all packages that use testthat with the latest version
of testthat, so simply incrementing the major version number doesn’t
actually help with reducing R CMD check failures on CRAN.
