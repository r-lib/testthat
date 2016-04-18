## Release overview

This release includes a number of fixes to problems encountered on additional CRAN test platforms:

* The required version of R is once again correct.
* Works with gcc 6.
* Ifdefs correctly allow non-standard C++98 only with gcc and clang.

## Test environments

* local OS X install, R 3.2.4
* ubuntu 12.04 (on travis-ci), R 3.2.4
* win-builder (devel and release)

## R CMD check results

There were no ERRORs, WARNINGs. There was 1 NOTEs:

* The package is MIT licensed and has a license template.

## Downstream dependencies

* I did not re-check downstream dependencies
