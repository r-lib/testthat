# Skip a test for various reasons

`skip_if()` and `skip_if_not()` allow you to skip tests, immediately
concluding a
[`test_that()`](https://testthat.r-lib.org/reference/test_that.md) block
without executing any further expectations. This allows you to skip a
test without failure, if for some reason it can't be run (e.g. it
depends on the feature of a specific operating system, or it requires a
specific version of a package).

See
[`vignette("skipping")`](https://testthat.r-lib.org/articles/skipping.md)
for more details.

## Usage

``` r
skip(message = "Skipping")

skip_if_not(condition, message = NULL)

skip_if(condition, message = NULL)

skip_if_not_installed(pkg, minimum_version = NULL)

skip_unless_r(spec)

skip_if_offline(host = "captive.apple.com")

skip_on_cran()

local_on_cran(on_cran = TRUE, frame = caller_env())

skip_on_os(os, arch = NULL)

skip_on_ci()

skip_on_covr()

skip_on_bioc()

skip_if_translated(msgid = "'%s' not found")
```

## Arguments

- message:

  A message describing why the test was skipped.

- condition:

  Boolean condition to check. `skip_if_not()` will skip if `FALSE`,
  `skip_if()` will skip if `TRUE`.

- pkg:

  Name of package to check for

- minimum_version:

  Minimum required version for the package

- spec:

  A version specification like '\>= 4.1.0' denoting that this test
  should only be run on R versions 4.1.0 and later.

- host:

  A string with a hostname to lookup

- on_cran:

  Pretend we're on CRAN (`TRUE`) or not (`FALSE`).

- frame:

  Calling frame to tie change to; expect use only.

- os:

  Character vector of one or more operating systems to skip on.
  Supported values are `"windows"`, `"mac"`, `"linux"`, `"solaris"`, and
  `"emscripten"`.

- arch:

  Character vector of one or more architectures to skip on. Common
  values include `"i386"` (32 bit), `"x86_64"` (64 bit), and `"aarch64"`
  (M1 mac). Supplying `arch` makes the test stricter; i.e. both `os` and
  `arch` must match in order for the test to be skipped.

- msgid:

  R message identifier used to check for translation: the default uses a
  message included in most translation packs. See the complete list in
  [`R-base.pot`](https://github.com/wch/r-source/blob/master/src/library/base/po/R-base.pot).

## Helpers

- `skip_if_not_installed("pkg")` skips tests if package "pkg" is not
  installed or cannot be loaded (using
  [`requireNamespace()`](https://rdrr.io/r/base/ns-load.html)).
  Generally, you can assume that suggested packages are installed, and
  you do not need to check for them specifically, unless they are
  particularly difficult to install.

- `skip_if_offline()` skips if an internet connection is not available
  (using
  [`curl::nslookup()`](https://jeroen.r-universe.dev/curl/reference/nslookup.html))
  or if the test is run on CRAN. Requires {curl} to be installed and
  included in the dependencies of your package.

- `skip_if_translated("msg")` skips tests if the "msg" is translated.

- `skip_on_bioc()` skips on Bioconductor (using the
  `IS_BIOC_BUILD_MACHINE` env var).

- `skip_on_cran()` skips on CRAN (using the `NOT_CRAN` env var set by
  devtools and friends). `local_on_cran()` gives you the ability to
  easily simulate what will happen on CRAN.

- `skip_on_covr()` skips when covr is running (using the `R_COVR` env
  var).

- `skip_on_ci()` skips on continuous integration systems like GitHub
  Actions, travis, and appveyor (using the `CI` env var).

- `skip_on_os()` skips on the specified operating system(s) ("windows",
  "mac", "linux", or "solaris").

## Examples

``` r
if (FALSE) skip("Some Important Requirement is not available")

test_that("skip example", {
  expect_equal(1, 1L)    # this expectation runs
  skip('skip')
  expect_equal(1, 2)     # this one skipped
  expect_equal(1, 3)     # this one is also skipped
})
#> ── Skip: skip example ─────────────────────────────────────────────────
#> Reason: skip
#> Test passed with 1 success 🌈.
```
