# testthat

[![Travis-CI Build Status](https://travis-ci.org/hadley/testthat.svg?branch=master)](https://travis-ci.org/hadley/testthat)
[![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/hadley/testthat?branch=master&svg=true)](https://ci.appveyor.com/project/hadley/testthat)
[![Coverage Status](https://img.shields.io/codecov/c/github/hadley/testthat/master.svg)](https://codecov.io/github/hadley/testthat?branch=master)
[![CRAN version](http://www.r-pkg.org/badges/version/testthat)](https://cran.r-project.org/package=testthat)

Testing your code is normally painful and boring. `testthat` tries to make testing as fun as possible, so that you get a visceral satisfaction from writing tests. Testing should be fun, not a drag, so you do it all the time. To make that happen, `testthat`:

* Provides functions that make it easy to describe what you expect a
  function to do, including catching errors, warnings and messages.

* Easily integrates in your existing workflow, whether it's informal testing
  on the command line, building test suites or using R CMD check.

* Can re-run tests automatically as you change your code or tests.

* Displays test progress visually, showing a pass, fail or error for every
  expectation. If you're using the terminal, it'll even colour the output.

`testthat` draws inspiration from the xUnit family of testing packages, as well from many of the innovative ruby testing libraries, like [rspec](http://rspec.info/), [testy](https://github.com/ahoward/testy), [bacon](https://github.com/chneukirchen/bacon) and [cucumber](https://cucumber.io). I have used what I think works for R, and abandoned what doesn't, creating a testing environment that is philosophically centred in R.

Instructions for using this package can be found in the [Testing](http://r-pkgs.had.co.nz/tests.html) chapter of [R packages](http://r-pkgs.had.co.nz/).

## Integration with R CMD check

If you're using testthat in a package, you should put your tests in `tests/testthat`. Each test file should start with `test` and end in `.R` or `.r`. To ensure `R CMD check` runs your tests, place the following code in `tests/testthat.R`:

```R
library(testthat)
library(yourpackage)

test_check("yourpackage")
```

Also make sure to add `Suggests: testthat` to your `DESCRIPTION`.
