## Check notes

There is one check note in this version:

 File ‘testthat/libs/testthat.so’:
    Found non-API calls to R: ‘SET_BODY’, ‘SET_CLOENV’, ‘SET_FORMALS’

The plan is to remove these calls in the next release, but I wanted to deprecated the problematic functions `with_mock()` and `local_mock()` first so that users get a little warning.

## revdepcheck results

We checked all reverse dependencies, comparing R CMD check results across CRAN and dev versions of this package. Unfortunately something is up with our revdep test system and I failed to check ~1200 packages. I'm pretty confident these are bioconductor packages and unrelated to changes to testthat.
