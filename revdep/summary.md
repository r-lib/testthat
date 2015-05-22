# Setup

## Platform

|setting  |value                        |
|:--------|:----------------------------|
|version  |R version 3.2.0 (2015-04-16) |
|system   |x86_64, darwin13.4.0         |
|ui       |RStudio (0.99.441)           |
|language |(EN)                         |
|collate  |en_US.UTF-8                  |
|tz       |America/Chicago              |

## Packages

|package  |*  |version |date       |source         |
|:--------|:--|:-------|:----------|:--------------|
|crayon   |   |1.2.1   |2015-05-18 |CRAN (R 3.2.0) |
|devtools |*  |1.8.0   |2015-05-09 |CRAN (R 3.2.0) |
|digest   |   |0.6.8   |2014-12-31 |CRAN (R 3.2.0) |

# Check results
543 checked out of 543 dependencies 

## aemo (0.1.0)
Maintainer: Imanuel Costigan <i.costigan@me.com>

__OK__

## aidar (1.0.0)
Maintainer: Andreas Pfeiffer <apfeiffer1@gmail.com>

```
checking DESCRIPTION meta-information ... NOTE
Malformed Description field: should contain one or more complete sentences.
```
```
checking dependencies in R code ... NOTE
Package in Depends field not imported from: ‘XML’
  These packages need to be imported from (in the NAMESPACE file)
  for when this namespace is loaded but not attached.
```
```
checking R code for possible problems ... NOTE
getAnnotation: no visible global function definition for ‘xmlRoot’
getAnnotation: no visible global function definition for ‘xmlTreeParse’
getAnnotation: no visible global function definition for ‘getNodeSet’
getAnnotation: no visible binding for global variable ‘xmlGetAttr’
getBins: no visible global function definition for ‘xmlGetAttr’
getCloud1D: no visible global function definition for ‘xmlRoot’
getCloud1D: no visible global function definition for ‘xmlTreeParse’
getCloud1D: no visible global function definition for ‘getNodeSet’
getCloud1D: no visible binding for global variable ‘xmlGetAttr’
getCloud2D: no visible global function definition for ‘xmlRoot’
getCloud2D: no visible global function definition for ‘xmlTreeParse’
getCloud2D: no visible global function definition for ‘getNodeSet’
getCloud2D: no visible binding for global variable ‘xmlGetAttr’
getCloud3D: no visible global function definition for ‘xmlRoot’
getCloud3D: no visible global function definition for ‘xmlTreeParse’
getCloud3D: no visible global function definition for ‘getNodeSet’
getCloud3D: no visible binding for global variable ‘xmlGetAttr’
getEntries: no visible global function definition for ‘xmlGetAttr’
getFileInfo: no visible global function definition for ‘xmlRoot’
getFileInfo: no visible global function definition for ‘xmlTreeParse’
getFileInfo: no visible binding for global variable ‘xmlGetAttr’
getFileInfo: no visible global function definition for ‘getNodeSet’
getHisto1D: no visible global function definition for ‘xmlRoot’
getHisto1D: no visible global function definition for ‘xmlTreeParse’
getHisto1D: no visible global function definition for ‘getNodeSet’
getHisto1D: no visible binding for global variable ‘xmlGetAttr’
getHisto1D: no visible global function definition for ‘xmlGetAttr’
getHisto2D: no visible global function definition for ‘xmlRoot’
getHisto2D: no visible global function definition for ‘xmlTreeParse’
getHisto2D: no visible global function definition for ‘getNodeSet’
getHisto2D: no visible binding for global variable ‘xmlGetAttr’
getHisto3D: no visible global function definition for ‘xmlRoot’
getHisto3D: no visible global function definition for ‘xmlTreeParse’
getHisto3D: no visible global function definition for ‘getNodeSet’
getHisto3D: no visible binding for global variable ‘xmlGetAttr’
getProfile1D: no visible global function definition for ‘xmlRoot’
getProfile1D: no visible global function definition for ‘xmlTreeParse’
getProfile1D: no visible global function definition for ‘getNodeSet’
getProfile1D: no visible binding for global variable ‘xmlGetAttr’
getProfile2D: no visible global function definition for ‘xmlRoot’
getProfile2D: no visible global function definition for ‘xmlTreeParse’
getProfile2D: no visible global function definition for ‘getNodeSet’
getProfile2D: no visible binding for global variable ‘xmlGetAttr’
getRow: no visible global function definition for ‘getNodeSet’
getRow: no visible binding for global variable ‘xmlGetAttr’
getTuple: no visible global function definition for ‘xmlRoot’
getTuple: no visible global function definition for ‘xmlTreeParse’
getTuple: no visible global function definition for ‘getNodeSet’
getTuple: no visible binding for global variable ‘xmlGetAttr’
getXAxisInfo: no visible global function definition for ‘xmlGetAttr’
getXStats: no visible global function definition for ‘xmlGetAttr’
getYAxisInfo: no visible global function definition for ‘xmlGetAttr’
getYStats: no visible global function definition for ‘xmlGetAttr’
```
```
DONE
Status: 3 NOTEs
```

## aLFQ (1.3.2)
Maintainer: George Rosenberger <rosenberger@imsb.biol.ethz.ch>

```
checking whether package ‘aLFQ’ can be installed ... ERROR
Installation failed.
See ‘/private/tmp/RtmpQJiDLv/check_crand2516b207784/aLFQ.Rcheck/00install.out’ for details.
Status: 1 ERROR
```

## alm (0.4.0)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: http://www.github.com/ropensci/alm/issues

__OK__

## analogue (0.16-0)
Maintainer: Gavin L. Simpson <ucfagls@gmail.com>  
Bug reports: https://github.com/gavinsimpson/analogue/issues

```
checking tests ... ERROR
Running the tests in ‘tests/test-all.R’ failed.
Last 13 lines of output:
  Attaching package: 'analogue'
  
  The following object is masked from 'package:testthat':
  
      compare
  
  > 
  > ## Runs the tests in inst/tests
  > test_package("analogue")
  Error in eval(expr, envir, enclos) : 
    could not find function "library_if_available"
  Calls: test_package ... test_dir -> lapply -> FUN -> sys.source2 -> eval -> eval
  Execution halted
```
```
DONE
Status: 1 ERROR
```

## analogueExtra (0.1-0)
Maintainer: Gavin L. Simpson <ucfagls@gmail.com>  
Bug reports: https://github.com/gavinsimpson/analogueExtra/issues

__OK__

## aoos (0.2.0)
Maintainer: Sebastian Warnholz <wahani@gmail.com>  
Bug reports: https://github.com/wahani/aoos/issues

__OK__

## apex (1.0.0)
Maintainer: Thibaut Jombart <t.jombart@imperial.ac.uk>

__OK__

## argparse (1.0.1)
Maintainer: Trevor L Davis <trevor.l.davis@stanford.edu>  
Bug reports: https://github.com/trevorld/argparse/issues

```
checking DESCRIPTION meta-information ... NOTE
Malformed Title field: should not end in a period.
```
```
checking re-building of vignette outputs ... NOTE
Error in re-building vignettes:
  ...
sh: rst2pdf: command not found
Error: processing vignette 'argparse.Rrst' failed with diagnostics:
conversion by rst2pdf failed!
Execution halted

```
```
DONE
Status: 2 NOTEs
```

## ARPobservation (1.1)
Maintainer: James E. Pustejovsky <jepusto@gmail.com>

__OK__

## ARTool (0.9.3)
Maintainer: Matthew Kay <mjskay@uw.edu>  
Bug reports: https://github.com/mjskay/ARTool/issues/new

```
checking package dependencies ... NOTE
Package suggested but not available for checking: ‘lsmeans’
```
```
checking DESCRIPTION meta-information ... NOTE
Malformed Description field: should contain one or more complete sentences.
```
```
checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  Type 'q()' to quit R.
  
  > library(testthat)
  > library(ARTool)
  Loading required package: lme4
  Loading required package: Matrix
  Loading required package: Rcpp
  Loading required package: car
  > 
  > test_check("ARTool")
  Error in library(lsmeans) : there is no package called 'lsmeans'
  Calls: test_check ... lapply -> FUN -> sys.source2 -> eval -> eval -> library
  Execution halted
```
```
DONE
Status: 1 ERROR, 2 NOTEs
```

## arules (1.1-6)
Maintainer: Michael Hahsler <mhahsler@lyle.smu.edu>

__OK__

## aRxiv (0.5.8)
Maintainer: Karl Broman <kbroman@biostat.wisc.edu>  
Bug reports: https://github.com/ropensci/aRxiv/issues

__OK__

## assertive (0.2-4)
Maintainer: Richard Cotton <richierocks@gmail.com>

```
checking Rd cross-references ... NOTE
Package unavailable to check Rd xrefs: ‘sets’
```
```
DONE
Status: 1 NOTE
```

## assertr (0.4.1)
Maintainer: Tony Fischetti <tony.fischetti@gmail.com>  
Bug reports: https://github.com/tonyfischetti/assertr/issues

__OK__

## assertthat (0.1)
Maintainer: 'Hadley Wickham' <h.wickham@gmail.com>

```
checking DESCRIPTION meta-information ... NOTE
Malformed Title field: should not end in a period.
```
```
DONE
Status: 1 NOTE
```

## attribrisk (0.1)
Maintainer: Louis Schenck <louis.schenck@mayo.edu>

```
checking S3 generic/method consistency ... NOTE
Found the following apparent S3 methods exported but not registered:
  summary.attribrisk
See section ‘Registering S3 methods’ in the ‘Writing R Extensions’
manual.
```
```
DONE
Status: 1 NOTE
```

## bagRboostR (0.0.2)
Maintainer: Shannon Rush <shannonmrush@gmail.com>

__OK__

## BatchExperiments (1.4.1)
Maintainer: Michel Lang <michellang@gmail.com>  
Bug reports: https://github.com/tudo-r/BatchExperiments/issues

```
checking dependencies in R code ... NOTE
Unexported objects imported by ':::' calls:
  ‘BatchJobs:::addIntModulo’ ‘BatchJobs:::buffer’
  ‘BatchJobs:::checkDir’ ‘BatchJobs:::checkId’ ‘BatchJobs:::checkIds’
  ‘BatchJobs:::checkPart’ ‘BatchJobs:::createShardedDirs’
  ‘BatchJobs:::dbConnectToJobsDB’ ‘BatchJobs:::dbCreateJobStatusTable’
  ‘BatchJobs:::dbDoQuery’ ‘BatchJobs:::dbFindDone’
  ‘BatchJobs:::dbFindRunning’ ‘BatchJobs:::dbRemoveJobs’
  ‘BatchJobs:::dbSelectWithIds’ ‘BatchJobs:::getJobDirs’
  ‘BatchJobs:::getJobInfoInternal’ ‘BatchJobs:::getKillJob’
  ‘BatchJobs:::getListJobs’ ‘BatchJobs:::getRandomSeed’
  ‘BatchJobs:::getResult’ ‘BatchJobs:::isRegistryDir’
  ‘BatchJobs:::makeRegistryInternal’ ‘BatchJobs:::saveRegistry’
  ‘BatchJobs:::seeder’ ‘BatchJobs:::syncRegistry’
  See the note in ?`:::` about the use of this operator.
```
```
DONE
Status: 1 NOTE
```

## BatchJobs (1.6)
Maintainer: Bernd Bischl <bernd_bischl@gmx.net>  
Bug reports: https://github.com/tudo-r/BatchJobs/issues

__OK__

## BayesFactor (0.9.11-1)
Maintainer: Richard D. Morey <richarddmorey@gmail.com>  
Bug reports: https://github.com/richarddmorey/BayesFactor/issues

__OK__

## bayesGDS (0.6.1)
Maintainer: Michael Braun <braunm@smu.edu>

```
checking package dependencies ... NOTE
Package suggested but not available for checking: ‘MCMCpack’
```
```
DONE
Status: 1 NOTE
```

## BBmisc (1.9)
Maintainer: Bernd Bischl <bernd_bischl@gmx.net>  
Bug reports: https://github.com/berndbischl/BBmisc/issues

```
checking package dependencies ... NOTE
Package suggested but not available for checking: ‘microbenchmark’
```
```
DONE
Status: 1 NOTE
```

## bbmle (1.0.17)
Maintainer: Ben Bolker <bolker@mcmaster.ca>

```
checking package dependencies ... NOTE
Package suggested but not available for checking: ‘rms’
```
```
checking R code for possible problems ... NOTE
splom.slice : up0: no visible global function definition for
  ‘panel.points’
splom.slice: no visible binding for global variable ‘diag.panel.splom’
xyplot.slice : pfun: no visible global function definition for
  ‘panel.xyplot’
xyplot.slice : pfun: no visible global function definition for
  ‘panel.abline’
xyplot.slice : pfun: no visible global function definition for
  ‘panel.number’
```
```
checking re-building of vignette outputs ... NOTE
Error in re-building vignettes:
  ...
  NaNs produced
Warning in dbinom(x = c(0, 2, 1, 3, 4, 5, 0, 0, 0, 0, 1, 0, 0, 0, 0), prob = c(0.323159427380936,  :
  NaNs produced
Warning in dbinom(x = c(0, 2, 1, 3, 4, 5, 0, 0, 0, 0, 1, 0, 0, 0, 0), prob = c(1.69696793084232,  :
  NaNs produced
Warning in dbinom(x = c(0, 2, 1, 3, 4, 5, 0, 0, 0, 0, 1, 0, 0, 0, 0), prob = c(0.289372177019226,  :
  NaNs produced
Warning in dbinom(x = c(0, 2, 1, 3, 4, 5, 0, 0, 0, 0, 1, 0, 0, 0, 0), prob = c(1.90983961894499,  :
  NaNs produced
Warning in dbinom(x = c(0, 2, 1, 3, 4, 5, 0, 0, 0, 0, 1, 0, 0, 0, 0), prob = c(0.253207428692937,  :
  NaNs produced
Warning in dbinom(x = c(0, 2, 1, 3, 4, 5, 0, 0, 0, 0, 1, 0, 0, 0, 0), prob = c(2.24718525433143,  :
  NaNs produced
Warning in dbinom(x = c(0, 2, 1, 3, 4, 5, 0, 0, 0, 0, 1, 0, 0, 0, 0), prob = c(0.219940849413555,  :
  NaNs produced
Warning in dbinom(x = c(0, 2, 1, 3, 4, 5, 0, 0, 0, 0, 1, 0, 0, 0, 0), prob = c(2.76406402172104,  :
  NaNs produced
Warning in dbinom(x = c(0, 2, 1, 3, 4, 5, 0, 0, 0, 0, 1, 0, 0, 0, 0), prob = c(0.191138285903703,  :
  NaNs produced
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called 'unmarked'
Quitting from lines 148-153 (quasi.Rnw) 
Error: processing vignette 'quasi.Rnw' failed with diagnostics:
package or namespace load failed for 'AICcmodavg'
Execution halted

```
```
DONE
Status: 3 NOTEs
```

## benford.analysis (0.1.1)
Maintainer: Carlos Cinelli <carloscinelli@hotmail.com>

__OK__

## BEQI2 (2.0-0)
Maintainer: Dennis Walvoort <dennis.Walvoort@wur.nl>

__OK__

## BerlinData (1.0.1)
Maintainer: Dirk Schumacher <mail@dirk-schumacher.net>

```
checking data for non-ASCII characters ... NOTE
  Note: found 1 marked UTF-8 string
```
```
DONE
Status: 1 NOTE
```

## bigrquery (0.1.0)
Maintainer: Hadley Wickham <hadley@rstudio.com>

```
checking dependencies in R code ... NOTE
Namespace in Imports field not imported from: ‘R6’
  All declared Imports should be used.
```
```
DONE
Status: 1 NOTE
```

## bio3d (2.2-2)
Maintainer: Barry Grant <bjgrant@umich.edu>

```
checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  .......... .......... .......... .......... ..........
  .......... .......... .......... .......... ..........
  .......... .......... .......... .......... 
  downloaded 590 KB
  
  testthat results ================================================================
  OK: 253 SKIPPED: 0 FAILED: 3
  1. Error: SSE assignment still works 
  2. Error: struct.aln still works 
  3. Error: fit.xyz() gets the same results as VMD 
  
  Error: testthat unit tests failed
  Execution halted
```
```
DONE
Status: 1 ERROR
```

## biogram (1.1)
Maintainer: Michal Burdukiewicz <michalburdukiewicz@gmail.com>  
Bug reports: https://github.com/michbur/biogram/issues

__OK__

## biom (0.3.12)
Maintainer: Paul J. McMurdie <mcmurdie@stanford.edu>  
Bug reports: https://github.com/joey711/biom/issues

```
checking DESCRIPTION meta-information ... NOTE
Malformed Title field: should not end in a period.
```
```
DONE
Status: 1 NOTE
```

## blowtorch (1.0.2)
Maintainer: Steven Pollack <steven@pollackphoto.net>

__OK__

## bmp (0.2)
Maintainer: Gregory Jefferis <jefferis@gmail.com>

__OK__

## bold (0.2.6)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: https://github.com/ropensci/bold/issues

```
checking package dependencies ... NOTE
Package suggested but not available for checking: ‘sangerseqR’
```
```
DONE
Status: 1 NOTE
```

## bootLR (0.9)
Maintainer: Ari B. Friedman <abfriedman@gmail.com>

__OK__

## boxr (0.2.5)
Maintainer: Brendan Rocks <rocks.brendan@gmail.com>  
Bug reports: https://github.com/brendan-R/boxr/issues

__OK__

## brms (0.1.0)
Maintainer: Paul-Christian Buerkner <paul.buerkner@gmail.com>

```
checking package dependencies ... NOTE
Packages suggested but not available for checking: ‘rstan’ ‘R2jags’
```
```
checking Rd cross-references ... NOTE
Package unavailable to check Rd xrefs: ‘rstan’
```
```
DONE
Status: 2 NOTEs
```

## broman (0.55-2)
Maintainer: Karl W Broman <kbroman@biostat.wisc.edu>

```
checking R code for possible problems ... NOTE
Found the following calls to attach():
File ‘broman/R/loadfile.R’:
  attach(file)
See section ‘Good practice’ in ‘?attach’.
```
```
DONE
Status: 1 NOTE
```

## broom (0.3.7)
Maintainer: David Robinson <admiral.david@gmail.com>  
Bug reports: http://github.com/dgrtwo/broom/issues

```
checking package dependencies ... NOTE
Package suggested but not available for checking: ‘plm’
```
```
DONE
Status: 1 NOTE
```

## caret (6.0-47)
Maintainer: Max Kuhn <Max.Kuhn@pfizer.com>

```
checking package dependencies ... NOTE
Packages suggested but not available for checking:
  ‘earth’ ‘ipred’ ‘pls’ ‘spls’ ‘subselect’ ‘pamr’ ‘Cubist’
```
```
checking Rd cross-references ... NOTE
Packages unavailable to check Rd xrefs: ‘earth’, ‘subselect’, ‘ipred’, ‘pls’, ‘spls’, ‘pamr’, ‘Cubist’
```
```
checking examples ... ERROR
Running examples in ‘caret-Ex.R’ failed
The error most likely occurred in:

> base::assign(".ptime", proc.time(), pos = "CheckExEnv")
> ### Name: bagFDA
> ### Title: Bagged FDA
> ### Aliases: bagFDA print.bagFDA bagFDA.default bagFDA.formula
> ### Keywords: regression
> 
> ### ** Examples
> 
> library(mlbench)
> library(earth)
Error in library(earth) : there is no package called ‘earth’
Execution halted
```
```
checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  4: bagEarth(Class ~ ., data = data, B = 3, glm = list(family = binomial)) at test_models_bagEarth.R:22
  5: bagEarth.formula(Class ~ ., data = data, B = 3, glm = list(family = binomial))
  6: bagEarth.default(x, y, w, B = B, summary = summary, keepX = keepX, ...)
  7: requireNamespaceQuietStop("earth")
  8: stop(paste("package", package, "is required"))
  
  testthat results ================================================================
  OK: 19 SKIPPED: 0 FAILED: 2
  1. Error: bagEarth simple regression 
  2. Error: bagEarth simple classification 
  
  Error: testthat unit tests failed
  Execution halted
```
```
checking running R code from vignettes ... WARNING
Errors in running code in vignettes:
when running code in ‘caret.Rnw’
  ...
The following objects are masked from ‘package:stats’:

    cov, smooth, var


> library(pls)

  When sourcing ‘caret.R’:
Error: there is no package called ‘pls’
Execution halted

```
```
checking re-building of vignette outputs ... NOTE
Error in re-building vignettes:
  ...
Loading required package: lattice
Loading required package: ggplot2
Type 'citation("pROC")' for a citation.

Attaching package: ‘pROC’

The following objects are masked from ‘package:stats’:

    cov, smooth, var


Error: processing vignette 'caret.Rnw' failed with diagnostics:
 chunk 1 (label = loadLibs) 
Error in library(pls) : there is no package called ‘pls’
Execution halted

```
```
DONE
Status: 2 ERRORs, 1 WARNING, 3 NOTEs
```

## caretEnsemble (1.0.0)
Maintainer: Zachary A. Mayer <zach.mayer@gmail.com>  
Bug reports: https://github.com/zachmayer/caretEnsemble/issues

```
checking package dependencies ... NOTE
Packages suggested but not available for checking: ‘ipred’ ‘gbm’
```
```
checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  
  > library(testthat)
  > library(caretEnsemble)
  Loading required package: caret
  Loading required package: lattice
  Loading required package: ggplot2
  > 
  > test_check("caretEnsemble")
  randomForest 4.6-10
  Type rfNews() to see new features/changes/bug fixes.
  Error in library("gbm") : there is no package called 'gbm'
  Calls: test_check ... lapply -> FUN -> sys.source2 -> eval -> eval -> library
  Execution halted
```
```
checking re-building of vignette outputs ... NOTE
Error in re-building vignettes:
  ...
Warning: glm.fit: fitted probabilities numerically 0 or 1 occurred
Warning: glm.fit: algorithm did not converge
Warning: glm.fit: fitted probabilities numerically 0 or 1 occurred
Warning: glm.fit: algorithm did not converge
Warning: glm.fit: fitted probabilities numerically 0 or 1 occurred
Warning: glm.fit: algorithm did not converge
Warning: glm.fit: fitted probabilities numerically 0 or 1 occurred
Warning: glm.fit: algorithm did not converge
Warning: glm.fit: fitted probabilities numerically 0 or 1 occurred
Warning: glm.fit: algorithm did not converge
Warning: glm.fit: fitted probabilities numerically 0 or 1 occurred
Warning: glm.fit: algorithm did not converge
Warning: glm.fit: fitted probabilities numerically 0 or 1 occurred
Warning: glm.fit: algorithm did not converge
Warning: glm.fit: fitted probabilities numerically 0 or 1 occurred
Warning: glm.fit: algorithm did not converge
Warning: glm.fit: fitted probabilities numerically 0 or 1 occurred
Warning: glm.fit: algorithm did not converge
Warning: glm.fit: fitted probabilities numerically 0 or 1 occurred
Warning: glm.fit: algorithm did not converge
Warning: glm.fit: fitted probabilities numerically 0 or 1 occurred
Quitting from lines 161-163 (caretEnsemble-intro.Rmd) 
Error: processing vignette 'caretEnsemble-intro.Rmd' failed with diagnostics:
there is no package called 'gbm'
Execution halted

```
```
DONE
Status: 1 ERROR, 2 NOTEs
```

## Causata (4.2-0)
Maintainer: Justin Hemann <justinh@causata.com>

```
checking DESCRIPTION meta-information ... NOTE
Malformed Title field: should not end in a period.
```
```
checking top-level files ... NOTE
Non-standard file/directory found at top level:
  ‘integration_tests’
```
```
checking R code for possible problems ... NOTE
GetMetadata.Connect: no visible global function definition for
  ‘dbGetQuery’
GetRawData.Connect: no visible global function definition for
  ‘dbGetQuery’
```
```
checking line endings in Makefiles ... NOTE
Found the following Makefile(s) without a final LF:
  inst/doc/Makefile
Some ‘make’ programs ignore lines not ending in LF.
```
```
checking files in ‘vignettes’ ... NOTE
The following files look like leftovers/mistakes:
  ‘Causata-vignette.log’
Please remove them from your package.
```
```
DONE
Status: 5 NOTEs
```

## cda (1.5.1)
Maintainer: Baptiste Auguie <baptiste.auguie@gmail.com>

```
checking whether package ‘cda’ can be installed ... ERROR
Installation failed.
See ‘/private/tmp/RtmpQJiDLv/check_crand2516b207784/cda.Rcheck/00install.out’ for details.
Status: 1 ERROR
```

## cellranger (0.1.0)
Maintainer: Jennifer Bryan <jenny@stat.ubc.ca>  
Bug reports: https://github.com/jennybc/cellranger/issues

__OK__

## CheckDigit (0.1-1)
Maintainer: Justin Brantley <brantley@uw.edu>

```
checking DESCRIPTION meta-information ... NOTE
Malformed Description field: should contain one or more complete sentences.
```
```
DONE
Status: 1 NOTE
```

## checkmate (1.5.3)
Maintainer: Michel Lang <michellang@gmail.com>  
Bug reports: https://github.com/mllg/checkmate/issues

__OK__

## checkpoint (0.3.10)
Maintainer: Andrie de Vries <andrie@revolutionanalytics.com>  
Bug reports: http://www.github.com/RevolutionAnalytics/checkpoint/issues

__OK__

## CHNOSZ (1.0.5)
Maintainer: Jeffrey Dick <j3ffdick@gmail.com>

```
checking package dependencies ... NOTE
Package suggested but not available for checking: ‘limSolve’
```
```
checking whether package ‘CHNOSZ’ can be installed ... ERROR
Installation failed.
See ‘/private/tmp/RtmpQJiDLv/check_crand2516b207784/CHNOSZ.Rcheck/00install.out’ for details.
Status: 1 ERROR, 1 NOTE
```

## chopthin (0.1)
Maintainer: Axel Gandy <a.gandy@imperial.ac.uk>

__OK__

## choroplethr (3.1.0)
Maintainer: Ari Lamstein <arilamstein@gmail.com>  
Bug reports: https://github.com/arilamstein/choroplethr/issues

__OK__

## chromer (0.1)
Maintainer: Matthew Pennell <mwpennell@gmail.com>  
Bug reports: http://www.github.com/ropensci/chromer/issues/new

```
checking DESCRIPTION meta-information ... NOTE
Malformed Description field: should contain one or more complete sentences.
```
```
DONE
Status: 1 NOTE
```

## Ckmeans.1d.dp (3.3.1)
Maintainer: Joe Song <joemsong@cs.nmsu.edu>

__OK__

## climwin (0.0.1)
Maintainer: Liam D. Bailey <liam.bailey@anu.edu.au>

__OK__

## cocor (1.1-1)
Maintainer: Birk Diedenhofen <mail@birkdiedenhofen.de>

```
checking package dependencies ... NOTE
Package which this enhances but not available for checking: ‘RKWard’
```
```
DONE
Status: 1 NOTE
```

## cocron (1.0-0)
Maintainer: Birk Diedenhofen <mail@birkdiedenhofen.de>

```
checking dependencies in R code ... NOTE
Package in Depends field not imported from: ‘methods’
  These packages need to be imported from (in the NAMESPACE file)
  for when this namespace is loaded but not attached.
```
```
DONE
Status: 1 NOTE
```

## coenocliner (0.1-0)
Maintainer: Gavin L. Simpson <ucfagls@gmail.com>  
Bug reports: https://github.com/gavinsimpson/coenocliner/issues

```
checking tests ... ERROR
Running the tests in ‘tests/test-all.R’ failed.
Last 13 lines of output:
  'citation()' on how to cite R or R packages in publications.
  
  Type 'demo()' for some demos, 'help()' for on-line help, or
  'help.start()' for an HTML browser interface to help.
  Type 'q()' to quit R.
  
  > ## Test `coenocliner` using the `testthat` package
  > 
  > ## Setup
  > library("testthat")
  > library_if_available("coenocliner")
  Error: could not find function "library_if_available"
  Execution halted
```
```
DONE
Status: 1 ERROR
```

## commentr (0.1)
Maintainer: Erik Bulow <erik.bulow@rccvast.se>  
Bug reports: https://github.com/cancercentrum/commentr/issues

__OK__

## confidence (1.1-0)
Maintainer: Dennis J. J. Walvoort <dennis.Walvoort@wur.nl>

__OK__

## countrycode (0.18)
Maintainer: Vincent Arel-Bundock <vincent.arel-bundock@umontreal.ca>

```
checking data for non-ASCII characters ... NOTE
  Note: found 6 marked UTF-8 strings
```
```
DONE
Status: 1 NOTE
```

## covr (1.0.0)
Maintainer: Jim Hester <james.f.hester@gmail.com>

```
checking dependencies in R code ... NOTE
There are ::: calls to the package's namespace in its code. A package
  almost never needs to use ::: for its own objects:
  ‘count’
```
```
DONE
Status: 1 NOTE
```

## crayon (1.2.1)
Maintainer: Gabor Csardi <csardi.gabor@gmail.com>  
Bug reports: https://github.com/gaborcsardi/crayon/issues

__OK__

## crunch (1.1.1)
Maintainer: Neal Richardson <neal@crunch.io>  
Bug reports: https://github.com/Crunch-io/rcrunch/issues

```
checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  
  Attaching package: 'crunch'
  
  The following object is masked from 'package:base':
  
      table
  
  Error in cat(colourise("S", "yellow")) : 
    could not find function "colourise"
  Error in cat(colourise("S", "yellow")) : 
    could not find function "colourise"
  Calls: test_check ... lapply -> FUN -> sys.source2 -> eval -> eval -> skip -> cat
  Execution halted
```
```
DONE
Status: 1 ERROR
```

## CSS (1.0.2)
Maintainer: Francois Guillem <guillem.francois@gmail.com>

```
checking dependencies in R code ... NOTE
Packages in Depends field not imported from:
  ‘XML’ ‘stringr’
  These packages need to be imported from (in the NAMESPACE file)
  for when this namespace is loaded but not attached.
```
```
checking R code for possible problems ... NOTE
cssApply: no visible global function definition for ‘xpathSApply’
cssApplyInNodeSet: no visible global function definition for
  ‘getNodeSet’
cssApplyInNodeSet: no visible global function definition for
  ‘xpathSApply’
cssCharacter: no visible global function definition for ‘xmlValue’
cssClass: no visible global function definition for ‘xmlGetAttr’
cssId: no visible global function definition for ‘xmlGetAttr’
cssLink: no visible global function definition for ‘xmlGetAttr’
cssName: no visible global function definition for ‘xmlGetAttr’
cssNumeric: no visible global function definition for ‘xmlValue’
cssSrc: no visible global function definition for ‘xmlGetAttr’
cssToXpath: no visible global function definition for ‘str_extract_all’
cssToXpath : <anonymous>: no visible global function definition for
  ‘str_detect’
cssToXpath : <anonymous>: no visible global function definition for
  ‘str_replace’
cssToXpath : <anonymous>: no visible global function definition for
  ‘str_extract’
cssToXpath : <anonymous>: no visible global function definition for
  ‘str_match’
cssToXpath : <anonymous>: no visible global function definition for
  ‘str_replace_all’
cssToXpath : <anonymous>: no visible global function definition for
  ‘str_match_all’
cssToXpath: no visible global function definition for ‘str_replace’
cssValue: no visible global function definition for ‘xmlGetAttr’
```
```
checking tests ... ERROR
Running the tests in ‘tests/run-all.R’ failed.
Last 13 lines of output:
  2. Failure (at testDataExtraction.R#79): functions are insensitive to extra spaces 
  cssApply(doc, "*[ id = 'player1' ]", cssId) not equal to c("player1")
  Modes: character, list
  Lengths: 1, 0
  target is character, current is list
  
  3. Failure (at testDataExtraction.R#81): functions are insensitive to extra spaces 
  cssApply(doc, "*[ name = 'Hello world' ]", cssCharacter) not equal to "insensitive"
  Modes: character, list
  Lengths: 1, 0
  target is character, current is list
  Error: Test failures
  Execution halted
```
```
DONE
Status: 1 ERROR, 2 NOTEs
```

## curl (0.6)
Maintainer: Jeroen Ooms <jeroen.ooms@stat.ucla.edu>  
Bug reports: https://github.com/jeroenooms/curl/issues

__OK__

## daff (0.1.4)
Maintainer: Edwin de Jonge <edwindjonge@gmail.com>

__OK__

## Dark (0.9.4)
Maintainer: Dr Jeremiah MF Kelly <emkayoh@mac.com>  
Bug reports: https://github.com/emkayoh/Dark/issues

__OK__

## data.table (1.9.4)
Maintainer: Matt Dowle <mdowle@mdowle.plus.com>  
Bug reports: https://github.com/Rdatatable/data.table/issues

__OK__

## data.tree (0.1.6)
Maintainer: Christoph Glur <christoph.glur@ipub.ch>  
Bug reports: http://github.com/gluc/data.tree/issues

__OK__

## DataCombine (0.2.9)
Maintainer: Christopher Gandrud <christopher.gandrud@gmail.com>  
Bug reports: https://github.com/christophergandrud/DataCombine/issues

__OK__

## datalist (0.2)
Maintainer: Joe Thorley <joe@poissonconsulting.ca>

```
checking DESCRIPTION meta-information ... NOTE
Malformed Title field: should not end in a period.
```
```
DONE
Status: 1 NOTE
```

## dataRetrieval (2.2.1)
Maintainer: Laura DeCicco <ldecicco@usgs.gov>

__OK__

## db.r (0.1.3)
Maintainer: Greg Lamp <greg@yhathq.com>  
Bug reports: https://github.com/yhat/db.r/issues

```
checking package dependencies ... NOTE
Package suggested but not available for checking: ‘RPostgreSQL’
```
```
DONE
Status: 1 NOTE
```

## dbarts (0.8-5)
Maintainer: Vincent Dorie <vjd4@nyu.edu>  
Bug reports: https://github.com/vdorie/dbarts/issues

```
checking whether package ‘dbarts’ can be installed ... ERROR
Installation failed.
See ‘/private/tmp/RtmpQJiDLv/check_crand2516b207784/dbarts.Rcheck/00install.out’ for details.
Status: 1 ERROR
```

## DBI (0.3.1)
Maintainer: Hadley Wickham <hadley@rstudio.com>  
Bug reports: https://github.com/rstats-db/DBI/issues

```
checking S3 generic/method consistency ... NOTE
Found the following apparent S3 methods exported but not registered:
  print.list.pairs
See section ‘Registering S3 methods’ in the ‘Writing R Extensions’
manual.
```
```
DONE
Status: 1 NOTE
```

## dcemriS4 (0.55)
Maintainer: Brandon Whitcher <bwhitcher@gmail.com>

```
checking whether package ‘dcemriS4’ can be installed ... ERROR
Installation failed.
See ‘/private/tmp/RtmpQJiDLv/check_crand2516b207784/dcemriS4.Rcheck/00install.out’ for details.
Status: 1 ERROR
```

## dcmr (1.0)
Maintainer: Diane Losardo <dlosardo@amplify.com>

__OK__

## decisionSupport (1.101.1)
Maintainer: Lutz Göhring <lutz.goehring@gmx.de>

```
checking package dependencies ... NOTE
Packages suggested but not available for checking:
  ‘chillR’ ‘eha’ ‘mc2d’ ‘nleqslv’ ‘pls’ ‘rriskDistributions’
```
```
checking Rd cross-references ... NOTE
Packages unavailable to check Rd xrefs: ‘chillR’, ‘nleqslv’, ‘pls’, ‘mc2d’, ‘eha’, ‘rriskDistributions’
```
```
checking examples ... ERROR
Running examples in ‘decisionSupport-Ex.R’ failed
The error most likely occurred in:

> base::assign(".ptime", proc.time(), pos = "CheckExEnv")
> ### Name: eviSimulation
> ### Title: Expected Value of Information (EVI) Simulation.
> ### Aliases: eviSimulation
> 
> ### ** Examples
> 
> #############################################################
> # Example 1 Only one prospective estimate:
> #############################################################
> numberOfModelRuns=10000
> # Create the estimate object:
> variable=c("revenue","costs")
> distribution=c("posnorm","posnorm")
> lower=c(10000,  5000)
> upper=c(100000, 50000)
> currentEstimate<-as.estimate(variable, distribution, lower, upper)
> prospectiveEstimate<-currentEstimate
> revenueConst<-mean(c(currentEstimate$marginal["revenue","lower"],
+                      currentEstimate$marginal["revenue","upper"]))
> prospectiveEstimate$marginal["revenue","distribution"]<-"const"
> prospectiveEstimate$marginal["revenue","lower"]<-revenueConst
> prospectiveEstimate$marginal["revenue","upper"]<-revenueConst
> # (a) Define the welfare function without name for the return value:
> profit<-function(x){
+ 	x$revenue-x$costs
+ }
> 
> # Calculate the Expected Value of Information:
> eviSimulationResult<-eviSimulation(welfare=profit,
+                                    currentEstimate=currentEstimate,
+                                    prospectiveEstimate=prospectiveEstimate,
+                                    numberOfModelRuns=numberOfModelRuns,
+                                    functionSyntax="data.frameNames")
Error in (function (e)  : Variable: revenue
there is no package called ‘nleqslv’
Calls: eviSimulation ... tryCatch -> tryCatchList -> tryCatchOne -> <Anonymous>
Execution halted
```
```
checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  7. Error: A uniform distribution is generated correctly from the 0.05 and 0.95 quantiles (3) 
  8. Error: A positiv normal distribution is generated correctly from the 0.05 and 0.95 quantiles (1) 
  9. Error: A positiv normal distribution is generated correctly from the 0.05 and 0.95 quantiles (2) 
  1. Error: A positiv normal distribution is generated correctly from the 0.05 and 0.95 quantiles (3) 
  2. Error: A 0-1-truncated normal distribution is generated correctly from the 0.05 and 0.95 quantiles (1) 
  3. Error: A 0-1-truncated  normal distribution is generated correctly from the 0.05 and 0.95 quantiles (2) 
  4. Error: Welfare Decision Analysis is run  for 4-D uncorrelated current estimate
             and 2 dimensional unnamed model function
            (randomMethod="calculate", functionSyntax="plainNamesDeprecated") (1). 
  5. ...
  
  Error: testthat unit tests failed
  Execution halted
```
```
DONE
Status: 2 ERRORs, 2 NOTEs
```

## decompr (3.0.0)
Maintainer: Bastiaan Quast <bquast@gmail.com>  
Bug reports: https://github.com/bquast/decompr/issues

__OK__

## Delaporte (2.2-2)
Maintainer: Avraham Adler <Avraham.Adler@gmail.com>  
Bug reports: https://bitbucket.org/aadler/delaporte/issues

__OK__

## dendextend (0.18.3)
Maintainer: Tal Galili <tal.galili@gmail.com>  
Bug reports: https://github.com/talgalili/dendextend/issues

```
checking package dependencies ... NOTE
Packages suggested but not available for checking:
  ‘profdpm’ ‘microbenchmark’ ‘DendSer’ ‘dynamicTreeCut’

Package which this enhances but not available for checking: ‘labeltodendro’
```
```
checking Rd cross-references ... NOTE
Packages unavailable to check Rd xrefs: ‘DendSer’, ‘dynamicTreeCut’, ‘WGCNA’, ‘moduleColor’, ‘distory’
```
```
checking re-building of vignette outputs ... NOTE
Error in re-building vignettes:
  ...
vignette('dendextend') for the package vignette.
You can execute a demo of the package via: demo(dendextend)

More information is available on the dendextend project web-site:
https://github.com/talgalili/dendextend/

Contact: <tal.galili@gmail.com>
Suggestions and bug-reports can be submitted at: https://github.com/talgalili/dendextend/issues

			To suppress the this message use:
			suppressPackageStartupMessages(library(dendextend))


Attaching package: 'dendextend'

The following object is masked from 'package:stats':

    cutree

Warning in min(-diff(our_dend_heights)) :
  no non-missing arguments to min; returning Inf
Quitting from lines 926-932 (introduction.Rmd) 
Error: processing vignette 'introduction.Rmd' failed with diagnostics:
there is no package called 'DendSer'
Execution halted

```
```
DONE
Status: 3 NOTEs
```

## dendextendRcpp (0.5.1)
Maintainer: Tal Galili <tal.galili@gmail.com>

```
checking package namespace information ... NOTE
  Namespaces with empty importFrom:
  ‘Rcpp’ ‘dendextend’
```
```
checking package dependencies ... NOTE
Package suggested but not available for checking: ‘microbenchmark’
```
```
checking use of S3 registration ... WARNING
Registered S3 method from a standard package overwritten by 'dendextendRcpp':
 method            from 
 labels.dendrogram stats
```
```
checking R code for possible problems ... NOTE
assign_dendextendRcpp_to_dendextend: no visible global function
  definition for ‘dendextend_options’
dendextendRcpp_cut_lower_fun: no visible global function definition for
  ‘is.dendrogram’
dendextendRcpp_heights_per_k.dendrogram: no visible global function
  definition for ‘get_branches_heights’
old_cut_lower_fun: no visible global function definition for
  ‘is.dendrogram’
old_get_branches_heights: no visible global function definition for
  ‘get_nodes_attr’
old_heights_per_k.dendrogram: no visible global function definition for
  ‘get_branches_heights’
```
```
DONE
Status: 1 WARNING, 3 NOTEs
```

## dendroextras (0.2.1)
Maintainer: Gregory Jefferis <jefferis@gmail.com>

__OK__

## Deriv (3.4)
Maintainer: Serguei Sokol <sokol@insa-toulouse.fr>  
Bug reports: https://github.com/sgsokol/Deriv/issues

__OK__

## devtools (1.8.0)
Maintainer: Hadley Wickham <hadley@rstudio.com>  
Bug reports: http://github.com/hadley/devtools/issues

```
checking package dependencies ... NOTE
Package suggested but not available for checking: ‘BiocInstaller’
```
```
checking dependencies in R code ... NOTE
'library' or 'require' call to ‘testthat’ in package code.
  Please use :: or requireNamespace() instead.
  See section 'Suggested packages' in the 'Writing R Extensions' manual.
```
```
checking R code for possible problems ... NOTE
Found the following calls to attach():
File ‘devtools/R/package-env.r’:
  attach(NULL, name = pkg_env_name(pkg))
File ‘devtools/R/shims.r’:
  attach(e, name = "devtools_shims", warn.conflicts = FALSE)
See section ‘Good practice’ in ‘?attach’.
```
```
DONE
Status: 3 NOTEs
```

## df2json (0.0.2)
Maintainer: Nacho Caballero <nachocab@gmail.com>

__OK__

## DiceKriging (1.5.5)
Maintainer: Olivier Roustant <roustant@emse.fr>

```
checking package dependencies ... NOTE
Package suggested but not available for checking: ‘rgenoud’
```
```
checking Rd cross-references ... NOTE
Package unavailable to check Rd xrefs: ‘rgenoud’
```
```
DONE
Status: 2 NOTEs
```

## dils (0.8.1)
Maintainer: Stephen R. Haptonstahl <srh@haptonstahl.org>

```
checking DESCRIPTION meta-information ... NOTE
Malformed Title field: should not end in a period.
```
```
checking dependencies in R code ... NOTE
Packages in Depends field not imported from:
  ‘Rcpp’ ‘igraph’
  These packages need to be imported from (in the NAMESPACE file)
  for when this namespace is loaded but not attached.
```
```
checking R code for possible problems ... NOTE
EdgelistFromIgraph: no visible global function definition for
  ‘get.adjacency’
EdgelistFromIgraph: no visible global function definition for ‘V’
EdgelistFromIgraph: no visible global function definition for ‘vcount’
IgraphFromEdgelist: no visible global function definition for
  ‘graph.adjacency’
IgraphFromEdgelist: no visible global function definition for ‘V’
IgraphFromEdgelist: no visible global function definition for ‘V<-’
MeasureNetworkInformation: no visible binding for global variable
  ‘betweenness’
MeasureNetworkInformation: no visible global function definition for
  ‘vcount’
MeasureNetworkInformation : SampleIgraph: no visible global function
  definition for ‘ecount’
MeasureNetworkInformation : SampleIgraph: no visible global function
  definition for ‘delete.edges’
MeasureNetworkInformation : SampleIgraph: no visible global function
  definition for ‘E’
RelativeNetworkInformation: no visible binding for global variable
  ‘betweenness’
RssSuggestedNetwork: no visible global function definition for
  ‘get.adjacency’
RssSuggestedNetwork: no visible global function definition for
  ‘is.directed’
RssSuggestedNetwork: no visible global function definition for ‘vcount’
RssSuggestedNetwork: no visible global function definition for
  ‘graph.adjacency’
RssSuggestedNetwork: no visible global function definition for
  ‘graph.density’
```
```
DONE
Status: 3 NOTEs
```

## DirichletReg (0.6-2)
Maintainer: Marco Johannes Maier <marco.maier@wu.ac.at>

__OK__

## discreteRV (1.2.1)
Maintainer: Eric Hare <erichare@iastate.edu>  
Bug reports: https://github.com/erichare/discreteRV/issues

__OK__

## disposables (1.0.0)
Maintainer: "Gabor Csardi" <csardi.gabor@gmail.com>  
Bug reports: https://github.com/gaborcsardi/disposables

```
checking for unstated dependencies in examples ... WARNING
'::' or ':::' imports not declared from:
  ‘foo1’ ‘foo2’
```
```
checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
     }, "there is no package called 'foo1'", quote(library(name, quietly = TRUE, character.only = TRUE)))
  15: h(simpleError(msg, call))
  16: signalCondition(e) at /Users/hadley/Documents/devtools/testthat/R/test-that.r:52
  17: dispose_packages(pkgs)
  
  testthat results ================================================================
  OK: 6 SKIPPED: 0 FAILED: 3
  1. Error: We can create and load them 
  2. Error: We can dispose packages 
  3. Error: We unload a package if it is already loaded 
  
  Error: testthat unit tests failed
  Execution halted
```
```
DONE
Status: 1 ERROR, 1 WARNING
```

## Distance (0.9.3)
Maintainer: David Lawrence Miller <dave@ninepointeightone.net>

__OK__

## DNAprofiles (0.3.1)
Maintainer: Maarten Kruijver <m.v.kruijver@vu.nl>

```
checking package dependencies ... NOTE
Package suggested but not available for checking: ‘DNAtools’
```
```
DONE
Status: 1 NOTE
```

## docopt (0.4.3.3)
Maintainer: Edwin de Jonge <edwindjonge@gmail.com>

__OK__

## dostats (1.3.1)
Maintainer: Andrew Redd <Andrew.Redd@hsc.utah.edu>

```
checking R code for possible problems ... NOTE
Table1: no visible global function definition for ‘idata.frame’
copy_names: no visible global function definition for ‘dlply’
depth: no visible global function definition for ‘laply’
dseval_fork: no visible global function definition for ‘dlply’
dseval_left.dostats.formula.bind: no visible global function definition
  for ‘llply’
dseval_right.dostats.formula.bind: no visible global function
  definition for ‘llply’
dseval_right.dostats.formula.bind: no visible global function
  definition for ‘laply’
dseval_right.dostats.formula.by_two_fun: no visible global function
  definition for ‘llply’
dseval_right.dostats.formula.nest: no visible global function
  definition for ‘llply’
dseval_right.dostats.formula.nest: no visible global function
  definition for ‘laply’
find_headers.hdf: no visible global function definition for ‘llply’
find_headers.hdf: no visible global function definition for ‘laply’
find_headers.list: no visible global function definition for ‘llply’
find_headers.list: no visible global function definition for ‘laply’
format.hdf: no visible global function definition for ‘llply’
get_vars.dostats.formula.bind: no visible global function definition
  for ‘llply’
get_vars.dostats.formula.nest: no visible global function definition
  for ‘llply’
hdf: no visible global function definition for ‘llply’
hdf: no visible global function definition for ‘laply’
is_uniform: no visible global function definition for ‘laply’
listrows: no visible global function definition for ‘mlply’
make_pmat: no visible global function definition for ‘laply’
make_ppath: no visible global function definition for ‘llply’
parse_bind: no visible global function definition for ‘llply’
parse_by_two_fun: no visible global function definition for ‘llply’
parse_nest: no visible global function definition for ‘llply’
rbind.hdf: no visible global function definition for ‘llply’
rbind.hdf: no visible global function definition for ‘laply’
rbind.hdf : <anonymous>: no visible global function definition for
  ‘llply’
take_names.default: no visible global function definition for ‘llply’
trace_parents: no visible global function definition for ‘llply’
unroll: no visible global function definition for ‘llply’
```
```
checking tests ... ERROR
Running the tests in ‘tests/test_package.R’ failed.
Last 13 lines of output:
  2. Error: recombine.hdf --------------------------------------------------------
  could not find function "llply"
  1: withCallingHandlers(eval(code, new_test_environment), error = capture_calls, message = function(c) invokeRestart("muffleMessage"), 
         warning = function(c) invokeRestart("muffleWarning"))
  2: eval(code, new_test_environment)
  3: eval(expr, envir, enclos)
  4: hdf(hdf(i = 1:3), j = hdf(l = hdf(.T(a, b, c)), L = hdf(.T(A, B, C)))) at test_internal_recombine.R:38
  5: hdf(i = 1:3)
  6: Filter(Negate(is.null), llply(l, rownames))
  7: unlist(lapply(x, f))
  8: lapply(x, f)
  Error: Test failures
  Execution halted
```
```
DONE
Status: 1 ERROR, 1 NOTE
```

## downloader (0.3)
Maintainer: Winston Chang <winston@stdout.org>

```
checking Rd line widths ... NOTE
Rd file 'sha_url.Rd':
  \examples lines wider than 100 characters:
     sha_url("https://gist.github.com/wch/dae7c106ee99fe1fdfe7/raw/db0c9bfe0de85d15c60b0b9bf22403c0f5e1fb15/test.r")
     #  downloader::source_url("https://gist.github.com/wch/dae7c106ee99fe1fdfe7/raw/db0c9bfe0de85d15c60b0b9bf22403c0f5e1fb15/test.r", sha=" ... [TRUNCATED]

Rd file 'source_url.Rd':
  \examples lines wider than 100 characters:
     downloader::source_url("https://gist.github.com/wch/dae7c106ee99fe1fdfe7/raw/db0c9bfe0de85d15c60b0b9bf22403c0f5e1fb15/test.r",

These lines will be truncated in the PDF manual.
```
```
DONE
Status: 1 NOTE
```

## dplyr (0.4.1)
Maintainer: Hadley Wickham <hadley@rstudio.com>  
Bug reports: https://github.com/hadley/dplyr/issues

```
checking package dependencies ... NOTE
Packages suggested but not available for checking:
  ‘RPostgreSQL’ ‘microbenchmark’ ‘nycflights13’
```
```
checking use of S3 registration ... WARNING
Registered S3 method from a standard package overwritten by 'dplyr':
 method      from 
 lag.default stats
```
```
checking dependencies in R code ... NOTE
Namespace in Imports field not imported from: ‘R6’
  All declared Imports should be used.
```
```
checking Rd cross-references ... NOTE
Package unavailable to check Rd xrefs: ‘microbenchmark’
```
```
checking re-building of vignette outputs ... NOTE
Error in re-building vignettes:
  ...

Attaching package: 'dplyr'

The following object is masked from 'package:stats':

    filter

The following objects are masked from 'package:base':

    intersect, setdiff, setequal, union

Quitting from lines 79-85 (data_frames.Rmd) 
Error: processing vignette 'data_frames.Rmd' failed with diagnostics:
there is no package called 'microbenchmark'
Execution halted

```
```
DONE
Status: 1 WARNING, 4 NOTEs
```

## drsmooth (1.0)
Maintainer: Anne Bichteler <abichteler@toxstrategies.com>

__OK__

## DSsim (1.0.3)
Maintainer: Laura Marshall <lhm@st-and.ac.uk>

__OK__

## dygraphs (0.4.3)
Maintainer: JJ Allaire <jj@rstudio.com>

__OK__

## ecoengine (1.9.1)
Maintainer: Karthik Ram <karthik.ram@gmail.com>  
Bug reports: https://github.com/ropensci/ecoengine/issues

__OK__

## EcoSimR (0.1.0)
Maintainer: Edmund Hart <edmund.m.hart@gmail.com>  
Bug reports: https://github.com/GotelliLab/EcoSimR/issues

__OK__

## EDISON (1.1)
Maintainer: Frank Dondelinger <fdondelinger.work@gmail.com>

__OK__

## eeptools (0.3.1)
Maintainer: Jared E. Knowles <jknowles@gmail.com>

```
checking R code for possible problems ... NOTE
moves_calc: no visible binding for global variable ‘id’
```
```
DONE
Status: 1 NOTE
```

## EGRET (2.2.0)
Maintainer: Laura DeCicco <ldecicco@usgs.gov>

```
checking package dependencies ... NOTE
Package suggested but not available for checking: ‘extrafont’
```
```
DONE
Status: 1 NOTE
```

## eHOF (1.5.8)
Maintainer: Florian Jansen <jansen@uni-greifswald.de>

__OK__

## elastic (0.4.0)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: https://github.com/ropensci/elastic/issues

__OK__

## emdbook (1.3.8)
Maintainer: Ben Bolker <bolker@mcmaster.ca>

```
checking package dependencies ... NOTE
Packages suggested but not available for checking: ‘R2WinBUGS’ ‘SuppDists’
```
```
DONE
Status: 1 NOTE
```

## emil (2.0.2)
Maintainer: Christofer Backlin <christofer.backlin@medsci.uu.se>  
Bug reports: https://github.com/Molmed/emil/issues

```
checking package dependencies ... NOTE
Package suggested but not available for checking: ‘pamr’
```
```
checking Rd cross-references ... NOTE
Package unavailable to check Rd xrefs: ‘pamr’
```
```
checking examples ... ERROR
Running examples in ‘emil-Ex.R’ failed
The error most likely occurred in:

> base::assign(".ptime", proc.time(), pos = "CheckExEnv")
> ### Name: get_importance
> ### Title: Feature (variable) importance of a fitted model
> ### Aliases: get_importance
> 
> ### ** Examples
> 
> procedure <- modeling_procedure("pamr")
> model <- fit(procedure, x=iris[-5], y=iris$Species)
21 May 18:27  Fitting model
Loading required namespace: pamr
Failed with error:  ‘there is no package called ‘pamr’’
Use the `pre_pamr` pre-processing function better pamr efficiency.
Error in loadNamespace(name) : there is no package called ‘pamr’
Calls: fit ... tryCatch -> tryCatchList -> tryCatchOne -> <Anonymous>
Execution halted
```
```
DONE
Status: 1 ERROR, 2 NOTEs
```

## enigma (0.1.1)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: https://github.com/ropengov/enigma/issues

__OK__

## ensurer (1.1)
Maintainer: Stefan Milton Bache <stefan@stefanbache.dk>  
Bug reports: https://github.com/smbache/ensurer/issues

__OK__

## EpiContactTrace (0.8.8)
Maintainer: Stefan Widgren <stefan.widgren@sva.se>

```
checking dependencies in R code ... NOTE
'library' or 'require' calls in package code:
  ‘animation’ ‘ggmap’
  Please use :: or requireNamespace() instead.
  See section 'Suggested packages' in the 'Writing R Extensions' manual.
```
```
checking R code for possible problems ... NOTE
Animate : create_map: no visible global function definition for ‘ggmap’
Animate : create_map: no visible global function definition for
  ‘geom_segment’
Animate : create_map: no visible global function definition for
  ‘aes_string’
Animate : create_map: no visible global function definition for ‘labs’
Animate : create_map: no visible global function definition for
  ‘ggtitle’
Animate : create_map: no visible global function definition for
  ‘ani.pause’
Animate: no visible global function definition for ‘saveHTML’
```
```
DONE
Status: 2 NOTEs
```

## EpiModel (1.1.6)
Maintainer: Samuel Jenness <sjenness@uw.edu>  
Bug reports: https://github.com/statnet/EpiModel/issues

__OK__

## episensr (0.6.0)
Maintainer: Denis Haine <denis.haine@gmail.com>  
Bug reports: https://github.com/dhaine/episensr/issues

__OK__

## eurostat (1.0.16)
Maintainer: Lahti Leo <louhos@googlegroups.com>  
Bug reports: https://github.com/ropengov/eurostat/issues

__OK__

## evaluate (0.7)
Maintainer: Yihui Xie <xie@yihui.name>  
Bug reports: https://github.com/hadley/evaluate/issues

__OK__

## evolqg (0.1-3)
Maintainer: Diogo Melo <diogro@usp.br>  
Bug reports: https://github.com/lem-usp/evolqg/issues

```
checking package dependencies ... ERROR
Package required but not available: ‘phytools’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
Status: 1 ERROR
```

## excursions (2.0.16)
Maintainer: David Bolin <davidbolin@gmail.com>

```
checking package dependencies ... NOTE
Package suggested but not available for checking: ‘INLA’
```
```
DONE
Status: 1 NOTE
```

## extraTrees (1.0.5)
Maintainer: Jaak Simm <jaak.simm@gmail.com>

__OK__

## fail (1.2)
Maintainer: Michel Lang <michellang@gmail.com>

```
checking DESCRIPTION meta-information ... NOTE
Malformed Description field: should contain one or more complete sentences.
```
```
DONE
Status: 1 NOTE
```

## falsy (1.0.1)
Maintainer: Gabor Csardi <csardi.gabor@gmail.com>  
Bug reports: https://github.com/gaborcsardi/falsy/issues

__OK__

## fanovaGraph (1.4.7)
Maintainer: Jana Fruth <fruth@statistik.tu-dortmund.de>

```
checking package dependencies ... NOTE
Package suggested but not available for checking: ‘manipulate’
```
```
checking dependencies in R code ... NOTE
'library' or 'require' calls in package code:
  ‘manipulate’ ‘tcltk’
  Please use :: or requireNamespace() instead.
  See section 'Suggested packages' in the 'Writing R Extensions' manual.
```
```
checking S3 generic/method consistency ... NOTE
Found the following apparent S3 methods exported but not registered:
  plot.graphlist print.graphlist
See section ‘Registering S3 methods’ in the ‘Writing R Extensions’
manual.
```
```
checking R code for possible problems ... NOTE
plotTk: no visible global function definition for ‘tclVar’
plotTk : refresh: no visible global function definition for ‘tclvalue’
plotTk: no visible global function definition for ‘tktoplevel’
plotTk: no visible global function definition for ‘tkwm.title’
plotTk: no visible global function definition for ‘tkframe’
plotTk: no visible global function definition for ‘tkscale’
plotTk: no visible global function definition for ‘tkpack’
plotTk: no visible global function definition for ‘tklabel’
```
```
DONE
Status: 4 NOTEs
```

## FastImputation (1.2)
Maintainer: Stephen R. Haptonstahl <srh@haptonstahl.org>

```
checking DESCRIPTION meta-information ... NOTE
Malformed Title field: should not end in a period.
```
```
DONE
Status: 1 NOTE
```

## ffbase (0.11.3)
Maintainer: Edwin de Jonge <edwindjonge@gmail.com>

```
checking DESCRIPTION meta-information ... NOTE
Malformed Description field: should contain one or more complete sentences.
```
```
checking dependencies in R code ... NOTE
'library' or 'require' calls in package code:
  ‘LaF’ ‘biglm’
  Please use :: or requireNamespace() instead.
  See section 'Suggested packages' in the 'Writing R Extensions' manual.
```
```
checking S3 generic/method consistency ... NOTE
Found the following apparent S3 methods exported but not registered:
  cummax.ff cummin.ff cumprod.ff cumsum.ff duplicated.ff
  duplicated.ffdf is.na.ff is.na<-.ff max.ff min.ff range.ff subset.ff
  subset.ffdf sum.ff transform.ffdf unique.ff unique.ffdf
See section ‘Registering S3 methods’ in the ‘Writing R Extensions’
manual.
```
```
checking R code for possible problems ... NOTE
addfforder: no visible global function definition for ‘is.sorted<-’
bigglm.ffdf: no visible global function definition for ‘bigglm’
checkRange: no visible global function definition for ‘ri’
compact.ffdf: no visible global function definition for ‘physical’
droplevels.ffdf: no visible global function definition for ‘physical’
ffappend: no visible global function definition for ‘as.which’
ffdfappend: no visible global function definition for ‘physical’
ffdfdply: no visible global function definition for ‘ri’
ffrep.int: no visible global function definition for ‘ri’
ffsorted: no visible global function definition for ‘is.sorted<-’
laf_to_ffdf: no visible global function definition for ‘begin’
laf_to_ffdf: no visible global function definition for ‘next_block’
load.ffdf: no visible global function definition for ‘physical’
load.ffdf: no visible global function definition for ‘physical<-’
move.ffdf: no visible global function definition for ‘physical’
move.ffdf: no visible global function definition for ‘physical<-’
save.ffdf: no visible global function definition for ‘physical’
```
```
DONE
Status: 4 NOTEs
```

## filenamer (0.2)
Maintainer: David J. H. Shih <djh.shih@gmail.com>  
Bug reports: https://bitbucket.org/djhshih/filenamer/issues

__OK__

## FinancialInstrument (1.2.0)
Maintainer: Garrett See <gsee000@gmail.com>

```
checking package dependencies ... NOTE
Package suggested but not available for checking: ‘its’
```
```
checking dependencies in R code ... NOTE
'library' or 'require' calls in package code:
  ‘XML’ ‘foreach’ ‘its’ ‘timeSeries’ ‘utils’
  Please use :: or requireNamespace() instead.
  See section 'Suggested packages' in the 'Writing R Extensions' manual.
```
```
DONE
Status: 2 NOTEs
```

## findpython (1.0.1)
Maintainer: Trevor L Davis <trevor.l.davis@stanford.edu>  
Bug reports: https://github.com/trevorld/findpython/issues

__OK__

## flexsurv (0.6)
Maintainer: Christopher Jackson <chris.jackson@mrc-bsu.cam.ac.uk>

```
checking package dependencies ... NOTE
Packages suggested but not available for checking:
  ‘eha’ ‘mstate’ ‘ActuDistns’
```
```
checking Rd cross-references ... NOTE
Packages unavailable to check Rd xrefs: ‘eha’, ‘mstate’
```
```
checking examples ... ERROR
Running examples in ‘flexsurv-Ex.R’ failed
The error most likely occurred in:

> base::assign(".ptime", proc.time(), pos = "CheckExEnv")
> ### Name: flexsurvreg
> ### Title: Flexible parametric regression for time-to-event data
> ### Aliases: flexsurvreg
> ### Keywords: models survival
> 
> ### ** Examples
> 
> data(ovarian)
> ## Compare generalized gamma fit with Weibull
> fitg <- flexsurvreg(formula = Surv(futime, fustat) ~ 1, data = ovarian, dist="gengamma")
> fitg
Call:
flexsurvreg(formula = Surv(futime, fustat) ~ 1, data = ovarian, 
    dist = "gengamma")

Estimates: 
       est     L95%    U95%    se    
mu      6.426   4.984   7.868   0.736
sigma   1.426   0.888   2.292   0.345
Q      -0.766  -3.340   1.807   1.313

N = 26,  Events: 12,  Censored: 14
Total time at risk: 15588
Log-likelihood = -96.94907, df = 3
AIC = 199.8981

> fitw <- flexsurvreg(formula = Surv(futime, fustat) ~ 1, data = ovarian, dist="weibull")
> fitw
Call:
flexsurvreg(formula = Surv(futime, fustat) ~ 1, data = ovarian, 
    dist = "weibull")

Estimates: 
       est       L95%      U95%      se      
shape     1.108     0.674     1.822     0.281
scale  1225.419   690.421  2174.979   358.714

N = 26,  Events: 12,  Censored: 14
Total time at risk: 15588
Log-likelihood = -97.9539, df = 2
AIC = 199.9078

> plot(fitg)
> lines(fitw, col="blue", lwd.ci=1, lty.ci=1)
> ## Identical AIC, probably not enough data in this simple example for a
> ## very flexible model to be worthwhile.
> 
> ## Custom distribution
> library(eha)  ## make "dEV" and "pEV" available to the working environment
Error in library(eha) : there is no package called ‘eha’
Execution halted
```
```
checking tests ... ERROR
Running the tests in ‘tests/test_base.R’ failed.
Last 13 lines of output:
  17  744 0.4553432 0.3937042 0.4485204
  18  769 0.4419247 0.3812744 0.4329372
  19  770 0.4413951 0.3807852 0.4323220
  20  803 0.4242224 0.3649814 0.4123745
  21  855 0.3983386 0.3413680 0.3823293
  22 1040 0.3171789 0.2688626 0.2888610
  23 1106 0.2920295 0.2468430 0.2603453
  24 1129 0.2836991 0.2395939 0.2509700
  25 1206 0.2573606 0.2168166 0.2216052
  26 1227 0.2505762 0.2109839 0.2141185
  Error in library(mstate) : there is no package called 'mstate'
  Calls: test_check ... lapply -> FUN -> sys.source2 -> eval -> eval -> library
  Execution halted
```
```
checking re-building of vignette outputs ... NOTE
Error in re-building vignettes:
  ...
Quitting from lines 282-284 (flexsurv.Rnw) 
Error: processing vignette 'flexsurv.Rnw' failed with diagnostics:
there is no package called 'eha'
Execution halted

```
```
DONE
Status: 2 ERRORs, 3 NOTEs
```

## flsa (1.05)
Maintainer: Holger Hoefling <hhoeflin@gmail.com>

```
checking DESCRIPTION meta-information ... NOTE
Malformed Description field: should contain one or more complete sentences.
```
```
checking Rd line widths ... NOTE
Rd file 'flsa.Rd':
  \usage lines wider than 90 characters:
     flsa(y, lambda1=0, lambda2=NULL, connListObj = NULL, splitCheckSize=1e+09, verbose=FALSE, thr = 1e-09, maxGrpNum=4*length(y))
  \examples lines wider than 100 characters:
     ### therefore, res2Dim does not give out the solution as a 2 dimensional matrix (unlike the direct version above)

These lines will be truncated in the PDF manual.
```
```
DONE
Status: 2 NOTEs
```

## ForeCA (0.2.2)
Maintainer: Georg M. Goerg <im@gmge.org>

```
checking package dependencies ... NOTE
Packages suggested but not available for checking: ‘astsa’ ‘rSFA’
```
```
checking Rd cross-references ... NOTE
Package unavailable to check Rd xrefs: ‘astsa’
```
```
checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  For method 'mvspec' you need the 'astsa' package.
  Please install it or user another method.
  1: withCallingHandlers(eval(code, new_test_environment), error = capture_calls, message = function(c) invokeRestart("muffleMessage"), 
         warning = function(c) invokeRestart("muffleWarning"))
  2: eval(code, new_test_environment)
  3: eval(expr, envir, enclos)
  4: Omega(rnorm(10000), spectrum.control = sc.tmp, entropy.control = list(base = 2)) at test_Omega.R:48
  5: complete_spectrum_control(spectrum.control)
  6: stop("For method '", spectrum.control$method, "' you need the 'astsa' package.\n", 
         "Please install it or user another method.")
  
  Error: requireNamespace("astsa", quietly = TRUE) is not TRUE
  Execution halted
```
```
DONE
Status: 1 ERROR, 2 NOTEs
```

## forecast (6.1)
Maintainer: Rob J Hyndman <Rob.Hyndman@monash.edu>  
Bug reports: https://github.com/robjhyndman/forecast/issues

```
checking package dependencies ... NOTE
Package suggested but not available for checking: ‘fpp’
```
```
checking whether package ‘forecast’ can be installed ... ERROR
Installation failed.
See ‘/private/tmp/RtmpQJiDLv/check_crand2516b207784/forecast.Rcheck/00install.out’ for details.
Status: 1 ERROR, 1 NOTE
```

## forestplot (1.1)
Maintainer: Max Gordon <max@gforge.se>  
Bug reports: https://github.com/gforge/forestplot/issues

```
checking Rd cross-references ... NOTE
Package unavailable to check Rd xrefs: ‘rmeta’
```
```
DONE
Status: 1 NOTE
```

## formula.tools (1.3.4)
Maintainer: Christopher Brown <chris.brown@decisionpatterns.com>

```
checking S3 generic/method consistency ... NOTE
Found the following apparent S3 methods exported but not registered:
  as.character.formula terms.call terms.expression
See section ‘Registering S3 methods’ in the ‘Writing R Extensions’
manual.
```
```
checking tests ... ERROR
Running the tests in ‘tests/run-all.R’ failed.
Last 13 lines of output:
  > library(testthat)
  > library(formula.tools)
  Loading required package: operator.tools
  operator.tools-1.3.0 provided by Decision Patterns
  
  formula.tools-1.3.4 provided by Decision Patterns
  
  > 
  > test_package("formula.tools")
  Error in test_dir(test_path, reporter = reporter, env = env, filter = filter,  : 
    No matching test file in dir
  Calls: test_package -> run_tests -> with_top_env -> test_dir
  Execution halted
```
```
DONE
Status: 1 ERROR, 1 NOTE
```

## fpCompare (0.2.0)
Maintainer: Alex M Chubaty <achubaty@NRCan.gc.ca>  
Bug reports: https://github.com/PredictiveEcology/fpCompare/issues

__OK__

## freqweights (1.0.1)
Maintainer: Emilio Torres-Manzanera <torres@uniovi.es>

```
checking package dependencies ... NOTE
Package suggested but not available for checking: ‘hflights’
```
```
checking Rd cross-references ... NOTE
Package unavailable to check Rd xrefs: ‘hflights’
```
```
DONE
Status: 2 NOTEs
```

## FunChisq (2.0.2)
Maintainer: Joe Song <joemsong@cs.nmsu.edu>

```
checking package dependencies ... ERROR
Package required but not available: ‘RcppClassic’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
Status: 1 ERROR
```

## futile.any (1.3.0)
Maintainer: Brian Lee Yung Rowe <r@zatonovo.com>

```
checking DESCRIPTION meta-information ... NOTE
Malformed Description field: should contain one or more complete sentences.
```
```
checking dependencies in R code ... NOTE
Package in Depends field not imported from: ‘lambda.r’
  These packages need to be imported from (in the NAMESPACE file)
  for when this namespace is loaded but not attached.
```
```
checking R code for possible problems ... NOTE
anylength: no visible global function definition for ‘UseFunction’
anynames: no visible global function definition for ‘UseFunction’
anytypes: no visible global function definition for ‘UseFunction’
is.bad: no visible global function definition for ‘UseFunction’
is.empty: no visible global function definition for ‘UseFunction’
```
```
checking tests ... ERROR
Running the tests in ‘tests/run_tests.R’ failed.
Last 13 lines of output:
  
  R is a collaborative project with many contributors.
  Type 'contributors()' for more information and
  'citation()' on how to cite R or R packages in publications.
  
  Type 'demo()' for some demos, 'help()' for on-line help, or
  'help.start()' for an HTML browser interface to help.
  Type 'q()' to quit R.
  
  > library(testthat)
  > library_if_available(futile.any)
  Error: could not find function "library_if_available"
  Execution halted
```
```
DONE
Status: 1 ERROR, 3 NOTEs
```

## futile.logger (1.4.1)
Maintainer: Brian Lee Yung Rowe <r@zatonovo.com>

__OK__

## games (1.1.2)
Maintainer: Brenton Kenkel <brenton.kenkel@gmail.com>

__OK__

## gapminder (0.1.0)
Maintainer: Jennifer Bryan <jenny@stat.ubc.ca>  
Bug reports: https://github.com/jennybc/gapminder/issues

__OK__

## GDELTtools (1.2)
Maintainer: Stephen R. Haptonstahl <srh@haptonstahl.org>

```
checking dependencies in R code ... NOTE
Package in Depends field not imported from: ‘tools’
  These packages need to be imported from (in the NAMESPACE file)
  for when this namespace is loaded but not attached.
```
```
checking R code for possible problems ... NOTE
IsValidGDELT: no visible global function definition for ‘md5sum’
```
```
DONE
Status: 2 NOTEs
```

## gemtc (0.6-2)
Maintainer: Gert van Valkenhoef <g.h.m.van.valkenhoef@rug.nl>

```
checking package dependencies ... NOTE
Packages suggested but not available for checking: ‘BRugs’ ‘R2WinBUGS’
```
```
checking examples ... ERROR
Running examples in ‘gemtc-Ex.R’ failed
The error most likely occurred in:

> base::assign(".ptime", proc.time(), pos = "CheckExEnv")
> ### Name: mtc.hy.prior
> ### Title: Set priors for the heterogeneity parameter
> ### Aliases: mtc.hy.prior mtc.hy.empirical.lor
> 
> ### ** Examples
> 
> file <- system.file("extdata/luades-smoking.gemtc", package="gemtc")
> network <- read.mtc.network(file)
> 
> # NOTE: the mtc.run commands below are for illustrative purposes, such a small
> # number of iterations should obviously not be used in practice.
> 
> # set a uniform prior standard deviation
> model1 <- mtc.model(network, hy.prior=mtc.hy.prior("std.dev", "dunif", 0, 2))
> result <- mtc.run(model1, n.adapt=10, n.iter=10)
Error in mtc.run(model1, n.adapt = 10, n.iter = 10) : 
  Could not find a suitable sampler for NA
Execution halted
```
```
DONE
Status: 1 ERROR, 1 NOTE
```

## gender (0.4.3)
Maintainer: Lincoln Mullen <lincoln@lincolnmullen.com>  
Bug reports: https://github.com/ropensci/gender/issues

__OK__

## genderizeR (1.1.0)
Maintainer: Kamil Wais <kamil.wais@gmail.com>  
Bug reports: https://github.com/kalimu/genderizeR

__OK__

## geojsonio (0.1.0)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>

__OK__

## geometry (0.3-5)
Maintainer: David C. Sterratt <david.c.sterratt@ed.ac.uk>  
Bug reports: https://r-forge.r-project.org/tracker/?group_id=1149

```
checking package dependencies ... NOTE
Package suggested but not available for checking: ‘tripack’
```
```
checking dependencies in R code ... NOTE
'library' or 'require' call to ‘rgl’ in package code.
  Please use :: or requireNamespace() instead.
  See section 'Suggested packages' in the 'Writing R Extensions' manual.
```
```
checking Rd cross-references ... NOTE
Package unavailable to check Rd xrefs: ‘tripack’
```
```
DONE
Status: 3 NOTEs
```

## getopt (1.20.0)
Maintainer: Trevor L Davis <trevor.l.davis@stanford.edu>  
Bug reports: https://github.com/trevorld/getopt/issues

```
checking DESCRIPTION meta-information ... NOTE
Malformed Title field: should not end in a period.
```
```
DONE
Status: 1 NOTE
```

## GetoptLong (0.1.0)
Maintainer: Zuguang Gu <z.gu@dkfz.de>

__OK__

## ggdendro (0.1-15)
Maintainer: Andrie de Vries <apdevries@gmail.com>  
Bug reports: https://github.com/andrie/ggdendro/issues

```
checking package dependencies ... NOTE
Package suggested but not available for checking: ‘tree’
```
```
checking S3 generic/method consistency ... NOTE
Found the following apparent S3 methods exported but not registered:
  dendro_data.default dendro_data.dendrogram dendro_data.hclust
See section ‘Registering S3 methods’ in the ‘Writing R Extensions’
manual.
```
```
checking Rd cross-references ... NOTE
Package unavailable to check Rd xrefs: ‘tree’
```
```
checking examples ... ERROR
Running examples in ‘ggdendro-Ex.R’ failed
The error most likely occurred in:

> base::assign(".ptime", proc.time(), pos = "CheckExEnv")
> ### Name: dendro_data.tree
> ### Title: Extract data from regression tree object for plotting using
> ###   ggplot.
> ### Aliases: dendro_data.tree
> 
> ### ** Examples
> 
> require(tree)
Loading required package: tree
Warning in library(package, lib.loc = lib.loc, character.only = TRUE, logical.return = TRUE,  :
  there is no package called ‘tree’
> require(ggplot2)
Loading required package: ggplot2
> require(MASS)
Loading required package: MASS
> data(cpus, package="MASS")
> cpus.ltr <- tree(log10(perf) ~ syct+mmin+mmax+cach+chmin+chmax, cpus)
Error: could not find function "tree"
Execution halted
```
```
checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  'help.start()' for an HTML browser interface to help.
  Type 'q()' to quit R.
  
  > if(require(testthat)) test_check("ggdendro")
  Loading required package: testthat
  Loading required package: ggdendro
  Loading required package: tree
  Error in eval(expr, envir, enclos) : could not find function "tree"
  Calls: test_check ... test_dir -> lapply -> FUN -> sys.source2 -> eval -> eval
  In addition: Warning message:
  In library(package, lib.loc = lib.loc, character.only = TRUE, logical.return = TRUE,  :
    there is no package called 'tree'
  Execution halted
```
```
checking re-building of vignette outputs ... NOTE
Error in re-building vignettes:
  ...
Quitting from lines 93-107 (ggdendro.Rmd) 
Error: processing vignette 'ggdendro.Rmd' failed with diagnostics:
could not find function "tree"
Execution halted

```
```
DONE
Status: 2 ERRORs, 4 NOTEs
```

## ggplot2 (1.0.1)
Maintainer: Hadley Wickham <h.wickham@gmail.com>  
Bug reports: https://github.com/hadley/ggplot2/issues

__OK__

## ggRandomForests (1.1.4)
Maintainer: John Ehrlinger <john.ehrlinger@gmail.com>  
Bug reports: https://github.com/ehrlinger/ggRandomForests/issues

```
checking installed package size ... NOTE
  installed size is  6.1Mb
  sub-directories of 1Mb or more:
    data   2.6Mb
    doc    3.2Mb
```
```
DONE
Status: 1 NOTE
```

## ggswissmaps (0.0.2)
Maintainer: Sandro Petrillo Burri <gibo.gaf@gmail.com>

__OK__

## ggvis (0.4.1)
Maintainer: Winston Chang <winston@rstudio.com>

__OK__

## gistr (0.2.0)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: http://www.github.com/ropensci/gistr/issues

__OK__

## glcm (1.2)
Maintainer: Alex Zvoleff <azvoleff@conservation.org>  
Bug reports: https://github.com/azvoleff/glcm/issues

__OK__

## GlobalOptions (0.0.6)
Maintainer: Zuguang Gu <z.gu@dkfz.de>

__OK__

## gmailr (0.6.0)
Maintainer: Jim Hester <james.f.hester@gmail.com>  
Bug reports: https://github.com/jimhester/gmailr/issues

__OK__

## GMCM (1.2.1)
Maintainer: Anders Ellern Bilgrau <abilgrau@math.aau.dk>  
Bug reports: https://github.com/AEBilgrau/GMCM/issues

```
checking package dependencies ... NOTE
Package suggested but not available for checking: ‘idr’
```
```
checking whether package ‘GMCM’ can be installed ... ERROR
Installation failed.
See ‘/private/tmp/RtmpQJiDLv/check_crand2516b207784/GMCM.Rcheck/00install.out’ for details.
Status: 1 ERROR, 1 NOTE
```

## Gmisc (1.1)
Maintainer: Max Gordon <max@gforge.se>  
Bug reports: https://github.com/gforge/Gmisc/issues

__OK__

## GPlab (0.1.0)
Maintainer: Yves Deville <deville.yves@alpestat.com>

```
checking package dependencies ... NOTE
Packages suggested but not available for checking: ‘DiceDesign’ ‘inline’
```
```
checking examples ... ERROR
Running examples in ‘GPlab-Ex.R’ failed
The error most likely occurred in:

> base::assign(".ptime", proc.time(), pos = "CheckExEnv")
> ### Name: gp
> ### Title: Gaussian Process model
> ### Aliases: gp
> 
> ### ** Examples
> 
> ## ==================================================================
> ## Example 1. Data sampled from a GP model with a known covTS object
> ## ==================================================================
> set.seed(1234)
> myCov <- covTS(inputs = c("Temp", "Humid"),
+                kernel = "k1matern5_2",
+                dep = c(range = "input"),
+                value = c(range = 0.4))
> ## change coefficients (variances)
> coef(myCov) <- c(0.5, 0.8, 2, 16)
> d <- myCov@d; n <- 20
> ## design matrix
> X <- matrix(runif(n*d), nrow = n, ncol = d)
> colnames(X) <- inputNames(myCov)
> ## generate the GP realization
> C <- covMat(myCov, X = X)
> L <- t(chol(C))
> zeta <- L %*% rnorm(n)
> ## GP modelling with constant mean
> F <- matrix(1, nrow = n, ncol = 1)
> varNoise <- 0.05
> epsilon <- rnorm(n, sd = sqrt(varNoise))
> beta <- 10
> y <- F %*% beta + zeta + epsilon
> ## Towards prediction 
> fit <- gls(myCov, X = X, y = y, F = F, varNoise = varNoise)
> 
> ## parIni: add noise to true parameters
> parCovIni <- coef(myCov)
> parCovIni[] <- 0.9 * parCovIni[] +  0.1 * runif(length(parCovIni))
> coefLower(myCov) <- rep(1e-2, 4)
> coefUpper(myCov) <- c(5, 5, 20, 20)
> est <- gp(y ~ 1, data = data.frame(y = y, X),
+           inputs = colnames(X), cov = myCov, 
+           noise = TRUE, varNoiseLower = 1e-2, 
+           parCovIni = parCovIni) 
N = 5, M = 5 machine precision = 2.22045e-16
At X0, 0 variables are exactly at the bounds
At iterate     0  f=       14.277  |proj g|=       4.2439
At iterate     1  f =       13.157  |proj g|=        1.3139
At iterate     2  f =       12.735  |proj g|=         12.93
At iterate     3  f =       12.371  |proj g|=        2.1546
At iterate     4  f =       12.206  |proj g|=       0.94399
At iterate     5  f =       11.989  |proj g|=       0.63526
At iterate     6  f =       11.963  |proj g|=       0.13677
At iterate     7  f =       11.962  |proj g|=       0.13433
At iterate     8  f =       11.962  |proj g|=       0.20411
At iterate     9  f =       11.962  |proj g|=       0.15322
At iterate    10  f =       11.962  |proj g|=       0.13639
At iterate    11  f =        11.96  |proj g|=       0.13822
At iterate    12  f =       11.958  |proj g|=       0.24363
At iterate    13  f =       11.953  |proj g|=       0.43463
At iterate    14  f =        11.94  |proj g|=       0.66673
At iterate    15  f =        11.92  |proj g|=        1.8748
At iterate    16  f =       11.882  |proj g|=        1.1183
At iterate    17  f =        11.84  |proj g|=       0.82013
At iterate    18  f =       11.788  |proj g|=       0.86912
At iterate    19  f =       11.785  |proj g|=       0.28472
At iterate    20  f =       11.784  |proj g|=       0.15792
At iterate    21  f =       11.783  |proj g|=       0.45151
At iterate    22  f =       11.783  |proj g|=       0.13883
At iterate    23  f =       11.783  |proj g|=       0.13733
At iterate    24  f =       11.783  |proj g|=       0.48625
At iterate    25  f =       11.782  |proj g|=        1.2027
At iterate    26  f =       11.781  |proj g|=         1.578
At iterate    27  f =        11.78  |proj g|=       0.98545
At iterate    28  f =        11.78  |proj g|=       0.58034
At iterate    29  f =        11.78  |proj g|=       0.12581
At iterate    30  f =        11.78  |proj g|=       0.13804
At iterate    31  f =        11.78  |proj g|=       0.18314
At iterate    32  f =       11.779  |proj g|=       0.23566
At iterate    33  f =       11.777  |proj g|=       0.32584
At iterate    34  f =       11.774  |proj g|=       0.41671
At iterate    35  f =       11.766  |proj g|=       0.58751
At iterate    36  f =        11.76  |proj g|=       0.48933
At iterate    37  f =       11.749  |proj g|=       0.41386
At iterate    38  f =       11.737  |proj g|=       0.36177
At iterate    39  f =       11.736  |proj g|=        0.2187
At iterate    40  f =       11.736  |proj g|=       0.41416
At iterate    41  f =       11.736  |proj g|=       0.10286
At iterate    42  f =       11.736  |proj g|=      0.044033
At iterate    43  f =       11.736  |proj g|=      0.044109
At iterate    44  f =       11.736  |proj g|=      0.044258
At iterate    45  f =       11.735  |proj g|=      0.062144
At iterate    46  f =       11.734  |proj g|=      0.095108
At iterate    47  f =       11.733  |proj g|=       0.14762
At iterate    48  f =       11.731  |proj g|=       0.14287
At iterate    49  f =        11.73  |proj g|=      0.083982
At iterate    50  f =        11.73  |proj g|=       0.32438
At iterate    51  f =       11.729  |proj g|=       0.14354
At iterate    52  f =       11.729  |proj g|=      0.037509
At iterate    53  f =       11.729  |proj g|=      0.037686
At iterate    54  f =       11.728  |proj g|=      0.065782
At iterate    55  f =       11.725  |proj g|=       0.12373
At iterate    56  f =        11.72  |proj g|=       0.17783
At iterate    57  f =       11.707  |proj g|=       0.24642
At iterate    58  f =       11.688  |proj g|=       0.38614
At iterate    59  f =       11.613  |proj g|=       0.33713
At iterate    60  f =       11.486  |proj g|=       0.30389
At iterate    61  f =        11.43  |proj g|=       0.65438
At iterate    62  f =       11.379  |proj g|=        10.314
At iterate    63  f =       11.349  |proj g|=        4.2696
At iterate    64  f =       11.344  |proj g|=       0.64751
At iterate    65  f =       11.341  |proj g|=       0.64261
At iterate    66  f =       11.319  |proj g|=       0.48382
At iterate    67  f =       11.291  |proj g|=       0.13152
At iterate    68  f =       11.286  |proj g|=        0.1364
At iterate    69  f =       11.284  |proj g|=      0.075911
At iterate    70  f =       11.283  |proj g|=       0.13572
At iterate    71  f =       11.282  |proj g|=       0.17259
At iterate    72  f =        11.28  |proj g|=       0.22874
At iterate    73  f =        11.28  |proj g|=       0.22679
At iterate    74  f =        11.28  |proj g|=      0.085821
At iterate    75  f =        11.28  |proj g|=      0.036485
At iterate    76  f =        11.28  |proj g|=      0.038881
At iterate    77  f =        11.28  |proj g|=      0.043736
At iterate    78  f =        11.28  |proj g|=      0.043669
At iterate    79  f =        11.28  |proj g|=      0.019886
At iterate    80  f =        11.28  |proj g|=      0.052369
At iterate    81  f =        11.28  |proj g|=      0.050158
At iterate    82  f =        11.28  |proj g|=      0.045835
At iterate    83  f =        11.28  |proj g|=      0.032652
At iterate    84  f =        11.28  |proj g|=       0.01758
At iterate    85  f =        11.28  |proj g|=     0.0090454
At iterate    86  f =        11.28  |proj g|=     0.0011159
At iterate    87  f =        11.28  |proj g|=    0.00020718

iterations 87
function evaluations 103
segments explored during Cauchy searches 89
BFGS updates skipped 0
active bounds at final generalized Cauchy point 0
norm of the final projected gradient 0.000207175
final function value 11.2798

F = 11.2798
final  value 11.279839 
converged
> summary(est)

Call:
gp(formula = y ~ 1, data = data.frame(y = y, X), inputs = colnames(X), 
    cov = myCov, noise = TRUE, varNoiseLower = 0.01, parCovIni = parCovIni)


Number of observations: 20 

Trend coef.:
               Value
(Intercept) 8.500299

Covariance whith class "covTS"
Tensor sum covariance kernel
o Dimension 'd' (nb of inputs): 2
o Kernel (1D): "Matern nu = 5/2" with parameters: "range"
o One parameter by input:
    range: YES
o Number of parameters: 4
o Param. values: 
          Temp     Humid
range 1.775405 0.5399039
var   2.286231 2.9162569

Noise variance: 0.054
> coef(est)
(Intercept)  range.Temp range.Humid    var.Temp   var.Humid    varNoise 
  8.5002986   1.7754046   0.5399039   2.2862313   2.9162569   0.0536498 
> 
> ## =======================================================================
> ## Example 2. Predicting an additive function with an additive GP model
> ## =======================================================================
> 
> ## Not run: 
> ##D     
> ##D addfun6d <- function(x){
> ##D   res <- x[1]^3 + cos(pi * x[2]) + abs(x[3]) * sin(x[3]^2) +
> ##D     3 * x[4]^3 + 3 * cos(pi * x[5]) + 3 * abs(x[6]) * sin(x[6]^2)
> ##D }
> ##D 
> ##D ## 'Fit' is for the learning set, 'Val' for the validation set
> ##D set.seed(123)
> ##D nFit <- 50   
> ##D nVal <- 200
> ##D d <- 6 
> ##D inputs <- paste("x", 1L:d, sep = "")
> ##D 
> ##D ## create design matrices with DiceDesign package 
> ##D require(DiceDesign)
> ##D require(DiceKriging)
> ##D set.seed(0)
> ##D dataFitIni <- DiceDesign::lhsDesign(nFit, d)$design 
> ##D dataValIni <- DiceDesign::lhsDesign(nVal, d)$design 
> ##D dataFit <- DiceDesign::maximinSA_LHS(dataFitIni)$design
> ##D dataVal <- DiceDesign::maximinSA_LHS(dataValIni)$design
> ##D 
> ##D colnames(dataFit) <- colnames(dataVal) <- inputs
> ##D testfun <- addfun6d
> ##D dataFit <- data.frame(dataFit, y = apply(dataFit, 1, testfun))
> ##D dataVal <- data.frame(dataVal, y = apply(dataVal, 1, testfun))
> ##D 
> ##D ## Creation of "CovTS" object with one range by input
> ##D myCov <- covTS(inputs = inputs, d = d, kernel = "k1matern3_2", 
> ##D                dep = c(range = "input"))
> ##D 
> ##D ## Creation of a gp object
> ##D fitgp <- gp(formula = y ~ 1, data = dataFit, inputs = inputs,
> ##D             cov = myCov, noise = TRUE, 
> ##D             parCovIni = rep(1, 2*d),
> ##D             parCovLower = c(rep(1e-4, 2*d)),
> ##D             parCovUpper = c(rep(5, d), rep(10,d)),
> ##D             control = list(maxit = 300, REPORT = 10))
> ##D  
> ##D predTS <- predict(fitgp, newdata = as.matrix(dataVal[ , inputs]), type = "UK")$mean
> ##D 
> ##D ## Classical tensor product kernel as a reference for comparison
> ##D fitRef <- DiceKriging::km(formula = ~1,
> ##D                           design = dataFit[ , inputs],
> ##D                           response = dataFit$y,  covtype="matern3_2")
> ##D predRef <- predict(fitRef,
> ##D                    newdata = as.matrix(dataVal[ , inputs]),
> ##D                    type = "UK")$mean
> ##D ## Compare TS and Ref
> ##D RMSE <- data.frame(TS = sqrt(mean((dataVal$y - predTS)^2)),
> ##D                    Ref = sqrt(mean((dataVal$y - predRef)^2)),
> ##D                    row.names = "RMSE")
> ##D print(RMSE)
> ##D 
> ##D Comp <- data.frame(y = dataVal$y, predTS, predRef)
> ##D plot(predRef ~ y, data = Comp, col = "black", pch = 4,
> ##D      xlab = "True", ylab = "Predicted",
> ##D      main = paste("Prediction on a validation set (nFit = ",
> ##D          nFit, ", nVal = ", nVal, ").", sep = ""))
> ##D points(predTS ~ y, data = Comp, col = "red", pch = 20)
> ##D abline(a = 0, b = 1, col = "blue", lty = "dotted")
> ##D legend("bottomright", pch = c(4, 20), col = c("black", "red"),
> ##D        legend = c("Ref", "Tensor Sum"))
> ##D        
> ##D ## detach("package:DiceKriging", unload=TRUE)
> ##D ## After running this part of the file 
> ##D ## (to avoid conflicts between packages regarding `coef<-`)
> ##D 
> ## End(Not run)
> 
> ##=======================================================================
> ## Example 3. A "covMan" object
> ##=======================================================================
> myGaussFun <- function(x1, x2, par) { 
+   h <- (x1 - x2) / par[1]
+   SS2 <- sum(h^2)
+   d2 <- exp(-SS2)
+   kern <- par[2] * d2
+   d1 <- 2 * kern * SS2 / par[1]            
+   attr(kern, "gradient") <- c(theta = d1,  sigma2 = d2)
+   return(kern)
+ }
> 
> if (require(inline) && require(MASS)) {
+     
+     ## -- Let us define an equivalent version "myGaussC" with inline package 
+     ## (see also another example with Rcpp by typing: ?GPlab).
+     kernCode <- "
+        SEXP kern, dkern;
+        int nprotect = 0, d;
+        double SS2 = 0.0, d2, z, *rkern, *rdkern;
+ 
+        d = LENGTH(x1);
+        PROTECT(kern = allocVector(REALSXP, 1)); nprotect++;
+        PROTECT(dkern = allocVector(REALSXP, 2)); nprotect++;
+        rkern = REAL(kern);
+        rdkern = REAL(dkern);
+ 
+        for (int i = 0; i < d; i++) {
+           z = ( REAL(x1)[i] - REAL(x2)[i] ) / REAL(par)[0];
+           SS2 += z * z; 
+        }
+ 
+        d2 = exp(-SS2);
+        rkern[0] = REAL(par)[1] * d2;
+        rdkern[1] =  d2; 
+        rdkern[0] =  2 * rkern[0] * SS2 / REAL(par)[0];
+ 
+        SET_ATTR(kern, install(\"gradient\"), dkern);
+        UNPROTECT(nprotect);
+        return kern;
+    "
+     myGaussC <- cfunction(sig = signature(x1 = "numeric", x2 = "numeric",
+                               par = "numeric"),
+                           body = kernCode)
+     
+     ## -- Let us define a 4-dimensional covariance structure
+     d <- 4
+     myGauss <- covMan(
+         kernel = myGaussC,
+         hasGrad = TRUE,
+         d = 4,
+         parLower = c(theta = 0.0, sigma2 = 0.0),
+         parUpper = c(theta = Inf, sigma2 = Inf),
+         parNames = c("theta", "sigma2"),
+         label = "my Gaussian kernel"
+     )
+ 
+     ## == Simulates data for covMan and trend ==
+     n <- 100; 
+     X  <- matrix(runif(n*d), nrow = n)
+     colnames(X) <- inputNames(myGauss)
+     coef(myGauss) <- myPar <- c(theta = 0.5, sigma2 = 2)
+     C <- covMat(object = myGauss, X = X,
+                 compGrad = FALSE,  index = 1L, checkNames = FALSE)
+ 
+     ## set.seed(456)
+     p <- ncol(X) + 1
+     y <- mvrnorm(mu = rep(0, n), Sigma = C) 
+     F <- matrix(runif(n * p), nrow = n, ncol = p)
+     beta <- (1:p) / p
+     y <- tcrossprod(F, t(beta)) + y
+ 
+     ## == ML estimation. ==
+     design <- data.frame(X)
+     names(design) <- paste("x", 1:4, sep = "")
+     res <- gp(formula = y ~ ., data = data.frame(y = y, design),
+              inputs = names(design), cov = myGauss,
+              parCovIni = c(0.5, 0.5), varNoiseLower = 1e-4,
+              parCovLower = c(1e-5, 1e-5), parCovUpper = c(Inf, Inf)) 
+     summary(res)
+     coef(res)
+     p <- predict(res, newdata = design, type = "UK")           
+ 
+ }
Loading required package: inline
Warning in library(package, lib.loc = lib.loc, character.only = TRUE, logical.return = TRUE,  :
  there is no package called ‘inline’
> 
> ##=======================================================================
> ## Example 3 (continuing). Another way of improving speed: 
> ## A kernel admitting matrix arguments
> ##=======================================================================
> 
> ## -- Implemented in R, but with a kernel admitting matrices as arguments
> 
> myGaussFunVec <- function(X1, X2, par) { 
+   # X1, X2 : matrices with same number of column d (dimension)
+   n <- nrow(X1)
+   d <- ncol(X1)     
+   SS2 <- 0
+   
+   for (j in 1:d){
+     Aj <- outer(X1[, j], X2[, j], "-")
+     Hj2 <- (Aj / par[1])^2
+     SS2 <- SS2 + Hj2
+   }
+   D2 <- exp(-SS2)
+   kern <- par[2]*D2
+   D1 <- 2 * kern * SS2 / par[1] 
+   attr(kern, "gradient") <- list(theta = D1,  sigma2 = D2)
+   
+   return(kern)
+ }
> 
> myGaussVec <- covMan(
+     kernel = myGaussFunVec,
+     hasGrad = TRUE,
+     acceptMatrix = TRUE,
+     d = 4,
+     parLower = c(theta = 0.0, sigma2 = 0.0),
+     parUpper = c(theta = Inf, sigma2 = Inf),
+     parNames = c("theta", "sigma2"),
+     label = "my Gaussian kernel"
+ )
> 
> ## == ML estimation. ==
> res2 <- gp(formula = y ~ ., data = data.frame(y = y, design),
+            inputs = names(design), cov = myGaussVec,
+            compGrad = TRUE, 
+            parCovIni = c(0.5, 0.5), varNoiseLower = 1e-4,
+            parCovLower = c(1e-5, 1e-5), parCovUpper = c(Inf, Inf)) 
Error in match(x, table, nomatch = 0L) : object 'design' not found
Calls: gp -> %in% -> match
Execution halted
```
```
DONE
Status: 1 ERROR, 1 NOTE
```

## growcurves (0.2.3.9)
Maintainer: "terrance savitsky" <tds151@gmail.com>

```
checking whether package ‘growcurves’ can be installed ... ERROR
Installation failed.
See ‘/private/tmp/RtmpQJiDLv/check_crand2516b207784/growcurves.Rcheck/00install.out’ for details.
Status: 1 ERROR
```

## growfunctions (0.11)
Maintainer: Terrance Savitsky <tds151@gmail.com>

```
checking whether package ‘growfunctions’ can be installed ... ERROR
Installation failed.
See ‘/private/tmp/RtmpQJiDLv/check_crand2516b207784/growfunctions.Rcheck/00install.out’ for details.
Status: 1 ERROR
```

## gsheet (0.1.0)
Maintainer: Max Conway <conway.max1@gmail.com>  
Bug reports: https://github.com/maxconway/gsheet/issues

__OK__

## gstudio (1.3)
Maintainer: Rodney J. Dyer <rjdyer@vcu.edu>

```
checking DESCRIPTION meta-information ... NOTE
Malformed Title field: should not end in a period.
```
```
checking use of S3 registration ... WARNING
Registered S3 method from a standard package overwritten by 'gstudio':
 method          from    
 plot.data.frame graphics
```
```
DONE
Status: 1 WARNING, 1 NOTE
```

## gtable (0.1.2)
Maintainer: Hadley Wickham <h.wickham@gmail.com>

```
checking DESCRIPTION meta-information ... NOTE
Malformed Title field: should not end in a period.
```
```
DONE
Status: 1 NOTE
```

## gvc (0.2.0)
Maintainer: Bastiaan Quast <bquast@gmail.com>

__OK__

## gWidgets2RGtk2 (1.0-3)
Maintainer: John Verzani <jverzani@gmail.com>

__OK__

## gWidgets2tcltk (1.0-4)
Maintainer: John Verzani <jverzani@gmail.com>

__OK__

## GWLelast (1.1)
Maintainer: Daisuke Yoneoka <blue.sky.sea.dy@gmail.com>

__OK__

## h5 (0.9.1)
Maintainer: Mario Annau <mario.annau@gmail.com>  
Bug reports: https://github.com/mannau/h5/issues

```
checking whether package ‘h5’ can be installed ... ERROR
Installation failed.
See ‘/private/tmp/RtmpQJiDLv/check_crand2516b207784/h5.Rcheck/00install.out’ for details.
Status: 1 ERROR
```

## harvestr (0.6.0)
Maintainer: Andrew Redd <andrew.redd@hsc.utah.edu>

```
checking package dependencies ... NOTE
Package suggested but not available for checking: ‘MCMCpack’
```
```
checking tests ... ERROR
Running the tests in ‘tests/testthat-package.R’ failed.
Last 13 lines of output:
  
  Type 'demo()' for some demos, 'help()' for on-line help, or
  'help.start()' for an HTML browser interface to help.
  Type 'q()' to quit R.
  
  > library(testthat)
  > library(harvestr)
  > test_package("harvestr")
  Caching : ..........
  main functions : ............
  Error in library(MCMCpack) : there is no package called 'MCMCpack'
  Calls: test_package ... lapply -> FUN -> sys.source2 -> eval -> eval -> library
  Execution halted
```
```
checking running R code from vignettes ... WARNING
Errors in running code in vignettes:
when running code in ‘harvestr.Rnw’
  ...

> library(harvestr)

> library(plyr)

> library(MCMCpack)

  When sourcing ‘harvestr.R’:
Error: there is no package called ‘MCMCpack’
Execution halted

```
```
checking re-building of vignette outputs ... NOTE
Error in re-building vignettes:
  ...

Error: processing vignette 'harvestr.Rnw' failed with diagnostics:
 chunk 1 (label = setup) 
Error in library(MCMCpack) : there is no package called ‘MCMCpack’
Execution halted

```
```
DONE
Status: 1 ERROR, 1 WARNING, 2 NOTEs
```

## hash (2.2.6)
Maintainer: Christopher Brown <chris.brown@decisionpatterns.com>

```
checking top-level files ... NOTE
File
  LICENSE
is not mentioned in the DESCRIPTION file.
Non-standard file/directory found at top level:
  ‘dev’
```
```
checking dependencies in R code ... NOTE
Package in Depends field not imported from: ‘methods’
  These packages need to be imported from (in the NAMESPACE file)
  for when this namespace is loaded but not attached.
```
```
checking S3 generic/method consistency ... NOTE
Found the following apparent S3 methods exported but not registered:
  as.list.hash names.hash
See section ‘Registering S3 methods’ in the ‘Writing R Extensions’
manual.
```
```
DONE
Status: 3 NOTEs
```

## haven (0.2.0)
Maintainer: Hadley Wickham <hadley@rstudio.com>  
Bug reports: https://github.com/hadley/haven/issues

__OK__

## htmlTable (1.3)
Maintainer: Max Gordon <max@gforge.se>  
Bug reports: https://github.com/gforge/htmlTable/issues

__OK__

## htmltools (0.2.6)
Maintainer: Joe Cheng <joe@rstudio.com>

```
checking DESCRIPTION meta-information ... NOTE
Malformed Description field: should contain one or more complete sentences.
```
```
checking dependencies in R code ... NOTE
'library' or 'require' call to ‘markdown’ in package code.
  Please use :: or requireNamespace() instead.
  See section 'Suggested packages' in the 'Writing R Extensions' manual.
```
```
DONE
Status: 2 NOTEs
```

## hts (4.4)
Maintainer: Rob J Hyndman <Rob.Hyndman@monash.edu>  
Bug reports: https://github.com/robjhyndman/hts/issues

__OK__

## httr (0.6.1)
Maintainer: Hadley Wickham <hadley@rstudio.com>

```
checking dependencies in R code ... NOTE
Namespace in Imports field not imported from: ‘R6’
  All declared Imports should be used.
```
```
DONE
Status: 1 NOTE
```

## humanFormat (1.0)
Maintainer: Dustin Sallings <dustin@spy.net>  
Bug reports: https://github.com/dustin/humanFormat/issues

```
checking dependencies in R code ... NOTE
Package in Depends field not imported from: ‘testthat’
  These packages need to be imported from (in the NAMESPACE file)
  for when this namespace is loaded but not attached.
```
```
DONE
Status: 1 NOTE
```

## hyperSpec (0.98-20150304)
Maintainer: Claudia Beleites <chemometrie@beleites.de>

```
checking package dependencies ... NOTE
Packages suggested but not available for checking:
  ‘tripack’ ‘baseline’ ‘inline’ ‘pls’
```
```
checking R code for possible problems ... NOTE
Warning: local assignments to syntactic functions: ~
Warning: local assignments to syntactic functions: ~
```
```
checking running R code from vignettes ... [23s/23s] WARNING
Errors in running code in vignettes:
when running code in ‘introduction.Rnw’
  ...
Loading required package: baseline
Warning in library(package, lib.loc = lib.loc, character.only = TRUE, logical.return = TRUE,  :
  there is no package called ‘baseline’

> bl <- baseline(corrected[[]], method = "modpolyfit", 
+     degree = 4)

  When sourcing ‘introduction.R’:
Error: could not find function "baseline"
Execution halted

```
```
checking re-building of vignette outputs ... NOTE
Error in re-building vignettes:
  ...
Untracing function "spc.fit.poly.below" in package "hyperSpec"
Tracing function "spc.fit.poly.below" in package "hyperSpec"
Tracing function "spc.fit.poly.below" in package "hyperSpec"
Tracing function "spc.fit.poly.below" in package "hyperSpec"
Tracing function "spc.fit.poly.below" in package "hyperSpec"
Untracing function "spc.fit.poly.below" in package "hyperSpec"
Read 362 items
Read 362 items
Read 362 items
Read 362 items
Read 362 items
Read 362 items
Loading required package: MASS
Warning in predict.lda(lda, chondro) :
  variable names in 'newdata' do not match those in 'object'
Loading required namespace: plotrix
Warning in rm(chondro) : object 'chondro' not found
Loading required package: baseline
Warning in library(package, lib.loc = lib.loc, character.only = TRUE, logical.return = TRUE,  :
  there is no package called ‘baseline’

Error: processing vignette 'introduction.Rnw' failed with diagnostics:
 chunk 90 (label = do-bl) 
Error in eval(expr, envir, enclos) : could not find function "baseline"
Execution halted

```
```
DONE
Status: 1 WARNING, 3 NOTEs
```

## icd9 (1.2)
Maintainer: Jack O. Wasey <jack@jackwasey.com>  
Bug reports: https://github.com/jackwasey/icd9/issues

```
checking package dependencies ... NOTE
Packages suggested but not available for checking: ‘microbenchmark’ ‘profr’
```
```
checking data for non-ASCII characters ... NOTE
  Note: found 14 marked Latin-1 strings
  Note: found 39 marked UTF-8 strings
```
```
DONE
Status: 2 NOTEs
```

## IgorR (0.7.1)
Maintainer: Greg Jefferis <jefferis@gmail.com>

```
checking R code for possible problems ... NOTE
Found the following assignments to the global environment:
File ‘IgorR/R/ReadIgorBinary.R’:
  assign(WaveName, rval, envir = .GlobalEnv)
```
```
DONE
Status: 1 NOTE
```

## indicoio (0.3)
Maintainer: Madison May <madison@indico.io>

```
checking DESCRIPTION meta-information ... NOTE
Malformed Description field: should contain one or more complete sentences.
```
```
DONE
Status: 1 NOTE
```

## inferference (0.4.61)
Maintainer: Bradley Saul <saulb@live.unc.edu>

__OK__

## infuser (0.1)
Maintainer: Bart Smeets <bartsmeets86@gmail.com>  
Bug reports: https://github.com/bart6114/infuser/issues

__OK__

## intergraph (2.0-1)
Maintainer: Michal Bojanowski <m.bojanowski@icm.edu.pl>

__OK__

## internetarchive (0.1.2)
Maintainer: Lincoln Mullen <lincoln@lincolnmullen.com>  
Bug reports: https://github.com/ropensci/internetarchive/issues

__OK__

## investr (1.3.0)
Maintainer: Brandon M. Greenwell <greenwell.brandon@gmail.com>

```
checking Rd cross-references ... NOTE
Package unavailable to check Rd xrefs: ‘nlstools’
```
```
DONE
Status: 1 NOTE
```

## io (0.2.2)
Maintainer: David J. H. Shih <djh.shih@gmail.com>  
Bug reports: https://bitbucket.org/djhshih/io/issues

```
checking package dependencies ... NOTE
Package suggested but not available for checking: ‘rhdf5’
```
```
DONE
Status: 1 NOTE
```

## ISOweek (0.6-2)
Maintainer: Uwe Block <u.block.mz@googlemail.com>

__OK__

## iterpc (0.2.7)
Maintainer: Randy Lai <randy.cs.lai@gmail.com>

```
checking for GNU extensions in Makefiles ... NOTE
GNU make is a SystemRequirements.
```
```
DONE
Status: 1 NOTE
```

## itertools2 (0.1.1)
Maintainer: John A. Ramey <johnramey@gmail.com>

__OK__

## jaatha (2.7.0)
Maintainer: Paul Staab <develop@paulstaab.de>  
Bug reports: https://github.com/paulstaab/jaatha

__OK__

## james.analysis (1.0.0)
Maintainer: Herman De Beukelaer <Herman.DeBeukelaer@UGent.be>

__OK__

## jiebaR (0.5)
Maintainer: Qin Wenfeng <mail@qinwenfeng.com>  
Bug reports: https://github.com/qinwf/jiebaR/issues

__OK__

## Jmisc (0.3.1)
Maintainer: TszKin Julian Chan <ctszkin@gmail.com>  
Bug reports: TszKin Julian Chan <ctszkin@gmail.com>

```
checking DESCRIPTION meta-information ... NOTE
Malformed Description field: should contain one or more complete sentences.
```
```
DONE
Status: 1 NOTE
```

## jsonlite (0.9.16)
Maintainer: Jeroen Ooms <jeroen.ooms@stat.ucla.edu>  
Bug reports: http://github.com/jeroenooms/jsonlite/issues

__OK__

## KFAS (1.1.1)
Maintainer: Jouni Helske <jouni.helske@jyu.fi>  
Bug reports: https://github.com/helske/KFAS/issues

```
checking whether package ‘KFAS’ can be installed ... ERROR
Installation failed.
See ‘/private/tmp/RtmpQJiDLv/check_crand2516b207784/KFAS.Rcheck/00install.out’ for details.
Status: 1 ERROR
```

## kimisc (0.2-1)
Maintainer: Kirill Mueller <mail@kirill-mueller.de>  
Bug reports: https://github.com/krlmlr/kimisc/issues

__OK__

## Kmisc (0.5.0)
Maintainer: Kevin Ushey <kevinushey@gmail.com>  
Bug reports: https://github.com/kevinushey/Kmisc/issues

```
checking package dependencies ... NOTE
Packages suggested but not available for checking:
  ‘googleVis’ ‘microbenchmark’
```
```
checking re-building of vignette outputs ... NOTE
Error in re-building vignettes:
  ...
Quitting from lines 15-27 (Kmisc-intro.Rmd) 
Error: processing vignette 'Kmisc-intro.Rmd' failed with diagnostics:
there is no package called 'microbenchmark'
Execution halted

```
```
DONE
Status: 2 NOTEs
```

## kmodR (0.1.0)
Maintainer: David Charles Howe <kmodR@edgecondition.com>

__OK__

## knitcitations (1.0.5)
Maintainer: Carl Boettiger <cboettig@gmail.com>

```
checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  
  Type 'demo()' for some demos, 'help()' for on-line help, or
  'help.start()' for an HTML browser interface to help.
  Type 'q()' to quit R.
  
  > library("testthat")
  > library("knitcitations")
  > 
  > test_check("knitcitations")
  Error in test_dir(test_path, reporter = reporter, env = env, filter = filter,  : 
    No matching test file in dir
  Calls: test_check -> run_tests -> with_top_env -> test_dir
  Execution halted
```
```
DONE
Status: 1 ERROR
```

## knitrBootstrap (0.9.0)
Maintainer: Jim Hester <james.f.hester@gmail.com>  
Bug reports: https://github.com/jimhester/knitrBootstrap/issues

```
checking DESCRIPTION meta-information ... NOTE
Malformed Title field: should not end in a period.
```
```
DONE
Status: 1 NOTE
```

## knockoff (0.2.1)
Maintainer: Evan Patterson <epatters@stanford.edu>

```
checking package dependencies ... NOTE
Package suggested but not available for checking: ‘lars’
```
```
checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  9: all.equal(x, y, ...) at /Users/hadley/Documents/devtools/testthat/R/compare.r:135
  10: all.equal.numeric(x, y, ...)
  11: attr.all.equal(target, current, tolerance = tolerance, scale = scale, ...)
  12: mode(current)
  13: lasso_max_lambda_lars(X, y)
  14: stop("lars is not installed", call. = F)
  
  testthat results ================================================================
  OK: 13 SKIPPED: 2 FAILED: 1
  1. Error: Finding the max lambda in lasso works for orthonormal design 
  
  Error: testthat unit tests failed
  Execution halted
```
```
DONE
Status: 1 ERROR, 1 NOTE
```

## koRpus (0.05-5)
Maintainer: m.eik michalke <meik.michalke@hhu.de>

```
checking package dependencies ... NOTE
Package which this enhances but not available for checking: ‘rkward’
```
```
checking data for non-ASCII characters ... NOTE
  Note: found 22852 marked UTF-8 strings
```
```
DONE
Status: 2 NOTEs
```

## kselection (0.2.0)
Maintainer: Daniel Rodriguez <daniel.rodriguez.perez@gmail.com>  
Bug reports: https://github.com/drodriguezperez/kselection/issues

```
checking package dependencies ... NOTE
Packages suggested but not available for checking: ‘FactoClass’ ‘LICORS’
```
```
DONE
Status: 1 NOTE
```

## LaF (0.6.2)
Maintainer: Jan van der Laan <djvanderlaan@unrealizedtime.nl>

__OK__

## lambda.tools (1.0.6)
Maintainer: Brian Lee Yung Rowe <r@zatonovo.com>

```
checking tests ... ERROR
Running the tests in ‘tests/run_tests.R’ failed.
Last 13 lines of output:
  
  > library(testthat)
  > library(lambda.r)
  
  Attaching package: 'lambda.r'
  
  The following object is masked from 'package:testthat':
  
      describe
  
  > library_if_available(lambda.tools)
  Error: could not find function "library_if_available"
  Execution halted
```
```
DONE
Status: 1 ERROR
```

## Lambda4 (3.0)
Maintainer: Tyler Hunt <tyler@psychoanalytix.com>  
Bug reports: https://github.com/JackStat/Lambda4/issues

```
checking DESCRIPTION meta-information ... NOTE
Malformed Title field: should not end in a period.
```
```
checking dependencies in R code ... NOTE
'library' or 'require' calls in package code:
  ‘GPArotation’ ‘mice’
  Please use :: or requireNamespace() instead.
  See section 'Suggested packages' in the 'Writing R Extensions' manual.
```
```
checking R code for possible problems ... NOTE
impute.cov: no visible global function definition for ‘complete’
impute.cov: no visible global function definition for ‘mice’
```
```
DONE
Status: 3 NOTEs
```

## lamW (0.1-1)
Maintainer: Avraham Adler <Avraham.Adler@gmail.com>  
Bug reports: https://bitbucket.org/aadler/lamw/issues

```
checking Rd cross-references ... NOTE
Package unavailable to check Rd xrefs: ‘LambertW’
```
```
DONE
Status: 1 NOTE
```

## lava (1.4.0)
Maintainer: Klaus K. Holst <klaus@holst.it>

```
checking package dependencies ... NOTE
Packages suggested but not available for checking:
  ‘graph’ ‘Rgraphviz’ ‘geepack’ ‘gof’
```
```
DONE
Status: 1 NOTE
```

## lawn (0.1.0)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: http://www.github.com/ropensci/lawn/issues

```
checking package dependencies ... NOTE
Package suggested but not available for checking: ‘leaflet’
```
```
DONE
Status: 1 NOTE
```

## lazyeval (0.1.10)
Maintainer: Hadley Wickham <hadley@rstudio.com>

```
checking package dependencies ... NOTE
Package suggested but not available for checking: ‘microbenchmark’
```
```
checking re-building of vignette outputs ... NOTE
Error in re-building vignettes:
  ...
Quitting from lines 19-26 (benchmark.Rmd) 
Error: processing vignette 'benchmark.Rmd' failed with diagnostics:
there is no package called 'microbenchmark'
Execution halted

```
```
DONE
Status: 2 NOTEs
```

## letsR (2.1)
Maintainer: Bruno Vilela <brunovilelasilva@hotmail.com>

__OK__

## lfl (1.0)
Maintainer: Michal Burda <michal.burda@osu.cz>

__OK__

## lifecontingencies (1.1.6)
Maintainer: Giorgio Alfredo Spedicato <spedicato_giorgio@yahoo.it>  
Bug reports: http://github.com/spedygiorgio/lifecontingencies/issues

```
checking package dependencies ... NOTE
Package suggested but not available for checking: ‘demography’
```
```
checking running R code from vignettes ... [7s/28s] WARNING
Errors in running code in vignettes:
when running code in ‘mortality_projection.Rnw’
  ...

> options(width = 80, prompt = "R> ")

> library(demography)

  When sourcing ‘mortality_projection.R’:
Error: there is no package called ‘demography’
Execution halted

```
```
checking re-building of vignette outputs ... NOTE
Error in re-building vignettes:
  ...
 with significant contributions from Reinhold Kainhofer and Kevin J. Owens
Loading required package: markovchain
Loading required package: parallel
Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
  Running 'texi2dvi' on 'an_introduction_to_lifecontingencies_package.tex' failed.
LaTeX errors:
! Undefined control sequence.
l.15 x<9c><ed>\Ol
           [E^^Z<ff><b0><9b><8d>_q<de><f3><90>n0i^^S<9b><d1>^^VXj^^RKO<da>C^^Q<b8>R}^^B<a9> V9<ad><c4>	<e5>Ω7đ^^^<b8>p<b4>8TB...
The control sequence at the end of the top line
of your error message was never \def'ed. If you have
! LaTeX Error: Missing \begin{document}.

See the LaTeX manual or LaTeX Companion for explanation.
Type  H <return>  for immediate help.
 ...                                              
! Undefined control sequence.
l.15 ...<93><b6><f1><f8><bd><ba><c9>k<da><d8>{<f8>mF&<ff><9c><b4>	M<b2><fe>)zz^^?f<e6><cd><f7><e6><9b><ef><fb>}ߌ<f3>\<ab>
                                                  բ<a3>߳<ee><c0><fe><a2>+<de>aFW<bc>Ì<ae>x<87>^^Y]<f1>...
The control sequence at the end of the top line
of your error message was never \def'ed. If you have
! Undefined control sequence.
l.15 ...+<de>aFW<bc>Ì<ae>x<87>^^
Calls: buildVignettes -> texi2pdf -> texi2dvi
Execution halted

```
```
DONE
Status: 1 WARNING, 2 NOTEs
```

## LinearizedSVR (1.3)
Maintainer: Ken Williams <ken.williams@windlogics.com>

__OK__

## lint (0.3)
Maintainer: Andrew Redd <andrew.redd@hsc.utah.edu>

```
checking R code for possible problems ... NOTE
autotest_style: no visible global function definition for ‘test_that’
test_style: no visible global function definition for
  ‘expect_equivalent’
```
```
DONE
Status: 1 NOTE
```

## lintr (0.2.0)
Maintainer: "Jim Hester" <james.f.hester@gmail.com>  
Bug reports: https://github.com/jimhester/lintr/issues

__OK__

## list (8.0)
Maintainer: Graeme Blair <graeme.blair@columbia.edu>

```
checking whether package ‘list’ can be installed ... ERROR
Installation failed.
See ‘/private/tmp/RtmpQJiDLv/check_crand2516b207784/list.Rcheck/00install.out’ for details.
Status: 1 ERROR
```

## llama (0.8.1)
Maintainer: Lars Kotthoff <lars.kotthoff@insight-centre.org>

__OK__

## LLSR (0.0.1.9225)
Maintainer: Diego F Coelho <diegofcoelho@gmail.com>  
Bug reports: https://github.com/eqipehub/LLSR/issues

__OK__

## lme4 (1.1-7)
Maintainer: Ben Bolker <bbolker+lme4@gmail.com>

```
checking package dependencies ... NOTE
Packages suggested but not available for checking:
  ‘PKPDmodels’ ‘MEMSS’ ‘mlmRev’
```
```
checking use of S3 registration ... WARNING
Registered S3 methods from standard package(s) overwritten by 'lme4':
 method         from
 coef.lmList    nlme
 formula.lmList nlme
 update.lmList  nlme
```
```
checking R code for possible problems ... NOTE
GQdk: no visible binding for global variable ‘GQN’
vcov.merMod : calc.vcov.hess: no visible global function definition for
  ‘forceSymmetric’
```
```
checking tests ... ERROR
Running the tests in ‘tests/AAAtest-all.R’ failed.
Last 13 lines of output:
         warning = function(c) invokeRestart("muffleWarning"))
  2: eval(code, new_test_environment)
  3: eval(expr, envir, enclos)
  4: data("Orthodont", package = "MEMSS") at test-methods.R:131
  5: find.package(package, lib.loc, verbose = verbose)
  6: stop(gettextf("there is no package called %s", sQuote(pkg)), domain = NA)
  7: .handleSimpleError(function (e) 
     {
         e$calls <- head(sys.calls()[-seq_len(frame + 7)], -2)
         signalCondition(e)
     }, "there is no package called 'MEMSS'", quote(find.package(package, lib.loc, verbose = verbose)))
  Error: Test failures
  Execution halted
```
```
checking re-building of vignette outputs ... NOTE
Error in re-building vignettes:
  ...

This is mgcv 1.8-6. For overview type 'help("mgcv-package")'.
Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
  Running 'texi2dvi' on 'lmer.tex' failed.
LaTeX errors:
! LaTeX Error: Missing \begin{document}.

See the LaTeX manual or LaTeX Companion for explanation.
Type  H <return>  for immediate help.
 ...                                              
! Missing $ inserted.
<inserted text> 
                $
l.16 ...<91>i<9a><db>v<e1>6<e8><e5>^^_^^G^^W[<db>o}<e4>^^?<91>a^^X<db><de>߅<ce><ec><a5>^^Q^
                                                  <99>J<a5><d2><e9>4<c6><fd><f0><e1>ý{<f7><d2><e9><f4><fd><fb><f7>߾}<fb><fe><fd>...
! Undefined control sequence.
l.16 ...*<85><89>x<fa><f4>i0<df>^^[^^?Accc<bf>~<fd><fa><9b>^^Q^^N<fb>E<ff>mT<f7>{<95>K<a7>\<bc>
                                                  ڇ^^O^^_<ee><de>bhh<e8>ӧO<ae><eb>j<9a>f<db>v<b1>X...
The control sequence at the end of the top line
of your error message was never \def'ed. If you have
! You can't use `\eqno' in math mode.
\endmathdisplay@a ...\df@tag \@empty \else \veqno 
                                           
Calls: buildVignettes -> texi2pdf -> texi2dvi
Execution halted

```
```
DONE
Status: 1 ERROR, 1 WARNING, 3 NOTEs
```

## log4r (0.2)
Maintainer: Kirill Müller <krlmlr+r@mailbox.org>  
Bug reports: https://github.com/johnmyleswhite/log4r/issues

```
checking DESCRIPTION meta-information ... NOTE
Malformed Title field: should not end in a period.
```
```
DONE
Status: 1 NOTE
```

## lsbclust (1.0.2)
Maintainer: Pieter Schoonees <schoonees@gmail.com>

__OK__

## ltmle (0.9-5)
Maintainer: Joshua Schwab <joshuaschwab@yahoo.com>  
Bug reports: https://github.com/joshuaschwab/ltmle/issues

```
checking package dependencies ... NOTE
Package suggested but not available for checking: ‘SuperLearner’
```
```
checking Rd cross-references ... NOTE
Package unavailable to check Rd xrefs: ‘SuperLearner’
```
```
checking tests ... ERROR
Running the tests in ‘tests/test-all.R’ failed.
Last 13 lines of output:
  7: CheckInputs(data, nodes, survivalOutcome, Qform, gform, gbounds, Yrange, deterministic.g.function, 
         SL.library, regimes, working.msm, summary.measures, final.Ynodes, stratify, msm.weights, 
         deterministic.Q.function, observation.weights)
  8: stop("SuperLearner package is required if SL.library is not NULL")
  
  Failed with error:  'there is no package called 'tmle''
  [1] "skipping tmle check because tmle namespace is not available"
  testthat results ================================================================
  OK: 101 SKIPPED: 0 FAILED: 1
  1. Error: tests from 'create tests to compare versions.R' 
  
  Error: testthat unit tests failed
  Execution halted
```
```
DONE
Status: 1 ERROR, 2 NOTEs
```

## lubridate (1.3.3)
Maintainer: Garrett Grolemund <garrett@rstudio.com>  
Bug reports: https://github.com/hadley/lubridate/issues

```
checking package dependencies ... NOTE
Packages which this enhances but not available for checking: ‘its’ ‘fts’
```
```
checking S3 generic/method consistency ... NOTE
Found the following apparent S3 methods exported but not registered:
  pretty.day pretty.hour pretty.min pretty.month pretty.point
  pretty.sec pretty.unit pretty.year
See section ‘Registering S3 methods’ in the ‘Writing R Extensions’
manual.
```
```
DONE
Status: 2 NOTEs
```

## mads (0.1.2)
Maintainer: Laura Marshall <lhm@st-and.ac.uk>

__OK__

## magrittr (1.5)
Maintainer: Stefan Milton Bache <stefan@stefanbache.dk>

__OK__

## MALDIquant (1.11)
Maintainer: Sebastian Gibb <mail@sebastiangibb.de>  
Bug reports: https://github.com/sgibb/MALDIquant/issues/

__OK__

## MALDIquantForeign (0.9)
Maintainer: Sebastian Gibb <mail@sebastiangibb.de>  
Bug reports: https://github.com/sgibb/MALDIquantForeign/issues/

```
checking package dependencies ... NOTE
Package suggested but not available for checking: ‘RNetCDF’
```
```
checking dependencies in R code ... NOTE
'library' or 'require' call to ‘RNetCDF’ in package code.
  Please use :: or requireNamespace() instead.
  See section 'Suggested packages' in the 'Writing R Extensions' manual.
```
```
DONE
Status: 2 NOTEs
```

## manifestoR (0.9-12)
Maintainer: Jirka Lewandowski <jirka.lewandowski@wzb.eu>  
Bug reports: https://github.com/ManifestoProject/manifestoR/issues

__OK__

## markovchain (0.2.1)
Maintainer: Giorgio Alfredo Spedicato <spedicato_giorgio@yahoo.it>  
Bug reports: http://github.com/spedygiorgio/markovchain/issues

__OK__

## MarkowitzR (0.1502)
Maintainer: Steven E. Pav <shabbychef@gmail.com>  
Bug reports: https://github.com/shabbychef/MarkowitzR/issues

__OK__

## matchingR (1.0.1)
Maintainer: Jan Tilly <jtilly@econ.upenn.edu>

```
checking whether package ‘matchingR’ can be installed ... ERROR
Installation failed.
See ‘/private/tmp/RtmpQJiDLv/check_crand2516b207784/matchingR.Rcheck/00install.out’ for details.
Status: 1 ERROR
```

## MazamaSpatialUtils (0.2.4)
Maintainer: Jonathan Callahan <jonathan.s.callahan@gmail.com>

__OK__

## mbbefd (0.7)
Maintainer: Giorgio Spedicato <spedicato_giorgio@yahoo.it>  
Bug reports: http://github.com/spedygiorgio/mbbefd/issues

```
checking package dependencies ... NOTE
Package suggested but not available for checking: ‘pander’
```
```
checking re-building of vignette outputs ... NOTE
Error in re-building vignettes:
  ...

    cm

Loading required package: gsl
cropping Introduction_to_Exposure_Rating_files/figure-latex/unnamed-chunk-1-1.pdf
PDFCROP 1.38, 2012/11/02 - Copyright (c) 2002-2012 by Heiko Oberdiek.
==> 1 page written on `Introduction_to_Exposure_Rating_files/figure-latex/unnamed-chunk-1-1.pdf'.
cropping Introduction_to_Exposure_Rating_files/figure-latex/LEV-1.pdf
PDFCROP 1.38, 2012/11/02 - Copyright (c) 2002-2012 by Heiko Oberdiek.
==> 1 page written on `Introduction_to_Exposure_Rating_files/figure-latex/LEV-1.pdf'.
cropping Introduction_to_Exposure_Rating_files/figure-latex/LEV2-1.pdf
PDFCROP 1.38, 2012/11/02 - Copyright (c) 2002-2012 by Heiko Oberdiek.
==> 1 page written on `Introduction_to_Exposure_Rating_files/figure-latex/LEV2-1.pdf'.
cropping Introduction_to_Exposure_Rating_files/figure-latex/ExposureCurve-1.pdf
PDFCROP 1.38, 2012/11/02 - Copyright (c) 2002-2012 by Heiko Oberdiek.
==> 1 page written on `Introduction_to_Exposure_Rating_files/figure-latex/ExposureCurve-1.pdf'.
cropping Introduction_to_Exposure_Rating_files/figure-latex/mbbefdPlot-1.pdf
PDFCROP 1.38, 2012/11/02 - Copyright (c) 2002-2012 by Heiko Oberdiek.
==> 1 page written on `Introduction_to_Exposure_Rating_files/figure-latex/mbbefdPlot-1.pdf'.
Read 44 items
Read 22 items
Quitting from lines 400-424 (Introduction_to_Exposure_Rating.Rmd) 
Error: processing vignette 'Introduction_to_Exposure_Rating.Rmd' failed with diagnostics:
there is no package called 'pander'
Execution halted

```
```
DONE
Status: 2 NOTEs
```

## mbest (0.3)
Maintainer: Patrick O. Perry <pperry@stern.nyu.edu>

```
checking Rd cross-references ... NOTE
Package unavailable to check Rd xrefs: ‘logistf’
```
```
DONE
Status: 1 NOTE
```

## mcIRT (0.41)
Maintainer: Manuel Reif <manuel.reif@univie.ac.at>

```
checking whether package ‘mcIRT’ can be installed ... ERROR
Installation failed.
See ‘/private/tmp/RtmpQJiDLv/check_crand2516b207784/mcIRT.Rcheck/00install.out’ for details.
Status: 1 ERROR
```

## mco (1.0-15.1)
Maintainer: Olaf Mersmann <olafm@p-value.net>

```
checking DESCRIPTION meta-information ... NOTE
Malformed Description field: should contain one or more complete sentences.
```
```
checking dependencies in R code ... NOTE
'library' or 'require' call to ‘scatterplot3d’ in package code.
  Please use :: or requireNamespace() instead.
  See section 'Suggested packages' in the 'Writing R Extensions' manual.
```
```
DONE
Status: 2 NOTEs
```

## medicalrisk (1.1)
Maintainer: Patrick McCormick <patrick.mccormick@alum.mit.edu>

__OK__

## metafor (1.9-6)
Maintainer: Wolfgang Viechtbauer <wvb@metafor-project.org>

```
checking package dependencies ... NOTE
Packages suggested but not available for checking:
  ‘CompQuadForm’ ‘BiasedUrn’ ‘Epi’
```
```
checking examples ... ERROR
Running examples in ‘metafor-Ex.R’ failed
The error most likely occurred in:

> base::assign(".ptime", proc.time(), pos = "CheckExEnv")
> ### Name: llplot
> ### Title: Log-Likelihood Plot of a Parameter Corresponding to an Outcome
> ###   or Effect Size Measure
> ### Aliases: llplot
> ### Keywords: hplot
> 
> ### ** Examples
> 
> ### load BCG vaccine data
> data(dat.bcg)
> 
> ### create plot
> llplot(measure="OR", ai=tpos, bi=tneg, ci=cpos, di=cneg, data=dat.bcg)
Error in llplot(measure = "OR", ai = tpos, bi = tneg, ci = cpos, di = cneg,  : 
  Please install the 'BiasedUrn' package to use this function.
Execution halted
```
```
checking tests ... ERROR
Running the tests in ‘tests/test-all.R’ failed.
Last 13 lines of output:
  testthat results ================================================================
  OK: 520 SKIPPED: 0 FAILED: 8
  1. Error: results are correct for Mantel-Haenszel method. 
  2. Error: results are correct for Mantel-Haenszel method. 
  3. Error: results for the conditional logistic model with exact likelihood are correct (measure=='OR') 
  4. Error: the log likelihood plot can be created. 
  5. Error: results of the fixed-effects conditional logistic model are correct. 
  6. Error: results of the random-effects conditional logistic model are correct. 
  7. Error: confint() gives correct results for example 1 in Jackson et al. (2014). 
  8. Error: confint() gives correct results for example 2 in Jackson et al. (2014). 
  
  Error: testthat unit tests failed
  Execution halted
```
```
DONE
Status: 2 ERRORs, 1 NOTE
```

## mets (1.1.0)
Maintainer: Klaus K. Holst <klaus@holst.it>

```
checking package dependencies ... NOTE
Packages suggested but not available for checking: ‘lava.tobit’ ‘prodlim’
```
```
checking whether package ‘mets’ can be installed ... ERROR
Installation failed.
See ‘/private/tmp/RtmpQJiDLv/check_crand2516b207784/mets.Rcheck/00install.out’ for details.
Status: 1 ERROR, 1 NOTE
```

## miniCRAN (0.2.4)
Maintainer: Andrie de
 Vries <andrie@revolutionanalytics.com>  
Bug reports: https://github.com/RevolutionAnalytics/miniCRAN/issues

__OK__

## MInt (1.0.1)
Maintainer: Surojit Biswas <surojitbiswas@g.harvard.edu>

__OK__

## mirt (1.9)
Maintainer: Phil Chalmers <rphilip.chalmers@gmail.com>  
Bug reports: https://github.com/philchalmers/mirt/issues?state=open

```
checking package dependencies ... NOTE
Packages suggested but not available for checking: ‘alabama’ ‘sirt’
```
```
checking whether package ‘mirt’ can be installed ... ERROR
Installation failed.
See ‘/private/tmp/RtmpQJiDLv/check_crand2516b207784/mirt.Rcheck/00install.out’ for details.
Status: 1 ERROR, 1 NOTE
```

## mirtCAT (0.5)
Maintainer: Phil Chalmers <rphilip.chalmers@gmail.com>  
Bug reports: https://github.com/philchalmers/mirtCAT/issues?state=open

```
checking whether package ‘mirtCAT’ can be installed ... ERROR
Installation failed.
See ‘/private/tmp/RtmpQJiDLv/check_crand2516b207784/mirtCAT.Rcheck/00install.out’ for details.
Status: 1 ERROR
```

## mizer (0.2)
Maintainer: Finlay Scott <finlay.scott@jrc.ec.europa.eu>

__OK__

## mkin (0.9-35)
Maintainer: Johannes Ranke <jranke@uni-bremen.de>  
Bug reports: http://github.com/jranke/mkin/issues

__OK__

## mlr (2.3)
Maintainer: Bernd Bischl <bernd_bischl@gmx.net>  
Bug reports: https://github.com/berndbischl/mlr/issues

```
checking package dependencies ... NOTE
Packages suggested but not available for checking:
  ‘adabag’ ‘bartMachine’ ‘brnn’ ‘care’ ‘clusterSim’ ‘clValid’ ‘cmaes’
  ‘CoxBoost’ ‘crs’ ‘Cubist’ ‘DiceOptim’ ‘DiscriMiner’ ‘earth’ ‘elmNN’
  ‘FSelector’ ‘gbm’ ‘GenSA’ ‘irace’ ‘kknn’ ‘kohonen’ ‘laGP’ ‘lqa’
  ‘mRMRe’ ‘nodeHarvest’ ‘penalized’ ‘pls’ ‘randomUniformForest’ ‘rrlda’
  ‘rsm’ ‘RWeka’ ‘sda’ ‘stepPlr’ ‘tgp’ ‘xgboost’
```
```
checking Rd cross-references ... NOTE
Packages unavailable to check Rd xrefs: ‘cmaes’, ‘GenSA’, ‘irace’
```
```
checking examples ... ERROR
Running examples in ‘mlr-Ex.R’ failed
The error most likely occurred in:

> base::assign(".ptime", proc.time(), pos = "CheckExEnv")
> ### Name: plotFilterValues
> ### Title: Plot filter values.
> ### Aliases: plotFilterValues
> 
> ### ** Examples
> 
> fv = getFilterValues(iris.task, method = "chi.squared")
Error in requirePackages(filter$pkg, why = "getFilterValues", default.method = "load") : 
  For getFilterValues please install the following packages: FSelector
Calls: getFilterValues -> requirePackages -> stopf
Execution halted
```
```
checking tests ... ERROR
Running the tests in ‘tests/run-base.R’ failed.
Last 13 lines of output:
  9. Failure (at test_base_checkTaskLearner.R#11): checkTaskLearner 
  1. Error: clustering performance 
  2. Error: clustering resample 
  3. Error: clustering benchmark 
  4. Error: clustering tune 
  5. Error: plotLearnerPrediction 
  6. Error: predict preserves rownames 
  7. Error: predict.threshold 
  8. Error: tune 
  9. ...
  
  Error: testthat unit tests failed
  Execution halted
```
```
DONE
Status: 2 ERRORs, 2 NOTEs
```

## mmand (1.1.0)
Maintainer: Jon Clayden <code@clayden.org>

```
checking whether package ‘mmand’ can be installed ... ERROR
Installation failed.
See ‘/private/tmp/RtmpQJiDLv/check_crand2516b207784/mmand.Rcheck/00install.out’ for details.
Status: 1 ERROR
```

## moonBook (0.1.3)
Maintainer: Keon-Woong Moon <cardiomoon@gmail.com>

__OK__

## morgenstemning (1.0)
Maintainer: James Manton <ajd.manton@googlemail.com>

__OK__

## mosaic (0.9.2-2)
Maintainer: Randall Pruim <rpruim@calvin.edu>

```
checking package dependencies ... NOTE
Package suggested but not available for checking: ‘NHANES’

Package which this enhances but not available for checking: ‘manipulate’
```
```
checking installed package size ... NOTE
  installed size is  9.4Mb
  sub-directories of 1Mb or more:
    R     1.8Mb
    doc   7.0Mb
```
```
checking examples ... ERROR
Running examples in ‘mosaic-Ex.R’ failed
The error most likely occurred in:

> base::assign(".ptime", proc.time(), pos = "CheckExEnv")
> ### Name: CIAdata
> ### Title: Return a dataset based on the CIA World Factbook
> ### Aliases: CIAdata
> 
> ### ** Examples
> 
> head(CIAdata())
            Category                  Field   Name Code                 Unit
1          Geography                   Area   area 2147                sq km
2 People and Society             Population    pop 2119               people
3 People and Society Population growth rate growth 2002                    %
4 People and Society             Birth rate  birth 2054   births/1000 people
5 People and Society             Death rate  death 2066   deaths/1000 people
6 People and Society     Net migration rate   migr 2112 migrants/1000 people
> gdpData <- CIAdata("pop")
Loading required namespace: RCurl
Error in names(table) <- c("country", name) : 
  'names' attribute [2] must be the same length as the vector [0]
Calls: CIAdata
Execution halted
```
```
checking re-building of vignette outputs ... NOTE
Error in re-building vignettes:
  ...
geom_smooth: method="auto" and size of largest group is <1000, so using loess. Use 'method = x' to change the smoothing method.
geom_smooth: method="auto" and size of largest group is <1000, so using loess. Use 'method = x' to change the smoothing method.
geom_smooth: method="auto" and size of largest group is <1000, so using loess. Use 'method = x' to change the smoothing method.
geom_smooth: method="auto" and size of largest group is <1000, so using loess. Use 'method = x' to change the smoothing method.
Quitting from lines 121-126 (GraphicsWithMosaic.Rmd) 
Error: processing vignette 'GraphicsWithMosaic.Rmd' failed with diagnostics:
object 'NHANES' not found
Execution halted

```
```
DONE
Status: 1 ERROR, 3 NOTEs
```

## move (1.4.496)
Maintainer: Bart Kranstauber <bart.kranstauber@uni-konstanz.de>

```
checking package dependencies ... NOTE
Packages suggested but not available for checking:
  ‘adehabitatHR’ ‘adehabitatLT’ ‘circular’
```
```
checking whether package ‘move’ can be installed ... ERROR
Installation failed.
See ‘/private/tmp/RtmpQJiDLv/check_crand2516b207784/move.Rcheck/00install.out’ for details.
Status: 1 ERROR, 1 NOTE
```

## MplusAutomation (0.6-3)
Maintainer: Michael Hallquist <michael.hallquist@gmail.com>

```
checking package dependencies ... NOTE
Packages suggested but not available for checking: ‘rhdf5’ ‘relimp’
```
```
checking dependencies in R code ... NOTE
'library' or 'require' calls in package code:
  ‘relimp’ ‘rhdf5’ ‘tcltk’
  Please use :: or requireNamespace() instead.
  See section 'Suggested packages' in the 'Writing R Extensions' manual.
```
```
checking R code for possible problems ... NOTE
readModels: no visible global function definition for ‘h5dump’
showSummaryTable: no visible global function definition for ‘showData’
```
```
DONE
Status: 3 NOTEs
```

## mpoly (0.1.0)
Maintainer: David Kahle <david.kahle@gmail.com>  
Bug reports: https://github.com/dkahle/mpoly/issues

__OK__

## mrds (2.1.12)
Maintainer: David Miller <dave@ninepointeightone.net>

__OK__

## MRMR (0.1.3)
Maintainer: Brian A. Fannin <BFannin@RedwoodsGroup.com>

```
checking DESCRIPTION meta-information ... NOTE
Malformed Description field: should contain one or more complete sentences.
```
```
checking R code for possible problems ... NOTE
PlotResiduals: no visible global function definition for ‘.’
```
```
DONE
Status: 2 NOTEs
```

## msm (1.5)
Maintainer: Christopher Jackson <chris.jackson@mrc-bsu.cam.ac.uk>

```
checking package dependencies ... NOTE
Package suggested but not available for checking: ‘mstate’
```
```
checking whether package ‘msm’ can be installed ... ERROR
Installation failed.
See ‘/private/tmp/RtmpQJiDLv/check_crand2516b207784/msm.Rcheck/00install.out’ for details.
Status: 1 ERROR, 1 NOTE
```

## multilevelPSA (1.2.2)
Maintainer: Jason Bryer <jason@bryer.org>  
Bug reports: https://github.com/jbryer/multilevelPSA/issues

```
checking dependencies in R code ... NOTE
'library' or 'require' call to ‘MASS’ in package code.
  Please use :: or requireNamespace() instead.
  See section 'Suggested packages' in the 'Writing R Extensions' manual.
```
```
DONE
Status: 1 NOTE
```

## multitable (1.6)
Maintainer: Steve C Walker <steve.walker@utoronto.ca>

```
checking package dependencies ... NOTE
Package suggested but not available for checking: ‘rbenchmark’
```
```
checking running R code from vignettes ... WARNING
Errors in running code in vignettes:
when running code in ‘multitable.Rnw’
  ...

> without_molding <- function() {
+     for (i in 1:100) as.data.frame(fake.community)
+ }

> library("rbenchmark")

  When sourcing ‘multitable.R’:
Error: there is no package called ‘rbenchmark’
Execution halted

```
```
checking re-building of vignette outputs ... NOTE
Error in re-building vignettes:
  ...
Loading required package: Rcpp

arm (Version 1.8-5, built: 2015-05-13)

Working directory is /private/tmp/RtmpQJiDLv/check_crand2516b207784/multitable.Rcheck/vign_test/multitable/vignettes

Loading required package: vegan
Loading required package: permute
Loading required package: lattice
This is vegan 2.2-1
Loading required package: scales

Attaching package: ‘scales’

The following object is masked from ‘package:arm’:

    rescale

dimids automatically generated
dimids automatically generated

Error: processing vignette 'multitable.Rnw' failed with diagnostics:
 chunk 42 (label = benchmarking molding) 
Error in library("rbenchmark") : there is no package called ‘rbenchmark’
Execution halted

```
```
DONE
Status: 1 WARNING, 2 NOTEs
```

## mvnfast (0.1.3)
Maintainer: Matteo Fasiolo <matteo.fasiolo@gmail.com>

```
checking package dependencies ... NOTE
Package suggested but not available for checking: ‘microbenchmark’
```
```
checking whether package ‘mvnfast’ can be installed ... ERROR
Installation failed.
See ‘/private/tmp/RtmpQJiDLv/check_crand2516b207784/mvnfast.Rcheck/00install.out’ for details.
Status: 1 ERROR, 1 NOTE
```

## mwaved (1.1.1)
Maintainer: Justin Rory Wishart <j.wishart@unsw.edu.au>  
Bug reports: https://github.com/jrwishart/mwaved/issues

```
checking whether package ‘mwaved’ can be installed ... ERROR
Installation failed.
See ‘/private/tmp/RtmpQJiDLv/check_crand2516b207784/mwaved.Rcheck/00install.out’ for details.
Status: 1 ERROR
```

## mycor (0.1)
Maintainer: Keon-Woong Moon <cardiomoon@gmail.com>

```
checking S3 generic/method consistency ... NOTE
Found the following apparent S3 methods exported but not registered:
  mycor.default mycor.formula plot.mycor print.mycor summary.mycor
See section ‘Registering S3 methods’ in the ‘Writing R Extensions’
manual.
```
```
DONE
Status: 1 NOTE
```

## nabor (0.4.4)
Maintainer: Gregory Jefferis <jefferis@gmail.com>  
Bug reports: https://github.com/jefferis/nabor/issues

__OK__

## nat.nblast (1.5)
Maintainer: James Manton <ajd.manton@googlemail.com>

__OK__

## nat (1.6.4)
Maintainer: Greg Jefferis <jefferis@gmail.com>  
Bug reports: https://github.com/jefferis/nat/issues

```
checking package dependencies ... NOTE
Package suggested but not available for checking: ‘Rvcg’
```
```
DONE
Status: 1 NOTE
```

## nat.templatebrains (0.4.1)
Maintainer: James Manton <ajd.manton@googlemail.com>

__OK__

## nat.utils (0.4.2)
Maintainer: Gregory Jefferis <jefferis@gmail.com>

__OK__

## naturalsort (0.1.2)
Maintainer: Kosei Abe <mail@recyclebin.jp>  
Bug reports: https://github.com/kos59125/naturalsort/issues

__OK__

## nbpMatching (1.4.5)
Maintainer: Cole Beck <cole.beck@vanderbilt.edu>

```
checking whether package ‘nbpMatching’ can be installed ... ERROR
Installation failed.
See ‘/private/tmp/RtmpQJiDLv/check_crand2516b207784/nbpMatching.Rcheck/00install.out’ for details.
Status: 1 ERROR
```

## ncappc (0.1)
Maintainer: Chayan Acharya <chayan.acharya@farmbio.uu.se>

__OK__

## ndtv (0.6.1)
Maintainer: Skye Bender-deMoll <skyebend@uw.edu>

```
checking R code for possible problems ... NOTE
Found an obsolete/platform-specific call in the following function:
  ‘render.animation’
Found the platform-specific devices:
  ‘quartz’ ‘windows’ ‘x11’
dev.new() is the preferred way to open a new device, in the unlikely
event one is needed.
```
```
DONE
Status: 1 NOTE
```

## needy (0.2)
Maintainer: Ryan Grannell <r.grannell2@gmail.com>  
Bug reports: <r.grannell2@gmail.com>

__OK__

## neotoma (1.2-0)
Maintainer: Simon J. Goring <goring@wisc.edu>  
Bug reports: https://github.com/ropensci/neotoma/issues

__OK__

## nestedRanksTest (0.1)
Maintainer: Douglas G. Scofield <douglasgscofield@gmail.com>

__OK__

## netgen (1.1)
Maintainer: Jakob Bossek <j.bossek@gmail.com>  
Bug reports: https://github.com/jakobbossek/netgen/issues

__OK__

## networkDynamic (0.7.1)
Maintainer: Skye Bender-deMoll <skyebend@uw.edu>

```
checking S3 generic/method consistency ... NOTE
Found the following apparent S3 methods exported but not registered:
  add.edge.networkDynamic add.edges.active add.edges.networkDynamic
  add.vertices.active add.vertices.networkDynamic
  as.data.frame.networkDynamic as.network.networkDynamic
  as.networkDynamic.network as.networkDynamic.networkDynamic
  print.networkDynamic
See section ‘Registering S3 methods’ in the ‘Writing R Extensions’
manual.
```
```
DONE
Status: 1 NOTE
```

## ngramrr (0.1.1)
Maintainer: Chung-hong Chan <chainsawtiney@gmail.com>

__OK__

## nlmeU (0.70-3)
Maintainer: Andrzej Galecki <agalecki@umich.edu>

```
checking package dependencies ... NOTE
Package suggested but not available for checking: ‘WWGbook’
```
```
checking DESCRIPTION meta-information ... NOTE
Malformed Title field: should not end in a period.
```
```
DONE
Status: 2 NOTEs
```

## nloptr (1.0.4)
Maintainer: Jelmer Ypma <uctpjyy@ucl.ac.uk>

__OK__

## NlsyLinks (1.302)
Maintainer: Will Beasley <wibeasley@hotmail.com>

```
checking DESCRIPTION meta-information ... NOTE
Malformed Title field: should not end in a period.
Malformed Description field: should contain one or more complete sentences.
```
```
checking dependencies in R code ... NOTE
Namespace in Imports field not imported from: ‘methods’
  All declared Imports should be used.
```
```
checking R code for possible problems ... NOTE
ReadCsvNlsy79Gen1: no visible binding for global variable
  ‘SubjectDetails79’
ReadCsvNlsy79Gen2: no visible binding for global variable
  ‘SubjectDetails79’
```
```
DONE
Status: 3 NOTEs
```

## nodiv (1.0.3)
Maintainer: Michael Krabbe Borregaard <mkborregaard@snm.ku.dk>

__OK__

## nscancor (0.6)
Maintainer: Christian Sigg <christian@sigg-iten.ch>

```
checking package dependencies ... NOTE
Packages suggested but not available for checking: ‘CCA’ ‘PMA’
```
```
checking examples ... ERROR
Running examples in ‘nscancor-Ex.R’ failed
The error most likely occurred in:

> base::assign(".ptime", proc.time(), pos = "CheckExEnv")
> ### Name: mcancor
> ### Title: Non-Negative and Sparse Multi-Domain CCA
> ### Aliases: mcancor
> 
> ### ** Examples
> 
> library(glmnet)
Loading required package: Matrix
Loading required package: foreach
Loaded glmnet 2.0-2

> data(breastdata, package="PMA")
Error in find.package(package, lib.loc, verbose = verbose) : 
  there is no package called ‘PMA’
Calls: data -> find.package
Execution halted
```
```
DONE
Status: 1 ERROR, 1 NOTE
```

## nsprcomp (0.5)
Maintainer: Christian Sigg <christian@sigg-iten.ch>

__OK__

## OLScurve (0.2.0)
Maintainer: Phil Chalmers <rphilip.chalmers@gmail.com>

__OK__

## openssl (0.4)
Maintainer: Jeroen Ooms <jeroen.ooms@stat.ucla.edu>  
Bug reports: https://github.com/jeroenooms/openssl/issues

__OK__

## openxlsx (2.4.0)
Maintainer: Alexander Walker <Alexander.Walker1989@gmail.com>  
Bug reports: https://github.com/awalker89/openxlsx/issues

__OK__

## operator.tools (1.3.0)
Maintainer: Christopher Brown <chris.brown@decisionpatterns.com>

```
checking DESCRIPTION meta-information ... NOTE
Malformed Description field: should contain one or more complete sentences.
```
```
checking top-level files ... NOTE
File
  LICENSE
is not mentioned in the DESCRIPTION file.
Non-standard file/directory found at top level:
  ‘operator.Rproj’
```
```
checking S3 generic/method consistency ... NOTE
Found the following apparent S3 methods exported but not registered:
  as.operator.character as.operator.function as.operator.name
  can.operator.character can.operator.default can.operator.function
  can.operator.name inverse.function inverse.name is.operator.default
  is.operator.function is.operator.name operator.type.function
  operator.type.name rel.type.call rel.type.expression
  rel.type.function rel.type.name
See section ‘Registering S3 methods’ in the ‘Writing R Extensions’
manual.
```
```
DONE
Status: 3 NOTEs
```

## operators (0.1-7)
Maintainer: Romain Francois <romain@r-enthusiasts.com>

```
checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  
  1. Failure (at test-but.R#24): but operators work ------------------------------
  class(test) not equal to "try-error"
  1 string mismatches:
  x[1]: "try-error"
  y[1]: "function"
  
  testthat results ================================================================
  OK: 51 SKIPPED: 0 FAILED: 1
  1. Failure (at test-but.R#24): but operators work 
  
  Error: testthat unit tests failed
  Execution halted
```
```
DONE
Status: 1 ERROR
```

## optiRum (0.35)
Maintainer: Stephanie Locke <stephanie.locke@optimumcredit.co.uk>  
Bug reports: https://github.com/stephlocke/optiRum/issues

__OK__

## optmatch (0.9-3)
Maintainer: Mark M. Fredrickson <mark.m.fredrickson@gmail.com>

```
checking whether package ‘optmatch’ can be installed ... ERROR
Installation failed.
See ‘/private/tmp/RtmpQJiDLv/check_crand2516b207784/optmatch.Rcheck/00install.out’ for details.
Status: 1 ERROR
```

## optparse (1.3.0)
Maintainer: Trevor L Davis <trevor.l.davis@stanford.edu>  
Bug reports: https://github.com/trevorld/optparse/issues

```
checking DESCRIPTION meta-information ... NOTE
Malformed Title field: should not end in a period.
```
```
checking re-building of vignette outputs ... NOTE
Error in re-building vignettes:
  ...
sh: rst2pdf: command not found
Error: processing vignette 'optparse.Rrst' failed with diagnostics:
conversion by rst2pdf failed!
Execution halted

```
```
DONE
Status: 2 NOTEs
```

## ordinal (2015.1-21)
Maintainer: Rune Haubo Bojesen Christensen <rhbc@dtu.dk>

__OK__

## ore (1.1.0)
Maintainer: Jon Clayden <code@clayden.org>  
Bug reports: https://github.com/jonclayden/ore/issues

__OK__

## oro.dicom (0.5.0)
Maintainer: Brandon Whitcher <bwhitcher@gmail.com>

```
checking re-building of vignette outputs ... NOTE
Error in re-building vignettes:
  ...
  Oblique acquisition in ImageOrientationPatient.
Warning in is.coronal(imageOrientationPatient) :
  Oblique acquisition in ImageOrientationPatient.
Warning in is.sagittal(imageOrientationPatient) :
  Oblique acquisition in ImageOrientationPatient.
Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
  Running 'texi2dvi' on 'dicom.tex' failed.
LaTeX errors:
! Undefined control sequence.
l.15 x<9c><ed>\Al
           ^^SG^^W~<b1><89><cc>V<c2><de>^^Q^^T<b6><a1>&<d6>J^^P<a4>D!<c2>B*H<91>s<f0>9<b7><dc>z<e6>^^D<87><f6>^^BG<ae>\9r<ab>P%<84>^^O<95>"...
The control sequence at the end of the top line
of your error message was never \def'ed. If you have
! Undefined control sequence.
l.15 ...<de>^^Q^^T<b6><a1>&<d6>J^^P<a4>D!<c2>B*H<91>s<f0>9<b7><dc>z<e6>^^D<87><f6>^^BG<ae>\9
                                                  r<ab>P%<84>^^O<95>".(>`YTj<a4>^^U<b6><eb>?-<b4>...
The control sequence at the end of the top line
of your error message was never \def'ed. If you have
! Undefined control sequence.
l.16 ...<83>/<be><f8>b^^O<8b>^^\<f0><d8><eb>61l^^W@y.<97>K<a5>R<d9>l<f6>ȑ#sss<b9>\nzz
                                                  :^^H<d9>B<88>d2^^Y<bc>Q<e5>+<df><f7><a3>Ѩi<9a>B^^...
The control sequence at the end of the top line
of your error message was never \def'ed. If you 
Calls: buildVignettes -> texi2pdf -> texi2dvi
Execution halted

```
```
DONE
Status: 1 NOTE
```

## oro.nifti (0.5.2)
Maintainer: Brandon Whitcher <bwhitcher@gmail.com>

```
checking package dependencies ... NOTE
Package which this enhances but not available for checking: ‘fmri’
```
```
checking installed package size ... NOTE
  installed size is  6.5Mb
  sub-directories of 1Mb or more:
    nifti   3.8Mb
```
```
checking re-building of vignette outputs ... NOTE
Error in re-building vignettes:
  ...

oro.nifti 0.5.2
Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
  Running 'texi2dvi' on 'nifti.tex' failed.
LaTeX errors:
! Undefined control sequence.
l.15 x<9c><ed>\<cd>
          k^^S[^^[^^?L<95>:P'9Ko1M^^X<90><ca>U<92>\^^FD^^DI^^W<85><ba>r#<fe>]<b9>r<a3>K<b7>ݸ^^U<bb>^^UA^^L...
The control sequence at the end of the top line
of your error message was never \def'ed. If you have
! Undefined control sequence.
l.15 x<9c><ed>\<cd>k^^S[^^[^^?L<95>:P'9Ko1M^^X<90><ca>U<92>\^^F
                                           D^^DI^^W<85><ba>r#<fe>]<b9>r<a3>K<b7>ݸ^^U<bb>^^UA^^L...
The control sequence at the end of the top line
of your error message was never \def'ed. If you have
! Undefined control sequence.
l.15 ...!^^Dc^^L<f7>s<b9><dc><ce><ce>N<a5>Ry<fb><f6>-c^^L<8f>8<e7><9c><f3><e1><e1>aιl"[	!\<d7>
                                                  
The control sequence at the end of the top line
of your error message was never \def'ed. If you have
! Undefined control sequence.
l.19 !<96><96><96><aa><d5><ea><eb>ׯ?|<f8>^^@<af>ptW<b9>\<ae>
   
Calls: buildVignettes -> texi2pdf -> texi2dvi
Execution halted

```
```
DONE
Status: 3 NOTEs
```

## packrat (0.4.3)
Maintainer: Kevin Ushey <kevin@rstudio.com>  
Bug reports: https://github.com/rstudio/packrat/issues

```
checking package dependencies ... NOTE
Package which this enhances but not available for checking: ‘BiocInstaller’
```
```
DONE
Status: 1 NOTE
```

## pacman (0.3.0)
Maintainer: Tyler Rinker <tyler.rinker@gmail.com>  
Bug reports: https://github.com/trinker/pacman/issues?state=open

__OK__

## paleobioDB (0.3)
Maintainer: Sara Varela <svarela@paleobiogeography.org>  
Bug reports: https://github.com/ropensci/paleobioDB/issues

```
checking DESCRIPTION meta-information ... NOTE
Malformed Description field: should contain one or more complete sentences.
```
```
DONE
Status: 1 NOTE
```

## parallelMap (1.2)
Maintainer: Bernd Bischl <bernd_bischl@gmx.net>  
Bug reports: https://github.com/berndbischl/parallelMap/issues

```
checking package dependencies ... NOTE
Package suggested but not available for checking: ‘Rmpi’
```
```
checking Rd cross-references ... NOTE
Package unavailable to check Rd xrefs: ‘Rmpi’
```
```
DONE
Status: 2 NOTEs
```

## ParamHelpers (1.5)
Maintainer: Bernd Bischl <bernd_bischl@gmx.net>  
Bug reports: https://github.com/berndbischl/ParamHelpers/issues

```
checking package dependencies ... NOTE
Packages suggested but not available for checking: ‘irace’ ‘soobench’
```
```
checking DESCRIPTION meta-information ... NOTE
Malformed Title field: should not end in a period.
```
```
checking Rd cross-references ... NOTE
Packages unavailable to check Rd xrefs: ‘irace’, ‘soobench’
```
```
checking tests ... ERROR
Running the tests in ‘tests/run-all.R’ failed.
Last 13 lines of output:
  1: withCallingHandlers(eval(code, new_test_environment), error = capture_calls, message = function(c) invokeRestart("muffleMessage"), 
         warning = function(c) invokeRestart("muffleWarning"))
  2: eval(code, new_test_environment)
  3: eval(expr, envir, enclos)
  4: requirePackages("_irace") at test_convertParamSetToIrace.R:4
  5: stopf("Please install the following packages: %s", ps)
  
  testthat results ================================================================
  OK: 765 SKIPPED: 0 FAILED: 1
  1. Error: convertParamSetToIrace 
  
  Error: testthat unit tests failed
  Execution halted
```
```
DONE
Status: 1 ERROR, 3 NOTEs
```

## parsedate (1.1.1)
Maintainer: Gabor Csardi <csardi.gabor@gmail.com>  
Bug reports: https://github.com/gaborcsardi/parsedate/issues

```
checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  6: asNamespace(ns)
  7: getNamespace(ns)
  8: tryCatch(loadNamespace(name), error = function(e) stop(e))
  9: tryCatchList(expr, classes, parentenv, handlers)
  10: tryCatchOne(expr, names, parentenv, handlers[[1L]])
  11: value[[3L]](cond)
  
  testthat results ================================================================
  OK: 106 SKIPPED: 0 FAILED: 1
  1. Error: Filling in is correct 
  
  Error: testthat unit tests failed
  Execution halted
```
```
DONE
Status: 1 ERROR
```

## pathological (0.0-6)
Maintainer: Richard Cotton <richierocks@gmail.com>  
Bug reports: https://github.com/richierocks/pathological/issues

__OK__

## pbo (1.3.4)
Maintainer: Matt Barry <mrb@softisms.com>  
Bug reports: https://github.com/mrbcuda/pbo/issues

```
checking dependencies in R code ... NOTE
'library' or 'require' call to ‘foreach’ in package code.
  Please use :: or requireNamespace() instead.
  See section 'Suggested packages' in the 'Writing R Extensions' manual.
```
```
checking R code for possible problems ... NOTE
pbo: no visible global function definition for ‘%dopar%’
pbo: no visible global function definition for ‘foreach’
xyplot.pbo: no visible global function definition for ‘doubleYScale’
```
```
DONE
Status: 2 NOTEs
```

## PDQutils (0.1.1)
Maintainer: Steven E. Pav <shabbychef@gmail.com>  
Bug reports: https://github.com/shabbychef/PDQutils/issues

__OK__

## permute (0.8-4)
Maintainer: Gavin L. Simpson <ucfagls@gmail.com>  
Bug reports: https://github.com/gavinsimpson/permute/issues

__OK__

## phylobase (0.6.8)
Maintainer: Francois Michonneau <francois.michonneau@gmail.com>

```
checking DESCRIPTION meta-information ... NOTE
Malformed Description field: should contain one or more complete sentences.
```
```
checking dependencies in R code ... NOTE
Package in Depends field not imported from: ‘grid’
  These packages need to be imported from (in the NAMESPACE file)
  for when this namespace is loaded but not attached.
```
```
checking R code for possible problems ... NOTE
.bubLegendGrob: no visible global function definition for ‘grob’
drawDetails.bubLegend: no visible global function definition for
  ‘seekViewport’
drawDetails.bubLegend: no visible global function definition for
  ‘convertUnit’
drawDetails.bubLegend: no visible global function definition for ‘unit’
drawDetails.bubLegend: no visible global function definition for
  ‘grid.circle’
drawDetails.bubLegend: no visible global function definition for ‘gpar’
drawDetails.bubLegend: no visible global function definition for
  ‘grid.text’
phylobubbles: no visible global function definition for ‘stringWidth’
phylobubbles: no visible global function definition for ‘convertWidth’
phylobubbles: no visible global function definition for ‘unit’
phylobubbles: no visible global function definition for ‘grid.layout’
phylobubbles: no visible global function definition for ‘unit.c’
phylobubbles: no visible global function definition for ‘pushViewport’
phylobubbles: no visible global function definition for ‘viewport’
phylobubbles: no visible global function definition for ‘convertUnit’
phylobubbles: no visible global function definition for ‘grid.segments’
phylobubbles: no visible global function definition for ‘gpar’
phylobubbles: no visible global function definition for ‘grid.points’
phylobubbles: no visible global function definition for ‘grid.rect’
phylobubbles: no visible global function definition for ‘grid.circle’
phylobubbles: no visible global function definition for ‘upViewport’
phylobubbles: no visible global function definition for ‘grid.text’
phylobubbles: no visible global function definition for ‘grid.draw’
plotOneTree: no visible global function definition for ‘stringWidth’
plotOneTree: no visible global function definition for ‘unit’
plotOneTree: no visible global function definition for ‘grid.layout’
plotOneTree: no visible global function definition for ‘unit.c’
plotOneTree: no visible global function definition for ‘convertUnit’
plotOneTree: no visible global function definition for ‘pushViewport’
plotOneTree: no visible global function definition for ‘viewport’
plotOneTree: no visible global function definition for ‘grid.segments’
plotOneTree: no visible global function definition for ‘gpar’
plotOneTree: no visible global function definition for ‘upViewport’
plotOneTree: no visible global function definition for ‘grid.text’
tip.data.plot: no visible binding for global variable ‘grid.points’
tip.data.plot: no visible global function definition for ‘grid.layout’
tip.data.plot: no visible global function definition for ‘unit’
tip.data.plot: no visible global function definition for ‘pushViewport’
tip.data.plot: no visible global function definition for ‘viewport’
tip.data.plot: no visible global function definition for ‘convertY’
tip.data.plot: no visible global function definition for ‘upViewport’
treePlot: no visible global function definition for ‘grid.newpage’
treePlot: no visible global function definition for ‘pushViewport’
treePlot: no visible global function definition for ‘plotViewport’
treePlot: no visible global function definition for ‘upViewport’
```
```
DONE
Status: 3 NOTEs
```

## physiology (0.2.2)
Maintainer: Jack O. Wasey <jack@jackwasey.com>  
Bug reports: https://github.com/jackwasey/physiology/issues

__OK__

## pingr (1.1.0)
Maintainer: "Gabor Csardi" <csardi.gabor@gmail.com>  
Bug reports: https://github.com/gaborcsardi/pingr/issues

```
checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  LENGTH or similar applied to closure object
  1: withCallingHandlers(eval(code, new_test_environment), error = capture_calls, message = function(c) invokeRestart("muffleMessage"), 
         warning = function(c) invokeRestart("muffleWarning"))
  2: eval(code, new_test_environment)
  3: eval(expr, envir, enclos)
  4: ping_port("127.0.0.1", port = tools:::httpdPort, count = 1) at test-tcp.r:13
  
  testthat results ================================================================
  OK: 15 SKIPPED: 0 FAILED: 1
  1. Error: We can ping localhost 
  
  Error: testthat unit tests failed
  Execution halted
```
```
DONE
Status: 1 ERROR
```

## pipeR (0.6)
Maintainer: Kun Ren <ken@renkun.me>  
Bug reports: https://github.com/renkun-ken/pipeR/issues

__OK__

## pitchRx (1.7)
Maintainer: Carson Sievert <sievert@iastate.edu>  
Bug reports: http://github.com/cpsievert/pitchRx/issues

```
checking package dependencies ... NOTE
Package suggested but not available for checking: ‘ggsubplot’
```
```
DONE
Status: 1 NOTE
```

## pkgmaker (0.22)
Maintainer: Renaud Gaujoux <renaud@tx.technion.ac.il>  
Bug reports: http://github.com/renozao/pkgmaker/issues

```
checking package dependencies ... NOTE
Package suggested but not available for checking: ‘ReportingTools’
```
```
checking dependencies in R code ... NOTE
'library' or 'require' calls in package code:
  ‘argparse’ ‘devtools’ ‘knitr’
  Please use :: or requireNamespace() instead.
  See section 'Suggested packages' in the 'Writing R Extensions' manual.
```
```
checking R code for possible problems ... NOTE
.existsTestLogger: no visible binding for global variable ‘.testLogger’
CLIArgumentParser: no visible global function definition for
  ‘ArgumentParser’
CLIArgumentParser: no visible global function definition for ‘proto’
chunkOutputHook : <anonymous> : <anonymous>: no visible binding for
  global variable ‘knit_hooks’
cite_pkg: no visible global function definition for ‘read.bib’
hook_backspace : <anonymous>: no visible binding for global variable
  ‘knit_hooks’
knit_ex: no visible global function definition for ‘knit2html’
knit_ex: no visible global function definition for ‘knit’
latex_bibliography: no visible binding for global variable ‘knit_hooks’
makeUnitVignette: no visible global function definition for ‘getErrors’
runVignette.rnw_knitr: no visible binding for global variable
  ‘opts_chunk’
runVignette.rnw_knitr: no visible global function definition for
  ‘knit2pdf’
runVignette.rnw_knitr: no visible global function definition for ‘knit’
write_PACKAGES_index: no visible global function definition for
  ‘HTMLReport’
write_PACKAGES_index : linkPackage: no visible global function
  definition for ‘hwrite’
write_PACKAGES_index: no visible global function definition for
  ‘publish’
write_PACKAGES_index: no visible global function definition for
  ‘knit2html’
write_PACKAGES_index: no visible global function definition for
  ‘finish’
```
```
DONE
Status: 3 NOTEs
```

## planar (1.5.2)
Maintainer: Baptiste Auguie <baptiste.auguie@gmail.com>

```
checking whether package ‘planar’ can be installed ... ERROR
Installation failed.
See ‘/private/tmp/RtmpQJiDLv/check_crand2516b207784/planar.Rcheck/00install.out’ for details.
Status: 1 ERROR
```

## plotROC (1.3.3)
Maintainer: Michael C Sachs <sachsmc@gmail.com>  
Bug reports: http://github.com/sachsmc/plotROC/issues

__OK__

## plspm (0.4.2)
Maintainer: ORPHANED

```
checking package dependencies ... NOTE
Package suggested but not available for checking: ‘plsdepot’
```
```
DONE
Status: 1 NOTE
```

## plumbr (0.6.9)
Maintainer: Michael Lawrence <michafla@gene.com>

__OK__

## plyr (1.8.2)
Maintainer: Hadley Wickham <hadley@rstudio.com>  
Bug reports: https://github.com/hadley/plyr/issues

```
checking package dependencies ... NOTE
Package suggested but not available for checking: ‘itertools’
```
```
DONE
Status: 1 NOTE
```

## pnn (1.0.1)
Maintainer: Pierre-Olivier Chasset <pierre-olivier@chasset.net>

```
checking package dependencies ... NOTE
Package suggested but not available for checking: ‘rgenoud’
```
```
checking top-level files ... NOTE
Non-standard file/directory found at top level:
  ‘TODO.md’
```
```
checking dependencies in R code ... NOTE
'library' or 'require' call to ‘rgenoud’ in package code.
  Please use :: or requireNamespace() instead.
  See section 'Suggested packages' in the 'Writing R Extensions' manual.
```
```
checking R code for possible problems ... NOTE
smooth: no visible global function definition for ‘genoud’
```
```
DONE
Status: 4 NOTEs
```

## pollstR (1.2.0)
Maintainer: Jeffrey B. Arnold <jeffrey.arnold@gmail.com>  
Bug reports: https://github.com/rOpenGov/pollstR/issues

__OK__

## polyCub (0.5-2)
Maintainer: Sebastian Meyer <Sebastian.Meyer@ifspm.uzh.ch>  
Bug reports: https://github.com/WastlM/polyCub/issues

__OK__

## PopED (0.2.0)
Maintainer: Andrew C. Hooker <andrew.hooker@farmbio.uu.se>  
Bug reports: https://github.com/andrewhooker/PopED/issues

__OK__

## popgraph (1.4)
Maintainer: Rodney J. Dyer <rjdyer@vcu.edu>

```
checking DESCRIPTION meta-information ... NOTE
Malformed Title field: should not end in a period.
```
```
DONE
Status: 1 NOTE
```

## poplite (0.99.16)
Maintainer: Daniel Bottomly <bottomly@ohsu.edu>

```
checking package dependencies ... NOTE
Package suggested but not available for checking: ‘VariantAnnotation’
```
```
checking running R code from vignettes ... WARNING
Errors in running code in vignettes:
when running code in ‘poplite.Rnw’
  ...
8             8         8  18      0  1.6844357  0.53539884          2   F
9             9         9  20      1  0.9113913 -0.55527835          2   F
10           10        10  12      1  0.2374303  1.77950291          1   M
..          ...       ... ...    ...        ...         ...        ... ...

> library(VariantAnnotation)

  When sourcing ‘poplite.R’:
Error: there is no package called ‘VariantAnnotation’
Execution halted

```
```
checking re-building of vignette outputs ... NOTE
Error in re-building vignettes:
  ...

    select

The following object is masked from ‘package:stats’:

    filter

Error in makeSchemaFromData(dna, "dna") : 
  ERROR: The names of the supplied data.frame need to be modified for the database see correct.df.names
Starting clinical
Starting samples
Starting dna
Error in filter_.Database(.data, .dots = lazyeval::lazy_dots(...)) : 
  ERROR: Cannot uniquely map columns to table, try using: tableX.columnY
Loading required package: DBI
Starting gender
Starting clinical
Starting samples
Starting dna

Error: processing vignette 'poplite.Rnw' failed with diagnostics:
 chunk 15 
Error in library(VariantAnnotation) : 
  there is no package called ‘VariantAnnotation’
Execution halted

```
```
DONE
Status: 1 WARNING, 2 NOTEs
```

## poppr (1.1.5)
Maintainer: Zhian N. Kamvar <kamvarz@science.oregonstate.edu>  
Bug reports: https://github.com/grunwaldlab/poppr/issues

```
checking package dependencies ... NOTE
Package suggested but not available for checking: ‘polysat’
```
```
DONE
Status: 1 NOTE
```

## PortfolioAnalytics (1.0.3636)
Maintainer: Brian G. Peterson <brian@braverock.com>

```
checking package dependencies ... NOTE
Packages suggested but not available for checking:
  ‘DEoptim’ ‘fGarch’ ‘ROI’ ‘ROI.plugin.glpk’ ‘ROI.plugin.quadprog’
  ‘ROI.plugin.symphony’ ‘pso’ ‘GenSA’
```
```
checking Rd cross-references ... NOTE
Package unavailable to check Rd xrefs: ‘DEoptim’
```
```
checking running R code from vignettes ... [31s/31s] WARNING
Errors in running code in vignettes:
when running code in ‘ROI_vignette.Rnw’
  ...

> suppressMessages(library(foreach))

> suppressMessages(library(iterators))

> suppressMessages(library(ROI))

  When sourcing ‘ROI_vignette.R’:
Error: there is no package called ‘ROI’
Execution halted
when running code in ‘custom_moments_objectives.Rnw’
  ...
The following object is masked from ‘package:graphics’:

    legend


> library(DEoptim)

  When sourcing ‘custom_moments_objectives.R’:
Error: there is no package called ‘DEoptim’
Execution halted
when running code in ‘portfolio_vignette.Rnw’
  ...
+     ylab = "mean", xlab = "StdDev", col = rgb(0, 0, 100, 50, 
+         maxColorVal .... [TRUNCATED] 

> par(mfrow = c(1, 1))

> library(DEoptim)

  When sourcing ‘portfolio_vignette.R’:
Error: there is no package called ‘DEoptim’
Execution halted
when running code in ‘risk_budget_optimization.Rnw’
  ...
The following object is masked from ‘package:graphics’:

    legend


> library(DEoptim)

  When sourcing ‘risk_budget_optimization.R’:
Error: there is no package called ‘DEoptim’
Execution halted

```
```
checking re-building of vignette outputs ... NOTE
Error in re-building vignettes:
  ...

Error: processing vignette 'ROI_vignette.Rnw' failed with diagnostics:
 chunk 1 
Error in library(ROI) : there is no package called ‘ROI’
Execution halted

```
```
DONE
Status: 1 WARNING, 3 NOTEs
```

## PP (0.5.3)
Maintainer: Manuel Reif <manuel.reif@gmail.com>

__OK__

## prettyunits (1.0.0)
Maintainer: "Gabor Csardi" <csardi.gabor@gmail.com>  
Bug reports: https://github.com/gaborcsardi/prettyunits/issues

__OK__

## ProjectTemplate (0.6)
Maintainer: Kirill Mueller <krlmlr+r@mailbox.org>  
Bug reports: https://github.com/johnmyleswhite/ProjectTemplate/issues

```
checking package dependencies ... NOTE
Packages suggested but not available for checking: ‘RODBC’ ‘RPostgreSQL’
```
```
checking DESCRIPTION meta-information ... NOTE
Malformed Title field: should not end in a period.
```
```
DONE
Status: 2 NOTEs
```

## protoclass (1.0)
Maintainer: Jacob Bien <jbien@cornell.edu>

```
checking DESCRIPTION meta-information ... NOTE
Malformed Description field: should contain one or more complete sentences.
```
```
checking dependencies in R code ... NOTE
'library' or 'require' call to ‘class’ which was already attached by Depends.
  Please remove these calls from your code.
Package in Depends field not imported from: ‘class’
  These packages need to be imported from (in the NAMESPACE file)
  for when this namespace is loaded but not attached.
```
```
checking R code for possible problems ... NOTE
predict.protoclass: no visible global function definition for ‘knn1’
```
```
DONE
Status: 3 NOTEs
```

## PRROC (1.1)
Maintainer: Jan Grau <grau@informatik.uni-halle.de>

__OK__

## pryr (0.1)
Maintainer: Hadley Wickham <h.wickham@gmail.com>  
Bug reports: https://github.com/hadley/pryr/issues

__OK__

## psd (1.0-1)
Maintainer: Andrew J. Barbour <andy.barbour@gmail.com>  
Bug reports: https://github.com/abarbour/psd/issues

```
checking package dependencies ... NOTE
Packages suggested but not available for checking:
  ‘bspec’ ‘fftw’ ‘multitaper’ ‘RSEIS’ ‘rbenchmark’
```
```
checking whether package ‘psd’ can be installed ... ERROR
Installation failed.
See ‘/private/tmp/RtmpQJiDLv/check_crand2516b207784/psd.Rcheck/00install.out’ for details.
Status: 1 ERROR, 1 NOTE
```

## psidR (1.3)
Maintainer: Florian Oswald <florian.oswald@gmail.com>

__OK__

## pvar (2.2)
Maintainer: Vygantas Butkus <Vygantas.Butkus@gmail.com>

```
checking DESCRIPTION meta-information ... NOTE
Malformed Description field: should contain one or more complete sentences.
```
```
DONE
Status: 1 NOTE
```

## pxweb (0.5.5)
Maintainer: Mans Magnusson <mons.magnusson@gmail.com>  
Bug reports: https://github.com/rOpenGov/pxweb/issues

```
checking tests ... ERROR
Running the tests in ‘tests/testthat_api_in_catalogue.R’ failed.
Last 13 lines of output:
  
  > library(testthat)
  > test_check("pxweb", filter = "test-apis_in_catalogue")
  Loading required package: pxweb
  pxweb: R tools for PX-WEB API.
  Copyright (C) 2014 Mans Magnusson, Leo Lahti, Love Hansson
  https://github.com/ropengov/pxweb
  
  
  Error in test_dir(test_path, reporter = reporter, env = env, filter = filter,  : 
    No matching test file in dir
  Calls: test_check -> run_tests -> with_top_env -> test_dir
  Execution halted
```
```
DONE
Status: 1 ERROR
```

## qdap (2.2.1)
Maintainer: Tyler Rinker <tyler.rinker@gmail.com>  
Bug reports: http://github.com/trinker/qdap/issues

__OK__

## qdapRegex (0.3.2)
Maintainer: Tyler Rinker <tyler.rinker@gmail.com>  
Bug reports: http://github.com/trinker/qdapRegex/issues

__OK__

## qdapTools (1.1.0)
Maintainer: Tyler Rinker <tyler.rinker@gmail.com>  
Bug reports: http://github.com/trinker/qdapTools/issues

__OK__

## qiimer (0.9.2)
Maintainer: Kyle Bittinger <kylebittinger@gmail.com>

__OK__

## qtl (1.36-6)
Maintainer: Karl W Broman <kbroman@biostat.wisc.edu>

```
checking whether package ‘qtl’ can be installed ... ERROR
Installation failed.
See ‘/private/tmp/RtmpQJiDLv/check_crand2516b207784/qtl.Rcheck/00install.out’ for details.
Status: 1 ERROR
```

## quadrupen (0.2-4)
Maintainer: Julien Chiquet <julien.chiquet@genopole.cnrs.fr>

```
checking whether package ‘quadrupen’ can be installed ... ERROR
Installation failed.
See ‘/private/tmp/RtmpQJiDLv/check_crand2516b207784/quadrupen.Rcheck/00install.out’ for details.
Status: 1 ERROR
```

## Quandl (2.6.0)
Maintainer: Raymond McTaggart <raymond@quandl.com>  
Bug reports: https://github.com/quandl/R-package/issues

__OK__

## quantspec (1.0-3)
Maintainer: Tobias Kley <tobias.kley@ruhr-uni-bochum.de>  
Bug reports: http://github.com/tobiaskley/quantspec/issues

__OK__

## questionr (0.4.3)
Maintainer: Julien Barnier <julien.barnier@ens-lyon.fr>

__OK__

## R2admb (0.7.13)
Maintainer: Ben Bolker <bolker@mcmaster.ca>

```
checking R code for possible problems ... NOTE
Found the following calls to attach():
File ‘R2admb/R/check_section.R’:
  attach(R_list, name = "R_list", warn.conflicts = FALSE)
See section ‘Good practice’ in ‘?attach’.
```
```
DONE
Status: 1 NOTE
```

## R4CouchDB (0.7.1)
Maintainer: Thomas Bock <thsteinbock@web.de>

__OK__

## R6 (2.0.1)
Maintainer: "Winston Chang" <winston@stdout.org>

```
checking package dependencies ... NOTE
Package suggested but not available for checking: ‘microbenchmark’
```
```
checking re-building of vignette outputs ... NOTE
Error in re-building vignettes:
  ...
Quitting from lines 17-32 (Performance.Rmd) 
Error: processing vignette 'Performance.Rmd' failed with diagnostics:
there is no package called 'microbenchmark'
Execution halted

```
```
DONE
Status: 2 NOTEs
```

## radiant (0.1.83)
Maintainer: Vincent Nijs <radiant@rady.ucsd.edu>  
Bug reports: https://github.com/vnijs/radiant/issues

__OK__

## rAltmetric (0.6)
Maintainer: Karthik Ram <karthik.ram@gmail.com>  
Bug reports: https://github.com/ropensci/rAltmetric/issues/

__OK__

## RAM (1.2.0)
Maintainer: Wen Chen <Wen.Chen@agr.gc.ca>

```
checking package dependencies ... NOTE
Packages suggested but not available for checking:
  ‘indicspecies’ ‘Heatplus’
```
```
checking dependencies in R code ... NOTE
'library' or 'require' calls in package code:
  ‘Heatplus’ ‘gtable’ ‘indicspecies’ ‘mapproj’
  Please use :: or requireNamespace() instead.
  See section 'Suggested packages' in the 'Writing R Extensions' manual.
```
```
checking Rd cross-references ... NOTE
Packages unavailable to check Rd xrefs: ‘Heatplus’, ‘indicspecies’
```
```
checking examples ... ERROR
Running examples in ‘RAM-Ex.R’ failed
The error most likely occurred in:

> base::assign(".ptime", proc.time(), pos = "CheckExEnv")
> ### Name: group.heatmap
> ### Title: Plot OTU Abundance at a Given Rank with Metadata Annotation
> ### Aliases: group.heatmap
> ### Keywords: hplot
> 
> ### ** Examples
> 
> data(ITS1, meta)
> library("Heatplus")
Error in library("Heatplus") : there is no package called ‘Heatplus’
Execution halted
```
```
DONE
Status: 1 ERROR, 3 NOTEs
```

## Ramd (0.2)
Maintainer: Robert Krzyzanowski <technoguyrob@gmail.com>

__OK__

## ramify (0.2.0)
Maintainer: Brandon Greenwell <greenwell.brandon@gmail.com>  
Bug reports: https://github.com/bgreenwell/ramify/issues

__OK__

## randNames (0.2)
Maintainer: Karthik Ram <karthik.ram@gmail.com>  
Bug reports: https://github.com/karthik/randNames/issues

__OK__

## rankdist (0.4.1)
Maintainer: Zhaozhi Qian <qianzhaozhi@connect.hku.hk>

__OK__

## RANN.L1 (2.5)
Maintainer: Kirill Müller <krlmlr+r@mailbox.org>

__OK__

## RANN (2.5)
Maintainer: Gregory Jefferis <jefferis@gmail.com>

__OK__

## RAppArmor (1.0.1)
Maintainer: Jeroen Ooms <jeroen.ooms@stat.ucla.edu>  
Bug reports: http://github.com/jeroenooms/RAppArmor/issues

```
checking whether package ‘RAppArmor’ can be installed ... ERROR
Installation failed.
See ‘/private/tmp/RtmpQJiDLv/check_crand2516b207784/RAppArmor.Rcheck/00install.out’ for details.
Status: 1 ERROR
```

## rappdirs (0.3)
Maintainer: Hadley Wickham <h.wickham@gmail.com>  
Bug reports: https://github.com/hadley/rappdirs/issues

```
checking DESCRIPTION meta-information ... NOTE
Malformed Title field: should not end in a period.
```
```
DONE
Status: 1 NOTE
```

## rAvis (0.1.2)
Maintainer: Sara Varela <svarela@paleobiogeography.org>  
Bug reports: https://github.com/ropensci/rAvis/issues

__OK__

## rbhl (0.1.0)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: https://github.com/ropensci/rbhl/issues

```
checking DESCRIPTION meta-information ... NOTE
Malformed Title field: should not end in a period.
```
```
DONE
Status: 1 NOTE
```

## rbison (0.4.5)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: https://github.com/ropensci/rbison/issues

__OK__

## Rborist (0.1-0)
Maintainer: Mark Seligman <mseligman@suiji.org>

```
checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  7: compare(expected, actual, ...) at /Users/hadley/Documents/devtools/testthat/R/expectations-equality.R:61
  8: compare.numeric(expected, actual, ...) at /Users/hadley/Documents/devtools/testthat/R/compare.r:10
  9: all.equal(x, y, ...) at /Users/hadley/Documents/devtools/testthat/R/compare.r:135
  10: all.equal.numeric(x, y, ...)
  11: attr.all.equal(target, current, tolerance = tolerance, scale = scale, ...)
  12: mode(current)
  
  testthat results ================================================================
  OK: 0 SKIPPED: 0 FAILED: 1
  1. Error: Numeric-only regression accuracy 
  
  Error: testthat unit tests failed
  Execution halted
```
```
DONE
Status: 1 ERROR
```

## RBPcurve (1.0-20)
Maintainer: Giuseppe Casalicchio <giuseppe.casalicchio@stat.uni-muenchen.de>  
Bug reports: https://github.com/giuseppec/RBPcurve/issues

__OK__

## rbundler (0.3.7)
Maintainer: Yoni Ben-Meshulam <yoni.bmesh@gmail.com>

```
checking DESCRIPTION meta-information ... NOTE
Malformed Title field: should not end in a period.
```
```
checking R code for possible problems ... NOTE
install_version: no visible global function definition for
  ‘install_url’
```
```
DONE
Status: 2 NOTEs
```

## rClinicalCodes (1.0.1)
Maintainer: David Springate <daspringate@gmail.com>

```
checking DESCRIPTION meta-information ... NOTE
Malformed Description field: should contain one or more complete sentences.
```
```
DONE
Status: 1 NOTE
```

## rclinicaltrials (1.4.1)
Maintainer: Michael C Sachs <sachsmc@gmail.com>

__OK__

## RCMIP5 (1.1)
Maintainer: Kathe Todd-Brown <ktoddbrown@gmail.com>

```
checking package dependencies ... NOTE
Package suggested but not available for checking: ‘ncdf4’
```
```
checking dependencies in R code ... NOTE
'library' or 'require' calls in package code:
  ‘ggplot2’ ‘ncdf’ ‘ncdf4’
  Please use :: or requireNamespace() instead.
  See section 'Suggested packages' in the 'Writing R Extensions' manual.
```
```
DONE
Status: 2 NOTEs
```

## RcppParallel (4.3.8)
Maintainer: JJ Allaire <jj@rstudio.com>

```
checking for GNU extensions in Makefiles ... NOTE
GNU make is a SystemRequirements.
```
```
DONE
Status: 1 NOTE
```

## RcppRoll (0.2.2)
Maintainer: Kevin Ushey <kevinushey@gmail.com>

```
checking package dependencies ... NOTE
Package suggested but not available for checking: ‘microbenchmark’
```
```
DONE
Status: 1 NOTE
```

## rcrossref (0.3.0)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: https://github.com/ropensci/rcrossref/issues

__OK__

## RDataCanvas (0.1)
Maintainer: Xiaolin Zhang <leoncamel@gmail.com>  
Bug reports: https://github.com/DataCanvasIO/RDataCanvas/issues

__OK__

## rDEA (1.1-1)
Maintainer: Jaak Simm <jaak.simm@gmail.com>

```
checking whether package ‘rDEA’ can be installed ... ERROR
Installation failed.
See ‘/private/tmp/RtmpQJiDLv/check_crand2516b207784/rDEA.Rcheck/00install.out’ for details.
Status: 1 ERROR
```

## rdrop2 (0.6)
Maintainer: Karthik Ram <karthik.ram@gmail.com>

__OK__

## RDS (0.7-2)
Maintainer: Mark S. Handcock <handcock@stat.ucla.edu>

__OK__

## readbitmap (0.1-4)
Maintainer: Gregory Jefferis <jefferis@gmail.com>  
Bug reports: https://github.com/jefferis/readbitmap/issues

__OK__

## readGenalex (1.0)
Maintainer: Douglas G. Scofield <douglasgscofield@gmail.com>  
Bug reports: https://github.com/douglasgscofield/readGenalex/issues

```
checking package dependencies ... NOTE
Package suggested but not available for checking: ‘genetics’
```
```
checking Rd cross-references ... NOTE
Package unavailable to check Rd xrefs: ‘genetics’
```
```
checking examples ... ERROR
Running examples in ‘readGenalex-Ex.R’ failed
The error most likely occurred in:

> base::assign(".ptime", proc.time(), pos = "CheckExEnv")
> ### Name: as.genetics
> ### Title: Convert class "genalex" object to data frame encoding loci using
> ###   classes from package "genetics"
> ### Aliases: as.genetics as.genetics.genalex
> 
> ### ** Examples
> 
> data(Qagr_pericarp_genotypes)
> dd <- as.genalex(head(Qagr_pericarp_genotypes, 40), force = TRUE)
> as.genetics(dd)
Error in as.genetics.genalex(dd) : 
  Please install package 'genetics' to use this function
Calls: as.genetics -> as.genetics.genalex
Execution halted
```
```
DONE
Status: 1 ERROR, 2 NOTEs
```

## readODS (1.4)
Maintainer: Gerrit-Jan Schutten <phonixor@gmail.com>

__OK__

## readr (0.1.0)
Maintainer: Hadley Wickham <hadley@rstudio.com>

```
checking package dependencies ... NOTE
Package suggested but not available for checking: ‘DiagrammeR’
```
```
checking re-building of vignette outputs ... NOTE
Error in re-building vignettes:
  ...
Quitting from lines 119-134 (design.Rmd) 
Error: processing vignette 'design.Rmd' failed with diagnostics:
there is no package called 'DiagrammeR'
Execution halted

```
```
DONE
Status: 2 NOTEs
```

## readxl (0.1.0)
Maintainer: Hadley Wickham <hadley@rstudio.com>

__OK__

## rebus (0.0-5)
Maintainer: Richard Cotton <richierocks@gmail.com>

__OK__

## reconstructr (0.5)
Maintainer: Oliver Keyes <ironholds@gmail.com>

__OK__

## REDCapR (0.7-1)
Maintainer: Will Beasley <wibeasley@hotmail.com>

```
checking package dependencies ... NOTE
Package suggested but not available for checking: ‘RODBC’
```
```
checking dependencies in R code ... NOTE
'library' or 'require' calls in package code:
  ‘RODBC’ ‘testthat’
  Please use :: or requireNamespace() instead.
  See section 'Suggested packages' in the 'Writing R Extensions' manual.
```
```
checking tests ... ERROR
Running the tests in ‘tests/test-all.R’ failed.
Last 13 lines of output:
  5. Error: Read, Insert, and Update 
  6. Error: Smoke Test 
  7. Error: Write Batch -Insert 
  8. Error: Write Batch -Update One Field 
  9. Error: Write Batch -Update Two Fields 
  1. Error: Smoke Test 
  2. Error: Write One Shot -Insert 
  3. Error: Write One Shot -Update One Field 
  4. Error: Write One Shot -Update Two Fields 
  5. ...
  
  Error: testthat unit tests failed
  Execution halted
```
```
DONE
Status: 1 ERROR, 2 NOTEs
```

## refset (0.1.0)
Maintainer: David Hugh-Jones <davidhughjones@gmail.com>

__OK__

## regexr (1.0.2)
Maintainer: Tyler Rinker <tyler.rinker@gmail.com>  
Bug reports: http://github.com/trinker/regexr/issues

__OK__

## ReliabilityTheory (0.1.4)
Maintainer: Louis Aslett <aslett@stats.ox.ac.uk>

__OK__

## rEMM (1.0-9)
Maintainer: Michael Hahsler <mhahsler@lyle.smu.edu>

```
checking package dependencies ... NOTE
Packages suggested but not available for checking: ‘graph’ ‘Rgraphviz’
```
```
DONE
Status: 1 NOTE
```

## rentrez (0.4.1)
Maintainer: David Winter <david.winter@gmail.com>

__OK__

## repra (0.4.2)
Maintainer: Eduardo Ibanez <eduardo.ibanez@nrel.gov>  
Bug reports: https://github.com/NREL/repra/issues

__OK__

## rerddap (0.1.0)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: http://www.github.com/ropensci/rerddap/issues

```
checking package dependencies ... NOTE
Package suggested but not available for checking: ‘ncdf4’
```
```
DONE
Status: 1 NOTE
```

## reshape2 (1.4.1)
Maintainer: Hadley Wickham <h.wickham@gmail.com>  
Bug reports: https://github.com/hadley/reshape/issues

```
checking DESCRIPTION meta-information ... NOTE
Malformed Title field: should not end in a period.
```
```
DONE
Status: 1 NOTE
```

## retistruct (0.5.10)
Maintainer: David C. Sterratt <david.c.sterratt@ed.ac.uk>  
Bug reports: https://github.com/davidcsterratt/retistruct/issues

__OK__

## reutils (0.1.2)
Maintainer: 'Gerhard Schöfl' <gschofl@yahoo.de>  
Bug reports: https://github.com/gschofl/reutils/issues

__OK__

## rex (1.0.1)
Maintainer: Jim Hester <james.f.hester@gmail.com>  
Bug reports: https://github.com/kevinushey/rex/issues

__OK__

## rfigshare (0.3.6)
Maintainer: Carl Boettiger <cboettig@gmail.com>  
Bug reports: https://github.com/ropensci/rfigshare/issues

```
checking DESCRIPTION meta-information ... NOTE
Malformed Title field: should not end in a period.
```
```
DONE
Status: 1 NOTE
```

## rfishbase (0.2-2)
Maintainer: Carl Boettiger <cboettig@gmail.com>  
Bug reports: https://github.com/ropensci/rfishbase/issues

__OK__

## RGA (0.2.1)
Maintainer: Artem Klevtsov <a.a.klevtsov@gmail.com>  
Bug reports: https://bitbucket.org/unikum/rga/issues

__OK__

## rgbif (0.8.0)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: https://github.com/ropensci/rgbif/issues

__OK__

## rgeos (0.3-8)
Maintainer: Roger Bivand <Roger.Bivand@nhh.no>

__OK__

## rglobi (0.2.8)
Maintainer: Jorrit Poelen <jhpoelen@xs4all.nl>  
Bug reports: https://github.com/ropensci/rglobi/issues

__OK__

## RGoogleAnalytics (0.1.1)
Maintainer: Kushan Shah <kushan@tatvic.com>  
Bug reports: https://github.com/Tatvic/RGoogleAnalytics/issues

```
checking DESCRIPTION meta-information ... NOTE
Malformed Description field: should contain one or more complete sentences.
```
```
DONE
Status: 1 NOTE
```

## riceware (0.4)
Maintainer: Francois Michonneau <francois.michonneau@gmail.com>  
Bug reports: https://github.com/fmichonneau/riceware/issues

__OK__

## RIGHT (0.2.0)
Maintainer: Jonghyun Bae <bnbbkr@gmail.com>  
Bug reports: https://groups.google.com/forum/?hl=en#!forum/right-user

__OK__

## RImageJROI (0.1.1)
Maintainer: David C Sterratt <david.c.sterratt@ed.ac.uk>

__OK__

## rio (0.2)
Maintainer: Thomas J. Leeper <thosjleeper@gmail.com>

__OK__

## RItools (0.1-12)
Maintainer: Jake Bowers <jwbowers@illinois.edu>

```
checking package dependencies ... NOTE
Package suggested but not available for checking: ‘RSVGTipsDevice’
```
```
checking dependencies in R code ... NOTE
'library' or 'require' call to ‘RSVGTipsDevice’ in package code.
  Please use :: or requireNamespace() instead.
  See section 'Suggested packages' in the 'Writing R Extensions' manual.
```
```
DONE
Status: 2 NOTEs
```

## rjstat (0.2)
Maintainer: Aaron Schumacher <ajschumacher@gmail.com>  
Bug reports: https://github.com/ajschumacher/rjstat/issues

__OK__

## rlist (0.4)
Maintainer: Kun Ren <ken@renkun.me>  
Bug reports: https://github.com/renkun-ken/rlist/issues

__OK__

## rlme (0.4)
Maintainer: Yusuf Bilgic <bilgic@geneseo.edu>

```
checking S3 generic/method consistency ... NOTE
Found the following apparent S3 methods exported but not registered:
  plot.rlme summary.rlme
See section ‘Registering S3 methods’ in the ‘Writing R Extensions’
manual.
```
```
checking examples ... ERROR
Running examples in ‘rlme-Ex.R’ failed
The error most likely occurred in:

> base::assign(".ptime", proc.time(), pos = "CheckExEnv")
> ### Name: compare.fits
> ### Title: Compare Fits
> ### Aliases: compare.fits
> ### Keywords: models
> 
> ### ** Examples
> 
> 
> data(schools)
> model = y ~ 1 + sex + age + (1 | region) + (1 | region:school)
> 
> # Extract covariants into matrix
> cov = as.matrix(data.frame(schools[,"sex"], schools[,"age"]))
> 
> # Fit the models using each method
> reml.fit = rlme(model, schools, method="reml")
Error in stri_extract_all_regex(string, pattern, simplify = simplify,  : 
  Incorrectly nested parentheses in regexp pattern. (U_REGEX_MISMATCHED_PAREN)
Calls: rlme -> str_extract_all -> stri_extract_all_regex -> .Call
Execution halted
```
```
checking tests ... ERROR
Running the tests in ‘tests/test-all.R’ failed.
Last 13 lines of output:
  
  Type 'demo()' for some demos, 'help()' for on-line help, or
  'help.start()' for an HTML browser interface to help.
  Type 'q()' to quit R.
  
  > library(testthat)
  > 
  > test_check("rlme")
  Loading required package: rlme
  Error in stri_extract_all_regex(string, pattern, simplify = simplify,  : 
    Incorrectly nested parentheses in regexp pattern. (U_REGEX_MISMATCHED_PAREN)
  Calls: test_check ... rlme -> str_extract_all -> stri_extract_all_regex -> .Call
  Execution halted
```
```
DONE
Status: 2 ERRORs, 1 NOTE
```

## rmarkdown (0.6.1)
Maintainer: JJ Allaire <jj@rstudio.com>

__OK__

## RMySQL (0.10.3)
Maintainer: Jeroen Ooms <jeroen.ooms@stat.ucla.edu>  
Bug reports: https://github.com/rstats-db/rmysql/issues

__OK__

## rnbn (1.0.3)
Maintainer: Tom August <tomaug@ceh.ac.uk>  
Bug reports: https://github.com/ropensci/rnbn/issues

__OK__

## rncl (0.2.2)
Maintainer: Francois Michonneau <francois.michonneau@gmail.com>  
Bug reports: https://github.com/fmichonneau/rncl/issues

__OK__

## RNeXML (2.0.2)
Maintainer: Carl Boettiger <cboettig@gmail.com>  
Bug reports: https://github.com/ropensci/RNeXML/issues

```
checking package dependencies ... NOTE
Packages suggested but not available for checking:
  ‘rrdf’ ‘phytools’ ‘Sxslt’
```
```
checking tests ... ERROR
Running the tests in ‘tests/test-all.R’ failed.
Last 13 lines of output:
   Taxa: 	  ... 
  
   NeXML generated by RNeXML using schema version: 0.9 
   size: 21.7 Kb 
  Authentication successful
  Error in library(phytools) : there is no package called 'phytools'
  Calls: test_check ... lapply -> FUN -> sys.source2 -> eval -> eval -> library
  In addition: Warning messages:
  1: In merge.data.frame(dfs, ..., by = "row.names", all = TRUE, sort = FALSE) :
    column names 'cs15_log snout-vent length.x', 'cs15_log snout-vent length.y' are duplicated in the result
  2: In merge.data.frame(dfs, ..., by = "row.names", all = TRUE, sort = FALSE) :
    column names 'cs31_reef-dwelling.x', 'cs31_reef-dwelling.y' are duplicated in the result
  Execution halted
```
```
checking re-building of vignette outputs ... NOTE
Error in re-building vignettes:
  ...

Retrieving data for taxon 'Trochiliformes'


Retrieving data for taxon 'Musophagiformes'


Retrieving data for taxon 'Strigiformes'


Retrieving data for taxon 'Columbiformes'


Retrieving data for taxon 'Gruiformes'


Retrieving data for taxon 'Ciconiiformes'


Retrieving data for taxon 'Passeriformes'

Quitting from lines 148-150 (simmap.Rmd) 
Error: processing vignette 'simmap.Rmd' failed with diagnostics:
there is no package called 'phytools'
Execution halted

```
```
DONE
Status: 1 ERROR, 2 NOTEs
```

## rnoaa (0.3.3)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: http://www.github.com/ropensci/rnoaa/issues

__OK__

## RObsDat (15.02)
Maintainer: Dominik Reusser <reusser@pik-potsdam.de>

```
checking package dependencies ... NOTE
Packages suggested but not available for checking: ‘SSOAP’ ‘geonames’
```
```
DONE
Status: 1 NOTE
```

## rorutadis (0.1.3)
Maintainer: Krzysztof Ciomek <k.ciomek@gmail.com>

__OK__

## rotations (1.3)
Maintainer: Bryan Stanfill <bryan.stanfill@csiro.au>  
Bug reports: https://github.com/stanfill/rotationsC/issues

```
checking package dependencies ... NOTE
Packages suggested but not available for checking: ‘onion’ ‘orientlib’
```
```
checking whether package ‘rotations’ can be installed ... ERROR
Installation failed.
See ‘/private/tmp/RtmpQJiDLv/check_crand2516b207784/rotations.Rcheck/00install.out’ for details.
Status: 1 ERROR, 1 NOTE
```

## roxygen2 (4.1.1)
Maintainer: Hadley Wickham <h.wickham@gmail.com>

__OK__

## RPANDA (1.0)
Maintainer: Hélène Morlon <morlon@biologie.ens.fr>

__OK__

## rpartitions (0.1)
Maintainer: Daniel McGlinn <danmcglinn@gmail.com>

```
checking DESCRIPTION meta-information ... NOTE
License components which are templates and need '+ file LICENSE':
  MIT
```
```
checking dependencies in R code ... NOTE
Package in Depends field not imported from: ‘hash’
  These packages need to be imported from (in the NAMESPACE file)
  for when this namespace is loaded but not attached.
```
```
checking R code for possible problems ... NOTE
P: no visible global function definition for ‘has.key’
rand_partitions: no visible global function definition for ‘hash’
```
```
DONE
Status: 3 NOTEs
```

## rpf (0.44)
Maintainer: Joshua Pritikin <jpritikin@pobox.com>

```
checking whether package ‘rpf’ can be installed ... ERROR
Installation failed.
See ‘/private/tmp/RtmpQJiDLv/check_crand2516b207784/rpf.Rcheck/00install.out’ for details.
Status: 1 ERROR
```

## rplexos (1.0)
Maintainer: Eduardo Ibanez <eduardo.ibanez@nrel.gov>  
Bug reports: https://github.com/NREL/rplexos/issues

__OK__

## rplos (0.4.7)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: https://github.com/ropensci/rplos/issues

__OK__

## rPref (0.5)
Maintainer: Patrick Roocks <mail@p-roocks.de>

```
checking for GNU extensions in Makefiles ... NOTE
GNU make is a SystemRequirements.
```
```
DONE
Status: 1 NOTE
```

## rprintf (0.1-2)
Maintainer: Kun Ren <ken@renkun.me>  
Bug reports: https://github.com/renkun-ken/rprintf/issues

```
checking DESCRIPTION meta-information ... NOTE
Malformed Description field: should contain one or more complete sentences.
```
```
DONE
Status: 1 NOTE
```

## rr (1.3)
Maintainer: Graeme Blair <graeme.blair@columbia.edu>

```
checking whether package ‘rr’ can be installed ... ERROR
Installation failed.
See ‘/private/tmp/RtmpQJiDLv/check_crand2516b207784/rr.Rcheck/00install.out’ for details.
Status: 1 ERROR
```

## rsdmx (0.4-6)
Maintainer: Emmanuel Blondel <emmanuel.blondel1@gmail.com>  
Bug reports: https://github.com/opensdmx/rsdmx/issues

__OK__

## RSelenium (1.3.5)
Maintainer: John Harrison <johndharrison0@gmail.com>  
Bug reports: http://github.com/ropensci/RSelenium/issues

```
checking package dependencies ... NOTE
Package suggested but not available for checking: ‘Rcompression’
```
```
checking DESCRIPTION meta-information ... NOTE
Malformed Title field: should not end in a period.
```
```
checking S3 generic/method consistency ... NOTE
Found the following apparent S3 methods exported but not registered:
  .DollarNames.errorHandler .DollarNames.remoteDriver
  .DollarNames.webElement
See section ‘Registering S3 methods’ in the ‘Writing R Extensions’
manual.
```
```
DONE
Status: 3 NOTEs
```

## rsig (1.0)
Maintainer: Sangkyun Lee <sangkyun.lee@tu-dortmund.de>

```
checking package dependencies ... ERROR
Package required but not available: ‘survcomp’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
Status: 1 ERROR
```

## RSiteCatalyst (1.4.3)
Maintainer: Randy Zwitch <rzwitch+rsitecatalyst@gmail.com>  
Bug reports: https://github.com/randyzwitch/RSiteCatalyst

```
checking DESCRIPTION meta-information ... NOTE
Malformed Description field: should contain one or more complete sentences.
```
```
checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  2. Error: Validate GetUniqueVisitorVariable using legacy credentials 
  3. Error: Validate GetVersionAccess using legacy credentials 
  4. Error: Validate GetVideoSettings using legacy credentials 
  5. Error: Validate QueueFallout using legacy credentials 
  6. Error: Validate QueueOvertime using legacy credentials 
  7. Error: Validate QueuePathing using legacy credentials 
  8. Error: Validate QueueRanked using legacy credentials 
  9. Error: Validate QueueTrended using legacy credentials 
  1. Error: SCAuth legacy credentials work as expected 
  2. ...
  
  Error: testthat unit tests failed
  Execution halted
```
```
DONE
Status: 1 ERROR, 1 NOTE
```

## rsnps (0.1.6)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: https://github.com/ropensci/rsnps/issues

__OK__

## rspa (0.1-6)
Maintainer: Mark van der Loo <mark.vanderloo@gmail.com>

__OK__

## rspear (0.1-2)
Maintainer: Eduard Szoecs <eduardszoecs@gmail.com>

```
checking DESCRIPTION meta-information ... NOTE
Malformed Description field: should contain one or more complete sentences.
```
```
DONE
Status: 1 NOTE
```

## RSQLite (1.0.0)
Maintainer: Hadley Wickham <hadley@rstudio.com>  
Bug reports: https://github.com/rstats-db/RSQLite/issues

```
checking compiled code ... NOTE
File ‘RSQLite/libs/RSQLite.so’:
  Found ‘___stderrp’, possibly from ‘stderr’ (C)
    Object: ‘sqlite-all.o’
  Found ‘_random’, possibly from ‘random’ (C)
    Object: ‘sqlite-all.o’

Compiled code should not call entry points which might terminate R nor
write to stdout/stderr instead of to the console, nor the system RNG.

See ‘Writing portable packages’ in the ‘Writing R Extensions’ manual.
```
```
DONE
Status: 1 NOTE
```

## Rssa (0.13)
Maintainer: Anton Korobeynikov <anton@korobeynikov.info>

```
checking whether package ‘Rssa’ can be installed ... ERROR
Installation failed.
See ‘/private/tmp/RtmpQJiDLv/check_crand2516b207784/Rssa.Rcheck/00install.out’ for details.
Status: 1 ERROR
```

## rstackdeque (1.1.1)
Maintainer: Shawn T. O'Neil <shawn.oneil@cgrb.oregonstate.edu>  
Bug reports: https://github.com/oneilsh/rstackdeque/issues

__OK__

## rsunlight (0.3.0)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: https://github.com/ropengov/rsunlight/issues

```
checking package dependencies ... NOTE
Package suggested but not available for checking: ‘rCharts’
```
```
checking DESCRIPTION meta-information ... NOTE
Malformed Title field: should not end in a period.
Malformed Description field: should contain one or more complete sentences.
```
```
DONE
Status: 2 NOTEs
```

## rtdists (0.2-6)
Maintainer: Henrik Singmann <singmann+rtdists@gmail.com>

__OK__

## rtype (0.1-1)
Maintainer: Kun Ren <ken@renkun.me>  
Bug reports: https://github.com/renkun-ken/rtype/issues

__OK__

## Ruchardet (0.0-3)
Maintainer: Heewon Jeon <madjakarta@gmail.com>

```
checking for GNU extensions in Makefiles ... NOTE
GNU make is a SystemRequirements.
```
```
DONE
Status: 1 NOTE
```

## rUnemploymentData (1.0.0)
Maintainer: Ari Lamstein <arilamstein@gmail.com>  
Bug reports: https://github.com/trulia/choroplethr/issues

__OK__

## rvertnet (0.2.2)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: https://github.com/ropensci/rvertnet/issues

__OK__

## rvest (0.2.0)
Maintainer: Hadley Wickham <h.wickham@gmail.com>

__OK__

## rvgtest (0.7.4)
Maintainer: Josef Leydold <josef.leydold@wu.ac.at>

```
checking package dependencies ... NOTE
Package suggested but not available for checking: ‘Runuran’
```
```
checking R code for possible problems ... NOTE
rvgt.ftable : myrdist: no visible global function definition for ‘ur’
uerror: no visible global function definition for ‘unuran.is.inversion’
uerror : myaqdist: no visible global function definition for ‘uq’
unuran.distr.class: no visible global function definition for
  ‘unuran.details’
xerror: no visible global function definition for ‘unuran.is.inversion’
xerror : myaqdist: no visible global function definition for ‘uq’
```
```
checking Rd cross-references ... NOTE
Package unavailable to check Rd xrefs: ‘Runuran’
```
```
DONE
Status: 3 NOTEs
```

## rYoutheria (1.0.0)
Maintainer: Tom August <tomaug@ceh.ac.uk>  
Bug reports: 
        https://github.com/biologicalrecordscentre/rYoutheria/issues

__OK__

## sadists (0.2.0)
Maintainer: Steven E. Pav <shabbychef@gmail.com>  
Bug reports: https://github.com/shabbychef/sadists/issues

__OK__

## saeSim (0.7.0)
Maintainer: Sebastian Warnholz <Sebastian.Warnholz@fu-berlin.de>  
Bug reports: https://github.com/wahani/saeSim/issues

__OK__

## scales (0.2.4)
Maintainer: Hadley Wickham <h.wickham@gmail.com>  
Bug reports: https://github.com/hadley/scales/issues

```
checking DESCRIPTION meta-information ... NOTE
Malformed Title field: should not end in a period.
```
```
checking dependencies in R code ... NOTE
Namespace in Imports field not imported from: ‘methods’
  All declared Imports should be used.
```
```
DONE
Status: 2 NOTEs
```

## scoring (0.5-1)
Maintainer: Ed Merkle <merklee@missouri.edu>

```
checking S3 generic/method consistency ... NOTE
Found the following apparent S3 methods exported but not registered:
  calcscore.default calcscore.formula
See section ‘Registering S3 methods’ in the ‘Writing R Extensions’
manual.
```
```
DONE
Status: 1 NOTE
```

## ScrabbleScore (1.0)
Maintainer: Will Kurt <wckurt@gmail.com>

```
checking DESCRIPTION meta-information ... NOTE
License components which are templates and need '+ file LICENSE':
  MIT License
```
```
DONE
Status: 1 NOTE
```

## scrm (1.5.0-1)
Maintainer: Paul Staab <develop@paulstaab.de>

__OK__

## sdcTable (0.18.1)
Maintainer: Bernhard Meindl <bernhard.meindl@statistik.gv.at>

```
checking whether package ‘sdcTable’ can be installed ... ERROR
Installation failed.
See ‘/private/tmp/RtmpQJiDLv/check_crand2516b207784/sdcTable.Rcheck/00install.out’ for details.
Status: 1 ERROR
```

## sdmvspecies (0.3.1)
Maintainer: Howl Anderson <u1mail2me@gmail.com>

```
checking for executable files ... WARNING
Found the following executable file:
  inst/external/env/bio14.bil
Source packages should not contain undeclared executable files.
See section ‘Package structure’ in the ‘Writing R Extensions’ manual.
```
```
DONE
Status: 1 WARNING
```

## searchable (0.3.3.1)
Maintainer: Christopher Brown <chris.brown@decisionpatterns.com>  
Bug reports: https://github.com/decisionpatterns/searchable/issues

__OK__

## segmag (1.2.2)
Maintainer: Frank Papenmeier <frank.papenmeier@uni-tuebingen.de>

__OK__

## selectr (0.2-3)
Maintainer: Simon Potter <simon@sjp.co.nz>  
Bug reports: https://github.com/sjp/selectr/issues

__OK__

## sensR (1.4-5)
Maintainer: Rune Haubo Bojesen Christensen <rhbc@dtu.dk>

__OK__

## seqminer (3.9)
Maintainer: Xiaowei Zhan <zhanxw@gmail.com>

__OK__

## sequences (0.5.9)
Maintainer: Laurent Gatto <lg390@cam.ac.uk>

__OK__

## seriation (1.0-14)
Maintainer: Michael Hahsler <mhahsler@lyle.smu.edu>

```
checking whether package ‘seriation’ can be installed ... ERROR
Installation failed.
See ‘/private/tmp/RtmpQJiDLv/check_crand2516b207784/seriation.Rcheck/00install.out’ for details.
Status: 1 ERROR
```

## seroincidence (1.0.3)
Maintainer: Chantal Quinten <seroincidence@ecdc.europa.eu>

__OK__

## settings (0.2.1)
Maintainer: Mark van der Loo <mark.vanderloo@gmail.com>

__OK__

## SharpeR (0.1501)
Maintainer: Steven E. Pav <shabbychef@gmail.com>  
Bug reports: https://github.com/shabbychef/SharpeR/issues

__OK__

## shiny (0.12.0)
Maintainer: Winston Chang <winston@rstudio.com>  
Bug reports: https://github.com/rstudio/shiny/issues

```
checking package dependencies ... NOTE
Package suggested but not available for checking: ‘Cairo’
```
```
checking installed package size ... NOTE
  installed size is  5.0Mb
  sub-directories of 1Mb or more:
    www   4.1Mb
```
```
checking Rd cross-references ... NOTE
Package unavailable to check Rd xrefs: ‘Cairo’
```
```
DONE
Status: 3 NOTEs
```

## shinyAce (0.1.0)
Maintainer: Jeff Allen <jeff@trestletech.com>  
Bug reports: https://github.com/trestletech/shinyAce/issues

__OK__

## shinyjs (0.0.3.3)
Maintainer: Dean Attali <daattali@gmail.com>

__OK__

## shinyRGL (0.1.0)
Maintainer: Jeff Allen <jeff@trestletech.com>  
Bug reports: https://github.com/trestletech/shinyRGL/issues

__OK__

## shinyTree (0.2.2)
Maintainer: Jeff Allen <cran@trestletechnology.net>  
Bug reports: https://github.com/trestletech/shinyTree/issues

__OK__

## SixSigma (0.8-1)
Maintainer: Emilio L. Cano <emilio.lopez@urjc.es>

```
checking R code for possible problems ... NOTE
ss.rr: no visible binding for global variable ‘ss.data.rr’
```
```
DONE
Status: 1 NOTE
```

## sjPlot (1.8)
Maintainer: Daniel Lüdecke <d.luedecke@uke.de>  
Bug reports: https://github.com/sjPlot/devel/issues

```
checking package dependencies ... NOTE
Packages suggested but not available for checking:
  ‘effects’ ‘lmerTest’ ‘lsmeans’
```
```
checking Rd cross-references ... NOTE
Packages unavailable to check Rd xrefs: ‘plm’, ‘effects’
```
```
checking examples ... ERROR
Running examples in ‘sjPlot-Ex.R’ failed
The error most likely occurred in:

> base::assign(".ptime", proc.time(), pos = "CheckExEnv")
> ### Name: sjp.int
> ### Title: Plot interaction effects of (generalized) linear (mixed) models
> ### Aliases: sjp.int
> 
> ### ** Examples
> 
> # Note that the data sets used in this example may not be perfectly suitable for
> # fitting linear models. I just used them because they are part of the R-software.
> 
> # fit "dummy" model. Note that moderator should enter
> # first the model, followed by predictor. Else, use
> # parameter "swapPredictors" to change predictor on
> # x-axis with moderator
> fit <- lm(weight ~ Diet * Time, data = ChickWeight)
> 
> # show summary to see significant interactions
> summary(fit)

Call:
lm(formula = weight ~ Diet * Time, data = ChickWeight)

Residuals:
     Min       1Q   Median       3Q      Max 
-135.425  -13.757   -1.311   11.069  130.391 

Coefficients:
            Estimate Std. Error t value Pr(>|t|)    
(Intercept)  30.9310     4.2468   7.283 1.09e-12 ***
Diet2        -2.2974     7.2672  -0.316  0.75202    
Diet3       -12.6807     7.2672  -1.745  0.08154 .  
Diet4        -0.1389     7.2865  -0.019  0.98480    
Time          6.8418     0.3408  20.076  < 2e-16 ***
Diet2:Time    1.7673     0.5717   3.092  0.00209 ** 
Diet3:Time    4.5811     0.5717   8.014 6.33e-15 ***
Diet4:Time    2.8726     0.5781   4.969 8.92e-07 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 34.07 on 570 degrees of freedom
Multiple R-squared:  0.773,	Adjusted R-squared:  0.7702 
F-statistic: 277.3 on 7 and 570 DF,  p-value: < 2.2e-16

> 
> # plot interaction effects
> sjp.int(fit, type = "eff")
Error: Package 'effects' needed for this function to work. Please install it.
Execution halted
```
```
DONE
Status: 1 ERROR, 2 NOTEs
```

## slackr (1.2)
Maintainer: Bob Rudis <bob@rudis.net>  
Bug reports: https://github.com/hrbrmstr/slackr/issues

__OK__

## SLOPE (0.1.1)
Maintainer: Evan Patterson <epatters@stanford.edu>

```
checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  4: SLOPE_solver_call(solver, X, y, sigma * lambda)
  5: SLOPE(X, y, sigma = 1, solver = "matlab") at test_solver.R:10
  6: eval(expr, envir, enclos)
  7: eval(code, new_test_environment)
  8: withCallingHandlers(eval(code, new_test_environment), error = capture_calls, message = function(c) invokeRestart("muffleMessage"), 
         warning = function(c) invokeRestart("muffleWarning"))
  
  testthat results ================================================================
  OK: 6 SKIPPED: 0 FAILED: 1
  1. Error: SLOPE solver agrees with TFOCS solver in MATLAB 
  
  Error: testthat unit tests failed
  Execution halted
```
```
DONE
Status: 1 ERROR
```

## smcUtils (0.2.2)
Maintainer: Jarad Niemi <niemi@iastate.edu>

```
checking Rd line widths ... NOTE
Rd file 'resampling.Rd':
  \usage lines wider than 90 characters:
     residual.resample(   weights, num.samples = length(weights), engine="R", rrf = "stratified")

These lines will be truncated in the PDF manual.
```
```
DONE
Status: 1 NOTE
```

## SmithWilsonYieldCurve (1.0.1)
Maintainer: Phil Joubert <phil.joubert@not-normal-consulting.co.uk>

```
checking DESCRIPTION meta-information ... NOTE
Malformed Description field: should contain one or more complete sentences.
```
```
DONE
Status: 1 NOTE
```

## smoof (1.0)
Maintainer: Jakob Bossek <j.bossek@gmail.com>  
Bug reports: https://github.com/jakobbossek/smoof/issues

__OK__

## solr (0.1.4)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: http://www.github.com/ropensci/solr/issues

__OK__

## SortableHTMLTables (0.1-3)
Maintainer: John Myles White <jmw@johnmyleswhite.com>

```
checking for hidden files and directories ... NOTE
Found the following hidden files and directories:
  .gitignore
These were most likely included in error. See section ‘Package
structure’ in the ‘Writing R Extensions’ manual.
```
```
checking DESCRIPTION meta-information ... NOTE
Malformed Title field: should not end in a period.
License components which are templates and need '+ file LICENSE':
  MIT
```
```
checking top-level files ... NOTE
Non-standard files/directories found at top level:
  ‘README.markdown’ ‘build_package.sh’ ‘upload.sh’
```
```
DONE
Status: 3 NOTEs
```

## sortinghat (0.1)
Maintainer: John A. Ramey <johnramey@gmail.com>

```
checking top-level files ... NOTE
Non-standard file/directory found at top level:
  ‘NEWS.md’
```
```
DONE
Status: 1 NOTE
```

## sorvi (0.7.20)
Maintainer: Leo Lahti <louhos@googlegroups.com>  
Bug reports: https://github.com/ropengov/sorvi/issues

__OK__

## spaMM (1.5.1)
Maintainer: François Rousset <francois.rousset@univ-montp2.fr>

__OK__

## spareserver (1.0.0)
Maintainer: "Gabor Csardi" <csardi.gabor@gmail.com>  
Bug reports: https://github.com/metacran/spareserver/issues

__OK__

## spark (1.0.0)
Maintainer: "Gabor Csardi" <csardi.gabor@gmail.com>  
Bug reports: https://github.com/gaborcsardi/pretty/spark

```
checking DESCRIPTION meta-information ... NOTE
Malformed Description field: should contain one or more complete sentences.
```
```
DONE
Status: 1 NOTE
```

## SparseGrid (0.8.2)
Maintainer: Jelmer Ypma <uctpjyy@ucl.ac.uk>

```
checking DESCRIPTION meta-information ... NOTE
Malformed Description field: should contain one or more complete sentences.
```
```
DONE
Status: 1 NOTE
```

## sparseHessianFD (0.2.0)
Maintainer: Michael Braun <braunm@smu.edu>

__OK__

## sparseMVN (0.2.0)
Maintainer: Michael Braun <braunm@smu.edu>

```
checking DESCRIPTION meta-information ... NOTE
Malformed Title field: should not end in a period.
```
```
DONE
Status: 1 NOTE
```

## spatialprobit (0.9-10)
Maintainer: Stefan Wilhelm <wilhelm@financial.com>

```
checking DESCRIPTION meta-information ... NOTE
Malformed Description field: should contain one or more complete sentences.
```
```
checking S3 generic/method consistency ... NOTE
Found the following apparent S3 methods exported but not registered:
  c.sarprobit coef.sarprobit coef.sartobit coef.semprobit plot.sartobit
  plot.semprobit summary.sarprobit summary.sartobit summary.semprobit
See section ‘Registering S3 methods’ in the ‘Writing R Extensions’
manual.
```
```
DONE
Status: 2 NOTEs
```

## spdynmod (1.0)
Maintainer: Javier Martinez-Lopez <javi.martinez.lopez@gmail.com>  
Bug reports: http://github.com/javimarlop/spdynmod/issues

__OK__

## spiders (1.0)
Maintainer: Edward A. Roualdes <edward.roualdes@uky.edu>

```
checking DESCRIPTION meta-information ... NOTE
Malformed Description field: should contain one or more complete sentences.
```
```
DONE
Status: 1 NOTE
```

## spocc (0.2.4)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: https://github.com/ropensci/spocc/issues

__OK__

## sspse (0.5-1)
Maintainer: Mark S. Handcock <handcock@stat.ucla.edu>

__OK__

## StableEstim (2.0)
Maintainer: Tarak Kharrat <tarak.kharrat@manchester.ac.uk>

__OK__

## statar (0.1.3)
Maintainer: Matthieu Gomez <mattg@princeton.edu>  
Bug reports: https://github.com/matthieugomez/statar/issues

__OK__

## statebins (1.0)
Maintainer: Bob Rudis <bob@rudis.net>  
Bug reports: https://github.com/hrbrmstr/statebins/issues

__OK__

## StatRank (0.0.4)
Maintainer: William Chen <williamzc@gmail.com>

```
checking R code for possible problems ... NOTE
Visualization.Empirical: no visible global function definition for
  ‘ggplot’
Visualization.Empirical: no visible global function definition for
  ‘aes’
Visualization.Empirical: no visible global function definition for
  ‘geom_bar’
Visualization.Empirical: no visible global function definition for
  ‘scale_x_reverse’
Visualization.Empirical: no visible global function definition for
  ‘ggtitle’
Visualization.Empirical: no visible global function definition for
  ‘labs’
Visualization.Empirical: no visible global function definition for
  ‘scale_y_continuous’
Visualization.Empirical: no visible binding for global variable
  ‘grid.arrange’
Visualization.MultiType: no visible global function definition for
  ‘ggplot’
Visualization.MultiType: no visible global function definition for
  ‘aes’
Visualization.MultiType: no visible global function definition for
  ‘geom_line’
Visualization.MultiType: no visible global function definition for
  ‘labs’
Visualization.MultiType: no visible global function definition for
  ‘geom_vline’
Visualization.MultiType: no visible global function definition for
  ‘scale_color_manual’
Visualization.MultiType: no visible global function definition for
  ‘scale_linetype_manual’
Visualization.MultiType: no visible global function definition for
  ‘theme’
Visualization.MultiType: no visible binding for global variable
  ‘grid.arrange’
Visualization.Pairwise.Probabilities : Generate.Pairwise.Matrix.Plot:
  no visible global function definition for ‘ggplot’
Visualization.Pairwise.Probabilities : Generate.Pairwise.Matrix.Plot:
  no visible global function definition for ‘aes’
Visualization.Pairwise.Probabilities : Generate.Pairwise.Matrix.Plot:
  no visible global function definition for ‘geom_tile’
Visualization.Pairwise.Probabilities : Generate.Pairwise.Matrix.Plot:
  no visible global function definition for ‘geom_text’
Visualization.Pairwise.Probabilities : Generate.Pairwise.Matrix.Plot:
  no visible global function definition for ‘scale_fill_gradient’
Visualization.Pairwise.Probabilities : Generate.Pairwise.Matrix.Plot:
  no visible global function definition for ‘labs’
Visualization.Pairwise.Probabilities : Generate.Pairwise.Matrix.Plot:
  no visible global function definition for ‘scale_x_discrete’
Visualization.Pairwise.Probabilities : Generate.Pairwise.Matrix.Plot:
  no visible global function definition for ‘scale_y_reverse’
Visualization.Pairwise.Probabilities : Generate.Pairwise.Matrix.Plot:
  no visible global function definition for ‘theme_bw’
Visualization.Pairwise.Probabilities : Generate.Pairwise.Matrix.Plot:
  no visible global function definition for ‘theme’
Visualization.Pairwise.Probabilities : Generate.Pairwise.Matrix.Plot:
  no visible global function definition for ‘element_blank’
Visualization.Pairwise.Probabilities : Generate.Pairwise.Matrix.Plot:
  no visible global function definition for ‘element_text’
Visualization.Pairwise.Probabilities : Generate.Pairwise.Matrix.Plot:
  no visible global function definition for ‘coord_fixed’
Visualization.Pairwise.Probabilities : Generate.Pairwise.Matrix.Plot:
  no visible global function definition for ‘guides’
Visualization.Pairwise.Probabilities : Generate.Pairwise.Matrix.Plot:
  no visible global function definition for ‘guide_legend’
Visualization.Pairwise.Probabilities: no visible global function
  definition for ‘grid.arrange’
Visualization.Pairwise.Probabilities: no visible global function
  definition for ‘textGrob’
Visualization.Pairwise.Probabilities: no visible global function
  definition for ‘gpar’
Visualization.RUMplots.Exponential : <anonymous>: no visible global
  function definition for ‘qplot’
Visualization.RUMplots.Exponential : <anonymous>: no visible global
  function definition for ‘labs’
Visualization.RUMplots.Exponential : <anonymous>: no visible global
  function definition for ‘geom_vline’
Visualization.RUMplots.Exponential: no visible binding for global
  variable ‘grid.arrange’
Visualization.RUMplots.Gumbel : <anonymous>: no visible global function
  definition for ‘qplot’
Visualization.RUMplots.Gumbel : <anonymous>: no visible global function
  definition for ‘labs’
Visualization.RUMplots.Gumbel : <anonymous>: no visible global function
  definition for ‘geom_vline’
Visualization.RUMplots.Gumbel: no visible binding for global variable
  ‘grid.arrange’
Visualization.RUMplots.Nonparametric : <anonymous>: no visible global
  function definition for ‘qplot’
Visualization.RUMplots.Nonparametric : <anonymous>: no visible global
  function definition for ‘labs’
Visualization.RUMplots.Nonparametric : <anonymous>: no visible global
  function definition for ‘scale_y_continuous’
Visualization.RUMplots.Nonparametric: no visible binding for global
  variable ‘grid.arrange’
Visualization.Surfaceplots : makewireframe: no visible global function
  definition for ‘wireframe’
Visualization.Surfaceplots: no visible global function definition for
  ‘grid.arrange’
```
```
DONE
Status: 1 NOTE
```

## stream (1.1-1)
Maintainer: Michael Hahsler <mhahsler@lyle.smu.edu>

```
checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  Type 'contributors()' for more information and
  'citation()' on how to cite R or R packages in publications.
  
  Type 'demo()' for some demos, 'help()' for on-line help, or
  'help.start()' for an HTML browser interface to help.
  Type 'q()' to quit R.
  
  > library("testthat")
  > test_package("stream")
  Error in test_dir(test_path, reporter = reporter, env = env, filter = filter,  : 
    No matching test file in dir
  Calls: test_package -> run_tests -> with_top_env -> test_dir
  Execution halted
```
```
DONE
Status: 1 ERROR
```

## stressr (1.0.0)
Maintainer: Matt Barry <mrb@softisms.com>  
Bug reports: https://github.com/mrbcuda/stressr/issues

```
checking DESCRIPTION meta-information ... NOTE
Malformed Title field: should not end in a period.
```
```
DONE
Status: 1 NOTE
```

## stringdist (0.9.0)
Maintainer: Mark van der Loo <mark.vanderloo@gmail.com>

__OK__

## stringr (1.0.0)
Maintainer: Hadley Wickham <hadley@rstudio.com>

__OK__

## strvalidator (1.4.0)
Maintainer: Oskar Hansson <oskar.hansson@fhi.no>  
Bug reports: https://github.com/OskarHansson/strvalidator/issues

```
checking package dependencies ... NOTE
Package suggested but not available for checking: ‘ResourceSelection’
```
```
DONE
Status: 1 NOTE
```

## surveillance (1.8-3)
Maintainer: Michael H�hle <hoehle@math.su.se>  
Bug reports: https://r-forge.r-project.org/tracker/?group_id=45

```
checking package dependencies ... NOTE
Packages suggested but not available for checking:
  ‘spc’ ‘gamlss’ ‘INLA’ ‘runjags’
```
```
DONE
Status: 1 NOTE
```

## svyPVpack (0.1-1)
Maintainer: Manuel Reif <Manuel.Reif@statistik.gv.at>

__OK__

## sweidnumbr (0.2)
Maintainer: Mans Magnusson <mons.magnusson@gmail.com>  
Bug reports: https://github.com/MansMeg/sweidnumbr/issues

__OK__

## swirl (2.2.21)
Maintainer: Nick Carchedi <nick.carchedi@gmail.com>

```
checking DESCRIPTION meta-information ... NOTE
Malformed Title field: should not end in a period.
```
```
DONE
Status: 1 NOTE
```

## systemicrisk (0.2)
Maintainer: Axel Gandy <a.gandy@imperial.ac.uk>

```
checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
     6 0.193 0.201 -0.00777
     7 0.204 0.200  0.00469
     8 0.200 0.199  0.00056
     9 0.198 0.201 -0.00338
  
  testthat results ================================================================
  OK: 199 SKIPPED: 0 FAILED: 3
  1. Failure (at test-gibbs_kcycle.R#24): All probabilities equal, lambdas equal to 1 
  2. Failure (at test-gibbs_kcycle.R#24): All probabilities equal, lambdas equal to 1 
  3. Failure (at test-gibbs_kcycle.R#24): All probabilities and lambdas equal 
  
  Error: testthat unit tests failed
  Execution halted
```
```
DONE
Status: 1 ERROR
```

## syuzhet (0.2.0)
Maintainer: Matthew Jockers <mjockers@gmail.com>

```
checking package dependencies ... NOTE
Package suggested but not available for checking: ‘pander’
```
```
checking re-building of vignette outputs ... NOTE
Error in re-building vignettes:
  ...
Quitting from lines 228-229 (syuzhet-vignette.Rmd) 
Error: processing vignette 'syuzhet-vignette.Rmd' failed with diagnostics:
there is no package called 'pander'
Execution halted

```
```
DONE
Status: 2 NOTEs
```

## tableone (0.6.3)
Maintainer: Kazuki Yoshida <kazukiyoshida@mail.harvard.edu>

__OK__

## taxize (0.5.2)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: https://github.com/ropensci/taxize/issues

__OK__

## tbdiag (0.1)
Maintainer: Matt Parker <mattmparker@gmail.com>

```
checking DESCRIPTION meta-information ... NOTE
License components which are templates and need '+ file LICENSE':
  MIT
```
```
DONE
Status: 1 NOTE
```

## tester (0.1.7)
Maintainer: Gaston Sanchez <gaston.stat@gmail.com>

__OK__

## testthatsomemore (0.1)
Maintainer: Robert Krzyzanowski <technoguyrob@gmail.com>

__OK__

## tidyjson (0.2.1)
Maintainer: Jeremy Stanley <jeremy.stanley@gmail.com>

__OK__

## tidyr (0.2.0)
Maintainer: Hadley Wickham <hadley@rstudio.com>  
Bug reports: https://github.com/hadley/tidyr/issues

```
checking DESCRIPTION meta-information ... NOTE
Malformed Title field: should not end in a period.
```
```
DONE
Status: 1 NOTE
```

## tikzDevice (0.8.1)
Maintainer: Kirill Müller <krlmlr+r@mailbox.org>  
Bug reports: https://github.com/yihui/tikzDevice/issues

__OK__

## TimeProjection (0.2.0)
Maintainer: Jeffrey Wong <jeff.ct.wong@gmail.com>

```
checking dependencies in R code ... NOTE
'library' or 'require' calls in package code:
  ‘ggplot2’ ‘plyr’
  Please use :: or requireNamespace() instead.
  See section 'Suggested packages' in the 'Writing R Extensions' manual.
Packages in Depends field not imported from:
  ‘Matrix’ ‘lubridate’ ‘timeDate’
  These packages need to be imported from (in the NAMESPACE file)
  for when this namespace is loaded but not attached.
```
```
checking R code for possible problems ... NOTE
is.Bizday: no visible global function definition for ‘isWeekday’
plotCalendarHeatmap: no visible global function definition for ‘ddply’
plotCalendarHeatmap: no visible global function definition for ‘.’
plotCalendarHeatmap: no visible binding for global variable ‘year’
plotCalendarHeatmap: no visible binding for global variable ‘month’
plotCalendarHeatmap: no visible binding for global variable ‘week’
plotCalendarHeatmap: no visible global function definition for ‘ggplot’
plotCalendarHeatmap: no visible global function definition for ‘aes’
plotCalendarHeatmap: no visible binding for global variable ‘monthweek’
plotCalendarHeatmap: no visible binding for global variable ‘weekday’
plotCalendarHeatmap: no visible global function definition for
  ‘geom_tile’
plotCalendarHeatmap: no visible global function definition for
  ‘facet_grid’
plotCalendarHeatmap: no visible global function definition for
  ‘scale_fill_gradientn’
projectDate: no visible global function definition for ‘holidayNYSE’
projectDate: no visible global function definition for
  ‘sparse.model.matrix’
```
```
DONE
Status: 2 NOTEs
```

## tm.plugin.webmining (1.3)
Maintainer: Mario Annau <mario.annau@gmail.com>  
Bug reports: https://github.com/mannau/tm.plugin.webmining/issues

__OK__

## tourr (0.5.4)
Maintainer: Hadley Wickham <h.wickham@gmail.com>  
Bug reports: https://github.com/ggobi/tourr/

```
checking dependencies in R code ... NOTE
'library' or 'require' calls in package code:
  ‘TeachingDemos’ ‘ash’
  Please use :: or requireNamespace() instead.
  See section 'Suggested packages' in the 'Writing R Extensions' manual.
```
```
DONE
Status: 1 NOTE
```

## traitr (0.14)
Maintainer: John Verzani <jverzani@gmail.com>

```
checking DESCRIPTION meta-information ... NOTE
Malformed Title field: should not end in a period.
```
```
DONE
Status: 1 NOTE
```

## treebase (0.0-7.1)
Maintainer: Carl Boettiger <cboettig@gmail.com>  
Bug reports: http://www.github.com/ropensci/treebase/issues

```
checking package dependencies ... NOTE
Package suggested but not available for checking: ‘TreePar’
```
```
checking tests ... ERROR
Running the tests in ‘tests/test-all.R’ failed.
Last 13 lines of output:
  
  Type 'demo()' for some demos, 'help()' for on-line help, or
  'help.start()' for an HTML browser interface to help.
  Type 'q()' to quit R.
  
  > library(testthat)
  > test_check("treebase")
  Loading required package: treebase
  Loading required package: ape
  Error in test_dir(test_path, reporter = reporter, env = env, filter = filter,  : 
    No matching test file in dir
  Calls: test_check -> run_tests -> with_top_env -> test_dir
  Execution halted
```
```
DONE
Status: 1 ERROR, 1 NOTE
```

## treeclim (1.0.11)
Maintainer: Christian Zang <christian.zang@wzw.tum.de>

```
checking package dependencies ... NOTE
Package suggested but not available for checking: ‘dplR’
```
```
checking whether package ‘treeclim’ can be installed ... ERROR
Installation failed.
See ‘/private/tmp/RtmpQJiDLv/check_crand2516b207784/treeclim.Rcheck/00install.out’ for details.
Status: 1 ERROR, 1 NOTE
```

## trustOptim (0.8.5)
Maintainer: Michael Braun <braunm@smu.edu>

__OK__

## TSP (1.1-1)
Maintainer: Michael Hahsler <mhahsler@lyle.smu.edu>  
Bug reports: http://r-forge.r-project.org/projects/tsp/

__OK__

## tspmeta (1.1)
Maintainer: Bernd Bischl <bernd_bischl@gmx.net>  
Bug reports: https://github.com/berndbischl/tspmeta/issues

```
checking DESCRIPTION meta-information ... NOTE
Malformed Title field: should not end in a period.
```
```
checking S3 generic/method consistency ... WARNING
tour_length:
  function(x, ...)
tour_length.tsp_instance:
  function(x, order)

See section ‘Generic functions and methods’ in the ‘Writing R
Extensions’ manual.

Found the following apparent S3 methods exported but not registered:
  autoplot.tsp_instance
See section ‘Registering S3 methods’ in the ‘Writing R Extensions’
manual.
```
```
DONE
Status: 1 WARNING, 1 NOTE
```

## tufterhandout (1.2.1)
Maintainer: Michael C Sachs <sachsmc@gmail.com>  
Bug reports: http://github.com/sachsmc/tufterhandout/issues

```
checking DESCRIPTION meta-information ... NOTE
Malformed Description field: should contain one or more complete sentences.
```
```
DONE
Status: 1 NOTE
```

## turner (0.1.7)
Maintainer: Gaston Sanchez <gaston.stat@gmail.com>

__OK__

## tvm (0.2)
Maintainer: Juan Manuel Truppia <jmtruppia@gmail.com>

```
checking DESCRIPTION meta-information ... NOTE
Malformed Description field: should contain one or more complete sentences.
```
```
DONE
Status: 1 NOTE
```

## UNF (2.0.1)
Maintainer: Thomas Leeper <thosjleeper@gmail.com>  
Bug reports: https://github.com/leeper/UNF/issues

__OK__

## uniqtag (1.0)
Maintainer: Shaun Jackman <sjackman@gmail.com>  
Bug reports: https://github.com/sjackman/uniqtag/issues

__OK__

## urltools (1.1.0)
Maintainer: Oliver Keyes <ironholds@gmail.com>  
Bug reports: https://github.com/Ironholds/urltools/issues

__OK__

## USAboundaries (0.1.1)
Maintainer: Lincoln Mullen <lincoln@lincolnmullen.com>  
Bug reports: https://github.com/ropensci/USAboundaries/issues

__OK__

## vartors (0.2.6)
Maintainer: Joris Muller <joris.muller@etu.unistra.fr>  
Bug reports: https://github.com/jomuller/vartors/issues/new

```
checking R code for possible problems ... NOTE
descvars_skeleton: no visible binding for global variable ‘example_df’
```
```
DONE
Status: 1 NOTE
```

## vdmR (0.1.0)
Maintainer: Tomokazu Fujino <fujino@fwu.ac.jp>

```
checking tests ... ERROR
Running the tests in ‘tests/run-all.R’ failed.
Last 13 lines of output:
  'citation()' on how to cite R or R packages in publications.
  
  Type 'demo()' for some demos, 'help()' for on-line help, or
  'help.start()' for an HTML browser interface to help.
  Type 'q()' to quit R.
  
  > library(testthat)
  > library(vdmR)
  > test_package("vdmR")
  Error in test_dir(test_path, reporter = reporter, env = env, filter = filter,  : 
    No matching test file in dir
  Calls: test_package -> run_tests -> with_top_env -> test_dir
  Execution halted
```
```
DONE
Status: 1 ERROR
```

## vegdata (0.6.9)
Maintainer: Florian Jansen <jansen@uni-greifswald.de>

```
checking package dependencies ... NOTE
Packages suggested but not available for checking:
  ‘akima’ ‘googleVis’ ‘indicspecies’
```
```
checking re-building of vignette outputs ... NOTE
Error in re-building vignettes:
  ...
trying URL 'http://geobot.botanik.uni-greifswald.de/download/GermanSL/version1.2/GermanSL.zip'
Content type 'application/zip' length 3059835 bytes (2.9 MB)
==================================================
downloaded 2.9 MB

Warning in tv.site(db, tv_home, quiet = TRUE) :
  1 releves without date. Not converted from factor to date format.
Warning in tv.site(db, tv_home, quiet = TRUE) :
  1 releves without date. Not converted from factor to date format.
Warning in tv.site(db, tv_home, quiet = TRUE) :
  1 releves without date. Not converted from factor to date format.
Warning in tv.site(db, tv_home, quiet = TRUE) :
  1 releves without date. Not converted from factor to date format.
Warning in tv.site("taxatest") :
  1 releves without date. Not converted from factor to date format.
Warning in library(package, lib.loc = lib.loc, character.only = TRUE, logical.return = TRUE,  :
  there is no package called 'indicspecies'
Quitting from lines 427-433 (vegdata.Rnw) 
Error: processing vignette 'vegdata.Rnw' failed with diagnostics:
Package indicspecies needed (function multipatt)
Execution halted

```
```
DONE
Status: 2 NOTEs
```

## waffle (0.3.1)
Maintainer: Bob Rudis <bob@rudis.net>  
Bug reports: https://github.com/hrbrmstr/waffle/issues

__OK__

## Wats (0.2-16)
Maintainer: Will Beasley <wibeasley@hotmail.com>

```
checking package dependencies ... NOTE
Package suggested but not available for checking: ‘BayesSingleSub’
```
```
checking DESCRIPTION meta-information ... NOTE
Malformed Description field: should contain one or more complete sentences.
```
```
checking re-building of vignette outputs ... NOTE
Error in re-building vignettes:
  ...
Quitting from lines 281-301 (OkFertilityWithIntercensalEstimates.Rmd) 
Error: processing vignette 'OkFertilityWithIntercensalEstimates.Rmd' failed with diagnostics:
there is no package called 'BayesSingleSub'
Execution halted

```
```
DONE
Status: 3 NOTEs
```

## weatherData (0.4.1)
Maintainer: Ram Narasimhan <ramnarasimhan@gmail.com>

```
checking R code for possible problems ... NOTE
getStationCode: no visible binding for global variable
  ‘USAirportWeatherStations’
getStationCode: no visible binding for global variable ‘IntlWxStations’
```
```
DONE
Status: 1 NOTE
```

## wgsea (1.8)
Maintainer: Chris Wallace <chris.wallace@cimr.cam.ac.uk>

```
checking package dependencies ... ERROR
Package required but not available: ‘snpStats’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
Status: 1 ERROR
```

## WikipediR (1.2.0)
Maintainer: Oliver Keyes <ironholds@gmail.com>  
Bug reports: https://github.com/Ironholds/WikipediR/issues

__OK__

## wrassp (0.1.3)
Maintainer: Raphael Winkelmann <raphael@phonetik.uni-muenchen.de>  
Bug reports: https://github.com/IPS-LMU/wrassp/issues

```
checking package dependencies ... NOTE
Package suggested but not available for checking: ‘compare’
```
```
DONE
Status: 1 NOTE
```

## XiMpLe (0.03-21)
Maintainer: Meik Michalke <meik.michalke@hhu.de>

```
checking package dependencies ... NOTE
Package which this enhances but not available for checking: ‘rkward’
```
```
DONE
Status: 1 NOTE
```

## xml2 (0.1.0)
Maintainer: Hadley Wickham <hadley@rstudio.com>

__OK__

## yaml (2.1.13)
Maintainer: Jeremy Stephens <jeremy.stephens@vanderbilt.edu>

__OK__

## zoom (2.0.4)
Maintainer: Corentin M Barbu <corentin.barbu@gmail.com>

```
checking DESCRIPTION meta-information ... NOTE
Malformed Description field: should contain one or more complete sentences.
```
```
DONE
Status: 1 NOTE
```

## ztable (0.1.5)
Maintainer: Keon-Woong Moon <cardiomoon@gmail.com>

__OK__

