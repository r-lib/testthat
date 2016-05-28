## Release overview

This release includes two fixes for Solaris:

* 'std::logic_error()' is now properly constructed using a 'std::string'.
* The unit tests involving POSIXct now pass on Solaris.

This now passes R CMD check locally on both Solaris sparc and x86. 

There is some small possibility it may fail on the CRAN test machine. The crux of the problem appears to be that ` as.POSIXlt()` has different defaults for the timezone. On Linux/Mac/Windows the first element of the tzone attribute has "" for the local timezone, whereas in Solaris it has `Sys.timezone()`. (i.e. the output of `attr(as.POSIXlt(Sys.time()), "tzone")[[1]]` appears to be different on solaris compared to Linux/Mac/Windows).

Thanks for your patience dealing with these issues - it's greatly appreciated.

## Test environments

* local OS X install, R 3.2.4
* ubuntu 12.04 (on travis-ci), R 3.2.4
* win-builder (devel and release)

## R CMD check results

There were no ERRORs, WARNINGs. There was 1 NOTEs:

* The package is MIT licensed and has a license template.

## Downstream dependencies

* I did not re-check downstream dependencies
