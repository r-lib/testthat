## Test environments

* local OS X install, R 3.2.1
* ubuntu 12.04 (on travis-ci), R 3.2.2
* win-builder (devel and release)

## R CMD check results

There were no ERRORs, WARNINGs or NOTEs. 

## Downstream dependencies

* I have also run R CMD check on all >700 downstream dependencies of testthat
  (https://github.com/hadley/testthat/tree/master/revdep/summary.md). 

* dowd, RNeXML: have failures, but have had 
  various different failures for me in the past

* geojsonio, ggfortify, parsedate, pingr, ridigbio: may be new failures. 

* I notified individual authors of errors, and all authors about the pending 
  release on Sep 30, and again today. 
