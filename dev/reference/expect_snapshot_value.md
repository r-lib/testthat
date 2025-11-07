# Do you expect this code to return the same value as last time?

Captures the result of function, flexibly serializing it into a text
representation that's stored in a snapshot file. See
[`expect_snapshot()`](https://testthat.r-lib.org/dev/reference/expect_snapshot.md)
for more details on snapshot testing.

## Usage

``` r
expect_snapshot_value(
  x,
  style = c("json", "json2", "deparse", "serialize"),
  cran = FALSE,
  tolerance = testthat_tolerance(),
  ...,
  variant = NULL
)
```

## Arguments

- x:

  Code to evaluate.

- style:

  Serialization style to use:

  - `json` uses
    [`jsonlite::fromJSON()`](https://jeroen.r-universe.dev/jsonlite/reference/fromJSON.html)
    and
    [`jsonlite::toJSON()`](https://jeroen.r-universe.dev/jsonlite/reference/fromJSON.html).
    This produces the simplest output but only works for relatively
    simple objects.

  - `json2` uses
    [`jsonlite::serializeJSON()`](https://jeroen.r-universe.dev/jsonlite/reference/serializeJSON.html)
    and
    [`jsonlite::unserializeJSON()`](https://jeroen.r-universe.dev/jsonlite/reference/serializeJSON.html)
    which are more verbose but work for a wider range of type.

  - `deparse` uses [`deparse()`](https://rdrr.io/r/base/deparse.html),
    which generates a depiction of the object using R code.

  - [`serialize()`](https://rdrr.io/r/base/serialize.html) produces a
    binary serialization of the object using
    [`serialize()`](https://rdrr.io/r/base/serialize.html). This is all
    but guaranteed to work for any R object, but produces a completely
    opaque serialization.

- cran:

  Should these expectations be verified on CRAN? By default, they are
  not, because snapshot tests tend to be fragile because they often rely
  on minor details of dependencies.

- tolerance:

  Numerical tolerance: any differences (in the sense of
  [`base::all.equal()`](https://rdrr.io/r/base/all.equal.html)) smaller
  than this value will be ignored.

  The default tolerance is `sqrt(.Machine$double.eps)`, unless long
  doubles are not available, in which case the test is skipped.

- ...:

  Passed on to
  [`waldo::compare()`](https://waldo.r-lib.org/reference/compare.html)
  so you can control the details of the comparison.

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
