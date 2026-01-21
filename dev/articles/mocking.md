# Mocking

Mocking allows you to temporarily replace the implementation of a
function with something that makes it easier to test. It’s useful when
testing failure scenarios that are hard to generate organically (e.g.,
what happens if dependency X isn’t installed?), making tests more
reliable, and making tests faster. It’s also a general escape hatch to
resolve almost any challenging testing problem. That said, mocking comes
with downsides too: it’s an advanced technique that can lead to brittle
tests or tests that silently conceal problems. You should only use it
when all other approaches fail.

(If, like me, you’re confused as to why you’d want to cruelly make fun
of your tests, mocking here is used in the sense of making a fake or
simulated version of something, i.e., a mock-up.)

testthat’s primary mocking tool is
[`local_mocked_bindings()`](https://testthat.r-lib.org/dev/reference/local_mocked_bindings.md)
which is used to mock functions and is the focus of this vignette. But
it also provides other tools for specialized cases: you can use
[`local_mocked_s3_method()`](https://testthat.r-lib.org/dev/reference/local_mocked_s3_method.md)
to mock an S3 method,
[`local_mocked_s4_method()`](https://testthat.r-lib.org/dev/reference/local_mocked_s3_method.md)
to mock an S4 method, and
[`local_mocked_r6_class()`](https://testthat.r-lib.org/dev/reference/local_mocked_r6_class.md)
to mock an R6 class. Once you understand the basic idea of mocking, it
should be straightforward to apply these other tools where needed.

In this vignette, we’ll start by illustrating the basics of mocking with
a few examples, continue to some real-world case studies from throughout
the tidyverse, then finish up with the technical details so you can
understand the tradeoffs of the current implementation.

## Getting started with mocking

Let’s begin by motivating mocking with a simple example. Imagine you’re
writing a function like
[`rlang::check_installed()`](https://rlang.r-lib.org/reference/is_installed.html).
The goal of this function is to check if a package is installed, and if
not, give a nice error message. It also takes an optional `min_version`
argument that you can use to enforce a version constraint. A simple base
R implementation might look something like this:

``` r
check_installed <- function(pkg, min_version = NULL) {
  if (!requireNamespace(pkg, quietly = TRUE)) {
    stop(sprintf("{%s} is not installed.", pkg))
  }
  if (!is.null(min_version)) {
    pkg_version <- packageVersion(pkg)
    if (pkg_version < min_version) {
      stop(sprintf(
        "{%s} version %s is installed, but %s is required.", 
        pkg, 
        pkg_version, 
        min_version
      ))
    }
  }

  invisible()
}
```

Now that we’ve written this function, we want to test it. There are many
ways we might tackle this, but it’s reasonable to start by testing the
case where we don’t specify a minimum version. To do this, we need to
come up with a package we know is installed and a package we know isn’t
installed:

``` r
test_that("check_installed() checks package is installed", {
  expect_no_error(check_installed("testthat"))
  expect_snapshot(check_installed("doesntexist"), error = TRUE)
})
#> ── Warning: check_installed() checks package is installed ─────────────
#> Adding new snapshot:
#> Code
#>   check_installed("doesntexist")
#> Condition
#>   Error in `check_installed()`:
#>   ! {doesntexist} is not installed.
#> Test passed with 2 successes 🥇.
```

This is probably fine as we certainly know that testthat must be
installed but it feels a little fragile as it depends on external state
that we don’t control. While it’s pretty unlikely, if someone does
create a `doesntexist` package, this test will no longer work. As a
general principle, the less your tests rely on state outside of your
control, the more robust and reliable they’ll be.

Next we want to check the case where we specify a minimum version, and
again we need to make up some inputs:

``` r
test_that("check_installed() checks minimum version", {
  expect_no_error(check_installed("testthat", "1.0.0"))
  expect_snapshot(check_installed("testthat", "99.99.999"), error = TRUE)
})
#> ── Warning: check_installed() checks minimum version ──────────────────
#> Adding new snapshot:
#> Code
#>   check_installed("testthat", "99.99.999")
#> Condition
#>   Error in `check_installed()`:
#>   ! {testthat} version 3.3.2.9000 is installed, but 99.99.999 is required.
#> Test passed with 2 successes 🎊.
```

Again, this is probably safe (since I’m unlikely to release 90+ new
versions of testthat), but if you look at the snapshot message
carefully, you’ll notice that it includes the current version of
testthat. That means every time a new version of testthat is released,
we’ll have to update the snapshot. We could use the `transform` argument
to fix this:

``` r
test_that("check_installed() checks minimum version", {
  expect_no_error(check_installed("testthat", "1.0.0"))
  expect_snapshot(
    check_installed("testthat", "99.99.999"), 
    error = TRUE, 
    transform = function(lines) gsub(packageVersion("testthat"), "<version>", lines)
  )
})
#> ── Warning: check_installed() checks minimum version ──────────────────
#> Adding new snapshot:
#> Code
#>   check_installed("testthat", "99.99.999")
#> Condition
#>   Error in `check_installed()`:
#>   ! {testthat} version <version> is installed, but 99.99.999 is required.
#> Test passed with 2 successes 🌈.
```

But it’s starting to feel like we’ve accumulating more and more hacks.
So let’s take a fresh look and see how mocking might help us. The basic
idea of mocking is to temporarily replace the implementation of
functions being used by the function we’re testing. Here we’re testing
`check_installed()` and want to mock
[`requireNamespace()`](https://rdrr.io/r/base/ns-load.html) and
[`packageVersion()`](https://rdrr.io/r/utils/packageDescription.html) so
we can control their versions. There’s a small wrinkle here in that
`requireNamespace` and `packageVersion` are base functions, not our
functions, so we need to make bindings in our package namespace so we
can mock them (we’ll come back to why later).

``` r
requireNamespace <- NULL
packageVersion <- NULL
```

For the first test, we mock
[`requireNamespace()`](https://rdrr.io/r/base/ns-load.html) twice: first
to always return `TRUE` (pretending every package is installed), and
then to always return `FALSE` (pretending that no packages are
installed). Now the test is completely self-contained and doesn’t depend
on what packages happen to be installed.

``` r
test_that("check_installed() checks package is installed", {
  local_mocked_bindings(requireNamespace = function(...) TRUE)
  expect_no_error(check_installed("package-name"))

  local_mocked_bindings(requireNamespace = function(...) FALSE)
  expect_snapshot(check_installed("package-name"), error = TRUE)
})
#> ── Warning: check_installed() checks package is installed ─────────────
#> Adding new snapshot:
#> Code
#>   check_installed("package-name")
#> Condition
#>   Error in `check_installed()`:
#>   ! {package-name} is not installed.
#> Test passed with 2 successes 🎊.
```

For the second test, we mock
[`requireNamespace()`](https://rdrr.io/r/base/ns-load.html) to return
`TRUE`, and then
[`packageVersion()`](https://rdrr.io/r/utils/packageDescription.html) to
always return version 2.0.0. This again ensures our test is independent
of system state.

``` r
test_that("check_installed() checks minimum version", {
  local_mocked_bindings(
    requireNamespace = function(...) TRUE,
    packageVersion = function(...) numeric_version("2.0.0")
  )
  
  expect_no_error(check_installed("package-name", "1.0.0"))
  expect_snapshot(check_installed("package-name", "3.4.5"), error = TRUE)
})
#> ── Warning: check_installed() checks minimum version ──────────────────
#> Adding new snapshot:
#> Code
#>   check_installed("package-name", "3.4.5")
#> Condition
#>   Error in `check_installed()`:
#>   ! {package-name} version 2.0.0 is installed, but 3.4.5 is required.
#> Test passed with 2 successes 🥇.
```

## Case studies

To give you more experience with mocking, this section looks at a few
places where we use mocking in the tidyverse:

- Testing
  [`testthat::skip_on_os()`](https://testthat.r-lib.org/dev/reference/skip.md)
  regardless of what operating system is running the test.
- Speeding up
  [`usethis::use_release_issue()`](https://usethis.r-lib.org/reference/use_release_issue.html).
- Testing the passage of time in
  [`httr2::req_throttle()`](https://httr2.r-lib.org/reference/req_throttle.html).

These situations are all a little complex, as this is the nature of
mocking: if you can use a simpler technique, you should. Mocking is only
needed for otherwise intractable problems.

### Pretending we’re on a different platform

[`testthat::skip_on_os()`](https://testthat.r-lib.org/dev/reference/skip.md)
allows you to skip tests on specific operating systems, using the
internal `system_os()` function which is a thin wrapper around
`Sys.info()[["sysname"]]`. To test that this skip works correctly, we
have to use mocking because there’s no other way to pretend we’re
running on a different operating system. This yields the following test,
where we using mocking to pretend that we’re always on Windows:

``` r
test_that("can skip on multiple oses", {
  local_mocked_bindings(system_os = function() "windows")

  expect_skip(skip_on_os("windows"))
  expect_skip(skip_on_os(c("windows", "linux")))
  expect_no_skip(skip_on_os("linux"))
})
```

(The logic of
[`skip_on_os()`](https://testthat.r-lib.org/dev/reference/skip.md) is
simple enough that I feel confident we only need to simulate one
platform.)

### Speeding up tests

[`usethis::use_release_issue()`](https://usethis.r-lib.org/reference/use_release_issue.html)
creates a GitHub issue with a bulleted list of actions to follow when
releasing a package. But some of the bullets depend on complex
conditions that can take a while to compute. So the [tests for this
function](https://github.com/r-lib/usethis/blob/main/tests/testthat/test-release.R)
use mocks like this:

``` r
local_mocked_bindings(
  get_revdeps = function() character(),
  gh_milestone_number = function(...) NA
)
```

Here we pretend that there are no reverse dependencies (revdeps) for the
package, which is both slow to compute and will vary over time if we use
a real package. We also pretend that there are no related GitHub
milestones, which otherwise requires an GitHub API call, which is again
slow and might vary over time. Together, these mocks keep the tests fast
and self-contained, free from any state outside of our direct control.

### Managing time

[`httr2::req_throttle()`](https://httr2.r-lib.org/reference/req_throttle.html)
prevents multiple requests from being made too quickly, using a
technique called a leaky token bucket. This technique is inextricably
tied to real time because you want to allow more requests as time
elapses. So how do you test this? I started by using
[`Sys.sleep()`](https://rdrr.io/r/base/Sys.sleep.html), but this made my
tests both slow (because I’d sleep for a second or two) and unreliable
(because sometimes more time elapsed than I expected). Eventually I
figured out that I could “manually control” time by using a [mocked
function](https://github.com/r-lib/httr2/blob/main/tests/testthat/test-req-throttle.R)
that returns the value of a variable I control. This allows me to
manually advance time and carefully test the implications.

You can see the basic idea with a simpler example. Let’s first begin
with a function that returns the “unix time”, the number of seconds
elapsed since midnight on Jan 1, 1970. This is easy to compute, but will
make some computations simpler later as well as providing a convenient
function to mock.

``` r
unix_time <- function() unclass(Sys.time())
unix_time()
#> [1] 1769018032
```

Now I’m going to create a function factory that makes it easy to compute
how much time has elapsed since some fixed starting point:

``` r
elapsed <- function() {
  start <- unix_time()
  function() {
    unix_time() - start
  }
}

timer <- elapsed()
Sys.sleep(0.5)
timer()
#> [1] 0.5018961
```

Imagine trying to test this function without mocking! You’d probably
think it’s not worth it. In fact, that’s what I thought originally, but
I soon learned my lesson because I introduce bug because I’d forgotten
the complexities of computing the difference between two POSIXct values.

With mocking, however, I can “manipulate time” by mocking `unix_time()`
so that it returns the value of a variable I control. Now I can write a
reliable test:

``` r
test_that("elapsed() measures elapsed time", {
  time <- 1
  local_mocked_bindings(unix_time = function() time)

  timer <- elapsed()
  expect_equal(timer(), 0)

  time <- 2
  expect_equal(timer(), 1)
})
#> Test passed with 2 successes 🎉.
```

## How does mocking work?

To finish up, it’s worth discussing how mocking works. The fundamental
challenge of mocking is that you want it to be “hygienic”, i.e. it
should only affect the operation of your package code, not all running
code. You can see why this might be problematic if you imagine mocking a
function that testthat itself uses: you don’t want to accidentally break
testthat while trying to test your code! To achieve this goal,
[`local_mocked_bindings()`](https://testthat.r-lib.org/dev/reference/local_mocked_bindings.md)
works by modifying your package’s [namespace
environment](https://adv-r.hadley.nz/environments.html#special-environments).

You can implement the basic idea using base R code like this:

``` r
old <- getFromNamespace("my_function", "mypackage")
assignInNamespace("my_function", new, "mypackage")

# run the test...

# restore the previous value
assignInNamespace("my_function", old, "mypackage")
```

This implementation leads to two limitations of
[`local_mocked_bindings()`](https://testthat.r-lib.org/dev/reference/local_mocked_bindings.md):

1.  The package namespace is locked, which means that you can’t add new
    bindings to it. That means if you want to mock base functions, you
    have to provide some binding that can be overridden. The easiest way
    to do this is with something like `mean <- NULL`. This creates a
    binding that
    [`local_mocked_bindings()`](https://testthat.r-lib.org/dev/reference/local_mocked_bindings.md)
    can modify, but because of R’s [lexical scoping
    rules](https://adv-r.hadley.nz/functions.html#functions-versus-variables)
    doesn’t affect ordinary calls.

2.  `::` doesn’t use the package namespace, so if you want to mock an
    explicitly namespaced function, you either have import `fun` into
    your `NAMESPACE` (e.g., with `@importFrom pkg fun`) or create your
    own wrapper function that you can mock. Typically, one of these
    options will feel fairly natural.

Overall, these limitations feel correct to me:
[`local_mocked_bindings()`](https://testthat.r-lib.org/dev/reference/local_mocked_bindings.md)
makes it easy to temporarily change the implementation of functions that
you have written, while offering workarounds to override the
implementations of functions that others have written in the scope of
your package.
