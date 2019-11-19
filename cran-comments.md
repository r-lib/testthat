This fixes the issues with packages depending on rJava.

---

## Test environments

* local OS X install (R-release)
* travis-ci.org (R-3.1, R-3.2, R-3.3, R-oldrel, R-release, R-devel)
* win-builder (R-devel)

## R CMD check results

There were no ERRORs, WARNINGs, or NOTEs.

## revdepcheck results

We checked 79 reverse dependencies (67 from CRAN + 12 from BioConductor), comparing R CMD check results across CRAN and dev versions of this package.

 * We saw 0 new problems
 * We failed to check 0 packages
