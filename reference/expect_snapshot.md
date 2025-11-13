# Do you expect this code to run the same way as last time?

Snapshot tests (aka golden tests) are similar to unit tests except that
the expected result is stored in a separate file that is managed by
testthat. Snapshot tests are useful for when the expected value is
large, or when the intent of the code is something that can only be
verified by a human (e.g. this is a useful error message). Learn more in
[`vignette("snapshotting")`](https://testthat.r-lib.org/articles/snapshotting.md).

`expect_snapshot()` runs code as if you had executed it at the console,
and records the results, including output, messages, warnings, and
errors. If you just want to compare the result, try
[`expect_snapshot_value()`](https://testthat.r-lib.org/reference/expect_snapshot_value.md).

## Usage

``` r
expect_snapshot(
  x,
  cran = FALSE,
  error = FALSE,
  transform = NULL,
  variant = NULL,
  cnd_class = FALSE
)
```

## Arguments

- x:

  Code to evaluate.

- cran:

  Should these expectations be verified on CRAN? By default, they are
  not, because snapshot tests tend to be fragile because they often rely
  on minor details of dependencies.

- error:

  Do you expect the code to throw an error? The expectation will fail
  (even on CRAN) if an unexpected error is thrown or the expected error
  is not thrown.

- transform:

  Optionally, a function to scrub sensitive or stochastic text from the
  output. Should take a character vector of lines as input and return a
  modified character vector as output.

- variant:

  If non-`NULL`, results will be saved in `_snaps/{variant}/{test.md}`,
  so `variant` must be a single string suitable for use as a directory
  name.

  You can use variants to deal with cases where the snapshot output
  varies and you want to capture and test the variations. Common use
  cases include variations for operating system, R version, or version
  of key dependency. Variants are an advanced feature. When you use
  them, you'll need to carefully think about your testing strategy to
  ensure that all important variants are covered by automated tests, and
  ensure that you have a way to get snapshot changes out of your CI
  system and back into the repo.

  Note that there's no way to declare all possible variants up front
  which means that as soon as you start using variants, you are
  responsible for deleting snapshot variants that are no longer used.
  (testthat will still delete all variants if you delete the test.)

- cnd_class:

  Whether to include the class of messages, warnings, and errors in the
  snapshot. Only the most specific class is included, i.e. the first
  element of `class(cnd)`.

## Workflow

The first time that you run a snapshot expectation it will run `x`,
capture the results, and record them in
`tests/testthat/_snaps/{test}.md`. Each test file gets its own snapshot
file, e.g. `test-foo.R` will get `_snaps/foo.md`.

It's important to review the Markdown files and commit them to git. They
are designed to be human readable, and you should always review new
additions to ensure that the salient information has been captured. They
should also be carefully reviewed in pull requests, to make sure that
snapshots have updated in the expected way.

On subsequent runs, the result of `x` will be compared to the value
stored on disk. If it's different, the expectation will fail, and a new
file `_snaps/{test}.new.md` will be created. If the change was
deliberate, you can approve the change with
[`snapshot_accept()`](https://testthat.r-lib.org/reference/snapshot_accept.md)
and then the tests will pass the next time you run them.

Note that snapshotting can only work when executing a complete test file
(with
[`test_file()`](https://testthat.r-lib.org/reference/test_file.md),
[`test_dir()`](https://testthat.r-lib.org/reference/test_dir.md), or
friends) because there's otherwise no way to figure out the snapshot
path. If you run snapshot tests interactively, they'll just display the
current value.
