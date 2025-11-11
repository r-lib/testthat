## Check notes

0 errors | 0 warnings | 0 note

## revdepcheck results

We checked 9992 reverse dependencies, comparing R CMD check results across CRAN and dev versions of this package.

 * We saw 91 new problems
 * We failed to check 26 packages

The majority of this failing tests are due to the removal of `with_mock()`/`local_mock()` since they rely on functions no longer exported the R API. I started the process of notifying package maintainers about this in January, and while a substantial number fixed their packages, unforutnately many did. For the remainder of the issues, I prepared pull requests to fix the problems (mostly bugs revealed by stricter testing). You can see my progress at <https://github.com/r-lib/testthat/issues/2243>.
