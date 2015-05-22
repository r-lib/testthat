This is a resubmission to fix a bad URL that I missed - apologies!

---

## Test environments

* local OS X install, R 3.2.0
* ubuntu 12.04 (on travis-ci), R 3.2.0
* win-builder (devel and release)

## R CMD check results

There were no ERRORs,  WARNINGs or NOTEs. 

## Downstream dependencies
I have also run R CMD check on all >500 downstream dependencies of testthat
(https://github.com/hadley/testthat/tree/master/revdep/summary.md). I believe
the following failures are related to changes in testthat: analogue, coenocliner,  
crunch, formula.tools, knitcitations, lambda.tools, pxweb, stream, treebase, 
vdmR (they now error because I've removed deprecated functions and added a more 
stringent check for the presence of tests). I notified individual authors of 
errors, and all authors about the pending release on May 5.
