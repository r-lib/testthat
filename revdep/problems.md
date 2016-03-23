# Setup

## Platform

|setting  |value                        |
|:--------|:----------------------------|
|version  |R version 3.2.3 (2015-12-10) |
|system   |x86_64, darwin13.4.0         |
|ui       |X11                          |
|language |(EN)                         |
|collate  |en_US.UTF-8                  |
|tz       |America/Chicago              |
|date     |2016-03-22                   |

## Packages

|package  |*  |version     |date       |source                          |
|:--------|:--|:-----------|:----------|:-------------------------------|
|covr     |   |1.2.0       |2015-06-25 |CRAN (R 3.2.0)                  |
|crayon   |   |1.3.1       |2015-07-13 |CRAN (R 3.2.0)                  |
|devtools |*  |1.10.0      |2016-01-23 |CRAN (R 3.2.3)                  |
|digest   |   |0.6.9       |2016-01-08 |CRAN (R 3.2.3)                  |
|lazyeval |   |0.1.10      |2015-01-02 |CRAN (R 3.2.0)                  |
|magrittr |   |1.5         |2014-11-22 |CRAN (R 3.2.0)                  |
|praise   |   |1.0.0       |2015-08-11 |CRAN (R 3.2.0)                  |
|R6       |   |2.1.2       |2016-01-26 |CRAN (R 3.2.3)                  |
|testthat |*  |0.11.0.9000 |2016-03-23 |local (hadley/testthat@791f6de) |

# Check results
195 packages with problems

## adegenet (2.0.1)
Maintainer: Thibaut Jombart <thibautjombart@gmail.com>

0 errors | 1 warning  | 0 notes

```
checking whether package ‘adegenet’ can be installed ... WARNING
Found the following significant warnings:
  Warning: package ‘ade4’ was built under R version 3.2.4
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/adegenet.Rcheck/00install.out’ for details.
```

## afex (0.15-2)
Maintainer: Henrik Singmann <singmann+afex@gmail.com>

1 error  | 0 warnings | 0 notes

```
checking whether package ‘afex’ can be installed ... ERROR
Installation failed.
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/afex.Rcheck/00install.out’ for details.
```

## aidar (1.0.0)
Maintainer: Andreas Pfeiffer <apfeiffer1@gmail.com>

0 errors | 1 warning  | 3 notes

```
checking whether package ‘aidar’ can be installed ... WARNING
Found the following significant warnings:
  Warning: package ‘XML’ was built under R version 3.2.4
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/aidar.Rcheck/00install.out’ for details.

checking DESCRIPTION meta-information ... NOTE
Malformed Description field: should contain one or more complete sentences.

checking dependencies in R code ... NOTE
Package in Depends field not imported from: ‘XML’
  These packages need to be imported from (in the NAMESPACE file)
  for when this namespace is loaded but not attached.

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
... 34 lines ...
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

## alakazam (0.2.3)
Maintainer: Jason Vander Heiden <jason.vanderheiden@yale.edu>  
Bug reports: https://bitbucket.org/kleinstein/alakazam/issues

0 errors | 1 warning  | 0 notes

```
checking whether package ‘alakazam’ can be installed ... WARNING
Found the following significant warnings:
  Warning: package ‘ggplot2’ was built under R version 3.2.4
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/alakazam.Rcheck/00install.out’ for details.
```

## aLFQ (1.3.3)
Maintainer: George Rosenberger <rosenberger@imsb.biol.ethz.ch>

1 error  | 0 warnings | 0 notes

```
checking whether package ‘aLFQ’ can be installed ... ERROR
Installation failed.
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/aLFQ.Rcheck/00install.out’ for details.
```

## alm (0.4.0)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: http://www.github.com/ropensci/alm/issues

0 errors | 1 warning  | 1 note 

```
checking whether package ‘alm’ can be installed ... WARNING
Found the following significant warnings:
  Warning: replacing previous import by ‘grid::unit’ when loading ‘alm’
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/alm.Rcheck/00install.out’ for details.

checking files in ‘vignettes’ ... NOTE
The following directory looks like a leftover from 'knitr':
  ‘figure’
Please remove from your package.
```

## analogueExtra (0.1-0)
Maintainer: Gavin L. Simpson <ucfagls@gmail.com>  
Bug reports: https://github.com/gavinsimpson/analogueExtra/issues

0 errors | 1 warning  | 0 notes

```
checking whether package ‘analogueExtra’ can be installed ... WARNING
Found the following significant warnings:
  Warning: package ‘analogue’ was built under R version 3.2.4
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/analogueExtra.Rcheck/00install.out’ for details.
```

## ARTool (0.10.0)
Maintainer: Matthew Kay <mjskay@uw.edu>  
Bug reports: https://github.com/mjskay/ARTool/issues/new

1 error  | 0 warnings | 0 notes

```
checking whether package ‘ARTool’ can be installed ... ERROR
Installation failed.
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/ARTool.Rcheck/00install.out’ for details.
```

## bayesboot (0.2.0)
Maintainer: Rasmus Bååth <rasmus.baath@gmail.com>  
Bug reports: https://github.com/rasmusab/bayesboot/issues

1 error  | 0 warnings | 0 notes

```
checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  `output` does not match ".".
  Actual value: ""
  
  
  testthat results ================================================================
  OK: 24 SKIPPED: 2 FAILED: 4
  1. Failure: bayesboot produces a valid output (@test-bayesboot-deterministic.R#64) 
  2. Failure: bayesboot produces a valid output (@test-bayesboot-deterministic.R#65) 
  3. Failure: bayesboot produces a valid output (@test-bayesboot-deterministic.R#66) 
  4. Failure: bayesboot produces a valid output (@test-bayesboot-deterministic.R#67) 
  
  Error: testthat unit tests failed
  Execution halted
```

## BBmisc (1.9)
Maintainer: Bernd Bischl <bernd_bischl@gmx.net>  
Bug reports: https://github.com/berndbischl/BBmisc/issues

1 error  | 0 warnings | 0 notes

```
checking tests ... ERROR
Running the tests in ‘tests/run-all.R’ failed.
Last 13 lines of output:
  ...$NULL isn't true.
  
  
  testthat results ================================================================
  OK: 700 SKIPPED: 0 FAILED: 5
  1. Failure: suppressAll (@test_suppressAll.R#6) 
  2. Failure: suppressAll (@test_suppressAll.R#7) 
  3. Failure: suppressAll (@test_suppressAll.R#7) 
  4. Failure: suppressAll (@test_suppressAll.R#10) 
  5. Failure: suppressAll (@test_suppressAll.R#14) 
  
  Error: testthat unit tests failed
  Execution halted
```

## biom (0.3.12)
Maintainer: Paul J. McMurdie <mcmurdie@stanford.edu>  
Bug reports: https://github.com/joey711/biom/issues

1 error  | 0 warnings | 1 note 

```
checking tests ... ERROR
Running the tests in ‘tests/testthat-biom.R’ failed.
Last 13 lines of output:
  Actual value: ""
  
  
  2. Failure: show method output tests (@test-IO.R#70) ---------------------------
  `output` does not match "biom object. \ntype:".
  Actual value: ""
  
  
  DONE ===========================================================================
  Error: Test failures
  In addition: Warning message:
  Placing tests in `inst/tests/` is deprecated. Please use `tests/testthat/` instead 
  Execution halted

checking DESCRIPTION meta-information ... NOTE
Malformed Title field: should not end in a period.
```

## biomod2 (3.3-7)
Maintainer: Damien Georges <damien.georges2@gmail.com>  
Bug reports: <https://r-forge.r-project.org/R/?group_id=302>

0 errors | 1 warning  | 0 notes

```
checking whether package ‘biomod2’ can be installed ... WARNING
Found the following significant warnings:
  Warning: package ‘ggplot2’ was built under R version 3.2.4
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/biomod2.Rcheck/00install.out’ for details.
```

## bnclassify (0.3.2)
Maintainer: Mihaljevic Bojan <bmihaljevic@fi.upm.es>  
Bug reports: http://github.com/bmihaljevic/bnclassify/issues

1 error  | 0 warnings | 0 notes

```
checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  > 
  > test_check("bnclassify")
  1. Failure: Check dataset (@test-data-input.R#17) ------------------------------
  error$message does not match "Error : is_non_empty_complete(cnames) is not TRUE".
  Actual value: "is_non_empty_complete(cnames) is not TRUE"
  
  
  testthat results ================================================================
  OK: 459 SKIPPED: 14 FAILED: 1
  1. Failure: Check dataset (@test-data-input.R#17) 
  
  Error: testthat unit tests failed
  Execution halted
```

## boral (0.9.1)
Maintainer: Francis Hui <fhui28@gmail.com>

1 error  | 0 warnings | 0 notes

```
checking whether package ‘boral’ can be installed ... ERROR
Installation failed.
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/boral.Rcheck/00install.out’ for details.
```

## brms (0.8.0)
Maintainer: Paul-Christian Buerkner <paul.buerkner@gmail.com>  
Bug reports: http://github.com/paul-buerkner/brms/issues

1 error  | 0 warnings | 0 notes

```
checking whether package ‘brms’ can be installed ... ERROR
Installation failed.
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/brms.Rcheck/00install.out’ for details.
```

## caret (6.0-64)
Maintainer: Max Kuhn <Max.Kuhn@pfizer.com>  
Bug reports: https://github.com/topepo/caret/issues

1 error  | 0 warnings | 0 notes

```
checking whether package ‘caret’ can be installed ... ERROR
Installation failed.
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/caret.Rcheck/00install.out’ for details.
```

## caretEnsemble (2.0.0)
Maintainer: Zachary A. Deane-Mayer <zach.mayer@gmail.com>  
Bug reports: https://github.com/zachmayer/caretEnsemble/issues

1 error  | 0 warnings | 0 notes

```
checking whether package ‘caretEnsemble’ can be installed ... ERROR
Installation failed.
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/caretEnsemble.Rcheck/00install.out’ for details.
```

## Causata (4.2-0)
Maintainer: Justin Hemann <justinh@causata.com>

0 errors | 1 warning  | 5 notes

```
checking whether package ‘Causata’ can be installed ... WARNING
Found the following significant warnings:
  Warning: package ‘RCurl’ was built under R version 3.2.4
  Warning: package ‘glmnet’ was built under R version 3.2.4
  Warning: package ‘XML’ was built under R version 3.2.4
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/Causata.Rcheck/00install.out’ for details.

checking DESCRIPTION meta-information ... NOTE
Malformed Title field: should not end in a period.

checking top-level files ... NOTE
Non-standard file/directory found at top level:
  ‘integration_tests’

checking R code for possible problems ... NOTE
GetMetadata.Connect: no visible global function definition for
  ‘dbGetQuery’
GetRawData.Connect: no visible global function definition for
  ‘dbGetQuery’

checking line endings in Makefiles ... NOTE
Found the following Makefile(s) without a final LF:
  inst/doc/Makefile
Some ‘make’ programs ignore lines not ending in LF.

checking files in ‘vignettes’ ... NOTE
The following files look like leftovers/mistakes:
  ‘Causata-vignette.log’
Please remove them from your package.
The following directory looks like a leftover from 'knitr':
  ‘figure’
Please remove from your package.
```

## cellranger (1.0.0)
Maintainer: Jennifer Bryan <jenny@stat.ubc.ca>  
Bug reports: https://github.com/jennybc/cellranger/issues

1 error  | 0 warnings | 0 notes

```
checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  > 
  > test_check("cellranger")
  1. Failure: Print method works (@test-cell-specification.R#163) ----------------
  `output` does not match "<cell_limits (1, 7) x (3, -)>".
  Actual value: ""
  
  
  testthat results ================================================================
  OK: 93 SKIPPED: 0 FAILED: 1
  1. Failure: Print method works (@test-cell-specification.R#163) 
  
  Error: testthat unit tests failed
  Execution halted
```

## cjoint (2.0.4)
Maintainer: Anton Strezhnev <astrezhnev@fas.harvard.edu>

0 errors | 1 warning  | 0 notes

```
checking whether package ‘cjoint’ can be installed ... WARNING
Found the following significant warnings:
  Warning: package ‘ggplot2’ was built under R version 3.2.4
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/cjoint.Rcheck/00install.out’ for details.
```

## cleangeo (0.1-1)
Maintainer: Emmanuel Blondel <emmanuel.blondel1@gmail.com>  
Bug reports: https://github.com/eblondel/cleangeo/issues

0 errors | 1 warning  | 0 notes

```
checking whether package ‘cleangeo’ can be installed ... WARNING
Found the following significant warnings:
  Warning: replacing previous import by ‘maptools::nowrapSpatialLines’ when loading ‘cleangeo’
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/cleangeo.Rcheck/00install.out’ for details.
```

## climwin (0.1.2)
Maintainer: Liam D. Bailey <liam.bailey@anu.edu.au>

0 errors | 1 warning  | 0 notes

```
checking whether package ‘climwin’ can be installed ... WARNING
Found the following significant warnings:
  Warning: package ‘ggplot2’ was built under R version 3.2.4
  Warning: package ‘gridExtra’ was built under R version 3.2.4
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/climwin.Rcheck/00install.out’ for details.
```

## cmaesr (1.0.1)
Maintainer: Jakob Bossek <j.bossek@gmail.com>  
Bug reports: https://github.com/jakobbossek/cmaesr/issues

0 errors | 1 warning  | 0 notes

```
checking whether package ‘cmaesr’ can be installed ... WARNING
Found the following significant warnings:
  Warning: package ‘checkmate’ was built under R version 3.2.4
  Warning: package ‘smoof’ was built under R version 3.2.4
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/cmaesr.Rcheck/00install.out’ for details.
```

## cocor (1.1-2)
Maintainer: Birk Diedenhofen <mail@birkdiedenhofen.de>

1 error  | 0 warnings | 1 note 

```
checking tests ... ERROR
Running the tests in ‘tests/test.cocor.package.R’ failed.
Last 13 lines of output:
  Actual value: ""
  
  
  11. Failure: Output is correct (@test.r#102) -----------------------------------
  `output` does not match "Null hypothesis rejected \\(Lower boundary > 0\\)".
  Actual value: ""
  
  
  DONE ===========================================================================
  Error: Test failures
  In addition: Warning message:
  Placing tests in `inst/tests/` is deprecated. Please use `tests/testthat/` instead 
  Execution halted

checking package dependencies ... NOTE
Package which this enhances but not available for checking: ‘rkward’
```

## coefplot (1.2.4)
Maintainer: Jared P. Lander <packages@jaredlander.com>

0 errors | 1 warning  | 0 notes

```
checking whether package ‘coefplot’ can be installed ... WARNING
Found the following significant warnings:
  Warning: package ‘ggplot2’ was built under R version 3.2.4
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/coefplot.Rcheck/00install.out’ for details.
```

## crunch (1.8.0)
Maintainer: Neal Richardson <neal@crunch.io>  
Bug reports: https://github.com/Crunch-io/rcrunch/issues

1 error  | 0 warnings | 0 notes

```
checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  devtools::install_github("Crunch-io/rcrunch", ref="1.9.2")
  
  Attaching package: 'crunch'
  
  The following object is masked from 'package:base':
  
      table
  
  Error: error$message does not match "Error : POST /api/datasets/dataset1/variables.json {\"alias\":\"gender_copy\",\"format\":{\"summary\":{\"digits\":2}},\"view\":{\"include_missing\":false,\"show_counts\":false,\"show_codes\":false,\"column_width\":null},\"name\":\"Gender (copy)\",\"discarded\":false,\"description\":\"Gender\",\"expr\":{\"function\":\"copy_variable\",\"args\":[{\"variable\":\"/api/datasets/dataset1/variables/gender.json\"}]}}\n".
  Actual value: "POST /api/datasets/dataset1/variables.json {"alias":"gender_copy","format":{"summary":{"digits":2}},"view":{"include_missing":false,"show_counts":false,"show_codes":false,"column_width":null},"name":"Gender (copy)","discarded":false,"description":"Gender","expr":{"function":"copy_variable","args":[{"variable":"/api/datasets/dataset1/variables/gender.json"}]}}"
  testthat results ================================================================
  OK: 196 SKIPPED: 3 FAILED: 0
  Execution halted
```

## ctsem (1.1.5.2)
Maintainer: Charles Driver <driver@mpib-berlin.mpg.de>

0 errors | 1 warning  | 1 note 

```
checking whether package ‘ctsem’ can be installed ... WARNING
Found the following significant warnings:
  Warning: package ‘OpenMx’ was built under R version 3.2.4
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/ctsem.Rcheck/00install.out’ for details.

checking dependencies in R code ... NOTE
Namespace in Imports field not imported from: ‘methods’
  All declared Imports should be used.
```

## datafsm (0.1.0)
Maintainer: Nay John J. <john.j.nay@gmail.com>  
Bug reports: https://github.com/JohnNay/datafsm/issues

2 errors | 0 warnings | 0 notes

```
checking examples ... ERROR
Running examples in ‘datafsm-Ex.R’ failed
The error most likely occurred in:

> base::assign(".ptime", proc.time(), pos = "CheckExEnv")
> ### Name: evolve_model
> ### Title: Use a Genetic Algorithm to Estimate a Finite-state Machine Model
> ### Aliases: evolve_model
> 
> ### ** Examples
> 
> # Create data:
> cdata <- data.frame(period = rep(1:10, 1000),
+                    outcome = rep(1:2, 5000),
+                    my.decision1 = sample(1:0, 10000, TRUE),
+                    other.decision1 = sample(1:0, 10000, TRUE))
> (res <- evolve_model(cdata, cv=FALSE))
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘nlme’ 3.1-122 is already loaded, but >= 3.1.123 is required
Calls: evolve_model ... tryCatch -> tryCatchList -> tryCatchOne -> <Anonymous>
Execution halted

checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  Looking up history[4], period 1: (0, 536871056, 0)
  Looking up history[1], period 1: (0, 822083728, 0)
  Looking up history[2], period 0: (1, 822083728, 150995968)
  Looking up history[3], period 1: (0, 822083728, 393216)
  Looking up history[4], period 1: (0, 822083728, 32716)
  Looking up history[1], period 1: (1, 536871053, 0)
  testthat results ================================================================
  OK: 3 SKIPPED: 0 FAILED: 2
  1. Error: evolve_model() returns correct type of object (@test_mainfunc.R#7) 
  2. Error: evolve_model() returns warnings and errors (@test_mainfunc.R#14) 
  
  Error: testthat unit tests failed
  Execution halted
```

## describer (0.2.0)
Maintainer: Paul Hendricks <paul.hendricks.2013@owu.edu>  
Bug reports: https://github.com/paulhendricks/describer/issues

1 error  | 0 warnings | 0 notes

```
checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  'arg' must be NULL or a character vector
  1: lintr::expect_lint_free() at testthat/test-styling.R:4
  2: testthat::expectation(!has_lints, paste(sep = "\n", "Not lint free", lint_output), 
         "lint free")
  3: match.arg(type, c("success", "failure", "error", "skip", "warning")) at /Users/hadley/Documents/devtools/testthat/R/expectation.R:13
  4: stop("'arg' must be NULL or a character vector")
  
  testthat results ================================================================
  OK: 9 SKIPPED: 0 FAILED: 1
  1. Error: Package Style (@test-styling.R#4) 
  
  Error: testthat unit tests failed
  Execution halted
```

## DSsim (1.0.4)
Maintainer: Laura Marshall <lhm@st-and.ac.uk>

1 error  | 0 warnings | 0 notes

```
checking tests ... ERROR
Running the tests in ‘tests/run-all.R’ failed.
Last 13 lines of output:
  Actual value: "invalid class "Region" object: The lengths of the coords and gaps lists differ, these must be the same and equal to the number of strata."
  
  
  2. Failure: Can create object or return correct error messages (@test_Constructors.R#16) 
  error$message does not match "You must provide either coordinates or a shapefile.".
  Actual value: "You must provide either coordinates or a shapefile"
  
  
  DONE ===========================================================================
  Error: Test failures
  In addition: Warning message:
  Placing tests in `inst/tests/` is deprecated. Please use `tests/testthat/` instead 
  Execution halted
```

## dtwclust (2.1.1)
Maintainer: Alexis Sarda <alexis.sarda@gmail.com>  
Bug reports: https://github.com/asardaes/dtwclust/issues

0 errors | 1 warning  | 0 notes

```
checking whether package ‘dtwclust’ can be installed ... WARNING
Found the following significant warnings:
  Warning: package ‘ggplot2’ was built under R version 3.2.4
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/dtwclust.Rcheck/00install.out’ for details.
```

## edfReader (1.0.0)
Maintainer: Jan Vis <jan@visconsultancy.eu>

1 error  | 0 warnings | 0 notes

```
checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  1. Error: checkCPart: B1: First sample [0:.5) (@testFromTill.R#346) 
  2. Error: checkCPart: B2: First sample [0:1) (@testFromTill.R#346) 
  3. Error: checkCPart: B3: First 2 samples [0:1.000) (@testFromTill.R#346) 
  4. Error: checkCPart: B4: No first sample [0:0) (@testFromTill.R#346) 
  5. Error: checkCPart: F1: End of record 1: no last sample [end-.9999:end) (@testFromTill.R#346) 
  6. Error: checkCPart: F2: End of record 1: last sample [end-1:end) (@testFromTill.R#346) 
  7. Error: checkCPart: F3: End of record 1: last sample + next [end:end+1.0001) (@testFromTill.R#346) 
  8. Error: checkCPart: F4: End of 1 record: 1-st sample rec 2 [end:end+1) (@testFromTill.R#346) 
  9. Error: checkCPart: F5: no last sample [end:end) (@testFromTill.R#346) 
  1. ...
  
  Error: testthat unit tests failed
  Execution halted
```

## eeptools (0.9.1)
Maintainer: Jared E. Knowles <jknowles@gmail.com>

0 errors | 1 warning  | 0 notes

```
checking whether package ‘eeptools’ can be installed ... WARNING
Found the following significant warnings:
  Warning: package ‘ggplot2’ was built under R version 3.2.4
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/eeptools.Rcheck/00install.out’ for details.
```

## emil (2.2.3)
Maintainer: Christofer Backlin <emil@christofer.backlin.se>  
Bug reports: https://github.com/Molmed/emil/issues

1 error  | 0 warnings | 0 notes

```
checking examples ... ERROR
Running examples in ‘emil-Ex.R’ failed
The error most likely occurred in:

> base::assign(".ptime", proc.time(), pos = "CheckExEnv")
> ### Name: modeling_procedure
> ### Title: Setup a modeling procedure
> ### Aliases: modeling_procedure
> 
> ### ** Examples
... 70 lines ...
   tuned: no
> 
> # 6: Train elastic nets using the caret package's model fitting framework
> library(caret)
Loading required package: lattice
Loading required package: ggplot2
Warning: package ‘ggplot2’ was built under R version 3.2.4
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘nlme’ 3.1-122 is already loaded, but >= 3.1.123 is required
Error: package or namespace load failed for ‘caret’
Execution halted
```

## EpiModel (1.2.5)
Maintainer: Samuel Jenness <samuel.m.jenness@emory.edu>  
Bug reports: https://github.com/statnet/EpiModel/issues

0 errors | 1 warning  | 0 notes

```
checking whether package ‘EpiModel’ can be installed ... WARNING
Found the following significant warnings:
  Warning: package ‘deSolve’ was built under R version 3.2.4
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/EpiModel.Rcheck/00install.out’ for details.
```

## evaluate (0.8.3)
Maintainer: Yihui Xie <xie@yihui.name>  
Bug reports: https://github.com/hadley/evaluate/issues

1 error  | 0 warnings | 0 notes

```
checking tests ... ERROR
Running the tests in ‘tests/test-all.R’ failed.
Last 13 lines of output:
  > 
  > if (require("testthat", quietly = TRUE)) test_check("evaluate")
  1. Failure: return value of value handler inserted directly in output list (@test-evaluate.r#63) 
  classes(ev) not equal to c("source", "numeric", "source", "source", "source", "gg").
  Lengths differ: 7 vs 6
  
  
  testthat results ================================================================
  OK: 47 SKIPPED: 0 FAILED: 1
  1. Failure: return value of value handler inserted directly in output list (@test-evaluate.r#63) 
  
  Error: testthat unit tests failed
  Execution halted
```

## explor (0.2)
Maintainer: Julien Barnier <julien.barnier@ens-lyon.fr>  
Bug reports: https://github.com/juba/explor/issues

1 error  | 0 warnings | 0 notes

```
checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  
  The following object is masked from 'package:FactoMineR':
  
      reconst
  
  testthat results ================================================================
  OK: 68 SKIPPED: 0 FAILED: 1
  1. Failure: Qualitative supplementary variables results are equal (@test_prepare_results_MCA.R#35) 
  
  Error: testthat unit tests failed
  In addition: Warning message:
  package 'ade4' was built under R version 3.2.4 
  Execution halted
```

## FinancialInstrument (1.2.0)
Maintainer: Garrett See <gsee000@gmail.com>

0 errors | 1 warning  | 1 note 

```
checking whether package ‘FinancialInstrument’ can be installed ... WARNING
Found the following significant warnings:
  Warning: package ‘TTR’ was built under R version 3.2.4
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/FinancialInstrument.Rcheck/00install.out’ for details.

checking dependencies in R code ... NOTE
'library' or 'require' calls in package code:
  ‘XML’ ‘foreach’ ‘its’ ‘timeSeries’ ‘utils’
  Please use :: or requireNamespace() instead.
  See section 'Suggested packages' in the 'Writing R Extensions' manual.
```

## flacco (1.2)
Maintainer: Pascal Kerschke <kerschke@uni-muenster.de>  
Bug reports: https://github.com/kerschke/flacco/issues

1 error  | 1 warning  | 0 notes

```
checking tests ... ERROR
Running the tests in ‘tests/test-general.R’ failed.
Last 13 lines of output:
  5: testthat::expectation(identical(res, TRUE), failure_msg = res, success_msg = "all good")
  
  testthat results ================================================================
  OK: 127 SKIPPED: 0 FAILED: 4
  1. Error: Basic Initial Samples (@test-base-createInitialSample.R#6) 
  2. Error: Create Initial Sample with Custom Bounds (@test-base-createInitialSample.R#34) 
  3. Error: Without Diagonal (@test-base-findLinearNeighbours.R#10) 
  4. Error: With Diagonal (@test-base-findLinearNeighbours.R#25) 
  
  Error: testthat unit tests failed
  In addition: Warning message:
  package 'checkmate' was built under R version 3.2.4 
  Execution halted

checking whether package ‘flacco’ can be installed ... WARNING
Found the following significant warnings:
  Warning: package ‘checkmate’ was built under R version 3.2.4
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/flacco.Rcheck/00install.out’ for details.
```

## flexsurv (0.7)
Maintainer: Christopher Jackson <chris.jackson@mrc-bsu.cam.ac.uk>  
Bug reports: https://github.com/chjackson/flexsurv-dev/issues

1 error  | 0 warnings | 0 notes

```
checking tests ... ERROR
Running the tests in ‘tests/test_base.R’ failed.
Last 13 lines of output:
  20  803 0.4242224 0.3122276 0.6699015
  21  855 0.3983386 0.2915703 0.6476923
  22 1040 0.3171789 0.2292236 0.5716803
  23 1106 0.2920295 0.2105786 0.5458372
  24 1129 0.2836991 0.2044666 0.5370006
  25 1206 0.2573606 0.1853397 0.5080735
  26 1227 0.2505762 0.1804595 0.5003627
  testthat results ================================================================
  OK: 378 SKIPPED: 0 FAILED: 1
  1. Error: Analytic derivatives match numeric (@test_deriv.R#19) 
  
  Error: testthat unit tests failed
  Execution halted
```

## ForeCA (0.2.2)
Maintainer: Georg M. Goerg <im@gmge.org>

1 error  | 0 warnings | 0 notes

```
checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  1. Error: E-step computes correct linear combination spectrum (@test_foreca.EM-aux.R#42) 
  2. Error: E-step computes correct linear combination spectrum (@test_foreca.EM-aux.R#42) 
  3. Error: E-step computes correct linear combination spectrum (@test_foreca.EM-aux.R#42) 
  4. Error: E-step computes correct linear combination spectrum (@test_foreca.EM-aux.R#42) 
  5. Error: E-step computes correct linear combination spectrum (@test_foreca.EM-aux.R#42) 
  6. Error: M-step minimizes entropy bound via eigen value inequality (@test_foreca.EM-aux.R#131) 
  7. Error: One more minimization via KL divergence inequality (@test_foreca.EM-aux.R#137) 
  8. Error: M-step minimizes entropy bound via eigen value inequality (@test_foreca.EM-aux.R#131) 
  9. Error: One more minimization via KL divergence inequality (@test_foreca.EM-aux.R#137) 
  1. ...
  
  Error: testthat unit tests failed
  Execution halted
```

## forecast (6.2)
Maintainer: Rob J Hyndman <Rob.Hyndman@monash.edu>  
Bug reports: https://github.com/robjhyndman/forecast/issues

1 error  | 0 warnings | 0 notes

```
checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  1. Failure: tests for as.character.Arima() (@test-arima.R#77) 
  2. Failure: test auto.arima() and associated methods (@test-newarima2.R#15) 
  3. Failure: test auto.arima() and associated methods (@test-newarima2.R#21) 
  4. Failure: test parallel = TRUE and stepwise = FALSE for auto.arima() (@test-newarima2.R#27) 
  5. Failure: Test tbats() and forecasts (@test-tbats.R#23) 
  6. Failure: Test tbats() and forecasts (@test-tbats.R#24) 
  7. Failure: Test tbats() and forecasts (@test-tbats.R#25) 
  8. Failure: Test tbats() and forecasts (@test-tbats.R#26) 
  9. Failure: Test tbats() and forecasts (@test-tbats.R#28) 
  1. ...
  
  Error: testthat unit tests failed
  Execution halted
```

## FSA (0.8.5)
Maintainer: Derek Ogle <derek@derekogle.com>  
Bug reports: https://github.com/droglenc/FSA/issues

1 error  | 0 warnings | 1 note 

```
checking tests ... ERROR
Running the tests in ‘tests/test-all.R’ failed.
Last 13 lines of output:
      DfO  logLikO DfA  logLikA Df   logLik   Chisq Pr(>Chisq)    
  1vA   9 -30.8931   7 -19.2686  2 -11.6245 23.2491  8.944e-06 ***
  2vA   8 -23.7731   7 -19.2686  1  -4.5045  9.0091   0.002686 ** 
  ---
  Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
  testthat results ================================================================
  OK: 1611 SKIPPED: 0 FAILED: 3
  1. Failure: psdAdd() errors and warnings (@test_PSD.R#130) 
  2. Failure: psdAdd() errors and warnings (@test_PSD.R#131) 
  3. Failure: wrAdd() errors and warnings (@test_WSWR.R#60) 
  
  Error: testthat unit tests failed
  Execution halted

checking Rd cross-references ... NOTE
Packages unavailable to check Rd xrefs: ‘alr3’, ‘prettyR’, ‘epitools’, ‘asbio’, ‘DescTools’
```

## FunChisq (2.2.2)
Maintainer: Joe Song <joemsong@cs.nmsu.edu>

0 errors | 1 warning  | 0 notes

```
checking whether package ‘FunChisq’ can be installed ... WARNING
Found the following significant warnings:
  /usr/local/include/boost/math/special_functions/detail/lanczos_sse2.hpp:54:4: warning: 'register' storage class specifier is deprecated [-Wdeprecated-register]
  /usr/local/include/boost/math/special_functions/detail/lanczos_sse2.hpp:55:4: warning: 'register' storage class specifier is deprecated [-Wdeprecated-register]
  /usr/local/include/boost/math/special_functions/detail/lanczos_sse2.hpp:56:4: warning: 'register' storage class specifier is deprecated [-Wdeprecated-register]
  /usr/local/include/boost/math/special_functions/detail/lanczos_sse2.hpp:57:4: warning: 'register' storage class specifier is deprecated [-Wdeprecated-register]
  /usr/local/include/boost/math/special_functions/detail/lanczos_sse2.hpp:58:4: warning: 'register' storage class specifier is deprecated [-Wdeprecated-register]
  /usr/local/include/boost/math/special_functions/detail/lanczos_sse2.hpp:139:4: warning: 'register' storage class specifier is deprecated [-Wdeprecated-register]
  /usr/local/include/boost/math/special_functions/detail/lanczos_sse2.hpp:140:4: warning: 'register' storage class specifier is deprecated [-Wdeprecated-register]
  /usr/local/include/boost/math/special_functions/detail/lanczos_sse2.hpp:141:4: warning: 'register' storage class specifier is deprecated [-Wdeprecated-register]
  /usr/local/include/boost/math/special_functions/detail/lanczos_sse2.hpp:142:4: warning: 'register' storage class specifier is deprecated [-Wdeprecated-register]
  /usr/local/include/boost/math/special_functions/detail/lanczos_sse2.hpp:143:4: warning: 'register' storage class specifier is deprecated [-Wdeprecated-register]
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/FunChisq.Rcheck/00install.out’ for details.
```

## gemtc (0.8)
Maintainer: Gert van Valkenhoef <g.h.m.van.valkenhoef@rug.nl>

1 error  | 0 warnings | 0 notes

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
> # NOTE: the mtc.run commands below are for illustrative purposes, such a small
> # number of iterations should obviously not be used in practice.
> 
> # set a uniform prior standard deviation
> model1 <- mtc.model(smoking, hy.prior=mtc.hy.prior("std.dev", "dunif", 0, 2))
> result <- mtc.run(model1, n.adapt=10, n.iter=10)
Error: .onLoad failed in loadNamespace() for 'rjags', details:
  call: dyn.load(file, DLLpath = DLLpath, ...)
  error: unable to load shared object '/Users/hadley/R-revdep/rjags/libs/rjags.so':
  dlopen(/Users/hadley/R-revdep/rjags/libs/rjags.so, 10): Library not loaded: /usr/local/lib/libjags.3.dylib
  Referenced from: /Users/hadley/R-revdep/rjags/libs/rjags.so
  Reason: image not found
Execution halted
```

## geneSLOPE (0.36.6)
Maintainer: Piotr Sobczyk <piotr.sobczyk@pwr.edu.pl>  
Bug reports: https://github.com/psobczyk/geneSLOPE/issues

0 errors | 1 warning  | 0 notes

```
checking whether package ‘geneSLOPE’ can be installed ... WARNING
Found the following significant warnings:
  Warning: replacing previous import by ‘grid::arrow’ when loading ‘geneSLOPE’
  Warning: replacing previous import by ‘grid::unit’ when loading ‘geneSLOPE’
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/geneSLOPE.Rcheck/00install.out’ for details.
```

## geoknife (1.2.1)
Maintainer: Jordan Read <jread@usgs.gov>  
Bug reports: https://github.com/USGS-R/geoknife/issues

1 error  | 0 warnings | 0 notes

```
checking examples ... ERROR
Running examples in ‘geoknife-Ex.R’ failed
The error most likely occurred in:

> base::assign(".ptime", proc.time(), pos = "CheckExEnv")
> ### Name: query
> ### Title: query webdata for various fields
> ### Aliases: query query,character,missing-method
> ###   query,webdata,character-method query,webdata,missing-method
> ###   query,webdata-method query,webgeom,character-method
> ###   query,webgeom-method query,webprocess,character-method
> ###   query,webprocess-method
> ### Keywords: methods
> 
> ### ** Examples
> 
> fabric <- webdata('prism')
> query(fabric, 'variables')
Error in curl::curl_fetch_memory(url, handle = handle) : 
  Failure when receiving data from the peer
Calls: query ... variables_query -> variables_query -> genericExecute -> gPOST
Execution halted
```

## ggalt (0.1.1)
Maintainer: Bob Rudis <bob@rudis.net>  
Bug reports: https://github.com/hrbrmstr/ggalt/issues

0 errors | 1 warning  | 0 notes

```
checking whether package ‘ggalt’ can be installed ... WARNING
Found the following significant warnings:
  Warning: package ‘ggplot2’ was built under R version 3.2.4
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/ggalt.Rcheck/00install.out’ for details.
```

## ggfortify (0.1.0)
Maintainer: Masaaki Horikoshi <sinhrks@gmail.com>

1 error  | 1 warning  | 0 notes

```
checking tests ... ERROR
Running the tests in ‘tests/test-all.R’ failed.
Last 13 lines of output:
  Lengths differ: 4 vs 3
  
  
  Loading required package: urca
  Loading required package: lmtest
  testthat results ================================================================
  OK: 556 SKIPPED: 1 FAILED: 1
  1. Failure: fortify.cpt works for AirPassengers (@test-changepoint.R#24) 
  
  Error: testthat unit tests failed
  In addition: Warning message:
  package 'ggplot2' was built under R version 3.2.4 
  Execution halted

checking whether package ‘ggfortify’ can be installed ... WARNING
Found the following significant warnings:
  Warning: package ‘ggplot2’ was built under R version 3.2.4
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/ggfortify.Rcheck/00install.out’ for details.
```

## ggswissmaps (0.0.8)
Maintainer: Sandro Petrillo Burri <gibo.gaf@gmail.com>

0 errors | 1 warning  | 0 notes

```
checking whether package ‘ggswissmaps’ can be installed ... WARNING
Found the following significant warnings:
  Warning: package ‘ggplot2’ was built under R version 3.2.4
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/ggswissmaps.Rcheck/00install.out’ for details.
```

## ggthemes (3.0.2)
Maintainer: Jeffrey B. Arnold <jeffrey.arnold@gmail.com>  
Bug reports: http://github.com/jrnold/ggthemes

1 error  | 0 warnings | 0 notes

```
checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  'arg' must be NULL or a character vector
  1: lintr::expect_lint_free() at testthat/test-linters.R:4
  2: testthat::expectation(!has_lints, paste(sep = "\n", "Not lint free", lint_output), 
         "lint free")
  3: match.arg(type, c("success", "failure", "error", "skip", "warning")) at /Users/hadley/Documents/devtools/testthat/R/expectation.R:13
  4: stop("'arg' must be NULL or a character vector")
  
  testthat results ================================================================
  OK: 2 SKIPPED: 0 FAILED: 1
  1. Error: Package Style (@test-linters.R#4) 
  
  Error: testthat unit tests failed
  Execution halted
```

## glmmsr (0.1.1)
Maintainer: Helen Ogden <heogden12@gmail.com>  
Bug reports: http://github.com/heogden/glmmsr/issues

0 errors | 1 warning  | 0 notes

```
checking whether package ‘glmmsr’ can be installed ... WARNING
Found the following significant warnings:
  /usr/local/include/boost/math/special_functions/detail/lanczos_sse2.hpp:54:4: warning: 'register' storage class specifier is deprecated [-Wdeprecated-register]
  /usr/local/include/boost/math/special_functions/detail/lanczos_sse2.hpp:55:4: warning: 'register' storage class specifier is deprecated [-Wdeprecated-register]
  /usr/local/include/boost/math/special_functions/detail/lanczos_sse2.hpp:56:4: warning: 'register' storage class specifier is deprecated [-Wdeprecated-register]
  /usr/local/include/boost/math/special_functions/detail/lanczos_sse2.hpp:57:4: warning: 'register' storage class specifier is deprecated [-Wdeprecated-register]
  /usr/local/include/boost/math/special_functions/detail/lanczos_sse2.hpp:58:4: warning: 'register' storage class specifier is deprecated [-Wdeprecated-register]
  /usr/local/include/boost/math/special_functions/detail/lanczos_sse2.hpp:139:4: warning: 'register' storage class specifier is deprecated [-Wdeprecated-register]
  /usr/local/include/boost/math/special_functions/detail/lanczos_sse2.hpp:140:4: warning: 'register' storage class specifier is deprecated [-Wdeprecated-register]
  /usr/local/include/boost/math/special_functions/detail/lanczos_sse2.hpp:141:4: warning: 'register' storage class specifier is deprecated [-Wdeprecated-register]
  /usr/local/include/boost/math/special_functions/detail/lanczos_sse2.hpp:142:4: warning: 'register' storage class specifier is deprecated [-Wdeprecated-register]
  /usr/local/include/boost/math/special_functions/detail/lanczos_sse2.hpp:143:4: warning: 'register' storage class specifier is deprecated [-Wdeprecated-register]
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/glmmsr.Rcheck/00install.out’ for details.
```

## GMCM (1.2.2)
Maintainer: Anders Ellern Bilgrau <abilgrau@math.aau.dk>  
Bug reports: https://github.com/AEBilgrau/GMCM/issues

1 error  | 0 warnings | 0 notes

```
checking tests ... ERROR
Running the tests in ‘tests/test-all.R’ failed.
Last 13 lines of output:
  1: expect_that(res2, is_between(0, 1)) at /Users/hadley/Documents/devtools/testthat/revdep/checks/GMCM.Rcheck/GMCM/tests/test-get.idr-get-prob-get.IDR2.R:78
  2: is_between(0, 1) at /Users/hadley/Documents/devtools/testthat/R/expect-that.R:22
  
  3. Error: test get.prob result format (@test-get.idr-get-prob-get.IDR2.R#87) ---
  could not find function "find_expr"
  1: expect_that(res3, is_between(0, 1)) at /Users/hadley/Documents/devtools/testthat/revdep/checks/GMCM.Rcheck/GMCM/tests/test-get.idr-get-prob-get.IDR2.R:87
  2: is_between(0, 1) at /Users/hadley/Documents/devtools/testthat/R/expect-that.R:22
  
  DONE ===========================================================================
  Error: Test failures
  In addition: Warning message:
  Placing tests in `inst/tests/` is deprecated. Please use `tests/testthat/` instead 
  Execution halted
```

## Gmisc (1.3.1)
Maintainer: Max Gordon <max@gforge.se>  
Bug reports: https://github.com/gforge/Gmisc/issues

1 error  | 0 warnings | 0 notes

```
checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  label: Highlighting (with options) 
  List of 1
   $ echo: logi TRUE
  
    ordinary text without R code
  
  output file: Full_test_suite.knit.md
  
  /usr/local/bin/pandoc +RTS -K512m -RTS Full_test_suite.utf8.md --to html --from markdown+autolink_bare_uris+ascii_identifiers+tex_math_single_backslash --output /tmp/RtmpCctNIP/tmp.html --smart --email-obfuscation none --standalone --section-divs --template /Users/hadley/R-revdep/rmarkdown/rmd/h/default.html --css docx.css --no-highlight 
  
  Output created: /tmp/RtmpCctNIP/tmp.html
  R(51944,0x7fff74f70000) malloc: *** error for object 0x7ffc658b3890: incorrect checksum for freed object - object was probably modified after being freed.
  *** set a breakpoint in malloc_error_break to debug
```

## gmum.r (0.2.1)
Maintainer: Stanislaw Jastrzebski <staszek.jastrzebski@gmail.com>  
Bug reports: https://github.com/gmum/gmum.r/issues

0 errors | 1 warning  | 0 notes

```
checking whether package ‘gmum.r’ can be installed ... WARNING
Found the following significant warnings:
  Warning: package ‘ggplot2’ was built under R version 3.2.4
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/gmum.r.Rcheck/00install.out’ for details.
```

## gmwm (2.0.0)
Maintainer: Stephane Guerrier <stephane@illinois.edu>  
Bug reports: https://github.com/SMAC-Group/gmwm/issues

0 errors | 1 warning  | 1 note 

```
checking whether package ‘gmwm’ can be installed ... WARNING
Found the following significant warnings:
  Warning: package ‘ggplot2’ was built under R version 3.2.4
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/gmwm.Rcheck/00install.out’ for details.

checking package dependencies ... NOTE
Package suggested but not available for checking: ‘imudata’
```

## gpuR (1.1.0)
Maintainer: Charles Determan Jr. <cdetermanjr@gmail.com>  
Bug reports: http://github.com/cdeterman/gpuR/issues/new

1 error  | 0 warnings | 0 notes

```
checking package dependencies ... ERROR
Package required but not available: ‘RViennaCL’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
```

## gWidgets2RGtk2 (1.0-4)
Maintainer: John Verzani <jverzani@gmail.com>

1 error  | 0 warnings | 0 notes

```
checking tests ... ERROR
Running the tests in ‘tests/run-tests.R’ failed.
Last 13 lines of output:
  > 
  > sapply(f, function(i) {
  +   message("testing ", i)
  +   source(i)
  + })
  testing /Users/hadley/R-revdep/gWidgets2/tests/button.R
  Loading required package: gWidgets2RGtk2
  Loading required package: memoise
  Loading required package: RGtk2
  R session is headless; GTK+ not initialized.
  Error in guiToolkit() : Can't load RGtk2
  Calls: sapply ... withVisible -> eval -> eval -> gwindow -> guiToolkit
  Execution halted
```

## gWidgets2tcltk (1.0-4)
Maintainer: John Verzani <jverzani@gmail.com>

1 error  | 0 warnings | 0 notes

```
checking whether package ‘gWidgets2tcltk’ can be installed ... ERROR
Installation failed.
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/gWidgets2tcltk.Rcheck/00install.out’ for details.
```

## h5 (0.9.5)
Maintainer: Mario Annau <mario.annau@gmail.com>  
Bug reports: https://github.com/mannau/h5/issues

1 error  | 0 warnings | 1 note 

```
checking whether package ‘h5’ can be installed ... ERROR
Installation failed.
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/h5.Rcheck/00install.out’ for details.

checking package dependencies ... NOTE
Package suggested but not available for checking: ‘highlight’
```

## harvestr (0.6.0)
Maintainer: Andrew Redd <andrew.redd@hsc.utah.edu>

1 error  | 0 warnings | 0 notes

```
checking tests ... ERROR
Running the tests in ‘tests/testthat-package.R’ failed.
Last 13 lines of output:
  'arg' must be NULL or a character vector
  1: expect_that(harvest(x, mean, time = T), has_time) at /Users/hadley/Documents/devtools/testthat/revdep/checks/harvestr.Rcheck/harvestr/tests/test-timing.R:74
  2: condition(object) at /Users/hadley/Documents/devtools/testthat/R/expect-that.R:22
  3: expectation(T, "") at /Users/hadley/Documents/devtools/testthat/revdep/checks/harvestr.Rcheck/harvestr/tests/test-timing.R:37
  4: match.arg(type, c("success", "failure", "error", "skip", "warning")) at /Users/hadley/Documents/devtools/testthat/R/expectation.R:13
  5: stop("'arg' must be NULL or a character vector")
  
  DONE ===========================================================================
  Error: Test failures
  In addition: Warning messages:
  1: Placing tests in `inst/tests/` is deprecated. Please use `tests/testthat/` instead 
  2: package 'MCMCpack' was built under R version 3.2.4 
  Execution halted
```

## hunspell (1.2)
Maintainer: Jeroen Ooms <jeroen.ooms@stat.ucla.edu>  
Bug reports: https://github.com/jeroenooms/hunspell/issues

1 error  | 0 warnings | 0 notes

```
checking whether package ‘hunspell’ can be installed ... ERROR
Installation failed.
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/hunspell.Rcheck/00install.out’ for details.
```

## HydeNet (0.10.3)
Maintainer: Benjamin Nutter <benjamin.nutter@gmail.com>  
Bug reports: https://github.com/nutterb/HydeNet/issues

1 error  | 0 warnings | 0 notes

```
checking whether package ‘HydeNet’ can be installed ... ERROR
Installation failed.
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/HydeNet.Rcheck/00install.out’ for details.
```

## hyperSpec (0.98-20150304)
Maintainer: Claudia Beleites <chemometrie@beleites.de>

0 errors | 1 warning  | 1 note 

```
checking whether package ‘hyperSpec’ can be installed ... WARNING
Found the following significant warnings:
  Warning: package ‘ggplot2’ was built under R version 3.2.4
  Warning: replacing previous import by ‘grid::unit’ when loading ‘hyperSpec’
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/hyperSpec.Rcheck/00install.out’ for details.

checking R code for possible problems ... NOTE
Warning: local assignments to syntactic functions: ~
Warning: local assignments to syntactic functions: ~
```

## ibr (2.0-2)
Maintainer: "Pierre-Andre Cornillon" <pierre-andre.cornillon@univ-rennes2.fr>

1 error  | 0 warnings | 0 notes

```
checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  This is mgcv 1.8-9. For overview type 'help("mgcv-package")'.
  > 
  > test_check("ibr")
  1. Failure: modelling results with lowrank DS splines default df and rank=40 (@test_dim5.R#57) 
  all(abs(res$fitted - res2$fitted) < 1e-06) isn't true.
  
  
  testthat results ================================================================
  OK: 31 SKIPPED: 0 FAILED: 1
  1. Failure: modelling results with lowrank DS splines default df and rank=40 (@test_dim5.R#57) 
  
  Error: testthat unit tests failed
  Execution halted
```

## icd9 (1.3)
Maintainer: Jack O. Wasey <jack@jackwasey.com>  
Bug reports: https://github.com/jackwasey/icd9/issues

1 error  | 0 warnings | 1 note 

```
checking tests ... ERROR
Running the tests in ‘tests/test-all.R’ failed.
Last 13 lines of output:
      equals, is_less_than, not
  
  > do_slow_tests <- FALSE
  > do_online_tests <- FALSE
  > if (identical(Sys.getenv("COVR"), "true")) {
  +   do_slow_tests <- TRUE
  +   do_online_tests <- TRUE
  + }
  > test_check("icd9", reporter = MultiReporter(reporters = list(SummaryReporter(), StopReporter())))
  Error in find_reporter(reporter) : 
    could not find function "MultiReporter"
  Calls: test_check -> run_tests -> find_reporter
  Execution halted

checking data for non-ASCII characters ... NOTE
  Note: found 14 marked Latin-1 strings
  Note: found 39 marked UTF-8 strings
```

## identifyr (0.1)
Maintainer: George Miranda <georgemirandajr@gmail.com>  
Bug reports: https://github.com/georgemirandajr/identifyr/issues

1 error  | 0 warnings | 0 notes

```
checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  1. Failure: string is padding correctly when PB is present (@test_pbnum.R#8) 
  2. Failure: string is padding correctly when PB is present (@test_pbnum.R#11) 
  3. Failure: string is padding correctly when PB is present (@test_pbnum.R#14) 
  4. Failure: string is padding correctly when PB is present (@test_pbnum.R#15) 
  5. Failure: string is padding correctly when PB is present (@test_pbnum.R#16) 
  6. Failure: string is padding correctly when PB is present (@test_pbnum.R#17) 
  7. Failure: string is padding correctly when PB is present (@test_pbnum.R#18) 
  8. Failure: string is padding correctly when X is present (@test_xnum.R#8) 
  9. Failure: string is padding correctly when X is present (@test_xnum.R#9) 
  1. ...
  
  Error: testthat unit tests failed
  Execution halted
```

## ifaTools (0.8)
Maintainer: Joshua N. Pritikin <jpritikin@pobox.com>

0 errors | 1 warning  | 0 notes

```
checking whether package ‘ifaTools’ can be installed ... WARNING
Found the following significant warnings:
  Warning: package ‘ggplot2’ was built under R version 3.2.4
  Warning: package ‘OpenMx’ was built under R version 3.2.4
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/ifaTools.Rcheck/00install.out’ for details.
```

## infuser (0.2.2)
Maintainer: Bart Smeets <bartsmeets86@gmail.com>  
Bug reports: https://github.com/bart6114/infuser/issues

1 error  | 0 warnings | 0 notes

```
checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  1. Failure: string replacements occurs as expected (@test_core_functionality.R#37) 
  2. Failure: string replacements occurs as expected (@test_core_functionality.R#38) 
  3. Failure: string replacements occurs as expected when providing a list instead of arguments (@test_core_functionality.R#43) 
  4. Failure: string replacements occurs as expected when providing a list instead of arguments (@test_core_functionality.R#44) 
  5. Failure: string replacements occurs as expected with defaults in place (@test_core_functionality.R#51) 
  6. Failure: parameters with same prefix are replaced as expected (@test_core_functionality.R#55) 
  7. Failure: string replacements occurs as expected with defaults in place (@test_core_functionality.R#61) 
  8. Failure: string replacements occurs as expected with defaults in place (@test_core_functionality.R#85) 
  9. Failure: infusing of vector with default ',' works (@test_core_functionality.R#97) 
  1. ...
  
  Error: testthat unit tests failed
  Execution halted
```

## iptools (0.3.0)
Maintainer: Bob Rudis <bob@rudis.net>  
Bug reports: https://github.com/hrbrmstr/iptools/issues

1 error  | 0 warnings | 0 notes

```
checking whether package ‘iptools’ can be installed ... ERROR
Installation failed.
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/iptools.Rcheck/00install.out’ for details.
```

## KFAS (1.2.2)
Maintainer: Jouni Helske <jouni.helske@jyu.fi>  
Bug reports: https://github.com/helske/KFAS/issues

1 error  | 0 warnings | 0 notes

```
checking whether package ‘KFAS’ can be installed ... ERROR
Installation failed.
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/KFAS.Rcheck/00install.out’ for details.
```

## LambertW (0.6.2)
Maintainer: Georg M. Goerg <im@gmge.org>

1 error  | 1 warning  | 0 notes

```
checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  2. Error: mLambertW has correct values for Normal and delta > 0 (@test_dpqr_LambertW.R#155) 
  unused argument (info = "delta=0.2: sd")
  1: expect_more_than(mom.lamw.h$sd, 3, info = paste0(msg, ": sd")) at testthat/test_dpqr_LambertW.R:155
  2: expect_gt(...) at /Users/hadley/Documents/devtools/testthat/R/expect-comparison.R:89
  
  testthat results ================================================================
  OK: 738 SKIPPED: 0 FAILED: 2
  1. Error: W_gamma treats branch correctly (@test_W_gamma.R#55) 
  2. Error: mLambertW has correct values for Normal and delta > 0 (@test_dpqr_LambertW.R#155) 
  
  Error: testthat unit tests failed
  In addition: There were 16 warnings (use warnings() to see them)
  Execution halted

checking whether package ‘LambertW’ can be installed ... WARNING
Found the following significant warnings:
  Warning: package ‘ggplot2’ was built under R version 3.2.4
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/LambertW.Rcheck/00install.out’ for details.
```

## lawn (0.1.6)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: http://www.github.com/ropensci/lawn/issues

1 error  | 0 warnings | 0 notes

```
checking tests ... ERROR
Running the tests in ‘tests/test-all.R’ failed.
Last 13 lines of output:
  > test_check("lawn")
  Loading required package: lawn
  1. Failure: lawn_union fails correctly (@test-union.R#51) ----------------------
  error$message does not match "Error : ReferenceError: afa is not defined\n".
  Actual value: "ReferenceError: afa is not defined"
  
  
  testthat results ================================================================
  OK: 892 SKIPPED: 0 FAILED: 1
  1. Failure: lawn_union fails correctly (@test-union.R#51) 
  
  Error: testthat unit tests failed
  Execution halted
```

## letsR (2.4)
Maintainer: Bruno Vilela <brunovilelasilva@hotmail.com>  
Bug reports: https://github.com/macroecology/letsR/issues

0 errors | 1 warning  | 0 notes

```
checking whether package ‘letsR’ can be installed ... WARNING
Found the following significant warnings:
  Warning: replacing previous import by ‘sp::nowrapSpatialLines’ when loading ‘letsR’
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/letsR.Rcheck/00install.out’ for details.
```

## lfstat (0.8.0)
Maintainer: Tobias Gauster <t.gauster@boku.ac.at>

2 errors | 0 warnings | 0 notes

```
checking examples ... ERROR
Running examples in ‘lfstat-Ex.R’ failed
The error most likely occurred in:

> base::assign(".ptime", proc.time(), pos = "CheckExEnv")
> ### Name: tyears
> ### Title: Calculate Low-Flow Quantiles for given Return Periods
> ### Aliases: tyears
> ### Keywords: low-flow fitting
> 
... 73 lines ...
> 
> # applying a moving average before fitting
> ng2 <- ng
> ng2$flow <- ma(ng2$flow, n = 4)
> tyears(ng2, dist = c("gum", "wei", "ln3", "pe3"), event = rp,
+        plot = FALSE)
Warning in FUN(X[[i]], ...) :
  no non-missing arguments to min; returning Inf
Error in samlmu(xx) : NA/NaN/Inf in foreign function call (arg 1)
Calls: tyears -> evfit -> samlmu -> .Fortran
Execution halted

checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  1. Failure: water_year() interprets the origin argument correctly (@test-utils.R#11) 
  2. Failure: water_year() interprets the origin argument correctly (@test-utils.R#15) 
  3. Failure: water_year() interprets the origin argument correctly (@test-utils.R#19) 
  4. Failure: water_year() interprets the origin argument correctly (@test-utils.R#21) 
  5. Failure: water_year() interprets the origin argument correctly (@test-utils.R#25) 
  6. Failure: water_year() interprets the origin argument correctly (@test-utils.R#27) 
  7. Failure: water_year() interprets the assign argument correctly (@test-utils.R#33) 
  8. Failure: water_year() interprets the assign argument correctly (@test-utils.R#35) 
  9. Failure: water_year() interprets the assign argument correctly (@test-utils.R#38) 
  1. ...
  
  Error: testthat unit tests failed
  Execution halted
```

## lintr (0.3.3)
Maintainer: Jim Hester <james.f.hester@gmail.com>  
Bug reports: https://github.com/jimhester/lintr/issues

1 error  | 0 warnings | 0 notes

```
checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  1. Error: returns the correct linting (@test-absolute_paths_linter.R#3) 
  2. Error: returns the correct linting (@test-assignment_linter.R#4) 
  3. Error: returns the correct linting (@test-closed_curly_linter.R#4) 
  4. Error: returns the correct linting (@test-commas_linter.R#4) 
  5. Error: returns the correct linting (@test-commented_code_linter.R#3) 
  6. Error: returns the correct linting (@test-error.R#3) 
  7. Error: returns the correct linting (@test-infix_spaces_linter.R#29) 
  8. Error: it handles markdown (@test-knitr_formats.R#3) 
  9. Error: it handles Sweave (@test-knitr_formats.R#14) 
  1. ...
  
  Error: testthat unit tests failed
  Execution halted
```

## llama (0.9.1)
Maintainer: Lars Kotthoff <larsko@cs.ubc.ca>

0 errors | 1 warning  | 0 notes

```
checking whether package ‘llama’ can be installed ... WARNING
Found the following significant warnings:
  Warning: package ‘ggplot2’ was built under R version 3.2.4
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/llama.Rcheck/00install.out’ for details.
```

## LLSR (0.0.2.0)
Maintainer: Diego F Coelho <diegofcoelho@gmail.com>  
Bug reports: https://github.com/hutchr/LLSR/issues

0 errors | 1 warning  | 0 notes

```
checking whether package ‘LLSR’ can be installed ... WARNING
Found the following significant warnings:
  Warning: package ‘ggtern’ was built under R version 3.2.4
  Warning: package ‘ggplot2’ was built under R version 3.2.4
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/LLSR.Rcheck/00install.out’ for details.
```

## lme4 (1.1-11)
Maintainer: Ben Bolker <bbolker+lme4@gmail.com>  
Bug reports: https://github.com/lme4/lme4/issues

2 errors | 0 warnings | 1 note 

```
checking examples ... ERROR
Running examples in ‘lme4-Ex.R’ failed
The error occurred in:


R version 3.2.3 (2015-12-10) -- "Wooden Christmas-Tree"
Copyright (C) 2015 The R Foundation for Statistical Computing
Platform: x86_64-apple-darwin13.4.0 (64-bit)

R is free software and comes with ABSOLUTELY NO WARRANTY.
... 25 lines ...
+ },
+ pos = 'CheckExEnv')
> 
> ### * </HEADER>
> library('lme4')
Loading required package: Matrix
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘nlme’ 3.1-122 is being loaded, but >= 3.1.123 is required
Error: package or namespace load failed for ‘lme4’
Execution halted
** found \donttest examples: check also with --run-donttest

checking tests ... ERROR
Running the tests in ‘tests/AAAtest-all.R’ failed.
Last 13 lines of output:
  +     print(warnings()) # TODO? catch most of these by expect_warning(..)
  + } else {
  +     cat( "package 'testthat' not available, cannot run unit tests\n" )
  + }
  Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
    namespace 'nlme' 3.1-122 is being loaded, but >= 3.1.123 is required
  Loading required package: lme4
  Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
    namespace 'nlme' 3.1-122 is being loaded, but >= 3.1.123 is required
  Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
    namespace 'nlme' 3.1-122 is being loaded, but >= 3.1.123 is required
  Calls: test_check ... tryCatch -> tryCatchList -> tryCatchOne -> <Anonymous>
  Execution halted

checking installed package size ... NOTE
  installed size is  5.8Mb
  sub-directories of 1Mb or more:
    doc        1.8Mb
    testdata   1.5Mb
```

## lsbclust (1.0.4)
Maintainer: Pieter Schoonees <schoonees@gmail.com>

0 errors | 1 warning  | 0 notes

```
checking whether package ‘lsbclust’ can be installed ... WARNING
Found the following significant warnings:
  Warning: package ‘ggplot2’ was built under R version 3.2.4
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/lsbclust.Rcheck/00install.out’ for details.
```

## lubridate (1.5.0)
Maintainer: Vitalie Spinu <spinuvit@gmail.com>  
Bug reports: https://github.com/hadley/lubridate/issues

1 error  | 0 warnings | 0 notes

```
checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  `output` does not match "Period\\(0)".
  Actual value: ""
  
  
  testthat results ================================================================
  OK: 1751 SKIPPED: 0 FAILED: 4
  1. Failure: format.Duration correctly displays intervals of length 0 (@test-durations.R#123) 
  2. Failure: format.Interval correctly displays intervals of length 0 (@test-intervals.R#111) 
  3. Failure: fast_strptime and parse_date_time2 detect excesive days (#289) (@test-parsers.R#547) 
  4. Failure: format.Period correctly displays intervals of length 0 (@test-periods.R#350) 
  
  Error: testthat unit tests failed
  Execution halted
```

## markmyassignment (0.5.0)
Maintainer: Mans Magnusson <mons.magnusson@gmail.com>

1 error  | 0 warnings | 0 notes

```
checking whether package ‘markmyassignment’ can be installed ... ERROR
Installation failed.
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/markmyassignment.Rcheck/00install.out’ for details.
```

## metaheur (0.1.0)
Maintainer: Markus Vattulainen <markus.vattulainen@gmail.com>

2 errors | 1 warning  | 0 notes

```
checking examples ... ERROR
Running examples in ‘metaheur-Ex.R’ failed
The error most likely occurred in:

> base::assign(".ptime", proc.time(), pos = "CheckExEnv")
> ### Name: getbestheur
> ### Title: getbestheur
> ### Aliases: getbestheur
> 
> ### ** Examples
> 
> result <- metaheur(examplegrid)
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘nlme’ 3.1-122 is already loaded, but >= 3.1.123 is required
Calls: metaheur ... tryCatch -> tryCatchList -> tryCatchOne -> <Anonymous>
Execution halted

checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  'help.start()' for an HTML browser interface to help.
  Type 'q()' to quit R.
  
  > library(testthat)
  > library(metaheur)
  > 
  > test_check("metaheur")
  Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
    namespace 'nlme' 3.1-122 is already loaded, but >= 3.1.123 is required
  Calls: test_check ... tryCatch -> tryCatchList -> tryCatchOne -> <Anonymous>
  testthat results ================================================================
  OK: 0 SKIPPED: 0 FAILED: 0
  Execution halted

checking for missing documentation entries ... WARNING
Note: the specification for S3 class “family” in package ‘MatrixModels’ seems equivalent to one from package ‘lme4’: not turning on duplicate class definitions for this class.
All user-level objects in a package should have documentation entries.
See chapter ‘Writing R documentation files’ in the ‘Writing R
Extensions’ manual.
```

## mirtCAT (0.8)
Maintainer: Phil Chalmers <rphilip.chalmers@gmail.com>  
Bug reports: https://github.com/philchalmers/mirtCAT/issues?state=open

0 errors | 1 warning  | 0 notes

```
checking whether package ‘mirtCAT’ can be installed ... WARNING
Found the following significant warnings:
  Warning: package ‘mirt’ was built under R version 3.2.4
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/mirtCAT.Rcheck/00install.out’ for details.
```

## mizer (0.2)
Maintainer: Finlay Scott <finlay.scott@jrc.ec.europa.eu>

0 errors | 1 warning  | 1 note 

```
checking whether package ‘mizer’ can be installed ... WARNING
Found the following significant warnings:
  Warning: replacing previous import by ‘grid::arrow’ when loading ‘mizer’
  Warning: replacing previous import by ‘grid::unit’ when loading ‘mizer’
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/mizer.Rcheck/00install.out’ for details.

checking R code for possible problems ... NOTE
getFMort,MizerSim-missing : .local: warning in
  get_time_elements(object, time_range, slot = "effort"): partial
  argument match of 'slot' to 'slot_name'
getFMortGear,MizerSim-missing : .local: warning in
  get_time_elements(object, time_range, slot = "effort"): partial
  argument match of 'slot' to 'slot_name'
plotFMort,MizerSim : .local: warning in scale_y_continuous(name =
  "Total fishing mortality", lim = c(0, max(plot_dat$value))): partial
  argument match of 'lim' to 'limits'
... 32 lines ...
  ‘Species’
plotYield,MizerSim : .local: no visible binding for global variable
  ‘value’
plotYield,MizerSim : .local: no visible binding for global variable
  ‘Species’
plotYieldGear,MizerSim : .local: no visible binding for global variable
  ‘value’
plotYieldGear,MizerSim : .local: no visible binding for global variable
  ‘Species’
plotYieldGear,MizerSim : .local: no visible binding for global variable
  ‘gear’
```

## mlr (2.8)
Maintainer: Bernd Bischl <bernd_bischl@gmx.net>  
Bug reports: https://github.com/mlr-org/mlr/issues

2 errors | 1 warning  | 0 notes

```
checking examples ... ERROR
Running examples in ‘mlr-Ex.R’ failed
The error most likely occurred in:

> base::assign(".ptime", proc.time(), pos = "CheckExEnv")
> ### Name: getCaretParamSet
> ### Title: Get tuning parameters from a learner of the caret R-package.
> ### Aliases: getCaretParamSet
> 
> ### ** Examples
> 
> library(caret)
Loading required package: lattice
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘nlme’ 3.1-122 is already loaded, but >= 3.1.123 is required
Error: package or namespace load failed for ‘caret’
Execution halted
** found \donttest examples: check also with --run-donttest

checking tests ... ERROR
Running the tests in ‘tests/run-base.R’ failed.
Last 13 lines of output:
  1.  Error: basic PreprocWrapperCaret works (@test_base_PreprocWrapperCaret.R#6) 
  2.  Error: keep.preds and models are passed down to resample() (@test_base_benchmark.R#193) 
  3.  Failure: chains (@test_base_chains.R#11) 
  4.  Error: generateCalibrationData (@test_base_generateCalibration.R#14) 
  5.  Error: generateLearningCurve (@test_base_generateLearningCurve.R#11) 
  6.  Error: generatePartialPredictionData (@test_base_generatePartialPrediction.R#21) 
  7.  Error: generateThreshVsPerfData (@test_base_generateThreshVsPerf.R#12) 
  8.  Error: getCaretParamSet (@test_base_getCaretParamSet.R#4) 
  9.  Failure: getParamSet (@test_base_getParamSet.R#16) 
  10. Error: BenchmarkResult (@test_base_plotBMRBoxplots.R#12) 
  
  Error: testthat unit tests failed
  Execution halted

checking whether package ‘mlr’ can be installed ... WARNING
Found the following significant warnings:
  Warning: package ‘ggplot2’ was built under R version 3.2.4
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/mlr.Rcheck/00install.out’ for details.
```

## modules (0.3.0)
Maintainer: Sebastian Warnholz <wahani@gmail.com>  
Bug reports: https://github.com/wahani/modules/issues

1 error  | 0 warnings | 0 notes

```
checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  
  
  testthat results ================================================================
  OK: 48 SKIPPED: 0 FAILED: 6
  1. Failure: modfun (@test-modfun.R#13) 
  2. Failure: modfun in module (@test-modfun.R#38) 
  3. Failure: modfun in module (@test-modfun.R#41) 
  4. Failure: modfun in module (@test-modfun.R#44) 
  5. Failure: modfun plays with S4 (@test-modfun.R#68) 
  6. Failure: print method for modules (@test-module.R#294) 
  
  Error: testthat unit tests failed
  Execution halted
```

## MonoPhy (1.1)
Maintainer: Orlando Schwery <oschwery@vols.utk.edu>

0 errors | 1 warning  | 0 notes

```
checking whether package ‘MonoPhy’ can be installed ... WARNING
Found the following significant warnings:
  Warning: package ‘phytools’ was built under R version 3.2.4
  Warning: package ‘taxize’ was built under R version 3.2.4
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/MonoPhy.Rcheck/00install.out’ for details.
```

## morse (2.1.1)
Maintainer: Philippe Ruiz <philippe.ruiz@univ-lyon1.fr>

1 error  | 0 warnings | 0 notes

```
checking whether package ‘morse’ can be installed ... ERROR
Installation failed.
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/morse.Rcheck/00install.out’ for details.
```

## mosaic (0.13.0)
Maintainer: Randall Pruim <rpruim@calvin.edu>  
Bug reports: https://github.com/ProjectMOSAIC/mosaic/issues

0 errors | 1 warning  | 0 notes

```
checking whether package ‘mosaic’ can be installed ... WARNING
Found the following significant warnings:
  Warning: package ‘ggplot2’ was built under R version 3.2.4
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/mosaic.Rcheck/00install.out’ for details.
```

## move (1.6.541)
Maintainer: Bart Kranstauber <bart.kranstauber@uni-konstanz.de>

1 error  | 0 warnings | 0 notes

```
checking whether package ‘move’ can be installed ... ERROR
Installation failed.
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/move.Rcheck/00install.out’ for details.
```

## MRMR (0.1.3)
Maintainer: Brian A. Fannin <BFannin@RedwoodsGroup.com>

0 errors | 1 warning  | 2 notes

```
checking whether package ‘MRMR’ can be installed ... WARNING
Found the following significant warnings:
  Warning: package ‘ggplot2’ was built under R version 3.2.4
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/MRMR.Rcheck/00install.out’ for details.

checking DESCRIPTION meta-information ... NOTE
Malformed Description field: should contain one or more complete sentences.

checking R code for possible problems ... NOTE
PlotResiduals: no visible global function definition for ‘.’
```

## MultiGHQuad (1.0)
Maintainer: Karel Kroeze <k.a.kroeze@utwente.nl>

1 error  | 0 warnings | 0 notes

```
checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  > 
  > test_check("MultiGHQuad")
  1. Error: Sum of weights is 1, pruning does not take too much (@test_generate_quadpoints.R#36) 
  unused argument (info = "q 2 ip 6")
  1: expect_less_than(1 - sum(not.pruned), 0.01, info = paste("q", q, "ip", ip)) at testthat/test_generate_quadpoints.R:36
  2: expect_lt(...) at /Users/hadley/Documents/devtools/testthat/R/expect-comparison.R:81
  
  testthat results ================================================================
  OK: 66 SKIPPED: 0 FAILED: 1
  1. Error: Sum of weights is 1, pruning does not take too much (@test_generate_quadpoints.R#36) 
  
  Error: testthat unit tests failed
  Execution halted
```

## multilevelPSA (1.2.4)
Maintainer: Jason Bryer <jason@bryer.org>  
Bug reports: https://github.com/jbryer/multilevelPSA/issues

0 errors | 1 warning  | 0 notes

```
checking whether package ‘multilevelPSA’ can be installed ... WARNING
Found the following significant warnings:
  Warning: package ‘ggplot2’ was built under R version 3.2.4
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/multilevelPSA.Rcheck/00install.out’ for details.
```

## multitable (1.6)
Maintainer: Steve C Walker <steve.walker@utoronto.ca>

1 error  | 0 warnings | 1 note 

```
checking running R code from vignettes ... ERROR
Errors in running code in vignettes:
when running code in ‘multitable.Rnw’
  ...
> library("ggplot2")

> library("arm")
Loading required package: lme4
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  namespace ‘nlme’ 3.1-122 is already loaded, but >= 3.1.123 is required

  When sourcing ‘multitable.R’:
Error: package ‘lme4’ could not be loaded
Execution halted


checking re-building of vignette outputs ... NOTE
Error in re-building vignettes:
  ...
The following object is masked from ‘package:arm’:

    rescale

dimids automatically generated
dimids automatically generated
omitting width because it is not replicated along MARGIN
... 8 lines ...

omitting life.history because of the following error:
 Error in median.default(newX[, i], ...) : need numeric data

omitting trophic because it is not replicated along MARGIN
omitting life.history because it is not replicated along MARGIN

Error: processing vignette 'multitable.Rnw' failed with diagnostics:
 chunk 57 (label = a faceted ggplot scatterplot from a data list) 
Error : Unknown parameters: family, form
Execution halted
```

## mwaved (1.1.2)
Maintainer: Justin Rory Wishart <justin.wishart@mq.edu.au>  
Bug reports: https://github.com/jrwishart/mwaved/issues

1 error  | 0 warnings | 0 notes

```
checking whether package ‘mwaved’ can be installed ... ERROR
Installation failed.
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/mwaved.Rcheck/00install.out’ for details.
```

## nat (1.8.1)
Maintainer: Greg Jefferis <jefferis@gmail.com>  
Bug reports: https://github.com/jefferis/nat/issues

1 error  | 0 warnings | 0 notes

```
checking tests ... ERROR
Running the tests in ‘tests/test-all.R’ failed.
Last 13 lines of output:
    adding: DL3/EBI22R.swc (deflated 53%)
  2. Failure: write.nrrd.header.for.file (@test-nrrd-io.R#132) -------------------
  error$message does not match "read.im3d".
  Actual value: "Unable to read data saved in format: am"
  
  
  testthat results ================================================================
  OK: 725 SKIPPED: 0 FAILED: 2
  1. Error: round trip works for challenging affine matrix (@test-cmtk_geometry.R#35) 
  2. Failure: write.nrrd.header.for.file (@test-nrrd-io.R#132) 
  
  Error: testthat unit tests failed
  Execution halted
```

## ncappc (0.2.1.1)
Maintainer: Chayan Acharya <chayan.acharya@farmbio.uu.se>

0 errors | 1 warning  | 0 notes

```
checking whether package ‘ncappc’ can be installed ... WARNING
Found the following significant warnings:
  Warning: package ‘ggplot2’ was built under R version 3.2.4
  Warning: package ‘gridExtra’ was built under R version 3.2.4
  Warning: replacing previous import by ‘grid::arrow’ when loading ‘ncappc’
  Warning: replacing previous import by ‘grid::unit’ when loading ‘ncappc’
  Warning: replacing previous import by ‘scales::alpha’ when loading ‘ncappc’
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/ncappc.Rcheck/00install.out’ for details.
```

## netdiffuseR (1.16.2)
Maintainer: George Vega Yon <g.vegayon@gmail.com>  
Bug reports: https://github.com/USCCANA/netdiffuseR/issues

1 error  | 0 warnings | 0 notes

```
checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  6. Failure: Length of inputs in edgelist_adjmat should match (detecting error) - edgelist data.frame (@test-adjmat.R#31) 
  7. Failure: Changing toa (@test-diffnet-class.R#36) 
  8. Failure: Changing toa (@test-diffnet-class.R#40) 
  9. Failure: diffnet print and summary (@test-diffnet-methods.R#111) 
  1. ...
  
  Error: testthat unit tests failed
  In addition: Warning messages:
  1: In as_diffnet(graph, times) : Coercing -toa- into integer.
  2: In as_diffnet(listgraph, toa) : Coercing -toa- into integer.
  3: In as_diffnet(listgraph, toa) : Coercing -toa- into integer.
  4: In as_diffnet(dyngraph, c(1, 1, 3, 2)) : Coercing -toa- into integer.
  Execution halted
```

## netgen (1.3)
Maintainer: Jakob Bossek <j.bossek@gmail.com>  
Bug reports: https://github.com/jakobbossek/netgen/issues

0 errors | 1 warning  | 0 notes

```
checking whether package ‘netgen’ can be installed ... WARNING
Found the following significant warnings:
  Warning: package ‘checkmate’ was built under R version 3.2.4
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/netgen.Rcheck/00install.out’ for details.
```

## NlsyLinks (2.0.1)
Maintainer: Will Beasley <wibeasley@hotmail.com>  
Bug reports: https://github.com/LiveOak/NlsyLinks/issues

1 error  | 0 warnings | 1 note 

```
checking tests ... ERROR
Running the tests in ‘tests/test-all.R’ failed.
Last 13 lines of output:
  
  2. Failure: SubjectTag -NA values (@test-OutcomeDatasetFixture.R#58) -----------
  error$message does not match "The column 'SubjectTag' should contain only positive values, but does not.".
  Actual value: "missing value where TRUE/FALSE needed"
  
  
  testthat results ================================================================
  OK: 230 SKIPPED: 0 FAILED: 2
  1. Failure: show AceEstimate shows something (@test-AceEstimationFixture.R#69) 
  2. Failure: SubjectTag -NA values (@test-OutcomeDatasetFixture.R#58) 
  
  Error: testthat unit tests failed
  Execution halted

checking installed package size ... NOTE
  installed size is  6.3Mb
  sub-directories of 1Mb or more:
    data   4.3Mb
    doc    1.0Mb
```

## optmatch (0.9-5)
Maintainer: Mark M. Fredrickson <mark.m.fredrickson@gmail.com>

1 error  | 0 warnings | 0 notes

```
checking tests ... ERROR
Running the tests in ‘tests/testthat-tests.R’ failed.
Last 13 lines of output:
      to be the same as your original data.
  
  Failed -------------------------------------------------------------------------
  1. Failure: Invalid mean.controls input (@test.fullmatch.infeasible.recovery.R#15) 
  error$message does not match "omit.fraction and mean.controls cannot both be specified.".
  Actual value: "omit.fraction and mean.controls cannot both be specified"
  
  
  DONE ===========================================================================
  Error: Test failures
  In addition: Warning message:
  Placing tests in `inst/tests/` is deprecated. Please use `tests/testthat/` instead 
  Execution halted
```

## pacman (0.3.0)
Maintainer: Tyler Rinker <tyler.rinker@gmail.com>  
Bug reports: https://github.com/trinker/pacman/issues?state=open

1 error  | 0 warnings | 0 notes

```
checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  `output` does not match "Deepayan Sarkar <deepayan.sarkar@r-project.org>".
  Actual value: ""
  
  
  Error in username %||% getOption("github.user") %||% stop("Unknown username.") : 
    Unknown username.
  testthat results ================================================================
  OK: 57 SKIPPED: 0 FAILED: 2
  1. Failure: p_author works (@test-p_author.R#4) 
  2. Failure: p_author works (@test-p_author.R#5) 
  
  Error: testthat unit tests failed
  Execution halted
```

## papeR (1.0-0)
Maintainer: Benjamin Hofner <benjamin.hofner@fau.de>

1 error  | 0 warnings | 0 notes

```
checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  5. Failure: NAs are correctly replaced for factors (@test-helpers.R#136) 
  
  Error: testthat unit tests failed
  In addition: Warning messages:
  1: In library(package, lib.loc = lib.loc, character.only = TRUE, logical.return = TRUE,  :
    there is no package called 'survival'
  2: In library(package, lib.loc = lib.loc, character.only = TRUE, logical.return = TRUE,  :
    there is no package called 'survival'
  3: In library(package, lib.loc = lib.loc, character.only = TRUE, logical.return = TRUE,  :
    there is no package called 'survival'
  4: In library(package, lib.loc = lib.loc, character.only = TRUE, logical.return = TRUE,  :
    there is no package called 'survival'
  Execution halted
```

## ParamHelpers (1.7)
Maintainer: Bernd Bischl <bernd_bischl@gmx.net>  
Bug reports: https://github.com/berndbischl/ParamHelpers/issues

1 error  | 0 warnings | 0 notes

```
checking tests ... ERROR
Running the tests in ‘tests/run-all.R’ failed.
Last 13 lines of output:
  1. Failure: dropParams (@test_dropParams.R#11) 
  2. Failure: filter empty paramset (@test_filterParams.R#5) 
  3. Failure: filter empty paramset (@test_filterParams.R#6) 
  4. Failure: filter empty paramset (@test_filterParams.R#7) 
  5. Failure: filter empty paramset (@test_filterParams.R#8) 
  6. Failure: filter empty paramset (@test_filterParams.R#9) 
  7. Failure: filter empty paramset (@test_filterParams.R#10) 
  8. Failure: filter empty paramset (@test_filterParams.R#11) 
  9. Failure: filter empty paramset (@test_filterParams.R#12) 
  1. ...
  
  Error: testthat unit tests failed
  Execution halted
```

## parsedate (1.1.1)
Maintainer: Gabor Csardi <csardi.gabor@gmail.com>  
Bug reports: https://github.com/gaborcsardi/parsedate/issues

1 error  | 0 warnings | 0 notes

```
checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  1. Error: Filling in is correct (@test-git.r#6) 
  2. Failure: Issue #4 is resolved (@test-git.r#39) 
  3. Failure: Pelago non-matching (@test-iso8601.r#142) 
  4. Failure: Pelago non-matching (@test-iso8601.r#142) 
  5. Failure: Pelago non-matching (@test-iso8601.r#142) 
  6. Failure: Pelago non-matching (@test-iso8601.r#142) 
  7. Failure: Pelago non-matching (@test-iso8601.r#142) 
  8. Failure: Pelago non-matching (@test-iso8601.r#142) 
  9. Failure: Pelago non-matching (@test-iso8601.r#142) 
  1. ...
  
  Error: testthat unit tests failed
  Execution halted
```

## Perc (0.1.1)
Maintainer: Jian Jin <jinjian.pku@gmail.com>

1 error  | 0 warnings | 0 notes

```
checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  > 
  > test_check("Perc")
  1. Failure: outputs are of correct format for valueConverter (@test-Converters.R#29) 
  `output` does not match "matrix".
  Actual value: ""
  
  
  testthat results ================================================================
  OK: 61 SKIPPED: 0 FAILED: 1
  1. Failure: outputs are of correct format for valueConverter (@test-Converters.R#29) 
  
  Error: testthat unit tests failed
  Execution halted
```

## Phxnlme (1.0.0)
Maintainer: Chay Ngee Lim <limxx356@umn.edu>

0 errors | 1 warning  | 0 notes

```
checking whether package ‘Phxnlme’ can be installed ... WARNING
Found the following significant warnings:
  Warning: replacing previous import by ‘grid::arrow’ when loading ‘Phxnlme’
  Warning: replacing previous import by ‘grid::unit’ when loading ‘Phxnlme’
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/Phxnlme.Rcheck/00install.out’ for details.
```

## pingr (1.1.0)
Maintainer: "Gabor Csardi" <csardi.gabor@gmail.com>  
Bug reports: https://github.com/gaborcsardi/pingr/issues

1 error  | 0 warnings | 0 notes

```
checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  > if (Sys.getenv("NOT_CRAN") != "") {
  +   test_check("pingr")
  + }
  1. Error: We can ping localhost (@test-tcp.r#13) -------------------------------
  LENGTH or similar applied to closure object
  1: ping_port("127.0.0.1", port = tools:::httpdPort, count = 1) at testthat/test-tcp.r:13
  
  testthat results ================================================================
  OK: 15 SKIPPED: 0 FAILED: 1
  1. Error: We can ping localhost (@test-tcp.r#13) 
  
  Error: testthat unit tests failed
  Execution halted
```

## pitchRx (1.8.2)
Maintainer: Carson Sievert <cpsievert1@gmail.com>  
Bug reports: http://github.com/cpsievert/pitchRx/issues

0 errors | 1 warning  | 1 note 

```
checking whether package ‘pitchRx’ can be installed ... WARNING
Found the following significant warnings:
  Warning: package ‘ggplot2’ was built under R version 3.2.4
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/pitchRx.Rcheck/00install.out’ for details.

checking package dependencies ... NOTE
Package suggested but not available for checking: ‘ggsubplot’
```

## pixiedust (0.6.1)
Maintainer: Benjamin Nutter <nutter@battelle.org>  
Bug reports: https://github.com/nutterb/pixiedust/issues

1 error  | 0 warnings | 0 notes

```
checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  3             _**-1.624**_    0.116536745986852
  4              _**5.286**_ 1.58173505907644e-05
  5    -0.161986838604456       0.872568516561885
  6    -0.130743039043461       0.896984955536724
  
  
  testthat results ================================================================
  OK: 150 SKIPPED: 0 FAILED: 2
  1. Failure: dust runs when passed a data frame with tidy_df = FALSE (@test-dust.R#41) 
  2. Failure: dust runs when passed a data frame with tidy_df = TRUE (@test-dust.R#46) 
  
  Error: testthat unit tests failed
  Execution halted
```

## plotly (3.4.1)
Maintainer: Carson Sievert <cpsievert1@gmail.com>  
Bug reports: https://github.com/ropensci/plotly/issues

0 errors | 1 warning  | 0 notes

```
checking whether package ‘plotly’ can be installed ... WARNING
Found the following significant warnings:
  Warning: package ‘ggplot2’ was built under R version 3.2.4
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/plotly.Rcheck/00install.out’ for details.
```

## plotROC (2.0.1)
Maintainer: Michael C Sachs <sachsmc@gmail.com>  
Bug reports: http://github.com/sachsmc/plotROC/issues

0 errors | 1 warning  | 0 notes

```
checking whether package ‘plotROC’ can be installed ... WARNING
Found the following significant warnings:
  Warning: package ‘ggplot2’ was built under R version 3.2.4
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/plotROC.Rcheck/00install.out’ for details.
```

## pmc (1.0.1)
Maintainer: Carl Boettiger <cboettig@gmail.com>  
Bug reports: https://github.com/cboettig/pmc/issues

1 error  | 0 warnings | 0 notes

```
checking package dependencies ... ERROR
Package required but not available: ‘ouch’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
```

## pmml (1.5.0)
Maintainer: Tridivesh Jena <rpmmlsupport@zementis.net>

0 errors | 1 warning  | 0 notes

```
checking whether package ‘pmml’ can be installed ... WARNING
Found the following significant warnings:
  Warning: package ‘XML’ was built under R version 3.2.4
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/pmml.Rcheck/00install.out’ for details.
```

## PopED (0.3.0)
Maintainer: Andrew C. Hooker <andrew.hooker@farmbio.uu.se>  
Bug reports: https://github.com/andrewhooker/PopED/issues

0 errors | 1 warning  | 0 notes

```
checking whether package ‘PopED’ can be installed ... WARNING
Found the following significant warnings:
  Warning: package ‘ggplot2’ was built under R version 3.2.4
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/PopED.Rcheck/00install.out’ for details.
```

## popgraph (1.4)
Maintainer: Rodney J. Dyer <rjdyer@vcu.edu>

0 errors | 1 warning  | 1 note 

```
checking whether package ‘popgraph’ can be installed ... WARNING
Found the following significant warnings:
  Warning: package ‘ggplot2’ was built under R version 3.2.4
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/popgraph.Rcheck/00install.out’ for details.

checking DESCRIPTION meta-information ... NOTE
Malformed Title field: should not end in a period.
```

## poppr (2.1.1)
Maintainer: Zhian N. Kamvar <kamvarz@science.oregonstate.edu>  
Bug reports: https://github.com/grunwaldlab/poppr/issues

0 errors | 1 warning  | 0 notes

```
checking whether package ‘poppr’ can be installed ... WARNING
Found the following significant warnings:
  Warning: package ‘ade4’ was built under R version 3.2.4
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/poppr.Rcheck/00install.out’ for details.
```

## popprxl (0.1.1)
Maintainer: Zhian N. Kamvar <kamvarz@science.oregonstate.edu>  
Bug reports: https://github.com/zkamvar/popprxl/issues

0 errors | 1 warning  | 0 notes

```
checking whether package ‘popprxl’ can be installed ... WARNING
Found the following significant warnings:
  Warning: package ‘poppr’ was built under R version 3.2.4
  Warning: package ‘ade4’ was built under R version 3.2.4
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/popprxl.Rcheck/00install.out’ for details.
```

## precrec (0.3.1)
Maintainer: Takaya Saito <takaya.saito@outlook.com>  
Bug reports: https://github.com/takayasaito/precrec/issues

1 error  | 0 warnings | 0 notes

```
checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  
  2. Failure: join_scores() only accepts numeric data (@test_mm2_2_join_scores.R#109) 
  error$message does not match " scores is not a numeric or integer vector".
  Actual value: "scores is not a numeric or integer vector"
  
  
  testthat results ================================================================
  OK: 1978 SKIPPED: 0 FAILED: 2
  1. Failure: join_scores() only accepts numeric data (@test_mm2_2_join_scores.R#108) 
  2. Failure: join_scores() only accepts numeric data (@test_mm2_2_join_scores.R#109) 
  
  Error: testthat unit tests failed
  Execution halted
```

## preprocomb (0.2.0)
Maintainer: Markus Vattulainen <markus.vattulainen@gmail.com>  
Bug reports: https://github.com/mvattulainen/preprocomb/issues

1 error  | 0 warnings | 0 notes

```
checking whether package ‘preprocomb’ can be installed ... ERROR
Installation failed.
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/preprocomb.Rcheck/00install.out’ for details.
```

## preproviz (0.1.1)
Maintainer: Markus Vattulainen <markus.vattulainen@gmail.com>  
Bug reports: https://github.com/mvattulainen/preproviz/issues

1 error  | 0 warnings | 0 notes

```
checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  'help.start()' for an HTML browser interface to help.
  Type 'q()' to quit R.
  
  > library(testthat)
  > library(preproviz)
  > 
  > test_check("preproviz")
  Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
    namespace 'nlme' 3.1-122 is already loaded, but >= 3.1.123 is required
  Calls: test_check ... tryCatch -> tryCatchList -> tryCatchOne -> <Anonymous>
  testthat results ================================================================
  OK: 0 SKIPPED: 0 FAILED: 0
  Execution halted
```

## ProjectTemplate (0.6)
Maintainer: Kirill Mueller <krlmlr+r@mailbox.org>  
Bug reports: https://github.com/johnmyleswhite/ProjectTemplate/issues

1 error  | 0 warnings | 2 notes

```
checking tests ... ERROR
Running the tests in ‘tests/run-all.R’ failed.
Last 13 lines of output:
  
  
  testthat results ================================================================
  OK: 307 SKIPPED: 0 FAILED: 6
  1. Error: All elements have length 1 (@test-load.R#4) 
  2. Failure: Test full project into existing directory (@test-overwrite.R#5) 
  3. Error: Test full project into existing directory (@test-overwrite.R#9) 
  4. Failure: Test minimal project into existing directory with an unrelated entry (@test-overwrite.R#45) 
  5. Error: Test minimal project into existing directory with an unrelated entry (@test-overwrite.R#53) 
  6. Failure: Test failure creating project into existing directory with an unrelated entry if merge.existing is not set (@test-overwrite.R#75) 
  
  Error: testthat unit tests failed
  Execution halted

checking package dependencies ... NOTE
Package suggested but not available for checking: ‘RODBC’

checking DESCRIPTION meta-information ... NOTE
Malformed Title field: should not end in a period.
```

## psidR (1.3)
Maintainer: Florian Oswald <florian.oswald@gmail.com>

0 errors | 1 warning  | 0 notes

```
checking whether package ‘psidR’ can be installed ... WARNING
Found the following significant warnings:
  Warning: package ‘RCurl’ was built under R version 3.2.4
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/psidR.Rcheck/00install.out’ for details.
```

## pvar (2.2)
Maintainer: Vygantas Butkus <Vygantas.Butkus@gmail.com>

1 error  | 0 warnings | 1 note 

```
checking tests ... ERROR
Running the tests in ‘tests/test-all.R’ failed.
Last 13 lines of output:
  Failed -------------------------------------------------------------------------
  1. Error: Basic (@test-pvar.R#14) ----------------------------------------------
  argument "expected" is missing, with no default
  1: expect_that(pvar(rnorm(10), 2), has_names()) at /Users/hadley/Documents/devtools/testthat/revdep/checks/pvar.Rcheck/pvar/tests/test-pvar.R:14
  2: condition(object) at /Users/hadley/Documents/devtools/testthat/R/expect-that.R:22
  3: expect_named(x, expected = expected, ignore.order = ignore.order, ignore.case = ignore.case) at /Users/hadley/Documents/devtools/testthat/R/old-school.R:42
  4: normalise_names(expected, ignore.order, ignore.case) at /Users/hadley/Documents/devtools/testthat/R/expect-named.R:40
  
  DONE ===========================================================================
  Error: Test failures
  In addition: Warning message:
  Placing tests in `inst/tests/` is deprecated. Please use `tests/testthat/` instead 
  Execution halted

checking DESCRIPTION meta-information ... NOTE
Malformed Description field: should contain one or more complete sentences.
```

## pxweb (0.6.0)
Maintainer: Mans Magnusson <mons.magnusson@gmail.com>  
Bug reports: https://github.com/rOpenGov/pxweb/issues

1 error  | 0 warnings | 0 notes

```
checking tests ... ERROR
Running the tests in ‘tests/testthat_interactive.R’ failed.
Last 13 lines of output:
  
  2. Failure: findData.inputBaseCat (@test-interactive_pxweb.R#9) ----------------
  `output` does not match "('*' = Select all, 'a' = Show all)".
  Actual value: ""
  
  
  testthat results ================================================================
  OK: 23 SKIPPED: 0 FAILED: 2
  1. Failure: findData.inputBaseCat (@test-interactive_pxweb.R#7) 
  2. Failure: findData.inputBaseCat (@test-interactive_pxweb.R#9) 
  
  Error: testthat unit tests failed
  Execution halted
```

## quadrupen (0.2-4)
Maintainer: Julien Chiquet <julien.chiquet@genopole.cnrs.fr>

0 errors | 1 warning  | 1 note 

```
checking whether package ‘quadrupen’ can be installed ... WARNING
Found the following significant warnings:
  Warning: package ‘ggplot2’ was built under R version 3.2.4
  Warning: replacing previous import by ‘grid::arrow’ when loading ‘quadrupen’
  Warning: replacing previous import by ‘grid::unit’ when loading ‘quadrupen’
  Warning: replacing previous import by ‘scales::alpha’ when loading ‘quadrupen’
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/quadrupen.Rcheck/00install.out’ for details.

checking R code for possible problems ... NOTE
plot,cvpen : .local: no visible binding for global variable ‘lambda1’
plot,cvpen : .local: no visible binding for global variable ‘lambda2’
plot,cvpen : .local: no visible binding for global variable ‘serr’
plot,cvpen : .local: no visible binding for global variable ‘xval’
plot,cvpen : .local: no visible binding for global variable
  ‘lambda.choice’
plot,quadrupen : .local: no visible binding for global variable
  ‘variables’
plot,stability.path : .local: no visible binding for global variable
  ‘variables’
```

## R4CouchDB (0.7.1)
Maintainer: Thomas Bock <thsteinbock@web.de>

0 errors | 1 warning  | 0 notes

```
checking whether package ‘R4CouchDB’ can be installed ... WARNING
Found the following significant warnings:
  Warning: package ‘RCurl’ was built under R version 3.2.4
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/R4CouchDB.Rcheck/00install.out’ for details.
```

## RAM (1.2.1.3)
Maintainer: Wen Chen <Wen.Chen@agr.gc.ca>  
Bug reports: https://bitbucket.org/Wen_Chen/ram_releases/issues/

0 errors | 1 warning  | 0 notes

```
checking whether package ‘RAM’ can be installed ... WARNING
Found the following significant warnings:
  Warning: package ‘ggplot2’ was built under R version 3.2.4
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/RAM.Rcheck/00install.out’ for details.
```

## RAppArmor (2.0.1)
Maintainer: Jeroen Ooms <jeroen.ooms@stat.ucla.edu>  
Bug reports: http://github.com/jeroenooms/RAppArmor/issues

1 error  | 0 warnings | 0 notes

```
checking whether package ‘RAppArmor’ can be installed ... ERROR
Installation failed.
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/RAppArmor.Rcheck/00install.out’ for details.
```

## rappdirs (0.3)
Maintainer: Hadley Wickham <h.wickham@gmail.com>  
Bug reports: https://github.com/hadley/rappdirs/issues

1 error  | 0 warnings | 1 note 

```
checking tests ... ERROR
Running the tests in ‘tests/test-all.R’ failed.
Last 13 lines of output:
  > test_check("rappdirs")
  Loading required package: rappdirs
  1. Failure: expand_r_libs_specifiers works as expected (@test-utils.r#5) -------
  `output` does not match "/".
  Actual value: ""
  
  
  testthat results ================================================================
  OK: 23 SKIPPED: 0 FAILED: 1
  1. Failure: expand_r_libs_specifiers works as expected (@test-utils.r#5) 
  
  Error: testthat unit tests failed
  Execution halted

checking DESCRIPTION meta-information ... NOTE
Malformed Title field: should not end in a period.
```

## rAvis (0.1.4)
Maintainer: Sara Varela <svarela@paleobiogeography.org>  
Bug reports: https://github.com/ropensci/rAvis/issues

0 errors | 1 warning  | 0 notes

```
checking whether package ‘rAvis’ can be installed ... WARNING
Found the following significant warnings:
  Warning: replacing previous import by ‘sp::nowrapSpatialLines’ when loading ‘rAvis’
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/rAvis.Rcheck/00install.out’ for details.
```

## RBPcurve (1.0-33)
Maintainer: Giuseppe Casalicchio <giuseppe.casalicchio@stat.uni-muenchen.de>  
Bug reports: https://github.com/giuseppec/RBPcurve/issues

0 errors | 1 warning  | 0 notes

```
checking whether package ‘RBPcurve’ can be installed ... WARNING
Found the following significant warnings:
  Warning: package ‘ggplot2’ was built under R version 3.2.4
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/RBPcurve.Rcheck/00install.out’ for details.
```

## rcrypt (0.1.1)
Maintainer: Brett Klamer <rcrypt@brettklamer.com>

1 error  | 0 warnings | 0 notes

```
checking whether package ‘rcrypt’ can be installed ... ERROR
Installation failed.
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/rcrypt.Rcheck/00install.out’ for details.
```

## rDEA (1.2-3)
Maintainer: Jaak Simm <jaak.simm@gmail.com>

1 error  | 0 warnings | 0 notes

```
checking whether package ‘rDEA’ can be installed ... ERROR
Installation failed.
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/rDEA.Rcheck/00install.out’ for details.
```

## readGenalex (1.0)
Maintainer: Douglas G. Scofield <douglasgscofield@gmail.com>  
Bug reports: https://github.com/douglasgscofield/readGenalex/issues

1 error  | 0 warnings | 0 notes

```
checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  Error: `output` does not match "104/101".
  Actual value: ""
  testthat results ================================================================
  OK: 343 SKIPPED: 0 FAILED: 6
  1. Failure: summary.genalex summarises pops etc., genotypes, and extra data (@test_all.R#231) 
  2. Failure: summary.genalex summarises pops etc., genotypes, and extra data (@test_all.R#232) 
  3. Failure: summary.genalex summarises pops etc., genotypes, and extra data (@test_all.R#233) 
  4. Failure: summary.genalex summarises pops etc., genotypes, and extra data (@test_all.R#236) 
  5. Failure: summary.genalex summarises pops etc., genotypes, and extra data (@test_all.R#237) 
  6. Failure: Return is invisible with quiet=FALSE (@test_checkNullAlleles.R#68) 
  
  Error: testthat unit tests failed
  Execution halted
```

## readxl (0.1.0)
Maintainer: Hadley Wickham <hadley@rstudio.com>

1 error  | 0 warnings | 0 notes

```
checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  > 
  > test_check("readxl")
  1. Failure: dates respsect worksheet date sheeting (@test-dates.R#8) -----------
  d1900$X1 not equal to as.POSIXct(as.Date("2000-01-01")).
  Attributes: < Component "tzone": 1 string mismatch >
  
  
  testthat results ================================================================
  OK: 36 SKIPPED: 0 FAILED: 1
  1. Failure: dates respsect worksheet date sheeting (@test-dates.R#8) 
  
  Error: testthat unit tests failed
  Execution halted
```

## redland (1.0.17-7)
Maintainer: Matthew B. Jones <jones@nceas.ucsb.edu>  
Bug reports: https://github.com/ropensci/redland-bindings/issues

1 error  | 0 warnings | 0 notes

```
checking whether package ‘redland’ can be installed ... ERROR
Installation failed.
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/redland.Rcheck/00install.out’ for details.
```

## RefManageR (0.10.6)
Maintainer: Mathew W. McLean <mathew.w.mclean@gmail.com>  
Bug reports: https://github.com/mwmclean/RefManageR/issues

1 error  | 0 warnings | 1 note 

```
checking tests ... ERROR
Running the tests in ‘tests/test-all.R’ failed.
Last 13 lines of output:
  is.character(object) is not TRUE
  1: expect_match(parsed$family[2], "MATLAB, Inc.") at testthat/test-authors.R:19
  2: stopifnot(is.character(object)) at /Users/hadley/Documents/devtools/testthat/R/expectations-matches.R:26
  3: stop(sprintf(ngettext(length(r), "%s is not TRUE", "%s are not all TRUE"), ch), call. = FALSE, 
         domain = NA)
  
  testthat results ================================================================
  OK: 101 SKIPPED: 13 FAILED: 2
  1. Error: Smith, Jr., John and Mary {Tyler Moore} (@test-authors.R#13) 
  2. Error: Smith, Jr., John and {MATLAB, Inc.} (@test-authors.R#19) 
  
  Error: testthat unit tests failed
  Execution halted

checking foreign function calls ... NOTE
Foreign function call to a different package:
  .External("do_read_bib", ..., PACKAGE = "bibtex")
See chapter ‘System and foreign language interfaces’ in the ‘Writing R
Extensions’ manual.
```

## restimizeapi (1.0.0)
Maintainer: Thomas P. Fuller <thomas.fuller@coherentlogic.com>

0 errors | 1 warning  | 0 notes

```
checking whether package ‘restimizeapi’ can be installed ... WARNING
Found the following significant warnings:
  Warning: package ‘RCurl’ was built under R version 3.2.4
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/restimizeapi.Rcheck/00install.out’ for details.
```

## Rlibeemd (1.3.7)
Maintainer: Jouni Helske <jouni.helske@jyu.fi>  
Bug reports: https://github.com/helske/Rlibeemd/issues

1 error  | 0 warnings | 0 notes

```
checking whether package ‘Rlibeemd’ can be installed ... ERROR
Installation failed.
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/Rlibeemd.Rcheck/00install.out’ for details.
```

## RLumModel (0.1.0)
Maintainer: Johannes Friedrich <johannes.friedrich@uni-bayreuth.de>

1 error  | 0 warnings | 0 notes

```
checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  Actual value: ""
  
  
  testthat results ================================================================
  OK: 5 SKIPPED: 0 FAILED: 5
  1. Failure: check inputs set_pars (@test-set_pars.R#4) 
  2. Failure: check inputs set_pars (@test-set_pars.R#5) 
  3. Failure: check inputs set_pars (@test-set_pars.R#6) 
  4. Failure: check inputs set_pars (@test-set_pars.R#7) 
  5. Failure: check inputs set_pars (@test-set_pars.R#8) 
  
  Error: testthat unit tests failed
  Execution halted
```

## rnetcarto (0.2.4)
Maintainer: Guilhem Doulcier <guilhem.doulcier@ens.fr>

1 error  | 0 warnings | 0 notes

```
checking whether package ‘rnetcarto’ can be installed ... ERROR
Installation failed.
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/rnetcarto.Rcheck/00install.out’ for details.
```

## RODBCDBI (0.1.1)
Maintainer: Nagi Teramo <teramonagi@gmail.com>

1 error  | 0 warnings | 0 notes

```
checking package dependencies ... ERROR
Package required but not available: ‘RODBC’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
```

## rorutadis (0.3.1)
Maintainer: Krzysztof Ciomek <k.ciomek@gmail.com>

0 errors | 1 warning  | 0 notes

```
checking whether package ‘rorutadis’ can be installed ... WARNING
Found the following significant warnings:
  Warning: package ‘ggplot2’ was built under R version 3.2.4
  Warning: package ‘gridExtra’ was built under R version 3.2.4
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/rorutadis.Rcheck/00install.out’ for details.
```

## rotations (1.5)
Maintainer: Bryan Stanfill <bstanfill2003@gmail.com>  
Bug reports: https://github.com/stanfill/rotationsC/issues

0 errors | 1 warning  | 0 notes

```
checking whether package ‘rotations’ can be installed ... WARNING
Found the following significant warnings:
  Warning: package ‘ggplot2’ was built under R version 3.2.4
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/rotations.Rcheck/00install.out’ for details.
```

## rpcdsearch (1.0)
Maintainer: David Springate <daspringate@gmail.com>

0 errors | 1 warning  | 0 notes

```
checking whether package ‘rpcdsearch’ can be installed ... WARNING
Found the following significant warnings:
  Warning: replacing previous import by ‘stringr::%>%’ when loading ‘rpcdsearch’
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/rpcdsearch.Rcheck/00install.out’ for details.
```

## rpivotTable (0.1.5.7)
Maintainer: Enzo Martoglio  <enzo@smartinsightsfromdata.com>

1 error  | 0 warnings | 0 notes

```
checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  1. Error: parameters handled correctly (@test_params.R#4) ----------------------
  is.character(object) is not TRUE
  1: expect_match(rpivotTable(data.frame(), rows = c("arow"))$x$params$rows, "arow") at testthat/test_params.R:4
  2: stopifnot(is.character(object)) at /Users/hadley/Documents/devtools/testthat/R/expectations-matches.R:26
  3: stop(sprintf(ngettext(length(r), "%s is not TRUE", "%s are not all TRUE"), ch), call. = FALSE, 
         domain = NA)
  
  testthat results ================================================================
  OK: 11 SKIPPED: 0 FAILED: 1
  1. Error: parameters handled correctly (@test_params.R#4) 
  
  Error: testthat unit tests failed
  Execution halted
```

## RPresto (1.2.0)
Maintainer: Onur Ismail Filiz <onur@fb.com>  
Bug reports: https://github.com/prestodb/RPresto/issues

1 error  | 0 warnings | 0 notes

```
checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  
  2. Failure: dbFetch works with mock (@test-dbFetch.R#37) -----------------------
  error$message does not match "^Error in stop.with.error.message\\(content\\)".
  Actual value: "Query http___localhost_8000_query_3_1 failed: "
  
  
  testthat results ================================================================
  OK: 208 SKIPPED: 24 FAILED: 2
  1. Failure: dbFetch works with mock (@test-dbFetch.R#37) 
  2. Failure: dbFetch works with mock (@test-dbFetch.R#37) 
  
  Error: testthat unit tests failed
  Execution halted
```

## rr (1.3)
Maintainer: Graeme Blair <graeme.blair@columbia.edu>

1 error  | 0 warnings | 0 notes

```
checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  
  testthat results ================================================================
  OK: 70 SKIPPED: 3 FAILED: 7
  1. Failure: basic code runs when there are covariates sent to the mixed model (@test-bayes-mixed.R#155) 
  2. Failure: standard functions coef, sd.rrreg.bayes, summary work (@test-bayes-mixed.R#219) 
  3. Failure: doing multiple chains works as well as coef, sd.rrreg.bayes, summary work (@test-bayes-mixed.R#339) 
  4. Failure: doing multiple chains works as well as coef, sd.rrreg.bayes, summary work (@test-bayes-mixed.R#343) 
  5. Failure: standard functions coef, sd.rrreg.bayes, summary work (@test-bayes.R#108) 
  6. Failure: doing multiple chains works as well as coef, sd.rrreg.bayes, summary work (@test-bayes.R#164) 
  7. Failure: doing multiple chains works as well as coef, sd.rrreg.bayes, summary work (@test-bayes.R#168) 
  
  Error: testthat unit tests failed
  Execution halted
```

## RSelenium (1.3.5)
Maintainer: John Harrison <johndharrison0@gmail.com>  
Bug reports: http://github.com/ropensci/RSelenium/issues

0 errors | 1 warning  | 3 notes

```
checking whether package ‘RSelenium’ can be installed ... WARNING
Found the following significant warnings:
  Warning: package ‘RCurl’ was built under R version 3.2.4
  Warning: package ‘XML’ was built under R version 3.2.4
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/RSelenium.Rcheck/00install.out’ for details.

checking package dependencies ... NOTE
Package suggested but not available for checking: ‘Rcompression’

checking DESCRIPTION meta-information ... NOTE
Malformed Title field: should not end in a period.

checking S3 generic/method consistency ... NOTE
Found the following apparent S3 methods exported but not registered:
  .DollarNames.errorHandler .DollarNames.remoteDriver
  .DollarNames.webElement
See section ‘Registering S3 methods’ in the ‘Writing R Extensions’
manual.
```

## rsig (1.0)
Maintainer: Sangkyun Lee <sangkyun.lee@tu-dortmund.de>

1 error  | 0 warnings | 0 notes

```
checking package dependencies ... ERROR
Package required but not available: ‘survcomp’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
```

## RSQLite (1.0.0)
Maintainer: Hadley Wickham <hadley@rstudio.com>  
Bug reports: https://github.com/rstats-db/RSQLite/issues

1 error  | 0 warnings | 1 note 

```
checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  1: checkVfs(v) at testthat/test-dbConnect.R:30
  2: expect_equal(v, db@vfs) at testthat/test-dbConnect.R:28
  3: make_label(object, label) at /Users/hadley/Documents/devtools/testthat/R/expect-equality.R:51
  4: label %||% label(object) at /Users/hadley/Documents/devtools/testthat/R/expectation.R:44
  5: label(object) at /Users/hadley/Documents/devtools/testthat/R/utils.R:5
  6: lazyeval::lazy(obj) at /Users/hadley/Documents/devtools/testthat/R/expectation.R:52
  
  testthat results ================================================================
  OK: 87 SKIPPED: 0 FAILED: 1
  1. Error: can get and set vfs values (@test-dbConnect.R#30) 
  
  Error: testthat unit tests failed
  Execution halted

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

## Rssa (0.13-1)
Maintainer: Anton Korobeynikov <anton@korobeynikov.info>

1 error  | 0 warnings | 0 notes

```
checking whether package ‘Rssa’ can be installed ... ERROR
Installation failed.
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/Rssa.Rcheck/00install.out’ for details.
```

## rstanarm (2.9.0-3)
Maintainer: Ben Goodrich <benjamin.goodrich@columbia.edu>  
Bug reports: https://github.com/stan-dev/rstanarm/issues

1 error  | 0 warnings | 0 notes

```
checking whether package ‘rstanarm’ can be installed ... ERROR
Installation failed.
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/rstanarm.Rcheck/00install.out’ for details.
```

## RStoolbox (0.1.4)
Maintainer: Benjamin Leutner <benjamin.leutner@uni-wuerzburg.de>  
Bug reports: https://github.com/bleutner/RStoolbox/issues

1 error  | 0 warnings | 0 notes

```
checking whether package ‘RStoolbox’ can be installed ... ERROR
Installation failed.
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/RStoolbox.Rcheck/00install.out’ for details.
```

## rusda (1.0.6)
Maintainer: Franz-Sebastian Krah <f.krah@mailbox.org>

0 errors | 1 warning  | 0 notes

```
checking whether package ‘rusda’ can be installed ... WARNING
Found the following significant warnings:
  Warning: replacing previous import by ‘testthat::%>%’ when loading ‘rusda’
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/rusda.Rcheck/00install.out’ for details.
```

## rYoutheria (1.0.0)
Maintainer: Tom August <tomaug@ceh.ac.uk>  
Bug reports: 
        https://github.com/biologicalrecordscentre/rYoutheria/issues

1 error  | 0 warnings | 1 note 

```
checking examples ... ERROR
Running examples in ‘rYoutheria-Ex.R’ failed
The error most likely occurred in:

> base::assign(".ptime", proc.time(), pos = "CheckExEnv")
> ### Name: getCountries
> ### Title: Get country names from YouTheria
> ### Aliases: getCountries
> 
> ### ** Examples
> 
> # Get a dataframe of all countries
> getCountries()
Error in function (type, msg, asError = TRUE)  : 
  Failed to connect to www.utheria.org port 80: Network is unreachable
Calls: getCountries ... getURL -> curlPerform -> .Call -> <Anonymous> -> fun
Execution halted

checking re-building of vignette outputs ... NOTE
Error in re-building vignettes:
  ...
Quitting from lines 48-57 (vignette.Rnw) 
Error: processing vignette 'vignette.Rnw' failed with diagnostics:
Failed to connect to www.utheria.org port 80: Network is unreachable
Execution halted

```

## SciencesPo (1.3.9)
Maintainer: Daniel Marcelino <dmarcelino@live.com>  
Bug reports: http://github.com/danielmarcelino/SciencesPo/issues

0 errors | 1 warning  | 1 note 

```
checking whether package ‘SciencesPo’ can be installed ... WARNING
Found the following significant warnings:
  Warning: package ‘ggplot2’ was built under R version 3.2.4
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/SciencesPo.Rcheck/00install.out’ for details.

checking re-building of vignette outputs ... NOTE
Error in re-building vignettes:
  ...
Units                 Measurement System Units
bhodrick93            Bekaert's and Hodrick's (1993) Data
cathedrals            Cathedrals
cgreene76             Christensen's and Greene's (1976) Data
galton                Galton's Family Data on Human Stature.
griliches76           Griliches's (1976) Data
ltaylor96             Lothian's and Taylor's (1996) Data Set
... 8 lines ...
turnout               Turnout Data
twins                 Burt's twin data
words                 Word frequencies from Mosteller and Wallace

Loading required package: SciencesPo
initializing ... done

Quitting from lines 395-399 (SciencesPo.Rmd) 
Error: processing vignette 'SciencesPo.Rmd' failed with diagnostics:
polygon edge not found
Execution halted
```

## sdcTable (0.20.3)
Maintainer: Bernhard Meindl <bernhard.meindl@statistik.gv.at>  
Bug reports: https://github.com/bernhard-da/sdcTable/issues

1 error  | 0 warnings | 0 notes

```
checking whether package ‘sdcTable’ can be installed ... ERROR
Installation failed.
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/sdcTable.Rcheck/00install.out’ for details.
```

## sdmvspecies (0.3.2)
Maintainer: Xiaoquan Kong <u1mail2me@gmail.com>  
Bug reports: https://github.com/howl-anderson/sdmvspecies/issues

0 errors | 1 warning  | 0 notes

```
checking for executable files ... WARNING
Found the following executable file:
  inst/external/env/bio14.bil
Source packages should not contain undeclared executable files.
See section ‘Package structure’ in the ‘Writing R Extensions’ manual.
```

## sensR (1.4-6)
Maintainer: Per Bruun Brockhoff <perbb@dtu.dk>

1 error  | 0 warnings | 0 notes

```
checking tests ... ERROR
Running the tests in ‘tests/test-all.R’ failed.
Last 13 lines of output:
  
  testthat results ================================================================
  OK: 183 SKIPPED: 0 FAILED: 7
  1. Failure: Test boundary values for d.prime0 (-1, 0, 1, Inf): (@test-discrim_pd0.R#35) 
  2. Failure: Test boundary values for d.prime0 (-1, 0, 1, Inf): (@test-discrim_pd0.R#40) 
  3. Failure: Test boundary values for pd0 (-1, 0, .2. 1. 2): (@test-discrim_pd0.R#55) 
  4. Failure: Test boundary values for pd0 (-1, 0, .2. 1. 2): (@test-discrim_pd0.R#60) 
  5. Failure: Printing alternative hypothesis in terms of d-prime (default): (@test-discrim_pd0.R#114) 
  6. Failure: Test that alternative hypothesis uses d.prime/pd (@test-discrim_pd0.R#135) 
  7. Failure: Test that alternative hypothesis uses d.prime/pd (@test-discrim_pd0.R#138) 
  
  Error: testthat unit tests failed
  Execution halted
```

## sgd (1.1)
Maintainer: Dustin Tran <dustin@cs.columbia.edu>  
Bug reports: https://github.com/airoldilab/sgd/issues

1 error  | 0 warnings | 0 notes

```
checking whether package ‘sgd’ can be installed ... ERROR
Installation failed.
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/sgd.Rcheck/00install.out’ for details.
```

## shazam (0.1.2)
Maintainer: Jason Vander Heiden <jason.vanderheiden@yale.edu>  
Bug reports: https://bitbucket.org/kleinstein/shazam/issues

0 errors | 1 warning  | 0 notes

```
checking whether package ‘shazam’ can be installed ... WARNING
Found the following significant warnings:
  Warning: package ‘ggplot2’ was built under R version 3.2.4
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/shazam.Rcheck/00install.out’ for details.
```

## simmer (3.1.2)
Maintainer: Iñaki Ucar <i.ucar86@gmail.com>  
Bug reports: https://github.com/Bart6114/simmer/issues

1 error  | 0 warnings | 0 notes

```
checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  1. Failure: the trajectory stores the right number of activities (@test-trajectory.R#76) 
  `output` does not match ".*(13 activities.*Seize.*nurse.*1.*Timeout.*function.*Release.*nurse.*1.*Branch.*1.*6 activities.*Seize.*doctor.*function.*Timeout.*function.*Release.*doctor.*function.*Branch.*1.*3 activities.*Seize.*administration.*1.*Timeout.*1.*Release.*administration.*1.*Rollback.*1.*Branch.*1.*Rollback.*1.*Rollback.*function.*SetAttribute.*1.*SetAttribute.*function).*".
  Actual value: ""
  
  
  { Activity: Timeout(none) | delay: 1 }
  Trajectory: anonymous, 1 activities
  testthat results ================================================================
  OK: 192 SKIPPED: 0 FAILED: 1
  1. Failure: the trajectory stores the right number of activities (@test-trajectory.R#76) 
  
  Error: testthat unit tests failed
  Execution halted
```

## simr (1.0.1)
Maintainer: Peter Green <greenp@landcareresearch.co.nz>  
Bug reports: https://github.com/pitakakariki/simr/issues

1 error  | 0 warnings | 0 notes

```
checking whether package ‘simr’ can be installed ... ERROR
Installation failed.
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/simr.Rcheck/00install.out’ for details.
```

## sjPlot (1.9.2)
Maintainer: Daniel Lüdecke <d.luedecke@uke.de>  
Bug reports: https://github.com/sjPlot/devel/issues

1 error  | 0 warnings | 0 notes

```
checking whether package ‘sjPlot’ can be installed ... ERROR
Installation failed.
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/sjPlot.Rcheck/00install.out’ for details.
```

## slackr (1.2)
Maintainer: Bob Rudis <bob@rudis.net>  
Bug reports: https://github.com/hrbrmstr/slackr/issues

0 errors | 1 warning  | 0 notes

```
checking whether package ‘slackr’ can be installed ... WARNING
Found the following significant warnings:
  Warning: package ‘ggplot2’ was built under R version 3.2.4
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/slackr.Rcheck/00install.out’ for details.
```

## smoof (1.3)
Maintainer: Jakob Bossek <j.bossek@gmail.com>  
Bug reports: https://github.com/jakobbossek/smoof/issues

0 errors | 1 warning  | 0 notes

```
checking whether package ‘smoof’ can be installed ... WARNING
Found the following significant warnings:
  Warning: package ‘checkmate’ was built under R version 3.2.4
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/smoof.Rcheck/00install.out’ for details.
```

## SpaDES (1.1.1)
Maintainer: Alex M Chubaty <alexander.chubaty@canada.ca>  
Bug reports: https://github.com/PredictiveEcology/SpaDES/issues

1 error  | 0 warnings | 0 notes

```
checking package dependencies ... ERROR
Package required but not available: ‘secr’

Package suggested but not available for checking: ‘fastshp’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
```

## sparseHessianFD (0.3.0)
Maintainer: Michael Braun <braunm@smu.edu>

1 error  | 0 warnings | 0 notes

```
checking package dependencies ... ERROR
Package required and available but unsuitable version: ‘Matrix’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
```

## spoccutils (0.1.0)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: https://github.com/ropensci/spoccutils/issues

0 errors | 1 warning  | 0 notes

```
checking whether package ‘spoccutils’ can be installed ... WARNING
Found the following significant warnings:
  Warning: package ‘ggplot2’ was built under R version 3.2.4
  Warning: replacing previous import by ‘grid::unit’ when loading ‘spoccutils’
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/spoccutils.Rcheck/00install.out’ for details.
```

## StableEstim (2.0)
Maintainer: Tarak Kharrat <tarak.kharrat@manchester.ac.uk>

1 error  | 0 warnings | 0 notes

```
checking examples ... ERROR
Running examples in ‘StableEstim-Ex.R’ failed
The error most likely occurred in:

> base::assign(".ptime", proc.time(), pos = "CheckExEnv")
> ### Name: expect_almost_equal
> ### Title: test approximate equality
> ### Aliases: expect_almost_equal
> ### Keywords: general-functions
> 
> ### ** Examples
> 
> x=1.1 ; y=1.5
> expect_almost_equal(x,y,1) ## pass
Error in match.arg(type, c("success", "failure", "error", "skip", "warning")) : 
  'arg' must be NULL or a character vector
Calls: expect_almost_equal ... expect_that -> condition -> expectation -> match.arg
Execution halted
```

## storr (1.0.0)
Maintainer: Rich FitzJohn <rich.fitzjohn@gmail.com>

1 error  | 0 warnings | 1 note 

```
checking examples ... ERROR
Running examples in ‘storr-Ex.R’ failed
The error most likely occurred in:

> base::assign(".ptime", proc.time(), pos = "CheckExEnv")
> ### Name: test_driver
> ### Title: Test a storr driver
> ### Aliases: test_driver
> 
> ### ** Examples
> 
> ## Testing the environment driver is nice and fast:
> if (requireNamespace("testthat")) {
+   test_driver(function() driver_environment())
+ }
Loading required namespace: testthat
Error in test_driver(function() driver_environment()) : 
  attempt to apply non-function
Execution halted

checking re-building of vignette outputs ... NOTE
Error in re-building vignettes:
  ...
Quitting from lines 419-420 (drivers.Rmd) 
Error: processing vignette 'drivers.Rmd' failed with diagnostics:
attempt to apply non-function
Execution halted

```

## strvalidator (1.6.0)
Maintainer: Oskar Hansson <oskar.hansson@fhi.no>  
Bug reports: https://github.com/OskarHansson/strvalidator/issues

1 error  | 0 warnings | 0 notes

```
checking whether package ‘strvalidator’ can be installed ... ERROR
Installation failed.
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/strvalidator.Rcheck/00install.out’ for details.
```

## tadaatoolbox (0.9.0)
Maintainer: Lukas Burk <lukas@quantenbrot.de>  
Bug reports: https://github.com/tadaadata/tadaatoolbox/issues

1 error  | 0 warnings | 0 notes

```
checking whether package ‘tadaatoolbox’ can be installed ... ERROR
Installation failed.
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/tadaatoolbox.Rcheck/00install.out’ for details.
```

## testthatsomemore (0.1)
Maintainer: Robert Krzyzanowski <technoguyrob@gmail.com>

1 error  | 0 warnings | 0 notes

```
checking examples ... ERROR
Running examples in ‘testthatsomemore-Ex.R’ failed
The error most likely occurred in:

> base::assign(".ptime", proc.time(), pos = "CheckExEnv")
> ### Name: assert
> ### Title: Explicitly state that we expect no errors to occur.
> ### Aliases: assert
> 
> ### ** Examples
> 
> assert(1 + 1) # This will throw no error.
> stopifnot(is(tryCatch(error = identity, assert(not_existent)), 'error'))
Error: is(result, "error") isn't false.
Execution halted
```

## textreuse (0.1.2)
Maintainer: Lincoln Mullen <lincoln@lincolnmullen.com>  
Bug reports: https://github.com/ropensci/textreuse/issues

1 error  | 0 warnings | 0 notes

```
checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  
  2. Failure: prints sensibly (@test-TextReuseCorpus.R#46) -----------------------
  `output` does not match "Number of documents: 3".
  Actual value: ""
  
  
  testthat results ================================================================
  OK: 142 SKIPPED: 2 FAILED: 2
  1. Failure: prints sensibly (@test-TextReuseCorpus.R#45) 
  2. Failure: prints sensibly (@test-TextReuseCorpus.R#46) 
  
  Error: testthat unit tests failed
  Execution halted
```

## tigris (0.2.2)
Maintainer: Kyle Walker <kyle.walker@tcu.edu>

0 errors | 1 warning  | 0 notes

```
checking whether package ‘tigris’ can be installed ... WARNING
Found the following significant warnings:
  Warning: replacing previous import by ‘sp::nowrapSpatialLines’ when loading ‘tigris’
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/tigris.Rcheck/00install.out’ for details.
```

## tmod (0.24)
Maintainer: January Weiner <january.weiner@gmail.com>

1 error  | 0 warnings | 1 note 

```
checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  
  2. Failure: tmod is sane (@test_data.R#8) --------------------------------------
  `output` does not match "606 modules, 12712 genes".
  Actual value: ""
  
  
  testthat results ================================================================
  OK: 15 SKIPPED: 0 FAILED: 2
  1. Failure: tmod is sane (@test_data.R#7) 
  2. Failure: tmod is sane (@test_data.R#8) 
  
  Error: testthat unit tests failed
  Execution halted

checking package dependencies ... NOTE
Package suggested but not available for checking: ‘org.Hs.eg.db’
```

## toaster (0.4.2)
Maintainer: Gregory Kanevsky <gregory.kanevsky@teradata.com>  
Bug reports: https://github.com/teradata-aster-field/toaster/issues

1 error  | 0 warnings | 0 notes

```
checking package dependencies ... ERROR
Package required but not available: ‘RODBC’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
```

## treescape (1.8.15)
Maintainer: Michelle Kendall <m.kendall@imperial.ac.uk>

0 errors | 1 warning  | 0 notes

```
checking whether package ‘treescape’ can be installed ... WARNING
Found the following significant warnings:
  Warning: package ‘ade4’ was built under R version 3.2.4
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/treescape.Rcheck/00install.out’ for details.
```

## tsPI (1.0.1)
Maintainer: Jouni Helske <jouni.helske@jyu.fi>  
Bug reports: https://github.com/helske/tsPI/issues

1 error  | 0 warnings | 0 notes

```
checking whether package ‘tsPI’ can be installed ... ERROR
Installation failed.
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/tsPI.Rcheck/00install.out’ for details.
```

## tspmeta (1.2)
Maintainer: Bernd Bischl <bernd_bischl@gmx.net>  
Bug reports: https://github.com/berndbischl/tspmeta/issues

0 errors | 1 warning  | 0 notes

```
checking whether package ‘tspmeta’ can be installed ... WARNING
Found the following significant warnings:
  Warning: package ‘ggplot2’ was built under R version 3.2.4
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/tspmeta.Rcheck/00install.out’ for details.
```

## umx (1.1.5)
Maintainer: Timothy C Bates <timothy.c.bates@gmail.com>  
Bug reports: http://github.com/tbates/umx/issues

0 errors | 1 warning  | 0 notes

```
checking whether package ‘umx’ can be installed ... WARNING
Found the following significant warnings:
  Warning: package ‘OpenMx’ was built under R version 3.2.4
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/umx.Rcheck/00install.out’ for details.
```

## useful (1.2.0)
Maintainer: Jared P. Lander <packages@jaredlander.com>

1 error  | 1 warning  | 0 notes

```
checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  `output` does not match "Mean relative difference: 5e-08".
  Actual value: ""
  
  
  testthat results ================================================================
  OK: 324 SKIPPED: 0 FAILED: 4
  1. Failure: simple.impute.default properly imputes the mean (@test-simple-impute.r#32) 
  2. Failure: simple.impute.default properly imputes the mean (@test-simple-impute.r#35) 
  3. Failure: simple.impute.default properly imputes the mean (@test-simple-impute.r#38) 
  4. Failure: simple.impute.default properly imputes the mean (@test-simple-impute.r#41) 
  
  Error: testthat unit tests failed
  Execution halted

checking whether package ‘useful’ can be installed ... WARNING
Found the following significant warnings:
  Warning: package ‘ggplot2’ was built under R version 3.2.4
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/useful.Rcheck/00install.out’ for details.
```

## V8 (1.0.0)
Maintainer: Jeroen Ooms <jeroen.ooms@stat.ucla.edu>  
Bug reports: https://github.com/jeroenooms/v8/issues

1 error  | 0 warnings | 0 notes

```
checking whether package ‘V8’ can be installed ... ERROR
Installation failed.
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/V8.Rcheck/00install.out’ for details.
```

## varian (0.2.2)
Maintainer: Joshua F. Wiley <josh@elkhartgroup.com>  
Bug reports: https://github.com/ElkhartGroup/varian/issues

0 errors | 1 warning  | 0 notes

```
checking whether package ‘varian’ can be installed ... WARNING
Found the following significant warnings:
  Warning: package ‘ggplot2’ was built under R version 3.2.4
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/varian.Rcheck/00install.out’ for details.
```

## vartors (0.2.6)
Maintainer: Joris Muller <joris.muller@etu.unistra.fr>  
Bug reports: https://github.com/jomuller/vartors/issues/new

1 error  | 0 warnings | 1 note 

```
checking tests ... ERROR
Running the tests in ‘tests/test-all.R’ failed.
Last 13 lines of output:
  OK: 102 SKIPPED: 0 FAILED: 8
  1. Failure: rep_columns_names should be placed properly (@test-DatabaseDef.R#35) 
  2. Failure: numeric var for Rmd_fr template (@test-Rmd_fr_template.R#21) 
  3. Failure: add default values (@test-VariableDef.R#83) 
  4. Failure: add default values (@test-VariableDef.R#84) 
  5. Failure: DatabaseDef create_script methods (@test-create_script.R#49) 
  6. Failure: header and footer could be turn off (@test-create_script.R#71) 
  7. Failure: header and footer could be turn off (@test-create_script.R#74) 
  8. Failure: fix7 : when no label given with level, names=levels (@test-create_script.R#79) 
  
  Error: testthat unit tests failed
  In addition: There were 31 warnings (use warnings() to see them)
  Execution halted

checking R code for possible problems ... NOTE
descvars_skeleton: no visible binding for global variable ‘example_df’
```

## VennDiagram (1.6.16)
Maintainer: Paul Boutros <Paul.Boutros@oicr.on.ca>

1 error  | 0 warnings | 0 notes

```
checking tests ... ERROR
Running the tests in ‘tests/test-all.R’ failed.
Last 13 lines of output:
  1. Error: Case colour of five categories (@test-Five.R#78) 
  2. Error: Case colour of four categories (@test-Four.R#60) 
  3. Error: Case simple of one category (@test-One.R#55) 
  4. Error: Case colour of one category (@test-One.R#55) 
  5. Error: Case default of three categories (@test-Three.R#401) 
  6. Error: Case colour-default of three categories (@test-Three.R#401) 
  7. Error: Case 001 of three categories (@test-Three.R#401) 
  8. Error: Case 010 of three categories (@test-Three.R#401) 
  9. Error: Case 011A of three categories (@test-Three.R#401) 
  1. ...
  
  Error: testthat unit tests failed
  Execution halted
```

## waffle (0.5.0)
Maintainer: Bob Rudis <bob@rudis.net>  
Bug reports: https://github.com/hrbrmstr/waffle/issues

0 errors | 1 warning  | 0 notes

```
checking whether package ‘waffle’ can be installed ... WARNING
Found the following significant warnings:
  Warning: package ‘ggplot2’ was built under R version 3.2.4
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/waffle.Rcheck/00install.out’ for details.
```

## walkr (0.3.3)
Maintainer: Andy Yao <andy.yao17@gmail.com>  
Bug reports: https://github.com/andyyao95/walkr/issues

0 errors | 1 warning  | 0 notes

```
checking whether package ‘walkr’ can be installed ... WARNING
Found the following significant warnings:
  Warning: package ‘ggplot2’ was built under R version 3.2.4
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/walkr.Rcheck/00install.out’ for details.
```

## whoapi (0.1.1)
Maintainer: Oliver Keyes <ironholds@gmail.com>

1 error  | 0 warnings | 0 notes

```
checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  > 
  > test_check("whoapi")
  1. Failure: Test we can run whois against a domain (@test_info.R#26) -----------
  c("contacts", "whois_server", "nameservers") %in% names(result) not equal to c(TRUE, TRUE, TRUE).
  1 element mismatch
  
  
  testthat results ================================================================
  OK: 12 SKIPPED: 0 FAILED: 1
  1. Failure: Test we can run whois against a domain (@test_info.R#26) 
  
  Error: testthat unit tests failed
  Execution halted
```

## xoi (0.66-9)
Maintainer: Karl W Broman <kbroman@biostat.wisc.edu>

0 errors | 1 warning  | 0 notes

```
checking whether package ‘xoi’ can be installed ... WARNING
Found the following significant warnings:
  Warning: package ‘qtl’ was built under R version 3.2.4
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/xoi.Rcheck/00install.out’ for details.
```

## zoon (0.4.23)
Maintainer: Tom August <tomaug@ceh.ac.uk>

1 error  | 0 warnings | 0 notes

```
checking package dependencies ... ERROR
Package required and available but unsuitable version: ‘raster’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
```

