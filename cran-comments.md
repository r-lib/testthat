## Check notes

There is one check note in this version:

 File ‘testthat/libs/testthat.so’:
    Found non-API calls to R: ‘SET_BODY’, ‘SET_CLOENV’, ‘SET_FORMALS’

The plan is to remove these calls in the next release, but I wanted to deprecated the problematic functions `with_mock()` and `local_mock()` first so that users get a little warning.

## revdepcheck results

We checked all reverse dependencies, comparing R CMD check results across CRAN and dev versions of this package. There were a few failures due to some new strictness and use of internal failures. I've tracked fixes for them at https://github.com/r-lib/testthat/issues/2021.
