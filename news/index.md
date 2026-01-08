# Changelog

## testthat (development version)

- testthat now emits OpenTelemetry traces for tests when tracing is
  enabled. Requires the otel and otelsdk packages
  ([\#2282](https://github.com/r-lib/testthat/issues/2282)).
- `default_parallel_reporter()` is no longer exported; use
  `default_reporter(parallel = TRUE)` instead
  ([\#2305](https://github.com/r-lib/testthat/issues/2305)).
- [`expect_snapshot()`](https://testthat.r-lib.org/reference/expect_snapshot.md)
  once again reports the original error class for base errors, rather
  than `rlang_error`
  ([\#2286](https://github.com/r-lib/testthat/issues/2286)).
- [`expect_snapshot()`](https://testthat.r-lib.org/reference/expect_snapshot.md)
  and friends only emit the
  [`snapshot_download_gh()`](https://testthat.r-lib.org/reference/snapshot_download_gh.md)
  hint when running in a job named “R-CMD-check”
  ([\#2300](https://github.com/r-lib/testthat/issues/2300)).
- [`expect_snapshot_file()`](https://testthat.r-lib.org/reference/expect_snapshot_file.md)
  once again works with shinytest2 on CI
  ([\#2293](https://github.com/r-lib/testthat/issues/2293),
  [\#2288](https://github.com/r-lib/testthat/issues/2288)).
- [`expect_snapshot_file()`](https://testthat.r-lib.org/reference/expect_snapshot_file.md)
  correctly reports file name if duplicated
  ([@MichaelChirico](https://github.com/MichaelChirico),
  [\#2296](https://github.com/r-lib/testthat/issues/2296)).
- [`expect_success()`](https://testthat.r-lib.org/reference/expect_success.md)
  and
  [`expect_failure()`](https://testthat.r-lib.org/reference/expect_success.md)
  now always report the observed number of successes and failures
  ([\#2297](https://github.com/r-lib/testthat/issues/2297)).
- [`LlmReporter()`](https://testthat.r-lib.org/reference/LlmReporter.md)
  is a new reporter designed for use by LLM coding agents. It’s used
  automatically inside Claude Code, Cursor, and Gemini CLI, and you can
  set `AGENT=1` to use with any coding agent
  ([\#2287](https://github.com/r-lib/testthat/issues/2287)).
- [`local_mocked_s3_method()`](https://testthat.r-lib.org/reference/local_mocked_s3_method.md)
  and
  [`local_mocked_s4_method()`](https://testthat.r-lib.org/reference/local_mocked_s3_method.md)
  can now mock methods that don’t already exist, and can use
  `definition = NULL` to temporarily remove a method.
  [`local_mocked_s4_method()`](https://testthat.r-lib.org/reference/local_mocked_s3_method.md)
  now also works when the generic is defined in another package
  ([\#2302](https://github.com/r-lib/testthat/issues/2302)).
- [`local_snapshotter()`](https://testthat.r-lib.org/reference/local_snapshotter.md)
  restores `snap_dir` to be the first argument for compatibility with
  devtools 2.4.6
  ([\#2309](https://github.com/r-lib/testthat/issues/2309)).
- [`test_dir()`](https://testthat.r-lib.org/reference/test_dir.md) no
  longer runs tests in parallel if only a single file is being tested
  ([\#2305](https://github.com/r-lib/testthat/issues/2305)).

## testthat 3.3.0

CRAN release: 2025-11-13

### Lifecycle changes

- testthat now requires R 4.1.
- `expect_snapshot(binary)`, soft deprecated in 3.0.3 (2021-06-16), is
  now fully deprecated.
- `is_null()`/`matches()`, deprecated in 2.0.0 (2017-12-19), and
  `is_true()`/`is_false()`, deprecated in 2.1.0 (2019-04-23), have been
  removed ([\#2109](https://github.com/r-lib/testthat/issues/2109)).
- [`local_mock()`](https://testthat.r-lib.org/reference/with_mock.md)
  and
  [`with_mock()`](https://testthat.r-lib.org/reference/with_mock.md),
  deprecated in 3.0.0 (2020-10-31), are now defunct. They technique that
  made them work is no longer permitted in R 4.5.0.
- `test_files(wrap)`, deprecated in 3.0.0 (2020-10-31) has now been
  removed.

### Expectations and tests

- All `expect_` functions have had their failure messages rewritten.
  They now all state what was expected, what was actually received, and,
  if possible, clearly illustrate the difference
  ([\#2142](https://github.com/r-lib/testthat/issues/2142)). They also
  consistently check that their inputs are the correct type
  ([\#1754](https://github.com/r-lib/testthat/issues/1754)). They
  consistently return the value of the first argument, regardless of
  whether the expectation succeeds or fails (the only exception is
  [`expect_message()`](https://testthat.r-lib.org/reference/expect_error.md)
  and friends which return the condition). This shouldn’t affect
  existing tests, but will make failures clearer when you chain together
  multiple expectations
  ([\#2246](https://github.com/r-lib/testthat/issues/2246)).
- It’s now much easier to create custom expectations, thanks to an
  overhauled `vignette("custom-expectations")`
  ([\#2113](https://github.com/r-lib/testthat/issues/2113),
  [\#2132](https://github.com/r-lib/testthat/issues/2132),
  [\#2072](https://github.com/r-lib/testthat/issues/2072)), a new
  [`pass()`](https://testthat.r-lib.org/reference/fail.md) function to
  use in place of
  [`succeed()`](https://testthat.r-lib.org/reference/succeed.md)
  ([\#2113](https://github.com/r-lib/testthat/issues/2113)), and
  revisions to how
  [`expectation()`](https://testthat.r-lib.org/reference/expectation.md)
  works ([\#2125](https://github.com/r-lib/testthat/issues/2125)).
  `expect_no_failures()` and `expect_no_successes()` are now deprecated
  as now
  [`expect_success()`](https://testthat.r-lib.org/reference/expect_success.md)
  also tests for the absence of failures and
  [`expect_failure()`](https://testthat.r-lib.org/reference/expect_success.md)
  tests for the absence of successes.
- Tests
  (i.e. [`test_that()`](https://testthat.r-lib.org/reference/test_that.md),
  [`describe()`](https://testthat.r-lib.org/reference/describe.md), and
  [`it()`](https://testthat.r-lib.org/reference/describe.md) calls) can
  now be arbitrarily nested with a shared stack of descriptions so that
  the failures can show the full path through all subtests. Skips in
  subtests are now correctly scoped
  ([\#2007](https://github.com/r-lib/testthat/issues/2007)), and each
  subtest and will skip if and only if it and its subtests don’t contain
  any expectations.
- On CRAN,
  [`test_that()`](https://testthat.r-lib.org/reference/test_that.md)
  will automatically skips if a package is not installed
  ([\#1585](https://github.com/r-lib/testthat/issues/1585)).
  Practically, this means that you no longer need to check that
  suggested packages are installed. (We already didn’t check the
  installation of suggested packages in the tidyverse because we think
  it has limited payoff, but other styles advise differently.)
- When running a test interactively, testthat now reports the number of
  successes and failures. If you’re using nested tests, the results
  should be more useful and you will no longer see duplicated failures
  ([\#2063](https://github.com/r-lib/testthat/issues/2063),
  [\#2188](https://github.com/r-lib/testthat/issues/2188)).
- New
  [`expect_all_equal()`](https://testthat.r-lib.org/reference/expect_all_equal.md),
  [`expect_all_true()`](https://testthat.r-lib.org/reference/expect_all_equal.md),
  and
  [`expect_all_false()`](https://testthat.r-lib.org/reference/expect_all_equal.md)
  check that every element of a vector has the same value
  ([\#1836](https://github.com/r-lib/testthat/issues/1836),
  [\#2235](https://github.com/r-lib/testthat/issues/2235)), giving
  better error messages than `expect_true(all(...))`.
- New
  [`expect_disjoint()`](https://testthat.r-lib.org/reference/expect_setequal.md)
  expects values to to be absent
  ([@stibu81](https://github.com/stibu81),
  [\#1851](https://github.com/r-lib/testthat/issues/1851)).
- New
  [`expect_r6_class()`](https://testthat.r-lib.org/reference/inheritance-expectations.md)
  expects an R6 objects
  ([\#2030](https://github.com/r-lib/testthat/issues/2030)).
- New
  [`expect_shape()`](https://testthat.r-lib.org/reference/expect_length.md)
  expects a specific shape (i.e.,
  [`nrow()`](https://rdrr.io/r/base/nrow.html),
  [`ncol()`](https://rdrr.io/r/base/nrow.html), or
  [`dim()`](https://rdrr.io/r/base/dim.html))
  ([\#1423](https://github.com/r-lib/testthat/issues/1423),
  [@michaelchirico](https://github.com/michaelchirico)).

### Other new features

- New
  [`extract_test()`](https://testthat.r-lib.org/reference/extract_test.md)
  function to extract a reprex from a failing expectation. tests run in
  `R CMD check` will use this to automatically create a reprex in the
  `_problems/` directory for each failing expectation. You can turn this
  behaviour off by setting `TESTTHAT_PROBLEMS=false`
  ([\#2263](https://github.com/r-lib/testthat/issues/2263)).
- New
  [`local_mocked_s3_method()`](https://testthat.r-lib.org/reference/local_mocked_s3_method.md),
  [`local_mocked_s4_method()`](https://testthat.r-lib.org/reference/local_mocked_s3_method.md),
  and
  [`local_mocked_r6_class()`](https://testthat.r-lib.org/reference/local_mocked_r6_class.md)
  allow you to mock S3 and S4 methods and R6 classes
  ([\#1892](https://github.com/r-lib/testthat/issues/1892),
  [\#1916](https://github.com/r-lib/testthat/issues/1916))
- New `local_on_cran(TRUE)` allows you to simulate how your tests will
  run on CRAN ([\#2112](https://github.com/r-lib/testthat/issues/2112)).
- [`test_dir()`](https://testthat.r-lib.org/reference/test_dir.md),
  [`test_file()`](https://testthat.r-lib.org/reference/test_file.md),
  [`test_package()`](https://testthat.r-lib.org/reference/test_package.md),
  [`test_check()`](https://testthat.r-lib.org/reference/test_package.md),
  [`test_local()`](https://testthat.r-lib.org/reference/test_package.md),
  [`source_file()`](https://testthat.r-lib.org/reference/source_file.md)
  gain a `shuffle` argument that uses
  [`sample()`](https://rdrr.io/r/base/sample.html) to randomly reorder
  the top-level expressions in each test file
  ([\#1942](https://github.com/r-lib/testthat/issues/1942)). This random
  reordering surfaces dependencies between tests and code outside of any
  test, as well as dependencies between tests. This helps you find and
  eliminate unintentional dependencies.
- [`try_again()`](https://testthat.r-lib.org/reference/try_again.md) is
  now publicised, making it easier to test flaky code. We changed the
  first argument to represent the number of retries, not tries
  ([\#2050](https://github.com/r-lib/testthat/issues/2050)).
- New [`skip_unless_r()`](https://testthat.r-lib.org/reference/skip.md)
  skip tests on unsuitable versions of R. It has a convenient sytnax so
  you can use, e.g., `skip_unless_r(">= 4.1.0")` to skip tests that
  require [`...names()`](https://rdrr.io/r/base/dots.html)
  ([@MichaelChirico](https://github.com/MichaelChirico),
  [\#2022](https://github.com/r-lib/testthat/issues/2022)).
- New
  [`snapshot_reject()`](https://testthat.r-lib.org/reference/snapshot_accept.md)
  rejects all modified snapshots by deleting the `.new` variants
  ([\#1923](https://github.com/r-lib/testthat/issues/1923)), and
  [`snapshot_download_gh()`](https://testthat.r-lib.org/reference/snapshot_download_gh.md)
  makes it easy to get snapshots off GitHub and into your local package
  ([\#1779](https://github.com/r-lib/testthat/issues/1779)).
- [`expect_snapshot()`](https://testthat.r-lib.org/reference/expect_snapshot.md)
  and friends will now fail when creating a new snapshot on CI. This is
  usually a signal that you’ve forgotten to run it locally before
  committing ([\#1461](https://github.com/r-lib/testthat/issues/1461)).
- New `SlowReporter` makes it easier to find the slowest tests in your
  package. You can run it with `devtools::test(reporter = "slow")`
  ([\#1466](https://github.com/r-lib/testthat/issues/1466)).
- New
  [`vignette("mocking")`](https://testthat.r-lib.org/articles/mocking.md)
  explains mocking in detail
  ([\#1265](https://github.com/r-lib/testthat/issues/1265)).
- New `vignette("challenging-functions")` provides an index to other
  documentation organised by various challenges
  ([\#1265](https://github.com/r-lib/testthat/issues/1265)).

### Minor improvements and bug fixes

- Interrupting a test now prints the test name. This makes it easier to
  tell where a very slow test might be hanging
  ([\#1464](https://github.com/r-lib/testthat/issues/1464)).
- Fixed an issue preventing compilation from succeeding due to
  deprecation / removal of `std::uncaught_exception()` (2,
  [\#2047](https://github.com/r-lib/testthat/issues/2047)).
- [`expect_lt()`](https://testthat.r-lib.org/reference/comparison-expectations.md),
  [`expect_gt()`](https://testthat.r-lib.org/reference/comparison-expectations.md),
  and friends have a refined display that is more likely to display the
  correct number of digits and shows you the actual values compared
  ([\#2006](https://github.com/r-lib/testthat/issues/2006)). They have a
  better display for non-numeric data
  ([@stibu81](https://github.com/stibu81),
  [\#2268](https://github.com/r-lib/testthat/issues/2268)).
- `expect_matches()` failures should be a little easier to read
  ([\#2135](https://github.com/r-lib/testthat/issues/2135),
  [\#2181](https://github.com/r-lib/testthat/issues/2181)).
- `expect_no_*()` now executes the entire code block, rather than
  stopping at the first message or warning
  ([\#1991](https://github.com/r-lib/testthat/issues/1991)).
- [`expect_named()`](https://testthat.r-lib.org/reference/expect_named.md)
  now gives more informative errors
  ([\#2091](https://github.com/r-lib/testthat/issues/2091)).
- [`expect_s4_class()`](https://testthat.r-lib.org/reference/inheritance-expectations.md)
  now supports unquoting ([@stibu81](https://github.com/stibu81),
  [\#2064](https://github.com/r-lib/testthat/issues/2064)).
- [`expect_snapshot()`](https://testthat.r-lib.org/reference/expect_snapshot.md)
  no longer loses the last snapshot if file is missing the final newline
  ([\#2092](https://github.com/r-lib/testthat/issues/2092)). It’s easy
  to accidentally remove this because there are two trailing new lines
  in snapshot files and many editors will automatically remove one if
  you touch the file.
- [`expect_snapshot()`](https://testthat.r-lib.org/reference/expect_snapshot.md)
  on reports how to resolve failures once when running inside
  `R CMD check`.
- [`expect_snapshot()`](https://testthat.r-lib.org/reference/expect_snapshot.md)
  no longer skips on CRAN, as that skips the rest of the test. Instead
  it just returns, neither succeeding nor failing
  ([\#1585](https://github.com/r-lib/testthat/issues/1585)).
- [`expect_snapshot()`](https://testthat.r-lib.org/reference/expect_snapshot.md)
  and
  [`expect_snapshot_file()`](https://testthat.r-lib.org/reference/expect_snapshot_file.md)
  hints now include the path to the package, if it’s not the current
  working directory
  ([\#1577](https://github.com/r-lib/testthat/issues/1577)).
- [`expect_snapshot()`](https://testthat.r-lib.org/reference/expect_snapshot.md)
  gives a more informative backtrace when the code inside the snapshot
  errors ([\#2277](https://github.com/r-lib/testthat/issues/2277)).
- [`expect_snapshot_file()`](https://testthat.r-lib.org/reference/expect_snapshot_file.md)
  now clearly errors if the `path` doesn’t exist
  ([\#2191](https://github.com/r-lib/testthat/issues/2191)), or has been
  used alreaday
  ([\#1592](https://github.com/r-lib/testthat/issues/1592)). It now
  considers `.json` to be a text file
  ([\#1593](https://github.com/r-lib/testthat/issues/1593)), and shows
  differences for text files in the console
  ([\#1593](https://github.com/r-lib/testthat/issues/1593)).
- [`expect_snapshot_value()`](https://testthat.r-lib.org/reference/expect_snapshot_value.md)
  can now handle expressions that generate `-`
  ([\#1678](https://github.com/r-lib/testthat/issues/1678)) or zero
  length atomic vectors
  ([\#2042](https://github.com/r-lib/testthat/issues/2042)).
- [`expect_vector()`](https://testthat.r-lib.org/reference/expect_vector.md)
  fails, instead of erroring, if `object` is not a vector
  ([@plietar](https://github.com/plietar),
  [\#2224](https://github.com/r-lib/testthat/issues/2224)).
- [`JunitReporter()`](https://testthat.r-lib.org/reference/JunitReporter.md)
  no longer fails with `"no applicable method for xml_add_child"` for
  warnings outside of tests
  ([\#1913](https://github.com/r-lib/testthat/issues/1913)).
  Additionally, warnings now save their backtraces and
  [`JunitReporter()`](https://testthat.r-lib.org/reference/JunitReporter.md)
  strips ANSI escapes in more places
  ([\#1852](https://github.com/r-lib/testthat/issues/1852),
  [\#2032](https://github.com/r-lib/testthat/issues/2032)).
- [`local_edition()`](https://testthat.r-lib.org/reference/local_edition.md)
  now gives a useful error for bad values
  ([\#1547](https://github.com/r-lib/testthat/issues/1547)).
- `ParallelProgressReporter` now respects `max_failures`
  ([\#1162](https://github.com/r-lib/testthat/issues/1162)), and test
  files with syntax errors are no longer silently ignored
  ([\#1360](https://github.com/r-lib/testthat/issues/1360)).
- `test_file(desc = ...)` (i.e. test filtering) no longer loses snapshot
  results ([\#2066](https://github.com/r-lib/testthat/issues/2066)),
  works with [`it()`](https://testthat.r-lib.org/reference/describe.md),
  and can now be character vector in order to recursively filter
  subtests ([\#2118](https://github.com/r-lib/testthat/issues/2118)).
- [`test_that()`](https://testthat.r-lib.org/reference/test_that.md) no
  longer warns about the absence of
  [`{}`](https://rdrr.io/r/base/Paren.html) since it no longer seems to
  be necessary.
- [`set_state_inspector()`](https://testthat.r-lib.org/reference/set_state_inspector.md)
  gains `tolerance` argument and ignores minor FP differences by default
  ([@mcol](https://github.com/mcol),
  [\#2237](https://github.com/r-lib/testthat/issues/2237)).
- [`skip_on_os()`](https://testthat.r-lib.org/reference/skip.md) gains
  an option `"emscripten"` of the `os` argument to skip tests on
  Emscripten ([@eitsupi](https://github.com/eitsupi),
  [\#2103](https://github.com/r-lib/testthat/issues/2103)).
- `snapshot_accept(test)` now works when the test file name contains `.`
  ([\#1669](https://github.com/r-lib/testthat/issues/1669)).
- [`snapshot_review()`](https://testthat.r-lib.org/reference/snapshot_accept.md)
  includes a reject button and only displays the file navigation and the
  skip button if there are multiple files to review
  ([\#2025](https://github.com/r-lib/testthat/issues/2025)). It now
  passes `...` on to
  [`shiny::runApp()`](https://rdrr.io/pkg/shiny/man/runApp.html)
  ([\#1928](https://github.com/r-lib/testthat/issues/1928)).

## testthat 3.2.3

CRAN release: 2025-01-13

- Fixed an issue where `expect_no_error(1)` was failing
  ([\#2037](https://github.com/r-lib/testthat/issues/2037)).

- Fixed an issue where calling
  [`skip()`](https://testthat.r-lib.org/reference/skip.md) outside of an
  active test could cause an unexpected error (2,
  [\#2039](https://github.com/r-lib/testthat/issues/2039)).

## testthat 3.2.2

CRAN release: 2024-12-10

### New expectations

- [`expect_s7_class()`](https://testthat.r-lib.org/reference/inheritance-expectations.md)
  tests if an object is an S7 class
  ([\#1580](https://github.com/r-lib/testthat/issues/1580)).

- [`expect_no_failure()`](https://testthat.r-lib.org/reference/expect_no_success.md),
  [`expect_no_success()`](https://testthat.r-lib.org/reference/expect_no_success.md)
  and
  [`expect_snapshot_failure()`](https://testthat.r-lib.org/reference/expect_success.md)
  provide more options for testing expectations.

### Bug fixes and minor improvements

- testthat now requires waldo 0.6.0 or later to access the latest
  features ([\#1955](https://github.com/r-lib/testthat/issues/1955)).

- [`expect_condition()`](https://testthat.r-lib.org/reference/expect_error.md)
  and related functions now include the `class` of the expected
  condition in the failure message, if provided
  ([\#1987](https://github.com/r-lib/testthat/issues/1987)).

- [`expect_error()`](https://testthat.r-lib.org/reference/expect_error.md)
  and friends now error if you supply `...` but not `pattern`
  ([\#1932](https://github.com/r-lib/testthat/issues/1932)). They no
  longer give an uninformative error if they fail inside a magrittr pipe
  ([\#1994](https://github.com/r-lib/testthat/issues/1994)).

- `expect_no_*()` expectations no longer incorrectly emit a passing test
  result if they in fact fail
  ([\#1997](https://github.com/r-lib/testthat/issues/1997)).

- [`expect_setequal()`](https://testthat.r-lib.org/reference/expect_setequal.md)
  correctly identifies what is missing where
  ([\#1962](https://github.com/r-lib/testthat/issues/1962)).

- [`expect_snapshot()`](https://testthat.r-lib.org/reference/expect_snapshot.md)
  now strips line breaks in test descriptions
  ([@LDSamson](https://github.com/LDSamson),
  [\#1900](https://github.com/r-lib/testthat/issues/1900)), and errors
  when called from a
  [`test_that()`](https://testthat.r-lib.org/reference/test_that.md)
  that has an empty description (2,
  [\#1980](https://github.com/r-lib/testthat/issues/1980)).

- [`expect_true()`](https://testthat.r-lib.org/reference/logical-expectations.md)
  and
  [`expect_false()`](https://testthat.r-lib.org/reference/logical-expectations.md)
  give better errors if `actual` isn’t a vector
  ([\#1996](https://github.com/r-lib/testthat/issues/1996)).

- [`expect_visible()`](https://testthat.r-lib.org/reference/expect_invisible.md)
  and
  [`expect_invisible()`](https://testthat.r-lib.org/reference/expect_invisible.md)
  have clearer failure messages
  ([\#1966](https://github.com/r-lib/testthat/issues/1966)).

- [`local_reproducible_output()`](https://testthat.r-lib.org/reference/local_test_context.md)
  (used in
  [`test_that()`](https://testthat.r-lib.org/reference/test_that.md)
  blocks) now sets `LANGUAGE` to `"C"` instead of `"en"` to disable
  translations, avoiding warnings on some platforms
  ([\#1925](https://github.com/r-lib/testthat/issues/1925)).

- [`skip_if_not_installed()`](https://testthat.r-lib.org/reference/skip.md)
  generates a clearer message that sorts better
  ([@MichaelChirico](https://github.com/MichaelChirico),
  [\#1959](https://github.com/r-lib/testthat/issues/1959)).

- [`with_mock()`](https://testthat.r-lib.org/reference/with_mock.md) and
  [`local_mock()`](https://testthat.r-lib.org/reference/with_mock.md)
  have been unconditionally deprecated as they will no longer work in
  future versions of R
  ([\#1999](https://github.com/r-lib/testthat/issues/1999)).

## testthat 3.2.1

CRAN release: 2023-12-02

- Fix incorrect format string detected by latest R-devel. Fix thanks to
  Tomas Kalibera.

- [`expect_snapshot()`](https://testthat.r-lib.org/reference/expect_snapshot.md)
  handles unexpected errors like errors outside of snapshots, i.e. they
  terminate the entire test and get a traceback
  ([\#1906](https://github.com/r-lib/testthat/issues/1906)).

- [`JunitReporter()`](https://testthat.r-lib.org/reference/JunitReporter.md)
  now uses ensures numeric values are saved the xml file with `.` as
  decimal separator. ([@maksymiuks](https://github.com/maksymiuks),
  [\#1660](https://github.com/r-lib/testthat/issues/1660))

- [`local_mocked_bindings()`](https://testthat.r-lib.org/reference/local_mocked_bindings.md)
  can now mock any object, not just functions
  ([\#1896](https://github.com/r-lib/testthat/issues/1896)).

- [`skip_if_offline()`](https://testthat.r-lib.org/reference/skip.md)
  now uses `captive.apple.com` by default. This is the hostname that
  Apple devices use to check that they’re online so it should have a
  higher reliability than `r-project.org`
  ([@jdblischak](https://github.com/jdblischak),
  [\#1890](https://github.com/r-lib/testthat/issues/1890)).

- `test_file(desc = )` will now find
  [`describe()`](https://testthat.r-lib.org/reference/describe.md) tests
  as well as
  [`test_that()`](https://testthat.r-lib.org/reference/test_that.md)
  tests ([\#1903](https://github.com/r-lib/testthat/issues/1903)).

## testthat 3.2.0

CRAN release: 2023-10-06

### Lifecycle changes

- [`is_informative_error()`](https://testthat.r-lib.org/reference/is_informative_error.md)
  and the `wrap` argument to
  [`test_dir()`](https://testthat.r-lib.org/reference/test_dir.md) and
  friends are now defunct.

- [`expect_no_error()`](https://testthat.r-lib.org/reference/expect_no_error.md),
  [`expect_no_warning()`](https://testthat.r-lib.org/reference/expect_no_error.md),
  [`expect_no_message()`](https://testthat.r-lib.org/reference/expect_no_error.md),
  [`expect_no_condition()`](https://testthat.r-lib.org/reference/expect_no_error.md),
  [`local_mocked_bindings()`](https://testthat.r-lib.org/reference/local_mocked_bindings.md),
  and
  [`with_mocked_bindings()`](https://testthat.r-lib.org/reference/local_mocked_bindings.md)
  are now stable, not experimental.

### New features

- All packages, regardless of whether or not they use rlang 1.0.0, now
  use the new snapshot display for errors, warnings, and messages
  ([\#1856](https://github.com/r-lib/testthat/issues/1856)). This no
  longer shows the class name, instead focussing on a display that more
  closely mimics what you’ll see interactively, including showing the
  error call.

- testthat uses an improved algorithm for finding the srcref associated
  with an expectation/error/warning/skip. It now looks for the most
  recent call that has known source and is found inside the
  [`test_that()`](https://testthat.r-lib.org/reference/test_that.md)
  call. This generally gives more specific locations than the previous
  approach and gives much better locations if an error occurs in an exit
  handler.

### Minor features and bug fixes

- Helpers are no longer run twice.

- [`expect_setequal()`](https://testthat.r-lib.org/reference/expect_setequal.md)
  correctly displays results when only one of actual and expected is
  missing elements
  ([\#1835](https://github.com/r-lib/testthat/issues/1835)).

- [`expect_snapshot()`](https://testthat.r-lib.org/reference/expect_snapshot.md)
  and friends no longer create a temporary file on every invocation.

- [`expect_snapshot_file()`](https://testthat.r-lib.org/reference/expect_snapshot_file.md)
  now generates clickable links to review changes
  ([\#1821](https://github.com/r-lib/testthat/issues/1821)).

- [`expect_snapshot_value()`](https://testthat.r-lib.org/reference/expect_snapshot_value.md)
  has an improved error if the object can’t be safely serialized using
  the specified `style`
  ([\#1771](https://github.com/r-lib/testthat/issues/1771)).

- `options(rlang_interactive = TRUE)` no longer causes
  [`skip_on_cran()`](https://testthat.r-lib.org/reference/skip.md) to
  not run on CRAN
  ([\#1868](https://github.com/r-lib/testthat/issues/1868)).

- [`skip_if_offline()`](https://testthat.r-lib.org/reference/skip.md)
  now errors if you don’t have curl installed
  ([\#1854](https://github.com/r-lib/testthat/issues/1854)).

- `StopReporter` gains the ability to suppress praise when a test
  passes.

- `ProgressReporter` now uses is a two characters wide skip column in
  order to have a consistent width when 10 or more tests are skipped in
  a single file ([@mgirlich](https://github.com/mgirlich),
  [\#1844](https://github.com/r-lib/testthat/issues/1844)).

- [`test_file()`](https://testthat.r-lib.org/reference/test_file.md)
  gains a `desc` argument which allows you to run a single test from a
  file ([\#1776](https://github.com/r-lib/testthat/issues/1776)).

## testthat 3.1.10

CRAN release: 2023-07-06

- Fix for upcoming R-devel release.

- `testthat` now sets the `_R_CHECK_BROWSER_NONINTERACTIVE_` environment
  variable when running tests. This should ensure that left-over
  [`browser()`](https://rdrr.io/r/base/browser.html) statements will
  trigger an error if encountered while running tests. This
  functionality is only enabled with R (\>= 4.3.0).
  ([\#1825](https://github.com/r-lib/testthat/issues/1825))

## testthat 3.1.9

CRAN release: 2023-06-15

- New
  [`expect_contains()`](https://testthat.r-lib.org/reference/expect_setequal.md)
  and
  [`expect_in()`](https://testthat.r-lib.org/reference/expect_setequal.md)
  that works similarly to `expect_true(all(expected %in% object))` or
  `expect_true(all(object %in% expected))` but give more informative
  failure messages
  ([\#1346](https://github.com/r-lib/testthat/issues/1346)).

- New
  [`is_snapshot()`](https://testthat.r-lib.org/reference/is_testing.md)
  returns `TRUE` if code is running inside a snapshot test
  ([\#1796](https://github.com/r-lib/testthat/issues/1796)) and
  [`is_checking()`](https://testthat.r-lib.org/reference/is_testing.md)
  returns `TRUE` if test is running inside of `R CMD check`
  ([\#1795](https://github.com/r-lib/testthat/issues/1795))

- `ProgressReporter` only reports the run time of test files that take
  longer than 1s, rather than 0.1s.
  ([\#1806](https://github.com/r-lib/testthat/issues/1806)) and
  re-displays all failures at the end of the results. Skips are now only
  shown at the end of reporter summaries, not as tests are run. This
  makes them less intrusive in interactive tests while still allowing
  you to verify that the correct tests are skipped
  ([\#1801](https://github.com/r-lib/testthat/issues/1801)). When using
  parallel tests, links to failed tests
  ([\#1787](https://github.com/r-lib/testthat/issues/1787)) and links to
  accept/review snapshot
  ([\#1802](https://github.com/r-lib/testthat/issues/1802)) now work.

- [`set_state_inspector()`](https://testthat.r-lib.org/reference/set_state_inspector.md)
  allows to to register a function that’s called before and after every
  test, reporting on any differences. This is very useful for detecting
  if any of your tests have made changes to global state (like options,
  env vars, or connections)
  ([\#1674](https://github.com/r-lib/testthat/issues/1674)). This
  function was inspired by renv’s testing infrastructure.

- [`skip_on_cran()`](https://testthat.r-lib.org/reference/skip.md) no
  longer skips (errors) when run interactively.

- [`teardown_env()`](https://testthat.r-lib.org/reference/teardown_env.md)
  works in more cases.

- testthat no longer truncates tracebacks and uses rlang’s default tree
  display.

## testthat 3.1.8

CRAN release: 2023-05-04

- [`expect_snapshot()`](https://testthat.r-lib.org/reference/expect_snapshot.md)
  differences no longer use quotes.

- [`expect_error()`](https://testthat.r-lib.org/reference/expect_error.md),
  [`expect_warning()`](https://testthat.r-lib.org/reference/expect_error.md),
  and
  [`expect_message()`](https://testthat.r-lib.org/reference/expect_error.md)
  now correctly enforce that the condition is of the expected base class
  (e.g. error, warning, message) even when the `class` argument is used
  ([\#1168](https://github.com/r-lib/testthat/issues/1168)).

- [`it()`](https://testthat.r-lib.org/reference/describe.md) now calls
  [`local_test_context()`](https://testthat.r-lib.org/reference/local_test_context.md)
  so that it behaves more similarly to
  [`test_that()`](https://testthat.r-lib.org/reference/test_that.md)
  ([\#1731](https://github.com/r-lib/testthat/issues/1731)), and is now
  exported so that you can more easily run BDD tests interactively
  ([\#1587](https://github.com/r-lib/testthat/issues/1587))

- [`skip_on_bioc()`](https://testthat.r-lib.org/reference/skip.md) now
  uses the documented environment variable (`IS_BIOC_BUILD_MACHINE`)
  ([\#1712](https://github.com/r-lib/testthat/issues/1712)).

- [`source_file()`](https://testthat.r-lib.org/reference/source_file.md),
  which is used by various parts of the helper and setup/teardown
  machinery, now reports the file name in the case of errors
  ([\#1704](https://github.com/r-lib/testthat/issues/1704)).

- [`test_path()`](https://testthat.r-lib.org/reference/test_path.md) now
  works when called within helper files
  ([\#1562](https://github.com/r-lib/testthat/issues/1562)).

- New
  [`vignette("special-files")`](https://testthat.r-lib.org/articles/special-files.md)
  describes the various special files that testthat uses
  ([\#1638](https://github.com/r-lib/testthat/issues/1638)).

- [`with_mocked_bindings()`](https://testthat.r-lib.org/reference/local_mocked_bindings.md)
  and
  [`local_mocked_bindings()`](https://testthat.r-lib.org/reference/local_mocked_bindings.md)
  now also bind in the imports namespace and can mock S3 methods. These
  changes make them good substitutes for the deprecated functions
  [`with_mock()`](https://testthat.r-lib.org/reference/with_mock.md) and
  [`local_mock()`](https://testthat.r-lib.org/reference/with_mock.md),
  so those older functions now recommend switching to the newer
  equivalents instead of using the mockr or mockery packages.

## testthat 3.1.7

CRAN release: 2023-03-12

- [`expect_setequal()`](https://testthat.r-lib.org/reference/expect_setequal.md)
  gives more actionable feedback
  ([\#1657](https://github.com/r-lib/testthat/issues/1657)).

- [`expect_snapshot()`](https://testthat.r-lib.org/reference/expect_snapshot.md)
  no longer elides new lines when run interactively
  ([\#1726](https://github.com/r-lib/testthat/issues/1726)).

- Experimental new
  [`with_mocked_bindings()`](https://testthat.r-lib.org/reference/local_mocked_bindings.md)
  and
  [`local_mocked_bindings()`](https://testthat.r-lib.org/reference/local_mocked_bindings.md)
  ([\#1739](https://github.com/r-lib/testthat/issues/1739)).

## testthat 3.1.6

CRAN release: 2022-12-09

- The embedded version of Catch no longer uses
  [`sprintf()`](https://rdrr.io/r/base/sprintf.html).

## testthat 3.1.5

CRAN release: 2022-10-08

- Deprecation warnings are no longer captured by
  `expect_warning(code, NA)`, `expect_no_warning(code)`, or
  `expect_silent(code)`. This ensures that they bubble up to the top
  level so that you can address them
  ([\#1680](https://github.com/r-lib/testthat/issues/1680)). If you want
  to assert that code does not throw a deprecation warning, use
  `expect_no_condition(code(), class = "lifecycle_warning_deprecation")`.

- New experimental
  [`expect_no_error()`](https://testthat.r-lib.org/reference/expect_no_error.md),
  [`expect_no_warning()`](https://testthat.r-lib.org/reference/expect_no_error.md),
  [`expect_no_message()`](https://testthat.r-lib.org/reference/expect_no_error.md),
  and
  [`expect_no_condition()`](https://testthat.r-lib.org/reference/expect_no_error.md)
  for asserting the code runs without an error, warning, message, or
  condition ([\#1679](https://github.com/r-lib/testthat/issues/1679)).

- Fixed a warning in R \>=4.2.0 on Windows that occurred when using the
  C++ testing infrastructure that testthat provides
  ([\#1672](https://github.com/r-lib/testthat/issues/1672)).

- Fixed an issue that could prevent compilation of Catch unit tests with
  LLVM 15. In the interim, packages needing a local workaround can set
  `PKG_CPPFLAGS = -DCATCH_CONFIG_CPP11_NO_SHUFFLE` in their
  `src/Makevars`. (2,
  [\#1687](https://github.com/r-lib/testthat/issues/1687))

- Improve way
  [`capture_output()`](https://testthat.r-lib.org/reference/capture_output.md)
  handles encoding thanks to suggestion from Kurt Hornik
  ([\#1693](https://github.com/r-lib/testthat/issues/1693)). This means
  that snapshots using UTF-8 encoded text on windows work once again.

- [`local_reproducible_output()`](https://testthat.r-lib.org/reference/local_test_context.md)
  will no longer attempt to set the local language when `LANG='C'` is
  set or an R version is used that was not compiled with natural
  language support (NLS), which would previously emit non-test-related
  warnings during testing ([@dgkf](https://github.com/dgkf),
  [\#1662](https://github.com/r-lib/testthat/issues/1662);
  [@heavywatal](https://github.com/heavywatal),
  [\#1689](https://github.com/r-lib/testthat/issues/1689)).

- [`test_check()`](https://testthat.r-lib.org/reference/test_package.md)
  now suppresses hyperlinks since they’ll take you to the wrong places
  ([\#1648](https://github.com/r-lib/testthat/issues/1648)).

- New
  [`set_max_fails()`](https://testthat.r-lib.org/reference/set_max_fails.md)
  helper to make it easier to set the maximum number of failures before
  stopping the test suite. And the advice to set to Inf is now clickable
  ([\#1628](https://github.com/r-lib/testthat/issues/1628)).

- You can now configure the behaviour of the implicit
  `devtools::load_all()` call performed by `devtools::test()` in your
  package DESCRIPTION file
  ([\#1636](https://github.com/r-lib/testthat/issues/1636)). To disable
  exports of internal functions and of testthat helpers, use:

      Config/testthat/load-all: list(export_all = FALSE, helpers = FALSE)

  Helpers are now attached on the search path by default after calling
  `devtools::test()`.

## testthat 3.1.4

CRAN release: 2022-04-26

- Minor tweaks to output for latest cli
  ([\#1606](https://github.com/r-lib/testthat/issues/1606)).

## testthat 3.1.3

CRAN release: 2022-03-29

- Package that explicitly depend on rlang in their description file are
  now opting into a new snapshot display for errors, warnings, and
  messages. Previously this only concerned packages that explicitly
  depended on rlang \>= 1.0.0. This display will eventually become the
  default for all packages.

  Changes include:

  - Condition classes are no longer included in the snapshot by default.
    This is to avoid snapshot noise when upstream code adds or changes a
    class. For instance, r-devel has added classes to base errors.

  - Warnings and errors are now printed with rlang, including the `call`
    field. This makes it easy to monitor the full appearance of warning
    and error messages as they are displayed to users.

    This change is part of a push towards mentioning the useful context
    of an error as part of messages, see the release notes of rlang
    1.0.0 for more about this.

- Test results show hyperlinks to failed expectation when supported
  ([\#1544](https://github.com/r-lib/testthat/issues/1544)).

## testthat 3.1.2

CRAN release: 2022-01-20

- testthat now uses brio for all reading and writing
  ([\#1120](https://github.com/r-lib/testthat/issues/1120)). This
  ensures that snapshots always use “” to separate lines
  ([\#1516](https://github.com/r-lib/testthat/issues/1516)).

- [`expect_snapshot()`](https://testthat.r-lib.org/reference/expect_snapshot.md)
  no longer inadvertently trims trailing new lines off of errors and
  messages ([\#1509](https://github.com/r-lib/testthat/issues/1509)).

- If
  [`expect_snapshot()`](https://testthat.r-lib.org/reference/expect_snapshot.md)
  generates a snapshot with different value but still compares as equal
  (e.g. because you’ve set a numeric tolerance), the saved values no
  longer update if another snapshot in the same file changes.

- [`expect_snapshot()`](https://testthat.r-lib.org/reference/expect_snapshot.md)
  now only adds a `.new` file for the variants that actually changed,
  not all variants, while
  [`expect_snapshot_file()`](https://testthat.r-lib.org/reference/expect_snapshot_file.md)
  with variant with no longer immediately deletes `.new` files
  ([\#1468](https://github.com/r-lib/testthat/issues/1468)).

- [`expect_snapshot_file()`](https://testthat.r-lib.org/reference/expect_snapshot_file.md)
  gains a `transform` argument to match
  [`expect_snapshot()`](https://testthat.r-lib.org/reference/expect_snapshot.md)
  ([\#1474](https://github.com/r-lib/testthat/issues/1474)). `compare`
  now defaults to `NULL`, automatically guessing the comparison type
  based on the extension.

- [`expect_snapshot_file()`](https://testthat.r-lib.org/reference/expect_snapshot_file.md)
  now errors if the file being snapshot does not exist;
  `SnapshotReporter` also now treats the file directory as an absolute
  path ([\#1476](https://github.com/r-lib/testthat/issues/1476),
  [@malcolmbarrett](https://github.com/malcolmbarrett))

- New
  [`expect_snapshot_warning()`](https://testthat.r-lib.org/reference/expect_snapshot_output.md)
  to match
  [`expect_snapshot_error()`](https://testthat.r-lib.org/reference/expect_snapshot_output.md)
  ([\#1532](https://github.com/r-lib/testthat/issues/1532)).

- `JUnitReporter` now includes skip messages/reasons
  ([@rfineman](https://github.com/rfineman),
  [\#1507](https://github.com/r-lib/testthat/issues/1507))

- [`local_reproducible_output()`](https://testthat.r-lib.org/reference/local_test_context.md)
  gains a `lang` argument so that you can optionally override the
  language used to translate error messages
  ([\#1483](https://github.com/r-lib/testthat/issues/1483)). It also
  sets the global option `cli.num_colors` in addition to
  `crayon.enabled`.

- [`test_that()`](https://testthat.r-lib.org/reference/test_that.md) no
  longer inappropriately skips when calling
  [`expect_equal()`](https://testthat.r-lib.org/reference/equality-expectations.md)
  when you’ve temporarily set the locale to non-UTF-8
  ([\#1285](https://github.com/r-lib/testthat/issues/1285)).

- [`skip_if_offline()`](https://testthat.r-lib.org/reference/skip.md)
  now automatically calls
  [`skip_on_cran()`](https://testthat.r-lib.org/reference/skip.md)
  ([\#1479](https://github.com/r-lib/testthat/issues/1479)).

- [`snapshot_accept()`](https://testthat.r-lib.org/reference/snapshot_accept.md)
  and
  [`snapshot_review()`](https://testthat.r-lib.org/reference/snapshot_accept.md)
  now work with exactly the same file specification which can be a
  snapshot name, a file name, or a directory
  ([\#1546](https://github.com/r-lib/testthat/issues/1546)). They both
  work better with variants
  ([\#1508](https://github.com/r-lib/testthat/issues/1508)). Snapshot
  cleanup also removes all empty directories
  ([\#1457](https://github.com/r-lib/testthat/issues/1457)).

- When a snapshot changes the hint also mentions that you can use
  [`snapshot_review()`](https://testthat.r-lib.org/reference/snapshot_accept.md)
  ([\#1500](https://github.com/r-lib/testthat/issues/1500),
  [@DanChaltiel](https://github.com/DanChaltiel)) and the message tells
  you what variant is active
  ([\#1540](https://github.com/r-lib/testthat/issues/1540)).

- JUnit reporter now includes skip messages/reasons
  ([@rfineman](https://github.com/rfineman),
  [\#1507](https://github.com/r-lib/testthat/issues/1507)).

## testthat 3.1.1

CRAN release: 2021-12-03

- Condition expectations like
  [`expect_error()`](https://testthat.r-lib.org/reference/expect_error.md)
  now match across the ancestry of chained errors
  ([\#1493](https://github.com/r-lib/testthat/issues/1493)). You can
  disable this by setting the new `inherit` argument to `FALSE`.

- Added preliminary support for rlang 1.0 errors. It is disabled by
  default for the time being. To activate it, specify `rlang (>= 1.0.0)`
  in your `DESCRIPTION` file (or `>= 0.99.0.9001` if you’re using the
  dev version).

  Once activated, snapshots will now use rlang to print error and
  warning messages, including the `Error:` and `Warning:` prefixes. This
  means the `call` field of conditions is now displayed in snapshots if
  present. Parent error messages are also displayed. Following this
  change, all snapshots including error and warning messages need to be
  revalidated.

  We will enable the new rlang 1.0 output unconditionally in a future
  release.

- [`expect_snapshot()`](https://testthat.r-lib.org/reference/expect_snapshot.md)
  gains a new argument `cnd_class` to control whether to show the class
  of errors, warnings, and messages.

  The default is currently unchanged so that condition classes keep
  being included in snapshots. However, we plan to change the default to
  `FALSE` in an upcoming release to prevent distracting snapshot diffing
  as upstream packages add error classes. For instance, the development
  version of R is currently adding classes to basic errors, which causes
  spurious snapshot changes when testing against R-devel on CI.

  If you depend on rlang 1.0 (see above), the default is already set to
  `FALSE`.

- [`expect_snapshot()`](https://testthat.r-lib.org/reference/expect_snapshot.md)
  no longer processes rlang injection operators like `!!`.

- Fixed bug in expectations with long inputs that use `::`
  ([\#1472](https://github.com/r-lib/testthat/issues/1472)).

## testthat 3.1.0

CRAN release: 2021-10-04

### Snapshot tests

- [`expect_snapshot()`](https://testthat.r-lib.org/reference/expect_snapshot.md)
  is no longer experimental.

- [`expect_snapshot()`](https://testthat.r-lib.org/reference/expect_snapshot.md)
  and friends gets an experimental new `variant` argument which causes
  the snapshot to be saved in `_snaps/{variant}/{test}.md` instead of
  `_snaps/{test}.md`. This allows you to generate (and compare) unique
  snapshots for different scenarios like operating system or R version
  ([\#1143](https://github.com/r-lib/testthat/issues/1143)).

- [`expect_snapshot()`](https://testthat.r-lib.org/reference/expect_snapshot.md)
  gains a `transform` argument, which should be a function that takes a
  character vector of lines and returns a modified character vector of
  lines. This makes it easy to remove sensitive (e.g. API keys) or
  stochastic (e.g. random temporary directory names) from snapshot
  output ([\#1345](https://github.com/r-lib/testthat/issues/1345)).

- [`expect_snapshot_file()`](https://testthat.r-lib.org/reference/expect_snapshot_file.md)
  now replaces previous `.new` snapshot if code fails again with a
  different value.

- [`expect_snapshot_value()`](https://testthat.r-lib.org/reference/expect_snapshot_value.md)
  now has an explicit `tolerance` argument which uses the testthat
  default, thus making it more like
  [`expect_equal()`](https://testthat.r-lib.org/reference/equality-expectations.md)
  rather than
  [`expect_identical()`](https://testthat.r-lib.org/reference/equality-expectations.md).
  Set it to `NULL` if you want precise comparisons
  ([\#1309](https://github.com/r-lib/testthat/issues/1309)).
  `expect_snapshot_value(style = "deparse")` now works with negative
  values ([\#1342](https://github.com/r-lib/testthat/issues/1342)).

- If a test containing multiple snapshots fails (or skips) in between
  snapshots, the later snapshots are now silently restored. (Previously
  this warned and reset all snapshots, not just later snapshots).

- If you have multiple tests with the same name that use snapshots (not
  a good idea), you will no longer get a warning. Instead the snapshots
  will be aggregated across the tests.

### Breaking changes

- Condition expectations now consistently return the expected condition
  instead of the return value
  ([\#1371](https://github.com/r-lib/testthat/issues/1371)). Previously,
  they would only return the condition if the return value was `NULL`,
  leading to inconsistent behaviour.

  This is a breaking change to the 3rd edition. Where you could
  previously do:

      expect_equal(expect_warning(f(), "warning"), "value")

  You must now use condition expectations on the outside:

      expect_warning(expect_equal(f(), "value"), "warning")

      # Equivalently, save the value before inspection
      expect_warning(value <- f(), "warning")
      expect_equal(value, "value")

  This breaking change makes testthat more consistent. It also makes it
  possible to inspect both the value and the warning, which would
  otherwise require additional tools.

### Minor improvements and bug fixes

- Errors in test blocks now display the call if stored in the condition
  object ([\#1418](https://github.com/r-lib/testthat/issues/1418)).
  Uncaught errors now show their class
  ([\#1426](https://github.com/r-lib/testthat/issues/1426)).

- Multi-line skips only show the first line in the skip summary.

- `expr_label()`, which is used to concisely describe expressions used
  in expectations, now does a better job of summarising infix function
  ([\#1442](https://github.com/r-lib/testthat/issues/1442)).

- [`local_reproducible_output()`](https://testthat.r-lib.org/reference/local_test_context.md)
  now sets the `max.print` option to 99999 (the default), so your tests
  are unaffected by any changes you might’ve made in your `.Rprofile`
  (1367).

- `ProgressReporter` (the default only) now stops at the end of a file;
  this ensures that you see the results of all related tests, and
  ensures that snapshots are handled consistently
  ([\#1402](https://github.com/r-lib/testthat/issues/1402)).

- `ProgressReporter` now uses an env var to adjust the maximum number of
  failures. This makes it easier to adjust when the tests are run in a
  subprocess, as is common when using RStudio
  ([\#1450](https://github.com/r-lib/testthat/issues/1450)).

- [`skip_on_os()`](https://testthat.r-lib.org/reference/skip.md) gains
  an `arch` argument so you can also choose to skip selected
  architectures
  ([\#1421](https://github.com/r-lib/testthat/issues/1421)).

- [`test_that()`](https://testthat.r-lib.org/reference/test_that.md) now
  correctly errors when an expectation fails when run interactively
  ([\#1430](https://github.com/r-lib/testthat/issues/1430)).

- [`test_that()`](https://testthat.r-lib.org/reference/test_that.md) now
  automatically and correctly generate an “empty test” skip if it only
  generates warnings or messages (and doesn’t contain any expectations).

- [`testthat_tolerance()`](https://testthat.r-lib.org/reference/testthat_tolerance.md)
  no longer has an unused argument.

## testthat 3.0.4

CRAN release: 2021-07-01

- The vendored Catch code used for
  [`use_catch()`](https://testthat.r-lib.org/reference/use_catch.md) now
  uses a constant value for the stack size rather than relying on
  SIGSTKSZ. This fixes compatibility for recent glibc versions where
  SIGSTKSZ is no longer a constant.

- Fixed an issue that caused errors and early termination of tests on R
  \<= 3.6 when a failing condition expectation was signalled inside a
  snapshot.

## testthat 3.0.3

CRAN release: 2021-06-16

- [`expect_snapshot_file()`](https://testthat.r-lib.org/reference/expect_snapshot_file.md)
  gains a `compare` argument
  ([\#1378](https://github.com/r-lib/testthat/issues/1378),
  [@nbenn](https://github.com/nbenn)). This is a customisation point for
  how to compare old and new snapshot files.

  The functions
  [`compare_file_binary()`](https://testthat.r-lib.org/reference/expect_snapshot_file.md)
  and
  [`compare_file_text()`](https://testthat.r-lib.org/reference/expect_snapshot_file.md)
  are now exported from testthat to be supplied as `compare` argument.
  These implement the same behaviour as the old `binary` argument which
  is now deprecated.

- [`expect_snapshot()`](https://testthat.r-lib.org/reference/expect_snapshot.md)
  no longer deletes snapshots when an unexpected error occurs.

- New
  [`announce_snapshot_file()`](https://testthat.r-lib.org/reference/expect_snapshot_file.md)
  function for developers of testthat extensions. Announcing a snapshot
  file allows testthat to preserve files that were not generated because
  of an unexpected error or a
  [`skip()`](https://testthat.r-lib.org/reference/skip.md)
  ([\#1393](https://github.com/r-lib/testthat/issues/1393)). Unannounced
  files are automatically deleted during cleanup if the generating code
  isn’t called.

- New expectation:
  [`expect_no_match()`](https://testthat.r-lib.org/reference/expect_match.md).
  It complements
  [`expect_match()`](https://testthat.r-lib.org/reference/expect_match.md)
  by checking if a string **doesn’t match** a regular expression
  ([@michaelquinn32](https://github.com/michaelquinn32),
  [\#1381](https://github.com/r-lib/testthat/issues/1381)).

- Support setting the testthat edition via an environment variable
  (`TESTTHAT_EDITION`) as well
  ([@michaelquinn32](https://github.com/michaelquinn32),
  [\#1386](https://github.com/r-lib/testthat/issues/1386)).

## testthat 3.0.2

CRAN release: 2021-02-14

- Failing expectations now include a backtrace when they’re not called
  directly from within
  [`test_that()`](https://testthat.r-lib.org/reference/test_that.md) but
  are instead wrapped in some helper function
  ([\#1307](https://github.com/r-lib/testthat/issues/1307)).

- `CheckReporter` now only records warnings when not on CRAN. Otherwise
  failed CRAN revdep checks tend to be cluttered up with warnings
  ([\#1300](https://github.com/r-lib/testthat/issues/1300)). It
  automatically cleans up `testthat-problems.rds` left over from
  previous runs if the latest run is successful
  ([\#1314](https://github.com/r-lib/testthat/issues/1314)).

- [`expect_s3_class()`](https://testthat.r-lib.org/reference/inheritance-expectations.md)
  and
  [`expect_s4_class()`](https://testthat.r-lib.org/reference/inheritance-expectations.md)
  can now check that an object *isn’t* an S3 or S4 object by supplying
  `NA` to the second argument
  ([\#1321](https://github.com/r-lib/testthat/issues/1321)).

- [`expect_s3_class()`](https://testthat.r-lib.org/reference/inheritance-expectations.md)
  and
  [`expect_s4_class()`](https://testthat.r-lib.org/reference/inheritance-expectations.md)
  format class names in a less confusing way
  ([\#1322](https://github.com/r-lib/testthat/issues/1322)).

- [`expect_snapshot()`](https://testthat.r-lib.org/reference/expect_snapshot.md)
  collapses multiple adjacent headings of the same, so that, e.g., if
  you have multiple lines of code in a row, you’ll only see one “Code:”
  heading ([\#1311](https://github.com/r-lib/testthat/issues/1311)).

## testthat 3.0.1

CRAN release: 2020-12-17

- New `testthat.progress.verbose_skips` option. Set to `FALSE` to stop
  reporting skips as they occur; they will still appear in the summary
  ([\#1209](https://github.com/r-lib/testthat/issues/1209),
  [@krlmlr](https://github.com/krlmlr)).

- `CheckReporter` results have been tweaked based on experiences from
  running R CMD check on many packages. Hopefully it should now be
  easier to see the biggest problems (i.e. failures and errors) while
  still having skips and warnings available to check if needed
  ([\#1274](https://github.com/r-lib/testthat/issues/1274)). And now the
  full test name is always shown, no matter how long
  ([\#1268](https://github.com/r-lib/testthat/issues/1268)).

- Catch C++ tests are no longer reported multiple times
  ([\#1237](https://github.com/r-lib/testthat/issues/1237)) and are
  automatically skipped on Solaris since Catch is not supported
  ([\#1257](https://github.com/r-lib/testthat/issues/1257)).
  [`use_catch()`](https://testthat.r-lib.org/reference/use_catch.md)
  makes it more clear that your package needs to suggest xml2
  ([\#1235](https://github.com/r-lib/testthat/issues/1235)).

- [`auto_test_package()`](https://testthat.r-lib.org/reference/auto_test.md)
  works once again ([@mbojan](https://github.com/mbojan),
  [\#1211](https://github.com/r-lib/testthat/issues/1211),
  [\#1214](https://github.com/r-lib/testthat/issues/1214)).

- [`expect_snapshot()`](https://testthat.r-lib.org/reference/expect_snapshot.md)
  gains new `error` argument which controls whether or not an error is
  expected. If an unexpected error is thrown, or an expected error is
  not thrown,
  [`expect_snapshot()`](https://testthat.r-lib.org/reference/expect_snapshot.md)
  will fail (even on CRAN)
  ([\#1200](https://github.com/r-lib/testthat/issues/1200)).

- `expect_snapshot_value(style = "deparse")` handles more common R data
  structures.

- [`expect_snapshot_value()`](https://testthat.r-lib.org/reference/expect_snapshot_value.md)
  now passes `...` on to
  [`waldo::compare()`](https://waldo.r-lib.org/reference/compare.html)
  ([\#1222](https://github.com/r-lib/testthat/issues/1222)).

- [`expect_snapshot_file()`](https://testthat.r-lib.org/reference/expect_snapshot_file.md)
  gives a hint as to next steps when a failure occurs in non-interactive
  environments (with help from [@maelle](https://github.com/maelle),
  [\#1179](https://github.com/r-lib/testthat/issues/1179)).
  `expect_snapshot_*()` gives a more informative hint when you’re
  running tests interactively
  ([\#1226](https://github.com/r-lib/testthat/issues/1226)).

- `expect_snapshot_*()` automatically removes the `_snaps` directory if
  it’s empty ([\#1180](https://github.com/r-lib/testthat/issues/1180)).
  It also warns if snapshots are discarded because tests have duplicated
  names ([\#1278](https://github.com/r-lib/testthat/issues/1278),
  [@krlmlr](https://github.com/krlmlr)).

- [`local_reproducible_output()`](https://testthat.r-lib.org/reference/local_test_context.md)
  now sets the LANGUAGE env var to “en”. This matches the behaviour of R
  CMD check in interactive settings
  ([\#1213](https://github.com/r-lib/testthat/issues/1213)). It also now
  unsets RSTUDIO envvar, instead of setting it to 0
  ([\#1225](https://github.com/r-lib/testthat/issues/1225)).

- `RstudioReporter` has been renamed to `RStudioReporter`.

- [`skip_if_not()`](https://testthat.r-lib.org/reference/skip.md) no
  longer appends “is not TRUE” to custom messages
  ([@dpprdan](https://github.com/dpprdan),
  [\#1247](https://github.com/r-lib/testthat/issues/1247)).

- [`test_that()`](https://testthat.r-lib.org/reference/test_that.md) now
  warns (3e only) if code doesn’t have braces, since that makes it hard
  to track the source of an error
  ([\#1280](https://github.com/r-lib/testthat/issues/1280),
  [@krlmlr](https://github.com/krlmlr)).

## testthat 3.0.0

CRAN release: 2020-10-31

### 3rd edition

testhat 3.0.0 brings with it a 3rd edition that makes a number of
breaking changes in order to clean up the interface and help you use our
latest recommendations. To opt-in to the 3rd edition for your package,
set `Config/testthat/edition: 3` in your `DESCRIPTION` or use
`local_edition(3)` in individual tests. You can retrieve the active
edition with
[`edition_get()`](https://testthat.r-lib.org/reference/local_edition.md).
Learn more in
[`vignette("third-edition")`](https://testthat.r-lib.org/articles/third-edition.md).

- [`context()`](https://testthat.r-lib.org/reference/context.md) is
  deprecated.

- [`expect_identical()`](https://testthat.r-lib.org/reference/equality-expectations.md)
  and
  [`expect_equal()`](https://testthat.r-lib.org/reference/equality-expectations.md)
  use
  [`waldo::compare()`](https://waldo.r-lib.org/reference/compare.html)
  to compare actual and expected results. This mostly yields much more
  informative output when the actual and expected values are different,
  but while writing it uncovered some bugs in the existing comparison
  code.

- [`expect_error()`](https://testthat.r-lib.org/reference/expect_error.md),
  [`expect_warning()`](https://testthat.r-lib.org/reference/expect_error.md),
  [`expect_message()`](https://testthat.r-lib.org/reference/expect_error.md),
  and
  [`expect_condition()`](https://testthat.r-lib.org/reference/expect_error.md)
  now all use the same underlying logic: they capture the first
  condition that matches `class`/`regexp` and allow anything else to
  bubble up
  ([\#998](https://github.com/r-lib/testthat/issues/998)/#1052). They
  also warn if there are unexpected arguments that are never used.

- The `all` argument to
  [`expect_message()`](https://testthat.r-lib.org/reference/expect_error.md)
  and
  [`expect_warning()`](https://testthat.r-lib.org/reference/expect_error.md)
  is now deprecated. It was never a particularly good idea or well
  documented, and is now superseded by the new condition capturing
  behaviour.

- [`expect_equivalent()`](https://testthat.r-lib.org/reference/expect_equivalent.md),
  [`expect_reference()`](https://testthat.r-lib.org/reference/expect_reference.md),
  [`expect_is()`](https://testthat.r-lib.org/reference/expect_is.md) and
  [`expect_that()`](https://testthat.r-lib.org/reference/expect_that.md)
  are deprecated.

- Messages are no longer automatically silenced. Either use
  [`suppressMessages()`](https://rdrr.io/r/base/message.html) to hide
  unimportant messages, or
  [`expect_message()`](https://testthat.r-lib.org/reference/expect_error.md)
  to catch important messages
  ([\#1095](https://github.com/r-lib/testthat/issues/1095)).

- [`setup()`](https://testthat.r-lib.org/reference/teardown.md) and
  [`teardown()`](https://testthat.r-lib.org/reference/teardown.md) are
  deprecated in favour of test fixtures. See
  [`vignette("test-fixtures")`](https://testthat.r-lib.org/articles/test-fixtures.md)
  for more details.

- [`expect_known_output()`](https://testthat.r-lib.org/reference/expect_known_output.md),
  [`expect_known_value()`](https://testthat.r-lib.org/reference/expect_known_output.md),
  [`expect_known_hash()`](https://testthat.r-lib.org/reference/expect_known_output.md),
  and
  [`expect_equal_to_reference()`](https://testthat.r-lib.org/reference/expect_known_output.md)
  are all deprecated in favour of
  [`expect_snapshot_output()`](https://testthat.r-lib.org/reference/expect_snapshot_output.md)
  and
  [`expect_snapshot_value()`](https://testthat.r-lib.org/reference/expect_snapshot_value.md).

- [`test_that()`](https://testthat.r-lib.org/reference/test_that.md) now
  sets a number of options and env vars to make output as reproducible
  as possible ([\#1044](https://github.com/r-lib/testthat/issues/1044)).
  Many of these options were previously set in various places (in
  `devtools::test()`,
  [`test_dir()`](https://testthat.r-lib.org/reference/test_dir.md),
  [`test_file()`](https://testthat.r-lib.org/reference/test_file.md), or
  [`verify_output()`](https://testthat.r-lib.org/reference/verify_output.md))
  but they have now been centralised. You can use in your own code, or
  when debugging tests interactively with
  [`local_test_context()`](https://testthat.r-lib.org/reference/local_test_context.md).

- [`with_mock()`](https://testthat.r-lib.org/reference/with_mock.md) and
  [`local_mock()`](https://testthat.r-lib.org/reference/with_mock.md)
  are deprecated; please use the mockr or mockery packages instead
  ([\#1099](https://github.com/r-lib/testthat/issues/1099)).

### Snapshot testing

New family of snapshot expectations
([`expect_snapshot()`](https://testthat.r-lib.org/reference/expect_snapshot.md),
[`expect_snapshot_output()`](https://testthat.r-lib.org/reference/expect_snapshot_output.md),
[`expect_snapshot_error()`](https://testthat.r-lib.org/reference/expect_snapshot_output.md),
and
[`expect_snapshot_value()`](https://testthat.r-lib.org/reference/expect_snapshot_value.md))
provide “snapshot” tests, where the expected results are stored in
separate files in `test/testthat/_snaps`. They’re useful whenever it’s
painful to store expected results directly in the test files.

[`expect_snapshot_file()`](https://testthat.r-lib.org/reference/expect_snapshot_file.md)
along with
[`snapshot_review()`](https://testthat.r-lib.org/reference/snapshot_accept.md)
help snapshot more complex data, with initial support for text files,
images, and data frames
([\#1050](https://github.com/r-lib/testthat/issues/1050)).

See
[`vignette("snapshotting")`](https://testthat.r-lib.org/articles/snapshotting.md)
for more details.

### Reporters

- `CheckReporter` (used inside R CMD check) now prints out all problems
  (i.e. errors, failures, warnings and skips; and not just the first
  10), lists skips types, and records problems in machine readable
  format in `tests/testthat-problems.rds`
  ([\#1075](https://github.com/r-lib/testthat/issues/1075)).

- New `CompactProgressReporter` tweaks the output of `ProgressReporter`
  for use with a single file, as in `devtools::test_file()`. You can
  pick a different default by setting
  `testthat.default_compact_reporter` to the name of a reporter.

- `ProgressReporter` (the default reporter) now keeps the stack traces
  of an errors that happen before the before test, making problems
  substantially easier to track down
  ([\#1004](https://github.com/r-lib/testthat/issues/1004)). It checks
  if you’ve exceeded the maximum number of failures (from option
  `testthat.progress.max_fails`) after each expectation, rather than at
  the end of each file
  ([\#967](https://github.com/r-lib/testthat/issues/967)). It also gains
  new random praise options that use emoji, and lists skipped tests by
  type ([\#1028](https://github.com/r-lib/testthat/issues/1028)).

- `StopReporter` adds random praise emoji when a single test passes
  ([\#1094](https://github.com/r-lib/testthat/issues/1094)). It has more
  refined display of failures, now using the same style as
  `CompactProgressReporter` and `ProgressReporter`.

- `SummaryReporter` now records file start, not just context start. This
  makes it more compatible with modern style which does not use
  [`context()`](https://testthat.r-lib.org/reference/context.md)
  ([\#1089](https://github.com/r-lib/testthat/issues/1089)).

- All reporters now use exactly the same format when reporting the
  location of an expectation.

- Warnings now include a backtrace, making it easier to figure out where
  they came from.

- Catch C++ tests now provide detailed results for each test. To upgrade
  existing code, re-run
  [`testthat::use_catch()`](https://testthat.r-lib.org/reference/use_catch.md)
  ([\#1008](https://github.com/r-lib/testthat/issues/1008)).

- Many reporters (e.g. the check reporter) no longer raise an error when
  any tests fail. Use the `stop_on_failure` argument to
  `devtools::test()` and
  [`testthat::test_dir()`](https://testthat.r-lib.org/reference/test_dir.md)
  if your code relies on this. Alternatively, use
  `reporter = c("check", "fail")` to e.g. create a failing check
  reporter.

### Fixtures

- New
  [`vignette("test-fixtures")`](https://testthat.r-lib.org/articles/test-fixtures.md)
  describes test fixtures; i.e. how to temporarily and cleanly change
  global state in order to test parts of your code that otherwise would
  be hard to run
  ([\#1042](https://github.com/r-lib/testthat/issues/1042)).
  [`setup()`](https://testthat.r-lib.org/reference/teardown.md) and
  [`teardown()`](https://testthat.r-lib.org/reference/teardown.md) are
  superseded in favour of test fixtures.

- New
  [`teardown_env()`](https://testthat.r-lib.org/reference/teardown_env.md)
  for use with
  [`withr::defer()`](https://withr.r-lib.org/reference/defer.html). This
  allows you to run code after all other tests have been run.

### Skips

- New
  [`vignette("skipping")`](https://testthat.r-lib.org/articles/skipping.md)
  gives more general information on skipping tests, include some basics
  on testing skipping helpers
  ([\#1060](https://github.com/r-lib/testthat/issues/1060)).

- [`ProgressReporter()`](https://testthat.r-lib.org/reference/ProgressReporter.md)
  and
  [`CheckReporter()`](https://testthat.r-lib.org/reference/CheckReporter.md)
  list the number of skipped tests by reason at the end of the reporter.
  This makes it easier to check that you’re not skipping the wrong
  tests, particularly on CI services
  ([\#1028](https://github.com/r-lib/testthat/issues/1028)).

### Test running

- [`test_that()`](https://testthat.r-lib.org/reference/test_that.md) no
  longer triggers an error when run outside of tests; instead it
  produces a more informative summary of all failures, errors, warnings,
  and skips that occurred inside the test.

- [`test_that()`](https://testthat.r-lib.org/reference/test_that.md) now
  errors if `desc` is not a string
  ([\#1161](https://github.com/r-lib/testthat/issues/1161)).

- [`test_file()`](https://testthat.r-lib.org/reference/test_file.md) now
  runs helper, setup, and teardown code, and has the same arguments as
  [`test_dir()`](https://testthat.r-lib.org/reference/test_dir.md)
  ([\#968](https://github.com/r-lib/testthat/issues/968)). Long
  deprecated `encoding` argument has been removed.

- [`test_dir()`](https://testthat.r-lib.org/reference/test_dir.md) now
  defaults `stop_on_failure` to `TRUE` for consistency with other
  `test_` functions. The `wrap` argument has been deprecated; it’s not
  clear that it should ever have been exposed.

- New
  [`test_local()`](https://testthat.r-lib.org/reference/test_package.md)
  tests a local source package directory. It’s equivalent to
  `devtools::test()` but doesn’t require devtools and all its
  dependencies to be installed
  ([\#1030](https://github.com/r-lib/testthat/issues/1030)).

### Minor improvements and bug fixes

- testthat no longer supports tests stored in `inst/tests`. This has
  been deprecated since testthat 0.11.0 (released in 2015).
  [`test_package()`](https://testthat.r-lib.org/reference/test_package.md)
  (previously used for running tests in R CMD check) will fail silently
  if no tests are found to avoid breaking old packages on CRAN
  ([\#1149](https://github.com/r-lib/testthat/issues/1149)).

- [`capture_output()`](https://testthat.r-lib.org/reference/capture_output.md)
  and
  [`verify_output()`](https://testthat.r-lib.org/reference/verify_output.md)
  use a new
  [`testthat_print()`](https://testthat.r-lib.org/reference/capture_output.md)
  generic. This allows you to control the printed representation of your
  object specifically for tests (i.e. if your usual print method shows
  data that varies in a way that you don’t care about for tests)
  ([\#1056](https://github.com/r-lib/testthat/issues/1056)).

- [`context_start_file()`](https://testthat.r-lib.org/reference/context_start_file.md)
  is now exported for external reporters
  ([\#983](https://github.com/r-lib/testthat/issues/983),
  [\#1082](https://github.com/r-lib/testthat/issues/1082)). It now only
  strips first instance of prefix/suffix
  ([\#1041](https://github.com/r-lib/testthat/issues/1041),
  [@stufield](https://github.com/stufield)).

- [`expect_error()`](https://testthat.r-lib.org/reference/expect_error.md)
  no longer encourages you to use `class`. This advice removes one type
  of fragility at the expense of creating a different type
  ([\#1013](https://github.com/r-lib/testthat/issues/1013)).

- `expect_known_failure()` has been removed. As far as I can tell it was
  only ever used by testthat, and is rather fragile.

- [`expect_true()`](https://testthat.r-lib.org/reference/logical-expectations.md),
  [`expect_false()`](https://testthat.r-lib.org/reference/logical-expectations.md),
  and
  [`expect_null()`](https://testthat.r-lib.org/reference/expect_null.md)
  now use waldo to produce more informative failures.

- [`verify_output()`](https://testthat.r-lib.org/reference/verify_output.md)
  no longer always fails if output contains a carriage return character
  (“) ([\#1048](https://github.com/r-lib/testthat/issues/1048)). It uses
  the [`pdf()`](https://rdrr.io/r/grDevices/pdf.html) device instead of
  [`png()`](https://rdrr.io/r/grDevices/png.html) so it works on systems
  without X11 ([\#1011](https://github.com/r-lib/testthat/issues/1011)).
  And it uses
  [`waldo::compare()`](https://waldo.r-lib.org/reference/compare.html)
  to give more informative failures.

## testthat 2.3.2

CRAN release: 2020-03-02

- Fix R CMD check issues

## testthat 2.3.1

CRAN release: 2019-12-01

- The last version of testthat introduced a performance regression in
  error assertions
  ([\#963](https://github.com/r-lib/testthat/issues/963)). To fix it,
  you need to install rlang 0.4.2.

- Fixed error assertions with rJava errors
  ([\#964](https://github.com/r-lib/testthat/issues/964)).

- Fixed issue where error and warning messages were not retrieved with
  [`conditionMessage()`](https://rdrr.io/r/base/conditions.html) under
  certain circumstances.

## testthat 2.3.0

CRAN release: 2019-11-05

### Conditions

This release mostly focusses on an overhaul of how testthat works with
conditions (i.e. errors, warnings and messages). There are relatively
few user-facing changes, although you should now see more informative
backtraces from errors and failures.

- Unexpected errors are now printed with a simplified backtrace.

- [`expect_error()`](https://testthat.r-lib.org/reference/expect_error.md)
  and
  [`expect_condition()`](https://testthat.r-lib.org/reference/expect_error.md)
  now display a backtrace when the error doesn’t conform to expectations
  ([\#729](https://github.com/r-lib/testthat/issues/729)).

- [`expect_error()`](https://testthat.r-lib.org/reference/expect_error.md),
  [`expect_warning()`](https://testthat.r-lib.org/reference/expect_error.md)
  and
  [`expect_message()`](https://testthat.r-lib.org/reference/expect_error.md)
  now call
  [`conditionMessage()`](https://rdrr.io/r/base/conditions.html) to get
  the condition message. This generic makes it possible to generate
  messages at print-time rather than signal-time.

- [`expect_error()`](https://testthat.r-lib.org/reference/expect_error.md)
  gets a better warning message when you test for a custom error class
  with `regexp`.

- New
  [`exp_signal()`](https://testthat.r-lib.org/reference/expectation.md)
  function is a condition signaller that implements the testthat
  protocol (signal with [`stop()`](https://rdrr.io/r/base/stop.html) if
  the expectation is broken, with a `muffle_expectation` restart).

- Existence of restarts is first checked before invocation. This makes
  it possible to signal warnings or messages with a different condition
  signaller ([\#874](https://github.com/r-lib/testthat/issues/874)).

- `ListReporter` now tracks expectations and errors, even when they
  occur outside of tests. This ensures that `stop_on_failure` matches
  the results displayed by the reporter
  ([\#936](https://github.com/r-lib/testthat/issues/936)).

- You can silence warnings about untested error classes by implementing
  a method for `is_uninformative_warning()`. This method should be
  lazily registered, e.g. with
  [`vctrs::s3_register()`](https://vctrs.r-lib.org/reference/s3_register.html).
  This is useful for introducing an experimental error class without
  encouraging users to depend on the class in their tests.

- Respect options(warn = -1) to ignore all warnings
  ([@jeroen](https://github.com/jeroen)
  [\#958](https://github.com/r-lib/testthat/issues/958)).

### Expectations

- Expectations can now be explicitly subclassed with
  [`new_expectation()`](https://testthat.r-lib.org/reference/expectation.md).
  This constructor follows our new conventions for S3 classes and takes
  an optional subclass and optional attributes.

- Unquoted inputs no longer potentially generate multiple test messages
  ([\#929](https://github.com/r-lib/testthat/issues/929)).

- [`verify_output()`](https://testthat.r-lib.org/reference/verify_output.md)
  no longer uses quasiquotation, which fixes issues when verifying the
  output of tidy eval functions
  ([\#945](https://github.com/r-lib/testthat/issues/945)).

- [`verify_output()`](https://testthat.r-lib.org/reference/verify_output.md)
  gains a `unicode` parameter to turn on or off the use of Unicode
  characters by the cli package. It is disabled by default to prevent
  the tests from failing on platforms like Windows that don’t support
  UTF-8 (which could be your contributors’ or your CI machines).

- [`verify_output()`](https://testthat.r-lib.org/reference/verify_output.md)
  now correctly handles multi-line condition messages.

- [`verify_output()`](https://testthat.r-lib.org/reference/verify_output.md)
  now adds spacing after condition messages, consistent with the spacing
  added after normal output.

- [`verify_output()`](https://testthat.r-lib.org/reference/verify_output.md)
  has a new syntax for inserting headers in output files: insert a
  `"# Header"` string (starting with `#` as in Markdown) to add a header
  to a set of outputs.

### Other minor improvements and bug fixes

- [`compare.numeric()`](https://testthat.r-lib.org/reference/compare.md)
  uses a more sophisticated default tolerance that will automatically
  skip tests that rely on numeric tolerance if long doubles are not
  available ([\#940](https://github.com/r-lib/testthat/issues/940)).

- `JunitReporter` now reports tests in ISO 8601 in the UTC timezone and
  uses the maximum precision of 3 decimal places
  ([\#923](https://github.com/r-lib/testthat/issues/923)).

## testthat 2.2.1

CRAN release: 2019-07-25

- Repair regression in
  [`test_rd()`](https://testthat.r-lib.org/reference/test_examples.md)
  and add a couple of tests to hopefully detect the problem earlier in
  the future.

## testthat 2.2.0

CRAN release: 2019-07-22

### New features

- New
  [`verify_output()`](https://testthat.r-lib.org/reference/verify_output.md)
  is designed for testing output aimed at humans (most commonly print
  methods and error messages). It is a regression test that saves output
  in a way that makes it easy to review. It is automatically skipped on
  CRAN ([\#782](https://github.com/r-lib/testthat/issues/782),
  [\#834](https://github.com/r-lib/testthat/issues/834)).

### Minor improvements and bug fixes

- `as.data.frame.testthat_results()` now always returns a data frame
  with 13 columns ([@jozefhajnala](https://github.com/jozefhajnala),
  [\#887](https://github.com/r-lib/testthat/issues/887)).

- [`auto_test_package()`](https://testthat.r-lib.org/reference/auto_test.md)
  now correctly handles helper files (`tests/testthat/helper-*.R`),
  automatically reloading all code and rerunning all tests
  ([@CorradoLanera](https://github.com/CorradoLanera),
  [\#376](https://github.com/r-lib/testthat/issues/376),
  [\#896](https://github.com/r-lib/testthat/issues/896)).

- [`expect_match()`](https://testthat.r-lib.org/reference/expect_match.md)
  now displays `info` even when match length is 0
  ([\#867](https://github.com/r-lib/testthat/issues/867)).

- [`expect_s3_class()`](https://testthat.r-lib.org/reference/inheritance-expectations.md)
  gains new `exact` argument that allows you to check for an exact class
  match, not just inheritance
  ([\#885](https://github.com/r-lib/testthat/issues/885)).

- [`fail()`](https://testthat.r-lib.org/reference/fail.md) and
  [`succeed()`](https://testthat.r-lib.org/reference/succeed.md) gain
  `info` argument, which is passed along to
  [`expect()`](https://testthat.r-lib.org/reference/expect.md).

- [`test_examples()`](https://testthat.r-lib.org/reference/test_examples.md)
  gets some minor fixes: it now returns the results invisibly, doesn’t
  assume that examples should contain tests, and documents that you
  shouldn’t be using it routinely
  ([\#841](https://github.com/r-lib/testthat/issues/841)).

- [`test_file()`](https://testthat.r-lib.org/reference/test_file.md)
  only calls `Reporter$end_context()` if a context was started, fixing
  an error in `TeamcityReporter`
  ([@atheriel](https://github.com/atheriel),
  [\#883](https://github.com/r-lib/testthat/issues/883)).

- [`skip()`](https://testthat.r-lib.org/reference/skip.md) now reports
  reason for skipping as: `Reason: {skip condition}`
  ([@patr1ckm](https://github.com/patr1ckm),
  [\#868](https://github.com/r-lib/testthat/issues/868)).

- [`skip_if()`](https://testthat.r-lib.org/reference/skip.md) and
  [`skip_if_not()`](https://testthat.r-lib.org/reference/skip.md) now
  report `Reason: {skip condition} is TRUE` and
  `Reason: {skip condition} is not TRUE` respectively (@ patr1ckm,
  [\#868](https://github.com/r-lib/testthat/issues/868)).

- [`skip_if_translated()`](https://testthat.r-lib.org/reference/skip.md)
  now tests for translation of a specific message. This is more robust
  than the previous approach because translation happens
  message-by-message, not necessarily for the entire session
  ([\#879](https://github.com/r-lib/testthat/issues/879)) (and in
  general, it’s impossible to determine what language R is currently
  using).

- [`skip_on_covr()`](https://testthat.r-lib.org/reference/skip.md)
  allows you to skip tests when covr is running.
  ([@ianmcook](https://github.com/ianmcook),
  [\#895](https://github.com/r-lib/testthat/issues/895))

- [`expect_known_value()`](https://testthat.r-lib.org/reference/expect_known_output.md)
  gains a new serialisation `version` argument, defaulting to 2.
  Prevents the `.rds` files created to hold reference objects from
  making a package appear to require R \>= 3.5
  ([\#888](https://github.com/r-lib/testthat/issues/888)
  [@jennybc](https://github.com/jennybc)).

## testthat 2.1.1

CRAN release: 2019-04-23

- Fix test failures in strict latin1 locale

## testthat 2.1.0

CRAN release: 2019-04-22

### New expectations

- New
  [`expect_visible()`](https://testthat.r-lib.org/reference/expect_invisible.md)
  and
  [`expect_invisible()`](https://testthat.r-lib.org/reference/expect_invisible.md)
  make it easier to check if a function call returns its result visibly
  or invisibly ([\#719](https://github.com/r-lib/testthat/issues/719)).

- New `expect_mapequal(x, y)` checks that `x` and `y` have the same
  names, and the same value associated with each name (i.e. they compare
  the values of the vector standardising the order of the names)
  ([\#863](https://github.com/r-lib/testthat/issues/863)).

- New
  [`expect_vector()`](https://testthat.r-lib.org/reference/expect_vector.md)
  is a wrapper around
  [`vctrs::vec_assert()`](https://vctrs.r-lib.org/reference/vec_assert.html)
  making it easy to test against the vctrs definitions of prototype and
  size ([\#846](https://github.com/r-lib/testthat/issues/846)).
  (Currently requires development version of vctrs.)

### Improvements to existing expectations

- All expectations give clearer error messages if you forget the
  `object` or `expected` arguments
  ([\#743](https://github.com/r-lib/testthat/issues/743)).

- [`expect_equal()`](https://testthat.r-lib.org/reference/equality-expectations.md)
  now correctly compares infinite values
  ([\#789](https://github.com/r-lib/testthat/issues/789)).

- In
  [`expect_equal_to_reference()`](https://testthat.r-lib.org/reference/expect_known_output.md),
  the default value for `update` is now `FALSE`
  ([@BrodieG](https://github.com/BrodieG),
  [\#683](https://github.com/r-lib/testthat/issues/683)).

- [`expect_error()`](https://testthat.r-lib.org/reference/expect_error.md)
  now returns the error object as documented
  ([\#724](https://github.com/r-lib/testthat/issues/724)). It also now
  warns if you’re using a classed expectation and you’re not using the
  `class` argument. This is good practice as it decouples the error
  object (which tends to be stable) from its rendering to the user
  (which tends to be fragile)
  ([\#816](https://github.com/r-lib/testthat/issues/816)).

- [`expect_identical()`](https://testthat.r-lib.org/reference/equality-expectations.md)
  gains a `...` argument to pass additional arguments down to
  [`identical()`](https://rdrr.io/r/base/identical.html)
  ([\#714](https://github.com/r-lib/testthat/issues/714)).

- [`expect_lt()`](https://testthat.r-lib.org/reference/comparison-expectations.md),
  [`expect_lte()`](https://testthat.r-lib.org/reference/comparison-expectations.md),
  [`expect_gt()`](https://testthat.r-lib.org/reference/comparison-expectations.md)
  [`expect_gte()`](https://testthat.r-lib.org/reference/comparison-expectations.md)
  now handle `Inf` and `NA` arguments appropriately
  ([\#732](https://github.com/r-lib/testthat/issues/732)), and no longer
  require the inputs to be numeric.

- [`expect_output()`](https://testthat.r-lib.org/reference/expect_output.md)
  gains a `width` argument, allowing you to control the output width.
  This does not inherit from `getOption("width")`, ensuring that tests
  return the same results regardless of environment
  ([\#805](https://github.com/r-lib/testthat/issues/805)).

- [`expect_setequal()`](https://testthat.r-lib.org/reference/expect_setequal.md)
  now works with more vector types (including lists), because it uses
  `%in%`, rather than [`sort()`](https://rdrr.io/r/base/sort.html). It
  also warns if the inputs are named, as this suggests that your mental
  model of how
  [`expect_setequal()`](https://testthat.r-lib.org/reference/expect_setequal.md)
  works is wrong
  ([\#750](https://github.com/r-lib/testthat/issues/750)).

- `is_true()` and `is_false()` have been deprecated because they
  conflict with other functions in the tidyverse.

### Reporters

- Reporter documentation has been considerably improved
  ([\#657](https://github.com/r-lib/testthat/issues/657)).

- `CheckReporter`, used by R CMD check, now includes a count of
  warnings.

- `JUnitReporter` no longer replaces `.` in class names
  ([\#753](https://github.com/r-lib/testthat/issues/753)), and creates
  output that should be more compatible with Jenkins
  ([\#806](https://github.com/r-lib/testthat/issues/806),
  [@comicfans](https://github.com/comicfans)).

- `ListReporter` now records number of passed tests and original results
  in new columns
  ([\#675](https://github.com/r-lib/testthat/issues/675)).

- `ProgressReporter`, the default reporter, now:

  - Automatically generates a context from the file name. We no longer
    recommend the use of
    [`context()`](https://testthat.r-lib.org/reference/context.md) and
    instead encourage you to delete it, allowing the context to be
    autogenerated from the file name.

    This also eliminates the error that occurred if tests can before the
    first [`context()`](https://testthat.r-lib.org/reference/context.md)
    ([\#700](https://github.com/r-lib/testthat/issues/700),
    [\#705](https://github.com/r-lib/testthat/issues/705)).

  - Gains a `update_interval` parameter to control how often updates are
    printed (default 0.1 s). This prevents large printing overhead for
    very fast tests.
    ([\#701](https://github.com/r-lib/testthat/issues/701),
    [@jimhester](https://github.com/jimhester))

  - Uses a 3 character wide column to display test successes, so up to
    999 successful tests can be displayed without changing the alignment
    ([\#712](https://github.com/r-lib/testthat/issues/712)).

- `reporter$end_reporter()` is now only called when testing completes
  successfully. This ensures that you don’t get unnecessary output when
  the test fails partway through
  ([\#727](https://github.com/r-lib/testthat/issues/727)).

### Skips

- [`skip_if_offline()`](https://testthat.r-lib.org/reference/skip.md)
  skips tests if an internet connection is not available
  ([\#685](https://github.com/r-lib/testthat/issues/685)).

- [`skip_on_ci()`](https://testthat.r-lib.org/reference/skip.md) skips
  tests on continuous integration systems
  ([@mbjoseph](https://github.com/mbjoseph),
  [\#825](https://github.com/r-lib/testthat/issues/825)) by looking for
  a `CI` env var..

### Other new features

- New
  [`testthat_examples()`](https://testthat.r-lib.org/reference/testthat_examples.md)
  and
  [`testthat_example()`](https://testthat.r-lib.org/reference/testthat_examples.md)
  make it easy to access new test files bundled with the package. These
  are used in various examples to make it easier to understand how to
  use the package.

- New
  [`local_mock()`](https://testthat.r-lib.org/reference/with_mock.md)
  which allows you to mock a function without having to add an
  additional layer of indentation as with
  [`with_mock()`](https://testthat.r-lib.org/reference/with_mock.md)
  ([\#856](https://github.com/r-lib/testthat/issues/856)).

### Other minor improvements and bug fixes

- [`auto_test_package()`](https://testthat.r-lib.org/reference/auto_test.md)
  works better with recent devtools and also watches `src/` for changes
  ([\#809](https://github.com/r-lib/testthat/issues/809)).

- [`expect_s3_class()`](https://testthat.r-lib.org/reference/inheritance-expectations.md)
  now works with unquoting ([@jalsalam](https://github.com/jalsalam),
  [\#771](https://github.com/r-lib/testthat/issues/771)).

- `expectation` objects now contain the failure message, even when
  successful ([\#836](https://github.com/r-lib/testthat/issues/836))

- `devtools::test()` no longer fails if run multiple times within the
  same R session for a package containing Catch tests.
  ([devtools](https://github.com/r-lib/devtools/issues/1832)
  [\#1832](https://github.com/r-lib/testthat/issues/1832))

- New
  [`testing_package()`](https://testthat.r-lib.org/reference/is_testing.md)
  retrieves the name of the package currently being tested
  ([\#699](https://github.com/r-lib/testthat/issues/699)).

- `run_testthat_tests` C entrypoint is registered more robustly.

- [`skip()`](https://testthat.r-lib.org/reference/skip.md) now always
  produces a `message` of length 1, as expected elsewhere in testthat
  ([\#791](https://github.com/r-lib/testthat/issues/791)).

- Warnings are passed through even when `options(warn = 2)` is set
  ([@yutannihilation](https://github.com/yutannihilation),
  [\#721](https://github.com/r-lib/testthat/issues/721)).

## testthat 2.0.1

CRAN release: 2018-10-13

- Fix failing tests with devtools 2.0.0

## testthat 2.0.0

CRAN release: 2017-12-13

### Breaking API changes

- “Can’t mock functions in base packages”: You can no longer use
  [`with_mock()`](https://testthat.r-lib.org/reference/with_mock.md) to
  mock functions in base packages, because this no longer works in
  R-devel due to changes with the byte code compiler. I recommend using
  [mockery](https://github.com/r-lib/mockery) or
  [mockr](https://github.com/krlmlr/mockr) instead.

- The order of arguments to
  [`expect_equivalent()`](https://testthat.r-lib.org/reference/expect_equivalent.md)
  and
  [`expect_error()`](https://testthat.r-lib.org/reference/expect_error.md)
  has changed slightly as both now pass `...` on another function. This
  reveals itself with a number of different errors, like:

  - ‘what’ must be a character vector
  - ‘check.attributes’ must be logical
  - ‘tolerance’ should be numeric
  - argument is not interpretable as logical
  - threw an error with unexpected class
  - argument “quo” is missing, with no default
  - argument is missing, with no default

  If you see one of these errors, check the number, order, and names of
  arguments to the expectation.

- “Failure: (unknown)”. The last release mistakenly failed to test bare
  expectations not wrapped inside
  [`test_that()`](https://testthat.r-lib.org/reference/test_that.md). If
  you see “(unknown)” in a failure message, this is a failing
  expectation that you previously weren’t seeing. As well as fixing the
  failure, please also wrap inside a
  [`test_that()`](https://testthat.r-lib.org/reference/test_that.md)
  with an informative name.

- “Error: the argument has already been evaluated”: the way in which
  expectations now need create labels has changed, which caused a couple
  of failures with unusual usage when combined with `Reduce`,
  [`lapply()`](https://rdrr.io/r/base/lapply.html), and
  [`Map()`](https://rdrr.io/r/base/funprog.html). Avoid these functions
  in favour of for loops. I also recommend reading the section below on
  quasiquotation support in order to create more informative failure
  messages.

### Expectations

#### New and improved expectations

- [`expect_condition()`](https://testthat.r-lib.org/reference/expect_error.md)
  works like
  [`expect_error()`](https://testthat.r-lib.org/reference/expect_error.md)
  but captures any condition, not just error conditions
  ([\#621](https://github.com/r-lib/testthat/issues/621)).

- [`expect_error()`](https://testthat.r-lib.org/reference/expect_error.md)
  gains a `class` argument that allows you to make an assertion about
  the class of the error object
  ([\#530](https://github.com/r-lib/testthat/issues/530)).

- [`expect_reference()`](https://testthat.r-lib.org/reference/expect_reference.md)
  checks if two names point to the same object
  ([\#622](https://github.com/r-lib/testthat/issues/622)).

- [`expect_setequal()`](https://testthat.r-lib.org/reference/expect_setequal.md)
  compares two sets (stored in vectors), ignoring duplicates and
  differences in order
  ([\#528](https://github.com/r-lib/testthat/issues/528)).

#### New and improved skips

- [`skip_if()`](https://testthat.r-lib.org/reference/skip.md) makes it
  easy to skip a test when a condition is true
  ([\#571](https://github.com/r-lib/testthat/issues/571)). For example,
  use `skip_if(getRversion() <= 3.1)` to skip a test in older R
  versions.

- [`skip_if_translated()`](https://testthat.r-lib.org/reference/skip.md)
  skips tests if you’re running in an locale where translations are
  likely to occur
  ([\#565](https://github.com/r-lib/testthat/issues/565)). Use this to
  avoid spurious failures when checking the text of error messages in
  non-English locales.

- [`skip_if_not_installed()`](https://testthat.r-lib.org/reference/skip.md)
  gains new `minimum_version` argument
  ([\#487](https://github.com/r-lib/testthat/issues/487),
  [\#499](https://github.com/r-lib/testthat/issues/499)).

#### Known good values

We have identified a useful family of expectations that compares the
results of an expression to a known good value stored in a file. They
are designed to be use in conjunction with git so that you can see what
precisely has changed, and revert it if needed.

- [`expect_known_output()`](https://testthat.r-lib.org/reference/expect_known_output.md)
  replaces
  [`expect_output_file()`](https://testthat.r-lib.org/reference/expect_output_file.md),
  which has been soft-deprecated. It now defaults to `update = TRUE` and
  warn, rather than failing on the first run. It gains a `print`
  argument to automatically print the input
  ([\#627](https://github.com/r-lib/testthat/issues/627)). It also sets
  the width option to 80 to ensure consistent output across environments
  ([\#514](https://github.com/r-lib/testthat/issues/514))

- [`expect_known_value()`](https://testthat.r-lib.org/reference/expect_known_output.md)
  replaces
  [`expect_equal_to_reference()`](https://testthat.r-lib.org/reference/expect_known_output.md),
  which has been soft-deprecated. It gains an update argument defaulting
  to `TRUE`. This changes behaviour from the previous version, and
  soft-deprecated
  [`expect_equal_to_reference()`](https://testthat.r-lib.org/reference/expect_known_output.md)
  gets `update = FALSE`.

- `expect_known_failure()` stored and compares the failure message from
  an expectation. It’s a useful regression test when developing
  informative failure messages for your own expectations.

#### Quasiquotation support

All expectations can now use unquoting
([\#626](https://github.com/r-lib/testthat/issues/626)). This makes it
much easier to generate informative failure messages when running tests
in a for loop.

For example take this test:

``` r
f <- function(i) if (i > 3) i * 9 else i * 10

for (i in 1:5) {
  expect_equal(f(i), i * 10)
}
```

When it fails, you’ll see the message
`` Error: `f(i)` not equal to `i * 10` ``. That’s hard to diagnose
because you don’t know which iteration caused the problem!

``` r
for (i in 1:5) {
  expect_equal(f(!!i), !!(i * 10))
}
```

If you unquote the values using `!!`, you get the failure message
`` `f(4L)` not equal to 40. ``. This is much easier to diagnose! See
`?quasi_label()` for more details.

(Note that this is not tidy evaluation per se, but is closely related.
At this time you can not unquote quosures.)

### New features

#### Setup and teardown

- New [`setup()`](https://testthat.r-lib.org/reference/teardown.md) and
  [`teardown()`](https://testthat.r-lib.org/reference/teardown.md)
  functions allow you to run at the start and end of each test file.
  This is useful if you want to pair cleanup code with the code that
  messes up state
  ([\#536](https://github.com/r-lib/testthat/issues/536)).

- Two new prefixes are recognised in the `test/` directory. Files
  starting with `setup` are run before tests (but unlike `helpers` are
  not run in `devtools::load_all()`). Files starting with `teardown` are
  run after all tests are completed
  ([\#589](https://github.com/r-lib/testthat/issues/589)).

#### Other new features

- All files are now read and written as UTF-8
  ([\#510](https://github.com/r-lib/testthat/issues/510),
  [\#605](https://github.com/r-lib/testthat/issues/605)).

- [`is_testing()`](https://testthat.r-lib.org/reference/is_testing.md)
  allows you to tell if your code is being run inside a testing
  environment ([\#631](https://github.com/r-lib/testthat/issues/631)).
  Rather than taking a run-time dependency on testthat you may want to
  inline the function into your own package:

  ``` r
  is_testing <- function() {
    identical(Sys.getenv("TESTTHAT"), "true")
  }
  ```

  It’s frequently useful to combine with
  [`interactive()`](https://rdrr.io/r/base/interactive.html).

#### New default reporter

A new default reporter, `ReporterProgress`, produces more aesthetically
pleasing output and makes the most important information available
upfront ([\#529](https://github.com/r-lib/testthat/issues/529)). You can
return to the previous default by setting
`options(testthat.default_reporter = "summary")`.

#### Reporters

- Output colours have been tweaked to be consistent with clang: warnings
  are now in magenta, and skips in blue.

- New
  [`default_reporter()`](https://testthat.r-lib.org/reference/default_reporter.md)
  and
  [`check_reporter()`](https://testthat.r-lib.org/reference/default_reporter.md)
  which returns the default reporters for interactive and check
  environments ([\#504](https://github.com/r-lib/testthat/issues/504)).

- New `DebugReporter` that calls a better version of
  [`recover()`](https://rdrr.io/r/utils/recover.html) in case of
  failures, errors, or warnings
  ([\#360](https://github.com/r-lib/testthat/issues/360),
  [\#470](https://github.com/r-lib/testthat/issues/470)).

- New `JunitReporter` generates reports in JUnit compatible format.
  ([\#481](https://github.com/r-lib/testthat/issues/481),
  [@lbartnik](https://github.com/lbartnik);
  [\#640](https://github.com/r-lib/testthat/issues/640),
  [@nealrichardson](https://github.com/nealrichardson);
  [\#575](https://github.com/r-lib/testthat/issues/575))

- New `LocationReporter` which just prints the location of every
  expectation. This is useful for locating segfaults and C/C++
  breakpoints ([\#551](https://github.com/r-lib/testthat/issues/551)).

- `SummaryReporter` received a number of smaller tweaks

  - Aborts testing as soon the limit given by the option
    `testthat.summary.max_reports` (default 10) is reached
    ([\#520](https://github.com/r-lib/testthat/issues/520)).

  - New option `testthat.summary.omit_dots = TRUE` hides the progress
    dots speeding up tests by a small amount
    ([\#502](https://github.com/r-lib/testthat/issues/502)).

  - Bring back random praise and encouragement which I accidentally
    dropped ([\#478](https://github.com/r-lib/testthat/issues/478)).

- New option `testthat.default_check_reporter`, defaults to `"check"`.
  Continuous Integration system can set this option before evaluating
  package test sources in order to direct test result details to known
  location.

- All reporters now accept a `file` argument on initialization. If
  provided, reporters will write the test results to that path. This
  output destination can also be controlled with the option
  `testthat.output_file`
  ([\#635](https://github.com/r-lib/testthat/issues/635),
  [@nealrichardson](https://github.com/nealrichardson)).

### Deprecated functions

- `is_null()` and `matches()` have been deprecated because they conflict
  with other functions in the tidyverse
  ([\#523](https://github.com/r-lib/testthat/issues/523)).

### Minor improvements and bug fixes

- Updated Catch to 1.9.6. `testthat` now understands and makes use of
  the package routine registration mechanism required by CRAN with R \>=
  3.4.0.

  1.  

- Better reporting for deeply nested failures, limiting the stack trace
  to the first and last 10 entries
  ([\#474](https://github.com/r-lib/testthat/issues/474)).

- Bare expectations notify the reporter once again. This is achieved by
  running all tests inside `test_code()` by default
  ([\#427](https://github.com/r-lib/testthat/issues/427),
  [\#498](https://github.com/r-lib/testthat/issues/498)). This behaviour
  can be overridden by setting `wrap = FALSE` in
  [`test_dir()`](https://testthat.r-lib.org/reference/test_dir.md) and
  friends ([\#586](https://github.com/r-lib/testthat/issues/586)).

- [`auto_test()`](https://testthat.r-lib.org/reference/auto_test.md) and
  [`auto_test_package()`](https://testthat.r-lib.org/reference/auto_test.md)
  provide `hash` parameter to enable switching to faster,
  time-stamp-based modification detection
  ([\#598](https://github.com/r-lib/testthat/issues/598),
  [@katrinleinweber](https://github.com/katrinleinweber)).
  [`auto_test_package()`](https://testthat.r-lib.org/reference/auto_test.md)
  works correctly on windows
  ([\#465](https://github.com/r-lib/testthat/issues/465)).

- [`capture_output_lines()`](https://testthat.r-lib.org/reference/capture_output.md)
  is now exported
  ([\#504](https://github.com/r-lib/testthat/issues/504)).

- [`compare.character()`](https://testthat.r-lib.org/reference/compare.md)
  works correctly for vectors of length \> 5
  ([\#513](https://github.com/r-lib/testthat/issues/513),
  [@brodieG](https://github.com/brodieG))

- [`compare.default()`](https://testthat.r-lib.org/reference/compare.md)
  gains a `max_diffs` argument and defaults to printing out only the
  first 9 differences
  ([\#538](https://github.com/r-lib/testthat/issues/538)).

- [`compare.numeric()`](https://testthat.r-lib.org/reference/compare.md)
  respects `check.attributes()` so
  [`expect_equivalent()`](https://testthat.r-lib.org/reference/expect_equivalent.md)
  correctly ignores attributes of numeric vectors
  ([\#485](https://github.com/r-lib/testthat/issues/485)).

- Output expectations
  ([`expect_output()`](https://testthat.r-lib.org/reference/expect_output.md),
  [`expect_message()`](https://testthat.r-lib.org/reference/expect_error.md),
  [`expect_warning()`](https://testthat.r-lib.org/reference/expect_error.md),
  and
  [`expect_silent()`](https://testthat.r-lib.org/reference/expect_silent.md))
  all invisibly return the first argument to be consistent with the
  other expectations
  ([\#615](https://github.com/r-lib/testthat/issues/615)).

- [`expect_length()`](https://testthat.r-lib.org/reference/expect_length.md)
  works with any object that has a `length` method, not just vectors
  ([\#564](https://github.com/r-lib/testthat/issues/564),
  [@nealrichardson](https://github.com/nealrichardson))

- [`expect_match()`](https://testthat.r-lib.org/reference/expect_match.md)
  now accepts explicit `perl` and `fixed` arguments, and adapts the
  failure message to the value of `fixed`. This also affects other
  expectations that forward to
  [`expect_match()`](https://testthat.r-lib.org/reference/expect_match.md),
  like
  [`expect_output()`](https://testthat.r-lib.org/reference/expect_output.md),
  [`expect_message()`](https://testthat.r-lib.org/reference/expect_error.md),
  [`expect_warning()`](https://testthat.r-lib.org/reference/expect_error.md),
  and
  [`expect_error()`](https://testthat.r-lib.org/reference/expect_error.md).

- [`expect_match()`](https://testthat.r-lib.org/reference/expect_match.md)
  escapes special regular expression characters when printing
  ([\#522](https://github.com/r-lib/testthat/issues/522),
  [@jimhester](https://github.com/jimhester)).

- [`expect_message()`](https://testthat.r-lib.org/reference/expect_error.md),
  [`expect_warning()`](https://testthat.r-lib.org/reference/expect_error.md)
  and
  [`expect_error()`](https://testthat.r-lib.org/reference/expect_error.md)
  produce clearer failure messages.

- [`find_test_scripts()`](https://testthat.r-lib.org/reference/find_test_scripts.md)
  only looks for `\.[rR]` in the extension
  ([\#492](https://github.com/r-lib/testthat/issues/492),
  [@brodieG](https://github.com/brodieG))

- [`test_dir()`](https://testthat.r-lib.org/reference/test_dir.md),
  [`test_package()`](https://testthat.r-lib.org/reference/test_package.md),
  [`test_check()`](https://testthat.r-lib.org/reference/test_package.md)
  unset the `R_TESTS` env var
  ([\#603](https://github.com/r-lib/testthat/issues/603))

- [`test_examples()`](https://testthat.r-lib.org/reference/test_examples.md)
  now works with installed packages as well as source packages
  ([@jimhester](https://github.com/jimhester),
  [\#532](https://github.com/r-lib/testthat/issues/532)).

- [`test_dir()`](https://testthat.r-lib.org/reference/test_dir.md),
  [`test_package()`](https://testthat.r-lib.org/reference/test_package.md),
  and
  [`test_check()`](https://testthat.r-lib.org/reference/test_package.md)
  gain `stop_on_failure` and `stop_on_waring` arguments that control
  whether or not an error is signalled if any tests fail or generate
  warnings ([\#609](https://github.com/r-lib/testthat/issues/609),
  [\#619](https://github.com/r-lib/testthat/issues/619)).

- [`test_file()`](https://testthat.r-lib.org/reference/test_file.md) now
  triggers a [`gc()`](https://rdrr.io/r/base/gc.html) after tests are
  run. This helps to ensure that finalisers are run earlier
  ([\#535](https://github.com/r-lib/testthat/issues/535)).

- [`test_path()`](https://testthat.r-lib.org/reference/test_path.md) now
  generates correct path when called from within
  [`tools::testInstalledPackage()`](https://rdrr.io/r/tools/testInstalledPackage.html)
  ([\#542](https://github.com/r-lib/testthat/issues/542)).

- [`test_path()`](https://testthat.r-lib.org/reference/test_path.md) no
  longer assumes that the path exists
  ([\#448](https://github.com/r-lib/testthat/issues/448)).

- [`test_that()`](https://testthat.r-lib.org/reference/test_that.md)
  calls without any expectations generate a default
  [`skip()`](https://testthat.r-lib.org/reference/skip.md)
  ([\#413](https://github.com/r-lib/testthat/issues/413)).

- [`test_dir()`](https://testthat.r-lib.org/reference/test_dir.md) gains
  `load_helpers` argument
  ([\#505](https://github.com/r-lib/testthat/issues/505)).

- `show_failures()` simply prints a failure if it occurs. This makes it
  easier to show failures in examples.

- [`with_mock()`](https://testthat.r-lib.org/reference/with_mock.md)
  disallows mocking of functions in base packages, because this doesn’t
  work with the current development version of R
  ([\#553](https://github.com/r-lib/testthat/issues/553)).

## testthat 1.0.2

CRAN release: 2016-04-23

- Ensure `std::logic_error()` constructed with `std::string()` argument,
  to avoid build errors on Solaris.

## testthat 1.0.1

CRAN release: 2016-04-21

- New
  [`expect_output_file()`](https://testthat.r-lib.org/reference/expect_output_file.md)
  to compare output of a function with a text file, and optionally
  update it ([\#443](https://github.com/r-lib/testthat/issues/443),
  [@krlmlr](https://github.com/krlmlr)).

- Properly scoped use + compilation of C++ unit testing code using Catch
  to `gcc` and `clang` only, as Catch includes code that does not
  strictly conform to the C++98 standard. (2)

- Fixed an out-of-bounds memory access when routing Catch output through
  `Rprintf()`. (2)

- Ensure that unit tests run on R-oldrel (remove use of
  [`dir.exists()`](https://rdrr.io/r/base/files2.html)).

  2.  

- Improved overriding of calls to `exit()` within Catch, to ensure
  compatibility with GCC 6.0. ([@krlmlr](https://github.com/krlmlr))

- Hardened formatting of difference messages, previously the presence of
  `%` characters could affect the output
  ([\#446](https://github.com/r-lib/testthat/issues/446),
  [@krlmlr](https://github.com/krlmlr)).

- Fixed errors in
  [`expect_equal()`](https://testthat.r-lib.org/reference/equality-expectations.md)
  when comparing numeric vectors with and without attributes
  ([\#453](https://github.com/r-lib/testthat/issues/453),
  [@krlmlr](https://github.com/krlmlr)).

- [`auto_test()`](https://testthat.r-lib.org/reference/auto_test.md) and
  [`auto_test_package()`](https://testthat.r-lib.org/reference/auto_test.md)
  show only the results of the current test run and not of previously
  failed runs ([\#456](https://github.com/r-lib/testthat/issues/456),
  [@krlmlr](https://github.com/krlmlr)).

## testthat 1.0.0

CRAN release: 2016-04-14

### Breaking changes

The
[`expectation()`](https://testthat.r-lib.org/reference/expectation.md)
function now expects an expectation type (one of “success”, “failure”,
“error”, “skip”, “warning”) as first argument. If you’re creating your
own expectations, you’ll need to use
[`expect()`](https://testthat.r-lib.org/reference/expect.md) instead
([\#437](https://github.com/r-lib/testthat/issues/437)).

### New expectations

The expectation system got a thorough overhaul
([\#217](https://github.com/r-lib/testthat/issues/217)). This primarily
makes it easier to add new expectations in the future, but also included
a thorough review of the documentation, ensuring that related
expectations are documented together, and have evocative names.

One useful change is that most expectations invisibly return the input
`object`. This makes it possible to chain together expectations with
magrittr:

``` r
factor("a") %>%
  expect_type("integer") %>%
  expect_s3_class("factor") %>%
  expect_length(1)
```

(And to make this style even easier, testthat now re-exports the pipe,
[\#412](https://github.com/r-lib/testthat/issues/412)).

The exception to this rule are the expectations that evaluate (i.e. for
messages, warnings, errors, output etc), which invisibly return `NULL`.
These functions are now more consistent: using `NA` will cause a failure
if there is a errors/warnings/messages/output (i.e. they’re not
missing), and will `NULL` fail if there aren’t any
errors/warnings/messages/output. This previously didn’t work for
[`expect_output()`](https://testthat.r-lib.org/reference/expect_output.md)
([\#323](https://github.com/r-lib/testthat/issues/323)), and the error
messages were confusing with `expect_error(..., NA)`
([\#342](https://github.com/r-lib/testthat/issues/342),
[@nealrichardson](https://github.com/nealrichardson) +
[@krlmlr](https://github.com/krlmlr),
[\#317](https://github.com/r-lib/testthat/issues/317)).

Another change is that
[`expect_output()`](https://testthat.r-lib.org/reference/expect_output.md)
now requires you to explicitly print the output if you want to test a
print method: `expect_output("a", "a")` will fail,
`expect_output(print("a"), "a")` will succeed.

There are six new expectations:

- [`expect_type()`](https://testthat.r-lib.org/reference/inheritance-expectations.md)
  checks the *type* of the object
  ([\#316](https://github.com/r-lib/testthat/issues/316)),
  [`expect_s3_class()`](https://testthat.r-lib.org/reference/inheritance-expectations.md)
  tests that an object is S3 with given class,
  [`expect_s4_class()`](https://testthat.r-lib.org/reference/inheritance-expectations.md)
  tests that an object is S4 with given class
  ([\#373](https://github.com/r-lib/testthat/issues/373)). I recommend
  using these more specific expectations instead of the more general
  [`expect_is()`](https://testthat.r-lib.org/reference/expect_is.md).

- [`expect_length()`](https://testthat.r-lib.org/reference/expect_length.md)
  checks that an object has expected length.

- [`expect_success()`](https://testthat.r-lib.org/reference/expect_success.md)
  and
  [`expect_failure()`](https://testthat.r-lib.org/reference/expect_success.md)
  are new expectations designed specifically for testing other
  expectations ([\#368](https://github.com/r-lib/testthat/issues/368)).

A number of older features have been deprecated:

- [`expect_more_than()`](https://testthat.r-lib.org/reference/expect_less_than.md)
  and
  [`expect_less_than()`](https://testthat.r-lib.org/reference/expect_less_than.md)
  have been deprecated. Please use
  [`expect_gt()`](https://testthat.r-lib.org/reference/comparison-expectations.md)
  and
  [`expect_lt()`](https://testthat.r-lib.org/reference/comparison-expectations.md)
  instead.

- [`takes_less_than()`](https://testthat.r-lib.org/reference/takes_less_than.md)
  has been deprecated.

- [`not()`](https://testthat.r-lib.org/reference/not.md) has been
  deprecated. Please use the explicit individual forms
  `expect_error(..., NA)` , `expect_warning(.., NA)` and so on.

### Expectations are conditions

Now all expectations are also conditions, and R’s condition system is
used to signal failures and successes
([\#360](https://github.com/r-lib/testthat/issues/360),
[@krlmlr](https://github.com/krlmlr)). All known conditions (currently,
“error”, “warning”, “message”, “failure”, and “success”) are converted
to expectations using the new `as.expectation()`. This allows
third-party test packages (such as `assertthat`, `testit`, `ensurer`,
`checkmate`, `assertive`) to seamlessly establish `testthat`
compatibility by issuing custom error conditions (e.g.,
`structure(list(message = "Error message"), class = c("customError", "error", "condition"))`)
and then implementing `as.expectation.customError()`. The `assertthat`
package contains an example.

### Reporters

The reporters system class has been considerably refactored to make
existing reporters simpler and to make it easier to write new reporters.
There are two main changes:

- Reporters classes are now R6 classes instead of Reference Classes.

- Each callbacks receive the full context:

  - `add_results()` is passed context and test as well as the
    expectation.
  - `test_start()` and `test_end()` both get the context and test.
  - `context_start()` and `context_end()` get the context.

- Warnings are now captured and reported in most reporters.

- The reporter output goes to the original standard output and is not
  affected by [`sink()`](https://rdrr.io/r/base/sink.html) and
  [`expect_output()`](https://testthat.r-lib.org/reference/expect_output.md)
  ([\#420](https://github.com/r-lib/testthat/issues/420),
  [@krlmlr](https://github.com/krlmlr)).

- The default summary reporter lists all warnings
  ([\#310](https://github.com/r-lib/testthat/issues/310)), and all
  skipped tests ([@krlmlr](https://github.com/krlmlr),
  [\#343](https://github.com/r-lib/testthat/issues/343)). New option
  `testthat.summary.max_reports` limits the number of reports printed by
  the summary reporter. The default is 15
  ([@krlmlr](https://github.com/krlmlr),
  [\#354](https://github.com/r-lib/testthat/issues/354)).

- `MinimalReporter` correct labels errors with E and failures with F
  ([\#311](https://github.com/r-lib/testthat/issues/311)).

- New `FailReporter` to stop in case of failures or errors after all
  tests ([\#308](https://github.com/r-lib/testthat/issues/308),
  [@krlmlr](https://github.com/krlmlr)).

### Other

- New functions
  [`capture_output()`](https://testthat.r-lib.org/reference/capture_output.md),
  [`capture_message()`](https://testthat.r-lib.org/reference/capture_condition.md),
  and
  [`capture_warnings()`](https://testthat.r-lib.org/reference/capture_condition.md)
  selectively capture function output. These are used in
  [`expect_output()`](https://testthat.r-lib.org/reference/expect_output.md),
  [`expect_message()`](https://testthat.r-lib.org/reference/expect_error.md)
  and
  [`expect_warning()`](https://testthat.r-lib.org/reference/expect_error.md)
  to allow other types out output to percolate up
  ([\#410](https://github.com/r-lib/testthat/issues/410)).

- [`try_again()`](https://testthat.r-lib.org/reference/try_again.md)
  allows you to retry code multiple times until it succeeds
  ([\#240](https://github.com/r-lib/testthat/issues/240)).

- [`test_file()`](https://testthat.r-lib.org/reference/test_file.md),
  [`test_check()`](https://testthat.r-lib.org/reference/test_package.md),
  and
  [`test_package()`](https://testthat.r-lib.org/reference/test_package.md)
  now attach testthat so all testing functions are available.

- [`source_test_helpers()`](https://testthat.r-lib.org/reference/source_file.md)
  gets a useful default path: the testthat tests directory. It defaults
  to the
  [`test_env()`](https://testthat.r-lib.org/reference/test_env.md) to be
  consistent with the other source functions
  ([\#415](https://github.com/r-lib/testthat/issues/415)).

- [`test_file()`](https://testthat.r-lib.org/reference/test_file.md) now
  loads helpers in the test directory before running the tests
  ([\#350](https://github.com/r-lib/testthat/issues/350)).

- [`test_path()`](https://testthat.r-lib.org/reference/test_path.md)
  makes it possible to create paths to files in `tests/testthat` that
  work interactively and when called from tests
  ([\#345](https://github.com/r-lib/testthat/issues/345)).

- Add [`skip_if_not()`](https://testthat.r-lib.org/reference/skip.md)
  helper.

- Add [`skip_on_bioc()`](https://testthat.r-lib.org/reference/skip.md)
  helper ([@thomasp85](https://github.com/thomasp85)).

- [`make_expectation()`](https://testthat.r-lib.org/reference/make_expectation.md)
  uses
  [`expect_equal()`](https://testthat.r-lib.org/reference/equality-expectations.md).

- `setup_test_dir()` has been removed. If you used it previously,
  instead use
  [`source_test_helpers()`](https://testthat.r-lib.org/reference/source_file.md)
  and
  [`find_test_scripts()`](https://testthat.r-lib.org/reference/find_test_scripts.md).

- [`source_file()`](https://testthat.r-lib.org/reference/source_file.md)
  exports the function testthat uses to load files from disk.

- [`test_that()`](https://testthat.r-lib.org/reference/test_that.md)
  returns a `logical` that indicates if all tests were successful
  ([\#360](https://github.com/r-lib/testthat/issues/360),
  [@krlmlr](https://github.com/krlmlr)).

- [`find_reporter()`](https://testthat.r-lib.org/reference/find_reporter.md)
  (and also all high-level testing functions) support a vector of
  reporters. For more than one reporter, a `MultiReporter` is created
  ([\#307](https://github.com/r-lib/testthat/issues/307),
  [@krlmlr](https://github.com/krlmlr)).

- [`with_reporter()`](https://testthat.r-lib.org/reference/reporter-accessors.md)
  is used internally and gains new argument `start_end_reporter = TRUE`
  ([@krlmlr](https://github.com/krlmlr), 355).

- [`set_reporter()`](https://testthat.r-lib.org/reference/reporter-accessors.md)
  returns old reporter invisibly
  ([\#358](https://github.com/r-lib/testthat/issues/358),
  [@krlmlr](https://github.com/krlmlr)).

- Comparing integers to non-numbers doesn’t raise errors anymore, and
  falls back to string comparison if objects have different lengths.
  Complex numbers are compared using the same routine
  ([\#309](https://github.com/r-lib/testthat/issues/309),
  [@krlmlr](https://github.com/krlmlr)).

- [`compare.numeric()`](https://testthat.r-lib.org/reference/compare.md)
  and
  [`compare.character()`](https://testthat.r-lib.org/reference/compare.md)
  received another overhaul. This should improve behaviour of edge
  cases, and provides a strong foundation for further work. Added
  [`compare.POSIXt()`](https://testthat.r-lib.org/reference/compare.md)
  for better reporting of datetime differences.

- [`expect_identical()`](https://testthat.r-lib.org/reference/equality-expectations.md)
  and
  [`is_identical_to()`](https://testthat.r-lib.org/reference/oldskool.md)
  now use [`compare()`](https://testthat.r-lib.org/reference/compare.md)
  for more detailed output of differences
  ([\#319](https://github.com/r-lib/testthat/issues/319),
  [@krlmlr](https://github.com/krlmlr)).

- Added [Catch](https://github.com/catchorg/Catch2) v1.2.1 for unit
  testing of C++ code. See `?use_catch()` for more details. (2)

## testthat 0.11.0

CRAN release: 2015-10-14

- Handle skipped tests in the TAP reporter
  ([\#262](https://github.com/r-lib/testthat/issues/262)).

- New
  [`expect_silent()`](https://testthat.r-lib.org/reference/expect_silent.md)
  ensures that code produces no output, messages, or warnings
  ([\#261](https://github.com/r-lib/testthat/issues/261)).

- New
  [`expect_lt()`](https://testthat.r-lib.org/reference/comparison-expectations.md),
  [`expect_lte()`](https://testthat.r-lib.org/reference/comparison-expectations.md),
  [`expect_gt()`](https://testthat.r-lib.org/reference/comparison-expectations.md)
  and
  [`expect_gte()`](https://testthat.r-lib.org/reference/comparison-expectations.md)
  for comparison with or without equality
  ([\#305](https://github.com/r-lib/testthat/issues/305),
  [@krlmlr](https://github.com/krlmlr)).

- [`expect_output()`](https://testthat.r-lib.org/reference/expect_output.md),
  [`expect_message()`](https://testthat.r-lib.org/reference/expect_error.md),
  [`expect_warning()`](https://testthat.r-lib.org/reference/expect_error.md),
  and
  [`expect_error()`](https://testthat.r-lib.org/reference/expect_error.md)
  now accept `NA` as the second argument to indicate that output,
  messages, warnings, and errors should be absent
  ([\#219](https://github.com/r-lib/testthat/issues/219)).

- Praise gets more diverse thanks to the praise package, and you’ll now
  get random encouragement if your tests don’t pass.

- testthat no longer muffles warning messages. If you don’t want to see
  them in your output, you need to explicitly quiet them, or use an
  expectation that captures them
  (e.g. [`expect_warning()`](https://testthat.r-lib.org/reference/expect_error.md)).
  ([\#254](https://github.com/r-lib/testthat/issues/254))

- Use tests in `inst/tests` is formally deprecated. Please move them
  into `tests/testthat` instead
  ([\#231](https://github.com/r-lib/testthat/issues/231)).

- [`expect_match()`](https://testthat.r-lib.org/reference/expect_match.md)
  now encodes the match, as well as the output, in the expectation
  message ([\#232](https://github.com/r-lib/testthat/issues/232)).

- [`expect_is()`](https://testthat.r-lib.org/reference/expect_is.md)
  gives better failure message when testing multiple inheritance,
  e.g. `expect_is(1:10, c("glm", "lm"))`
  ([\#293](https://github.com/r-lib/testthat/issues/293)).

- Corrected argument order in
  [`compare.numeric()`](https://testthat.r-lib.org/reference/compare.md)
  ([\#294](https://github.com/r-lib/testthat/issues/294)).

- `comparison()` constructure now checks its arguments are the correct
  type and length. This bugs a bug where tests failed with an error like
  “values must be length 1, but FUN(X\[\[1\]\]) result is length 2”
  ([\#279](https://github.com/r-lib/testthat/issues/279)).

- Added [`skip_on_os()`](https://testthat.r-lib.org/reference/skip.md),
  to skip tests on specified operating systems (2).

- Skip test that depends on `devtools` if it is not installed
  ([\#247](https://github.com/r-lib/testthat/issues/247),
  [@krlmlr](https://github.com/krlmlr))

- Added
  [`skip_on_appveyor()`](https://testthat.r-lib.org/reference/skip_on_travis.md)
  to skip tests on Appveyor ([@lmullen](https://github.com/lmullen)).

- [`compare()`](https://testthat.r-lib.org/reference/compare.md) shows
  detailed output of differences for character vectors of different
  length ([\#274](https://github.com/r-lib/testthat/issues/274),
  [@krlmlr](https://github.com/krlmlr)).

- Detailed output from
  [`expect_equal()`](https://testthat.r-lib.org/reference/equality-expectations.md)
  doesn’t confuse expected and actual values anymore
  ([\#274](https://github.com/r-lib/testthat/issues/274),
  [@krlmlr](https://github.com/krlmlr)).

## testthat 0.10.0

CRAN release: 2015-05-22

- Failure locations are now formatted as R error locations.

- Add an ‘invert’ argument to `find_tests_scripts()`. This allows one to
  select only tests which do *not* match a pattern.
  ([\#239](https://github.com/r-lib/testthat/issues/239),
  [@jimhester](https://github.com/jimhester)).

- Deprecated `library_if_available()` has been removed.

- test
  ([`test_dir()`](https://testthat.r-lib.org/reference/test_dir.md),
  [`test_file()`](https://testthat.r-lib.org/reference/test_file.md),
  [`test_package()`](https://testthat.r-lib.org/reference/test_package.md),
  [`test_check()`](https://testthat.r-lib.org/reference/test_package.md))
  functions now return a `testthat_results` object that contains all
  results, and can be printed or converted to data frame.

- [`test_dir()`](https://testthat.r-lib.org/reference/test_dir.md),
  [`test_package()`](https://testthat.r-lib.org/reference/test_package.md),
  and
  [`test_check()`](https://testthat.r-lib.org/reference/test_package.md)
  have an added `...` argument that allows filtering of test files
  using, e.g., Perl-style regular expressions,or `fixed` character
  filtering. Arguments in `...` are passed to
  [`grepl()`](https://rdrr.io/r/base/grep.html)
  ([@leeper](https://github.com/leeper)).

- [`test_check()`](https://testthat.r-lib.org/reference/test_package.md)
  uses a new reporter specifically designed for `R CMD check`. It
  displays a summary at the end of the tests, designed to be \<13 lines
  long so test failures in `R CMD check` display something more useful.
  This will hopefully stop BDR from calling testthat a “test obfuscation
  suite” ([\#201](https://github.com/r-lib/testthat/issues/201)).

- [`compare()`](https://testthat.r-lib.org/reference/compare.md) is now
  documented and exported. Added a numeric method so when long numeric
  vectors don’t match you’ll see some examples of where the problem is
  ([\#177](https://github.com/r-lib/testthat/issues/177)). The line
  spacing in
  [`compare.character()`](https://testthat.r-lib.org/reference/compare.md)
  was tweaked.

- [`skip_if_not_installed()`](https://testthat.r-lib.org/reference/skip.md)
  skips tests if a package isn’t installed
  ([\#192](https://github.com/r-lib/testthat/issues/192)).

- `expect_that(a, equals(b))` style of testing has been soft-deprecated.
  It will keep working, but it’s no longer demonstrated any where, and
  new expectations will only be available in `expect_equal(a, b)` style.
  ([\#172](https://github.com/r-lib/testthat/issues/172))

- Once again, testthat suppresses messages and warnings in tests
  ([\#189](https://github.com/r-lib/testthat/issues/189))

- New
  [`test_examples()`](https://testthat.r-lib.org/reference/test_examples.md)
  lets you run package examples as tests. Each example counts as one
  expectation and it succeeds if the code runs without errors
  ([\#204](https://github.com/r-lib/testthat/issues/204)).

- New [`succeed()`](https://testthat.r-lib.org/reference/succeed.md)
  expectation always succeeds.

- [`skip_on_travis()`](https://testthat.r-lib.org/reference/skip_on_travis.md)
  allows you to skip tests when run on Travis CI. (Thanks to
  [@mllg](https://github.com/mllg))

- `colourise()` was removed. (Colour is still supported, via the
  `crayon` package.)

- Mocks can now access values local to the call of `with_mock`
  ([\#193](https://github.com/r-lib/testthat/issues/193),
  [@krlmlr](https://github.com/krlmlr)).

- All equality expectations are now documented together
  ([\#173](https://github.com/r-lib/testthat/issues/173)); all matching
  expectations are also documented together.

## testthat 0.9.1

CRAN release: 2014-10-01

- Bump R version dependency

## testthat 0.9

CRAN release: 2014-09-22

### New features

- BDD: testhat now comes with an initial behaviour driven development
  (BDD) interface. The language is similar to RSpec for Ruby or Mocha
  for JavaScript. BDD tests read like sentences, so they should make it
  easier to understand the specification of a function. See
  `?describe()` for further information and examples.

- It’s now possible to
  [`skip()`](https://testthat.r-lib.org/reference/skip.md) a test with
  an informative message - this is useful when tests are only available
  under certain conditions, as when not on CRAN, or when an internet
  connection is available
  ([\#141](https://github.com/r-lib/testthat/issues/141)).

- [`skip_on_cran()`](https://testthat.r-lib.org/reference/skip.md)
  allows you to skip tests when run on CRAN. To take advantage of this
  code, you’ll need either to use devtools, or run
  `Sys.setenv(NOT_CRAN = "true"))`

- Simple mocking:
  [`with_mock()`](https://testthat.r-lib.org/reference/with_mock.md)
  makes it easy to temporarily replace functions defined in packages.
  This is useful for testing code that relies on functions that are
  slow, have unintended side effects or access resources that may not be
  available when testing
  ([\#159](https://github.com/r-lib/testthat/issues/159),
  [@krlmlr](https://github.com/krlmlr)).

- A new expectation,
  [`expect_equal_to_reference()`](https://testthat.r-lib.org/reference/expect_known_output.md)
  has been added. It tests for equality to a reference value stored in a
  file ([\#148](https://github.com/r-lib/testthat/issues/148),
  [@jonclayden](https://github.com/jonclayden)).

### Minor improvements and bug fixes

- [`auto_test_package()`](https://testthat.r-lib.org/reference/auto_test.md)
  works once more, and now uses `devtools::load_all()` for higher
  fidelity loading
  ([\#138](https://github.com/r-lib/testthat/issues/138),
  [\#151](https://github.com/r-lib/testthat/issues/151)).

- Bug in
  [`compare.character()`](https://testthat.r-lib.org/reference/compare.md)
  fixed, as reported by Georgi Boshnakov.

- `colourise()` now uses option `testthat.use_colours` (default:
  `TRUE`). If it is `FALSE`, output is not colourised
  ([\#153](https://github.com/r-lib/testthat/issues/153),
  [@mbojan](https://github.com/mbojan)).

- [`is_identical_to()`](https://testthat.r-lib.org/reference/oldskool.md)
  only calls [`all.equal()`](https://rdrr.io/r/base/all.equal.html) to
  generate an informative error message if the two objects are not
  identical ([\#165](https://github.com/r-lib/testthat/issues/165)).

- `safe_digest()` uses a better strategy, and returns NA for directories
  ([\#138](https://github.com/r-lib/testthat/issues/138),
  [\#146](https://github.com/r-lib/testthat/issues/146)).

- Random praise is re-enabled by default (again!)
  ([\#164](https://github.com/r-lib/testthat/issues/164)).

- Teamcity reporter now correctly escapes output messages
  ([\#150](https://github.com/r-lib/testthat/issues/150),
  [@windelinckx](https://github.com/windelinckx)). It also uses nested
  suites to include test names.

### Deprecated functions

- `library_if_available()` has been deprecated.

## testthat 0.8.1

CRAN release: 2014-02-22

- Better default environment for
  [`test_check()`](https://testthat.r-lib.org/reference/test_package.md)
  and
  [`test_package()`](https://testthat.r-lib.org/reference/test_package.md)
  which allows S4 class creation in tests

- [`compare.character()`](https://testthat.r-lib.org/reference/compare.md)
  no longer fails when one value is missing.

## testthat 0.8

CRAN release: 2014-02-20

testthat 0.8 comes with a new recommended structure for storing your
tests. To better meet CRAN recommended practices, testthat now recommend
that you to put your tests in `tests/testthat`, instead of `inst/tests`
(this makes it possible for users to choose whether or not to install
tests). With this new structure, you’ll need to use
[`test_check()`](https://testthat.r-lib.org/reference/test_package.md)
instead of `test_packages()` in the test file (usually
`tests/testthat.R`) that runs all testthat unit tests.

The other big improvement to usability comes from
[@kforner](https://github.com/kforner), who contributed code to allow
the default results (i.e. those produced by `SummaryReporter`) to
include source references so you can see exactly where failures
occurred.

### New reporters

- `MultiReporter`, which combines several reporters into one. (Thanks to
  [@kforner](https://github.com/kforner))

- `ListReporter`, which captures all test results with their file,
  context, test and elapsed time. `test_dir`, `test_file`,
  `test_package` and `test_check` now use the `ListReporter` to
  invisibly return a summary of the tests as a data frame. (Thanks to
  [@kforner](https://github.com/kforner))

- `TeamCityReporter` to produce output compatible with the TeamCity
  continuous integration environment. (Thanks to
  [@windelinckx](https://github.com/windelinckx))

- `SilentReporter` so that `testthat` can test calls to `test_that`.
  (Thanks to [@craigcitro](https://github.com/craigcitro),
  [\#83](https://github.com/r-lib/testthat/issues/83))

### New expectations

- [`expect_null()`](https://testthat.r-lib.org/reference/expect_null.md)
  and `is_null` to check if an object is NULL
  ([\#78](https://github.com/r-lib/testthat/issues/78))

- [`expect_named()`](https://testthat.r-lib.org/reference/expect_named.md)
  and [`has_names()`](https://testthat.r-lib.org/reference/oldskool.md)
  to check the names of a vector
  ([\#79](https://github.com/r-lib/testthat/issues/79))

- [`expect_more_than()`](https://testthat.r-lib.org/reference/expect_less_than.md),
  [`is_more_than()`](https://testthat.r-lib.org/reference/oldskool.md),
  [`expect_less_than()`](https://testthat.r-lib.org/reference/expect_less_than.md),
  [`is_less_than()`](https://testthat.r-lib.org/reference/oldskool.md)
  to check values above or below a threshold.
  ([\#77](https://github.com/r-lib/testthat/issues/77), thanks to
  [@jknowles](https://github.com/jknowles))

### Minor improvements and bug fixes

- [`expect_that()`](https://testthat.r-lib.org/reference/expect_that.md)
  (and thus all `expect_*` functions) now invisibly return the
  expectation result, and stops if info or label arguments have length
  \> 1 (thanks to [@kforner](https://github.com/kforner))

- fixed two bugs with source_dir(): it did not look for the source
  scripts at the right place, and it did not use its `chdir` argument.

- When using
  [`expect_equal()`](https://testthat.r-lib.org/reference/equality-expectations.md)
  to compare strings, the default output for failure provides a lot more
  information, which should hopefully help make finding string
  mismatches easier.

- `SummaryReporter` has a `max_reports` option to limit the number of
  detailed failure reports to show. (Thanks to
  [@crowding](https://github.com/crowding))

- Tracebacks will now also contain information about where the functions
  came from (where that information is available).

- `matches` and `expect_match` now pass additional arguments on to
  `grepl` so that you can use `fixed = TRUE`, `perl = TRUE` or
  `ignore.case = TRUE` to control details of the match. `expect_match`
  now correctly fails to match NULL.
  ([\#100](https://github.com/r-lib/testthat/issues/100))

- `expect_output`, `expect_message`, `expect_warning` and `expect_error`
  also pass … on to `grepl`, so that you can use `fixed = TRUE`,
  `perl = TRUE` or `ignore.case = TRUE`

- Removed `stringr` and `evaluate` dependencies.

- The [`not()`](https://testthat.r-lib.org/reference/not.md) function
  makes it possible to negate tests. For example,
  `expect_that(f(), not(throws_error()))` asserts that `f()` does not
  throw an error.

- Make `dir_state` less race-y. (Thanks to
  [@craigcitro](https://github.com/craigcitro),
  [\#80](https://github.com/r-lib/testthat/issues/80))

- `auto_test` now pays attention to its ‘reporter’ argument (Thanks to
  [@crowding](https://github.com/crowding),
  [\#81](https://github.com/r-lib/testthat/issues/81))

- [`get_reporter()`](https://testthat.r-lib.org/reference/reporter-accessors.md),
  [`set_reporter()`](https://testthat.r-lib.org/reference/reporter-accessors.md)
  and
  [`with_reporter()`](https://testthat.r-lib.org/reference/reporter-accessors.md)
  are now exported
  ([\#102](https://github.com/r-lib/testthat/issues/102))

## testthat 0.7.1

CRAN release: 2013-03-27

- Ignore attributes in `is_true` and `is_false`
  ([\#49](https://github.com/r-lib/testthat/issues/49))

- `make_expectation` works for more types of input
  ([\#52](https://github.com/r-lib/testthat/issues/52))

- Now works better with evaluate 0.4.3.

- new [`fail()`](https://testthat.r-lib.org/reference/fail.md) function
  always forces a failure in a test. Suggested by Richie Cotton
  ([\#47](https://github.com/r-lib/testthat/issues/47))

- Added `TapReporter` to produce output compatible with the “test
  anything protocol”. Contributed by Dan Keshet.

- Fixed where `auto_test` would identify the wrong files as having
  changed. (Thanks to Peter Meilstrup)

## testthat 0.7

CRAN release: 2012-06-27

- `SummaryReporter`: still return informative messages even if no tests
  defined (just bare expectations). (Fixes
  [\#31](https://github.com/r-lib/testthat/issues/31))

- Improvements to reference classes (Thanks to John Chambers)

- Bug fixes for when nothing was generated in `gives_warning` /
  `shows_message`. (Thanks to Bernd Bischl)

- New `make_expectation` function to programmatically generate an
  equality expectation. (Fixes
  [\#24](https://github.com/r-lib/testthat/issues/24))

- `SummaryReporter`: You don’t get praise until you have some tests.

- Depend on `methods` rather than requiring it so that testthat works
  when run from `Rscript`

- `auto_test` now normalises paths to enable better identification of
  file changes, and fixes bug in instantiating new reporter object.

## testthat 0.6

CRAN release: 2011-12-30

- All `mutatr` classes have been replaced with ReferenceClasses.

- Better documentation for short-hand expectations.

- `test_dir` and `test_package` gain new `filter` argument which allows
  you to restrict which tests are run.

## testthat 0.5

CRAN release: 2011-06-01

- bare expectations now correctly throw errors again

## testthat 0.4

CRAN release: 2011-03-20

- autotest correctly loads code and executes tests in same environment

- contexts are never closed before they are opened, and always closed at
  the end of file

- fixed small bug in `test_dir` where each test was not given its own
  environment

- all `expect_*` short cut functions gain a label argument, thanks to
  Steve Lianoglou

## testthat 0.3

CRAN release: 2010-08-31

- all expectations now have a shortcut form, so instead of
  expect_that(a, is_identical_to(b)) you can do expect_identical(a, b)

- new shows_message and gives_warning expectations to test warnings and
  messages

- expect_that, equals, is_identical_to and is_equivalent to now have
  additional label argument which allows you to control the appearance
  of the text used for the expected object (for expect_that) and actual
  object (for all other functions) in failure messages. This is useful
  when you have loops that run tests as otherwise all the variable names
  are identical, and it’s difficult to tell which iteration caused the
  failure.

- executing bare tests gives nicer output

- all expectations now give more information on failure to make it
  easier to track down the problem.

- test_file and test_dir now run in code in separate environment to
  avoid pollution of global environment. They also temporary change the
  working directory so tests can use relative paths.

- test_package makes it easier to run all tests in an installed package.
  Code run in this manner has access to non-exported functions and
  objects. If any errors or failures occur, test_package will throw an
  error, making it suitable for use with R CMD check.

## testthat 0.2

CRAN release: 2010-07-25

- colourise also works in screen terminal

- equals expectation provides more information about failure

- expect_that has extra info argument to allow you to pass in any extra
  information you’d like included in the message - this is very helpful
  if you’re using a loop to run tests

- is_equivalent_to: new expectation that tests for equality ignoring
  attributes

- library_if_available now works! (thanks to report and fix from Felix
  Andrews)

- specify larger width and join pieces back together whenever deparse
  used (thanks to report and fix from Felix Andrews)

- test_dir now looks for any files starting with test (not test- as
  before)
