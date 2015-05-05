## Test environments

* local OS X install, R 3.2.0
* ubuntu 12.04 (on travis-ci), R 3.2.0
* win-builder (devel and release)

## R CMD check results

There were no ERRORs,  WARNINGs or NOTEs. 

## Downstream dependencies
I have also run R CMD check on all >500 downstream dependencies of testthat
(https://github.com/hadley/testthat/tree/master/revdep/summary.md). I notified
individual authors of errors, and every one about the pending release on May 5.

I have noted ERRORs and WARNINGs below - I do not believe them to be related to changes to testthat:
