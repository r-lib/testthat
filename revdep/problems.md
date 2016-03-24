# Setup

## Platform

|setting  |value                        |
|:--------|:----------------------------|
|version  |R version 3.2.4 (2016-03-10) |
|system   |x86_64, darwin13.4.0         |
|ui       |X11                          |
|language |(EN)                         |
|collate  |en_US.UTF-8                  |
|tz       |America/Chicago              |
|date     |2016-03-23                   |

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
|testthat |*  |0.11.0.9000 |2016-03-24 |local (hadley/testthat@bcba180) |

# Check results
155 packages with problems

## aLFQ (1.3.3)
Maintainer: George Rosenberger <rosenberger@imsb.biol.ethz.ch>

1 error  | 0 warnings | 0 notes

```
checking whether package ‘aLFQ’ can be installed ... ERROR
Installation failed.
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/aLFQ.Rcheck/00install.out’ for details.
```

## backShift (0.1.3)
Maintainer: Christina Heinze <heinze@stat.math.ethz.ch>  
Bug reports: https://github.com/christinaheinze/backShift/issues

1 error  | 0 warnings | 0 notes

```
checking whether package ‘backShift’ can be installed ... ERROR
Installation failed.
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/backShift.Rcheck/00install.out’ for details.
```

## bayesboot (0.2.0)
Maintainer: Rasmus Bååth <rasmus.baath@gmail.com>  
Bug reports: https://github.com/rasmusab/bayesboot/issues

1 error  | 0 warnings | 0 notes

```
checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  4. Failure: bayesboot produces a valid output (@test-bayesboot-deterministic.R#67) 
  summary(b4) produced no output
  
  
  testthat results ================================================================
  OK: 24 SKIPPED: 2 FAILED: 4
  1. Failure: bayesboot produces a valid output (@test-bayesboot-deterministic.R#64) 
  2. Failure: bayesboot produces a valid output (@test-bayesboot-deterministic.R#65) 
  3. Failure: bayesboot produces a valid output (@test-bayesboot-deterministic.R#66) 
  4. Failure: bayesboot produces a valid output (@test-bayesboot-deterministic.R#67) 
  
  Error: testthat unit tests failed
  Execution halted
```

## BayesFactor (0.9.12-2)
Maintainer: Richard D. Morey <richarddmorey@gmail.com>  
Bug reports: https://github.com/richarddmorey/BayesFactor/issues

1 error  | 0 warnings | 0 notes

```
checking package dependencies ... ERROR
Package required but not available: ‘RcppEigen’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
```

## BBmisc (1.9)
Maintainer: Bernd Bischl <bernd_bischl@gmx.net>  
Bug reports: https://github.com/berndbischl/BBmisc/issues

1 error  | 0 warnings | 0 notes

```
checking tests ... ERROR
Running the tests in ‘tests/run-all.R’ failed.
Last 13 lines of output:
  1. Failure: makeProgressBar global options (@test_makeProgressBar.R#41) 
  2. Failure: makeProgressBar global options (@test_makeProgressBar.R#41) 
  3. Failure: makeProgressBar global options (@test_makeProgressBar.R#41) 
  4. Failure: makeProgressBar global options (@test_makeProgressBar.R#41) 
  5. Failure: makeProgressBar global options (@test_makeProgressBar.R#41) 
  6. Failure: makeProgressBar global options (@test_makeProgressBar.R#41) 
  7. Failure: suppressAll (@test_suppressAll.R#6) 
  8. Failure: suppressAll (@test_suppressAll.R#7) 
  9. Failure: suppressAll (@test_suppressAll.R#7) 
  1. ...
  
  Error: testthat unit tests failed
  Execution halted
```

## BEDMatrix (1.2.0)
Maintainer: Alexander Grueneberg <alexander.grueneberg@googlemail.com>  
Bug reports: https://github.com/QuantGen/BEDMatrix/issues

1 error  | 0 warnings | 0 notes

```
checking package dependencies ... ERROR
Package required but not available: ‘BH’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
```

## bigmemory (4.5.18)
Maintainer: Michael J. Kane <bigmemoryauthors@gmail.com>

1 error  | 0 warnings | 0 notes

```
checking package dependencies ... ERROR
Package required but not available: ‘BH’

Packages which this enhances but not available for checking:
  ‘biganalytics’ ‘bigtabulate’ ‘synchronicity’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
```

## biom (0.3.12)
Maintainer: Paul J. McMurdie <mcmurdie@stanford.edu>  
Bug reports: https://github.com/joey711/biom/issues

1 error  | 0 warnings | 1 note 

```
checking tests ... ERROR
Running the tests in ‘tests/testthat-biom.R’ failed.
Last 13 lines of output:
  1. Failure: show method output tests (@test-IO.R#69) ---------------------------
  `x1` produced no output
  
  
  2. Failure: show method output tests (@test-IO.R#70) ---------------------------
  `x4` produced no output
  
  
  DONE ===========================================================================
  Error: Test failures
  In addition: Warning message:
  Placing tests in `inst/tests/` is deprecated. Please use `tests/testthat/` instead 
  Execution halted

checking DESCRIPTION meta-information ... NOTE
Malformed Title field: should not end in a period.
```

## biomartr (0.0.3)
Maintainer: Hajk-Georg Drost <hgd23@cam.ac.uk>  
Bug reports: https://github.com/HajkD/biomartr/issues

1 error  | 0 warnings | 0 notes

```
checking package dependencies ... ERROR
Packages required but not available: ‘biomaRt’ ‘Biostrings’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
```

## bnclassify (0.3.2)
Maintainer: Mihaljevic Bojan <bmihaljevic@fi.upm.es>  
Bug reports: http://github.com/bmihaljevic/bnclassify/issues

1 error  | 0 warnings | 0 notes

```
checking package dependencies ... ERROR
Packages required but not available: ‘graph’ ‘RBGL’

Package suggested but not available for checking: ‘Rgraphviz’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
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

## cellranger (1.0.0)
Maintainer: Jennifer Bryan <jenny@stat.ubc.ca>  
Bug reports: https://github.com/jennybc/cellranger/issues

1 error  | 0 warnings | 0 notes

```
checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  > library(cellranger)
  > 
  > test_check("cellranger")
  1. Failure: Print method works (@test-cell-specification.R#163) ----------------
  cell_limits(c(NA, 7), c(3, NA)) produced no output
  
  
  testthat results ================================================================
  OK: 93 SKIPPED: 0 FAILED: 1
  1. Failure: Print method works (@test-cell-specification.R#163) 
  
  Error: testthat unit tests failed
  Execution halted
```

## chunked (0.2.0)
Maintainer: Edwin de Jonge <edwindjonge@gmail.com>  
Bug reports: https://github.com/edwindj/chunked/issues

1 error  | 0 warnings | 0 notes

```
checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  expect_output(tbl_iris, "Groups: Species") showed 0 warnings
  
  
  testthat results ================================================================
  OK: 24 SKIPPED: 0 FAILED: 5
  1. Failure: print: should print chunked info (@test-print.R#8) 
  2. Failure: print groups: should print groups chunked info (@test-print.R#15) 
  3. Failure: print groups: should print groups chunked info (@test-print.R#15) 
  4. Failure: print groups: should print groups chunked info (@test-print.R#16) 
  5. Failure: print groups: should print groups chunked info (@test-print.R#16) 
  
  Error: testthat unit tests failed
  Execution halted
```

## cleangeo (0.1-1)
Maintainer: Emmanuel Blondel <emmanuel.blondel1@gmail.com>  
Bug reports: https://github.com/eblondel/cleangeo/issues

0 errors | 1 warning  | 0 notes

```
checking whether package ‘cleangeo’ can be installed ... WARNING
Found the following significant warnings:
  Warning: replacing previous import ‘sp::nowrapSpatialLines’ by ‘maptools::nowrapSpatialLines’ when loading ‘cleangeo’
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/cleangeo.Rcheck/00install.out’ for details.
```

## cocor (1.1-2)
Maintainer: Birk Diedenhofen <mail@birkdiedenhofen.de>

1 error  | 0 warnings | 1 note 

```
checking tests ... ERROR
Running the tests in ‘tests/test.cocor.package.R’ failed.
Last 13 lines of output:
  10. Failure: Output is correct (@test.r#101) -----------------------------------
  cocor.indep.groups(...) produced no output
  
  
  11. Failure: Output is correct (@test.r#102) -----------------------------------
  cocor.indep.groups(...) produced no output
  
  
  DONE ===========================================================================
  Error: Test failures
  In addition: Warning message:
  Placing tests in `inst/tests/` is deprecated. Please use `tests/testthat/` instead 
  Execution halted

checking package dependencies ... NOTE
Package which this enhances but not available for checking: ‘rkward’
```

## CompareCausalNetworks (0.1.4)
Maintainer: Christina Heinze <heinze@stat.math.ethz.ch>  
Bug reports: 
        https://github.com/christinaheinze/CompareCausalNetworks/issues

2 errors | 0 warnings | 0 notes

```
checking examples ... ERROR
Running examples in ‘CompareCausalNetworks-Ex.R’ failed
The error most likely occurred in:

> base::assign(".ptime", proc.time(), pos = "CheckExEnv")
> ### Name: getParents
> ### Title: Estimate the connectivity matrix of a causal graph
> ### Aliases: getParents
> ### Keywords: Causality, Graph estimations
> 
> ### ** Examples
> 
> ## load the backShift package for data generation and plotting functionality
> if(!requireNamespace("backShift", quietly = TRUE))
+  stop("The package 'backShift' is needed for the examples to
+  work. Please install it.", call. = FALSE)
Error: The package 'backShift' is needed for the examples to
 work. Please install it.
Execution halted

checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  6: missingDependenciesMessage("pcalg", method)
  7: stop(paste("The package '", package, "' is needed for ", method, " to \nwork. Please install it.", 
         sep = ""), call. = FALSE)
  
  testthat results ================================================================
  OK: 12 SKIPPED: 0 FAILED: 4
  1. Error: Checks output type for pc (@test_getParents_defaults_all_methods.R#19) 
  2. Error: Checks output type for LINGAM (@test_getParents_defaults_all_methods.R#19) 
  3. Error: Checks output type for ges (@test_getParents_defaults_all_methods.R#19) 
  4. Error: Checks output type for rfci (@test_getParents_defaults_all_methods.R#19) 
  
  Error: testthat unit tests failed
  Execution halted
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

## ddpcr (1.1.2)
Maintainer: Dean Attali <daattali@gmail.com>  
Bug reports: https://github.com/daattali/ddpcr/issues

1 error  | 0 warnings | 0 notes

```
checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  
  
  2. Failure: quiet works (@test-utils.R#55) -------------------------------------
  quiet(cat("hello world")) produced no output
  
  
  testthat results ================================================================
  OK: 268 SKIPPED: 0 FAILED: 2
  1. Failure: quiet works (@test-utils.R#54) 
  2. Failure: quiet works (@test-utils.R#55) 
  
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

## dplyr (0.4.3)
Maintainer: Hadley Wickham <hadley@rstudio.com>  
Bug reports: https://github.com/hadley/dplyr/issues

1 error  | 0 warnings | 0 notes

```
checking package dependencies ... ERROR
Package required but not available: ‘BH’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
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

## explor (0.2)
Maintainer: Julien Barnier <julien.barnier@ens-lyon.fr>  
Bug reports: https://github.com/juba/explor/issues

1 error  | 0 warnings | 0 notes

```
checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  
  Attaching package: 'ade4'
  
  The following object is masked from 'package:FactoMineR':
  
      reconst
  
  testthat results ================================================================
  OK: 68 SKIPPED: 0 FAILED: 1
  1. Failure: Qualitative supplementary variables results are equal (@test_prepare_results_MCA.R#35) 
  
  Error: testthat unit tests failed
  Execution halted
```

## falsy (1.0.1)
Maintainer: Gabor Csardi <csardi.gabor@gmail.com>  
Bug reports: https://github.com/gaborcsardi/falsy/issues

1 error  | 0 warnings | 0 notes

```
checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  > library(falsy)
  > 
  > test_check("falsy")
  1. Failure: try_quietly works (@test_falsy.R#126) ------------------------------
  try_quietly(stop("foo!")) produced no output
  
  
  testthat results ================================================================
  OK: 46 SKIPPED: 0 FAILED: 1
  1. Failure: try_quietly works (@test_falsy.R#126) 
  
  Error: testthat unit tests failed
  Execution halted
```

## flacco (1.2)
Maintainer: Pascal Kerschke <kerschke@uni-muenster.de>  
Bug reports: https://github.com/kerschke/flacco/issues

1 error  | 0 warnings | 0 notes

```
checking tests ... ERROR
Running the tests in ‘tests/test-general.R’ failed.
Last 13 lines of output:
  3: testthat::expect_that(res, cond, info = info, label = vname(x, label))
  4: condition(object) at /Users/hadley/Documents/devtools/testthat/R/expect-that.R:22
  5: testthat::expectation(identical(res, TRUE), failure_msg = res, success_msg = "all good")
  
  testthat results ================================================================
  OK: 127 SKIPPED: 0 FAILED: 4
  1. Error: Basic Initial Samples (@test-base-createInitialSample.R#6) 
  2. Error: Create Initial Sample with Custom Bounds (@test-base-createInitialSample.R#34) 
  3. Error: Without Diagonal (@test-base-findLinearNeighbours.R#10) 
  4. Error: With Diagonal (@test-base-findLinearNeighbours.R#25) 
  
  Error: testthat unit tests failed
  Execution halted
```

## flexsurv (0.7)
Maintainer: Christopher Jackson <chris.jackson@mrc-bsu.cam.ac.uk>  
Bug reports: https://github.com/chjackson/flexsurv-dev/issues

1 error  | 0 warnings | 0 notes

```
checking tests ... ERROR
Running the tests in ‘tests/test_base.R’ failed.
Last 13 lines of output:
  20  803 0.4242224 0.3021022 0.3808314
  21  855 0.3983386 0.2825988 0.3535423
  22 1040 0.3171789 0.2237889 0.2695927
  23 1106 0.2920295 0.2061991 0.2441855
  24 1129 0.2836991 0.2004309 0.2358447
  25 1206 0.2573606 0.1823693 0.2097428
  26 1227 0.2505762 0.1777575 0.2030901
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
Packages unavailable to check Rd xrefs: ‘alr3’, ‘prettyR’, ‘epitools’, ‘RMark’, ‘asbio’, ‘agricolae’, ‘DescTools’
```

## FunChisq (2.2.2)
Maintainer: Joe Song <joemsong@cs.nmsu.edu>

1 error  | 0 warnings | 0 notes

```
checking package dependencies ... ERROR
Packages required but not available: ‘BH’ ‘RcppClassic’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
```

## futile.logger (1.4.1)
Maintainer: Brian Lee Yung Rowe <r@zatonovo.com>

1 error  | 0 warnings | 0 notes

```
checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  > library(testthat)
  > test_check("futile.logger")
  Loading required package: futile.logger
  1. Failure: lower levels are not logged (@test_debug.R#19) ---------------------
  flog.trace("testlog") produced no output
  
  
  testthat results ================================================================
  OK: 68 SKIPPED: 0 FAILED: 1
  1. Failure: lower levels are not logged (@test_debug.R#19) 
  
  Error: testthat unit tests failed
  Execution halted
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

## GERGM (0.7.4)
Maintainer: Matthew J. Denny <mdenny@psu.edu>

1 error  | 0 warnings | 0 notes

```
checking package dependencies ... ERROR
Package required but not available: ‘BH’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
```

## GetoptLong (0.1.1)
Maintainer: Zuguang Gu <z.gu@dkfz.de>

1 error  | 0 warnings | 0 notes

```
checking tests ... ERROR
Running the tests in ‘tests/test-all.R’ failed.
Last 13 lines of output:
  
  27. test `version` and `help` options (@test_GetoptLong.R#243) - cannot remove file '/tmp/RtmppQOw4f/filef842fab2f3f.json', reason 'No such file or directory'
  
  Failed -------------------------------------------------------------------------
  1. Failure: test `cat_prefix` (@test_qq.R#85) ----------------------------------
  qqcat("a") produced no output
  
  
  DONE ===========================================================================
  Error: Test failures
  In addition: Warning message:
  Placing tests in `inst/tests/` is deprecated. Please use `tests/testthat/` instead 
  Execution halted
```

## ggfortify (0.1.0)
Maintainer: Masaaki Horikoshi <sinhrks@gmail.com>

1 error  | 0 warnings | 0 notes

```
checking tests ... ERROR
Running the tests in ‘tests/test-all.R’ failed.
Last 13 lines of output:
  1. Failure: fortify.cpt works for AirPassengers (@test-changepoint.R#24) -------
  names(fortified) not equal to c("Index", "Data", "variance").
  Lengths differ: 4 vs 3
  
  
  Loading required package: urca
  Loading required package: lmtest
  testthat results ================================================================
  OK: 554 SKIPPED: 1 FAILED: 1
  1. Failure: fortify.cpt works for AirPassengers (@test-changepoint.R#24) 
  
  Error: testthat unit tests failed
  Execution halted
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

1 error  | 0 warnings | 0 notes

```
checking package dependencies ... ERROR
Packages required but not available: ‘RcppEigen’ ‘BH’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
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

## gmum.r (0.2.1)
Maintainer: Stanislaw Jastrzebski <staszek.jastrzebski@gmail.com>  
Bug reports: https://github.com/gmum/gmum.r/issues

1 error  | 0 warnings | 0 notes

```
checking package dependencies ... ERROR
Package required but not available: ‘BH’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
```

## gpuR (1.1.0)
Maintainer: Charles Determan Jr. <cdetermanjr@gmail.com>  
Bug reports: http://github.com/cdeterman/gpuR/issues/new

1 error  | 0 warnings | 0 notes

```
checking package dependencies ... ERROR
Packages required but not available: ‘RcppEigen’ ‘RViennaCL’ ‘BH’

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

1 error  | 1 warning  | 1 note 

```
checking tests ... ERROR
Running the tests in ‘tests/testthat-package.R’ failed.
Last 13 lines of output:
  > test_package("harvestr")
  Caching: ..........
  main functions: ............
  Loading required package: coda
  Loading required package: MASS
  Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
    there is no package called 'graph'
  In addition: Warning message:
  Placing tests in `inst/tests/` is deprecated. Please use `tests/testthat/` instead 
  Error: package or namespace load failed for 'MCMCpack'
  
  DONE ===========================================================================
  Execution halted

checking running R code from vignettes ... WARNING
Errors in running code in vignettes:
when running code in ‘harvestr.Rnw’
  ...

> library(MCMCpack)
Loading required package: coda
Loading required package: MASS
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘graph’

  When sourcing ‘harvestr.R’:
Error: package or namespace load failed for ‘MCMCpack’
Execution halted


checking re-building of vignette outputs ... NOTE
Error in re-building vignettes:
  ...
Loading required package: coda
Loading required package: MASS
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘graph’

Error: processing vignette 'harvestr.Rnw' failed with diagnostics:
 chunk 1 (label = setup) 
Error : package or namespace load failed for ‘MCMCpack’
Execution halted

```

## haven (0.2.0)
Maintainer: Hadley Wickham <hadley@rstudio.com>  
Bug reports: https://github.com/hadley/haven/issues

1 error  | 0 warnings | 0 notes

```
checking package dependencies ... ERROR
Package required but not available: ‘BH’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
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
checking package dependencies ... ERROR
Package required but not available: ‘graph’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
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
checking package dependencies ... ERROR
Package required but not available: ‘BH’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
```

## jqr (0.2.0)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: https://github.com/ropensci/jqr/issues

1 error  | 0 warnings | 0 notes

```
checking package dependencies ... ERROR
Package required but not available: ‘BH’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
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

1 error  | 0 warnings | 0 notes

```
checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  2. Error: mLambertW has correct values for Normal and delta > 0 (@test_dpqr_LambertW.R#155) 
  unused argument (info = "delta=0.2: sd")
  1: expect_more_than(mom.lamw.h$sd, 3, info = paste0(msg, ": sd")) at testthat/test_dpqr_LambertW.R:155
  2: expect_gt(...) at /Users/hadley/Documents/devtools/testthat/R/expect-comparison.R:89
  
  testthat results ================================================================
  OK: 737 SKIPPED: 0 FAILED: 2
  1. Error: W_gamma treats branch correctly (@test_W_gamma.R#55) 
  2. Error: mLambertW has correct values for Normal and delta > 0 (@test_dpqr_LambertW.R#155) 
  
  Error: testthat unit tests failed
  In addition: There were 15 warnings (use warnings() to see them)
  Execution halted
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
  Warning: replacing previous import ‘maptools::nowrapSpatialLines’ by ‘sp::nowrapSpatialLines’ when loading ‘letsR’
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

## lme4 (1.1-11)
Maintainer: Ben Bolker <bbolker+lme4@gmail.com>  
Bug reports: https://github.com/lme4/lme4/issues

1 error  | 0 warnings | 0 notes

```
checking package dependencies ... ERROR
Package required but not available: ‘RcppEigen’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
```

## lubridate (1.5.0)
Maintainer: Vitalie Spinu <spinuvit@gmail.com>  
Bug reports: https://github.com/hadley/lubridate/issues

1 error  | 0 warnings | 1 note 

```
checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  4. Failure: format.Period correctly displays intervals of length 0 (@test-periods.R#350) 
  per[FALSE] produced no output
  
  
  testthat results ================================================================
  OK: 1751 SKIPPED: 0 FAILED: 4
  1. Failure: format.Duration correctly displays intervals of length 0 (@test-durations.R#123) 
  2. Failure: format.Interval correctly displays intervals of length 0 (@test-intervals.R#111) 
  3. Failure: fast_strptime and parse_date_time2 detect excesive days (#289) (@test-parsers.R#547) 
  4. Failure: format.Period correctly displays intervals of length 0 (@test-periods.R#350) 
  
  Error: testthat unit tests failed
  Execution halted

checking package dependencies ... NOTE
Packages which this enhances but not available for checking: ‘tis’ ‘fts’
```

## markmyassignment (0.5.0)
Maintainer: Mans Magnusson <mons.magnusson@gmail.com>

1 error  | 0 warnings | 0 notes

```
checking whether package ‘markmyassignment’ can be installed ... ERROR
Installation failed.
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/markmyassignment.Rcheck/00install.out’ for details.
```

## mlr (2.8)
Maintainer: Bernd Bischl <bernd_bischl@gmx.net>  
Bug reports: https://github.com/mlr-org/mlr/issues

1 error  | 0 warnings | 0 notes

```
checking tests ... ERROR
Running the tests in ‘tests/run-base.R’ failed.
Last 13 lines of output:
  testthat results ================================================================
  OK: 1996 SKIPPED: 1 FAILED: 8
  1. Error: keep.preds and models are passed down to resample() (@test_base_benchmark.R#193) 
  2. Failure: chains (@test_base_chains.R#11) 
  3. Error: generateCalibrationData (@test_base_generateCalibration.R#14) 
  4. Error: generateLearningCurve (@test_base_generateLearningCurve.R#11) 
  5. Error: generatePartialPredictionData (@test_base_generatePartialPrediction.R#21) 
  6. Error: generateThreshVsPerfData (@test_base_generateThreshVsPerf.R#12) 
  7. Failure: getParamSet (@test_base_getParamSet.R#16) 
  8. Error: BenchmarkResult (@test_base_plotBMRBoxplots.R#12) 
  
  Error: testthat unit tests failed
  Execution halted
```

## mmand (1.3.0)
Maintainer: Jon Clayden <code@clayden.org>  
Bug reports: https://github.com/jonclayden/mmand/issues

1 error  | 0 warnings | 0 notes

```
checking package dependencies ... ERROR
Package required but not available: ‘RcppEigen’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
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

## morse (2.1.1)
Maintainer: Philippe Ruiz <philippe.ruiz@univ-lyon1.fr>

1 error  | 0 warnings | 0 notes

```
checking whether package ‘morse’ can be installed ... ERROR
Installation failed.
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/morse.Rcheck/00install.out’ for details.
```

## move (1.6.541)
Maintainer: Bart Kranstauber <bart.kranstauber@uni-konstanz.de>

1 error  | 0 warnings | 0 notes

```
checking whether package ‘move’ can be installed ... ERROR
Installation failed.
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/move.Rcheck/00install.out’ for details.
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

## multitable (1.6)
Maintainer: Steve C Walker <steve.walker@utoronto.ca>

1 error  | 0 warnings | 1 note 

```
checking running R code from vignettes ... ERROR
Errors in running code in vignettes:
when running code in ‘multitable.Rnw’
  ...
> p <- p + geom_point(aes(x = width, y = abundance, 
+     shape = life.history))

> p <- p + stat_smooth(aes(x = width, y = abundance), 
+     se = FALSE, method = "bayesglm", family = poisson, form = y ~ 
+         x + I(x^2), colo .... [TRUNCATED] 

  When sourcing ‘multitable.R’:
Error: Unknown parameters: family, form
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

## mvnfast (0.1.4)
Maintainer: Matteo Fasiolo <matteo.fasiolo@gmail.com>

1 error  | 0 warnings | 0 notes

```
checking package dependencies ... ERROR
Package required but not available: ‘BH’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
```

## mvtboost (0.4.1)
Maintainer: Patrick Miller <patrick.mil10@gmail.com>  
Bug reports: https://github.com/patr1ckm/mvtboost/issues

1 error  | 0 warnings | 0 notes

```
checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  
  Type 'demo()' for some demos, 'help()' for on-line help, or
  'help.start()' for an HTML browser interface to help.
  Type 'q()' to quit R.
  
  > library(testthat)
  > library(mvtboost)
  > 
  > test_check("mvtboost")
  Error: mvtb.covex(out) produced no output
  testthat results ================================================================
  OK: 72 SKIPPED: 0 FAILED: 0
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

## myTAI (0.3.0)
Maintainer: Hajk-Georg Drost <hajk-georg.drost@informatik.uni-halle.de>  
Bug reports: https://github.com/HajkD/myTAI/issues

1 error  | 0 warnings | 0 notes

```
checking package dependencies ... ERROR
Package required but not available: ‘edgeR’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
```

## nabor (0.4.6)
Maintainer: Gregory Jefferis <jefferis@gmail.com>  
Bug reports: https://github.com/jefferis/nabor/issues

1 error  | 0 warnings | 0 notes

```
checking package dependencies ... ERROR
Packages required but not available: ‘RcppEigen’ ‘BH’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
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
  2. Failure: p_author works (@test-p_author.R#5) --------------------------------
  p_author(lattice) produced no output
  
  
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
  > library(Perc)
  > 
  > test_check("Perc")
  1. Failure: outputs are of correct format for valueConverter (@test-Converters.R#29) 
  class(vcOutput) produced no output
  
  
  testthat results ================================================================
  OK: 61 SKIPPED: 0 FAILED: 1
  1. Failure: outputs are of correct format for valueConverter (@test-Converters.R#29) 
  
  Error: testthat unit tests failed
  Execution halted
```

## phonics (0.6.3)
Maintainer: "James P. Howard, II" <jh@jameshoward.us>  
Bug reports: https://github.com/howardjp/phonics/issues

1 error  | 0 warnings | 0 notes

```
checking package dependencies ... ERROR
Package required but not available: ‘BH’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
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

## pipeR (0.6.0.6)
Maintainer: Kun Ren <ken@renkun.me>  
Bug reports: https://github.com/renkun-ken/pipeR/issues

1 error  | 0 warnings | 0 notes

```
checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  > library(testthat)
  > test_check("pipeR")
  Loading required package: pipeR
  1. Failure: printing (@test2-Pipe.R#168) ---------------------------------------
  print(Pipe(1:10)$invisible()) produced no output
  
  
  testthat results ================================================================
  OK: 106 SKIPPED: 0 FAILED: 1
  1. Failure: printing (@test2-Pipe.R#168) 
  
  Error: testthat unit tests failed
  Execution halted
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

## poplite (0.99.16)
Maintainer: Daniel Bottomly <bottomly@ohsu.edu>

0 errors | 1 warning  | 3 notes

```
checking running R code from vignettes ... WARNING
Errors in running code in vignettes:
when running code in ‘poplite.Rnw’
  ...
8             8         8    18      0  1.6844357  0.53539884          2     F
9             9         9    20      1  0.9113913 -0.55527835          2     F
10           10        10    12      1  0.2374303  1.77950291          1     M
..          ...       ...   ...    ...        ...         ...        ...   ...

> library(VariantAnnotation)

  When sourcing ‘poplite.R’:
Error: there is no package called ‘VariantAnnotation’
Execution halted


checking package dependencies ... NOTE
Package suggested but not available for checking: ‘VariantAnnotation’

checking R code for possible problems ... NOTE
join,Database : .local: no visible binding for global variable
  ‘new.ancil’

checking re-building of vignette outputs ... NOTE
Error in re-building vignettes:
  ...

    select

The following object is masked from ‘package:stats’:

    filter

... 8 lines ...
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

## prcbench (0.3.1)
Maintainer: Takaya Saito <takaya.saito@outlook.com>  
Bug reports: https://github.com/takayasaito/prcbench/issues

2 errors | 0 warnings | 1 note 

```
checking examples ... ERROR
Running examples in ‘prcbench-Ex.R’ failed
The error most likely occurred in:

> base::assign(".ptime", proc.time(), pos = "CheckExEnv")
> ### Name: autoplot.evalcurve
> ### Title: Plot the result of Precision-Recall curve evaluation
> ### Aliases: autoplot.evalcurve
> 
> ### ** Examples
> 
> library(ggplot2)
> 
> ## Plot evaluation results on test datasets r1, r2, and r3
> testset <- create_testset("curve", c("c1", "c2", "c3"))
> toolset <- create_toolset(set_names = "crv5")
> eres1 <- run_evalcurve(testset, toolset)
Error: PerfMeas needed for this function to work. Please install it.
Execution halted

checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  1. Error: run_benchmark (@test_main_benchmark.R#32) 
  2. Failure: run_benchmark: testset (@test_main_benchmark.R#58) 
  3. Failure: run_benchmark: testset (@test_main_benchmark.R#61) 
  4. Failure: run_benchmark: toolset (@test_main_benchmark.R#84) 
  5. Failure: run_benchmark: toolset (@test_main_benchmark.R#87) 
  6. Error: run_benchmark: times (@test_main_benchmark.R#109) 
  7. Failure: run_benchmark: unit (@test_main_benchmark.R#145) 
  8. Failure: run_benchmark: unit (@test_main_benchmark.R#145) 
  9. Failure: run_benchmark: unit (@test_main_benchmark.R#145) 
  1. ...
  
  Error: testthat unit tests failed
  Execution halted

checking re-building of vignette outputs ... NOTE
Error in re-building vignettes:
  ...
Quitting from lines 119-124 (introduction.Rmd) 
Error: processing vignette 'introduction.Rmd' failed with diagnostics:
PerfMeas needed for this function to work. Please install it.
Execution halted

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

## purrr (0.2.1)
Maintainer: Hadley Wickham <hadley@rstudio.com>  
Bug reports: https://github.com/hadley/purrr/issues

1 error  | 0 warnings | 0 notes

```
checking package dependencies ... ERROR
Package required but not available: ‘BH’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
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
  pxweb:::findData.inputBaseCat(c(3, 6), test_codedAlt) produced no output
  
  
  testthat results ================================================================
  OK: 23 SKIPPED: 0 FAILED: 2
  1. Failure: findData.inputBaseCat (@test-interactive_pxweb.R#7) 
  2. Failure: findData.inputBaseCat (@test-interactive_pxweb.R#9) 
  
  Error: testthat unit tests failed
  Execution halted
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
  > library(testthat)
  > test_check("rappdirs")
  Loading required package: rappdirs
  1. Failure: expand_r_libs_specifiers works as expected (@test-utils.r#5) -------
  expand_r_libs_specifiers("%p-platform/%v") produced no output
  
  
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
  Warning: replacing previous import ‘maptools::nowrapSpatialLines’ by ‘sp::nowrapSpatialLines’ when loading ‘rAvis’
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/rAvis.Rcheck/00install.out’ for details.
```

## RcppShark (0.1)
Maintainer: Aydin Demircioglu <aydin.demircioglu@ini.rub.de>  
Bug reports: http://github.com/aydindemircioglu/RcppShark/issues

1 error  | 0 warnings | 0 notes

```
checking package dependencies ... ERROR
Package required but not available: ‘BH’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
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
  
  Error: as.genetics(x1) produced no output
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

## readr (0.2.2)
Maintainer: Hadley Wickham <hadley@rstudio.com>  
Bug reports: https://github.com/hadley/readr/issues

1 error  | 0 warnings | 0 notes

```
checking package dependencies ... ERROR
Package required but not available: ‘BH’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
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

## REDCapR (0.9.3)
Maintainer: Will Beasley <wibeasley@hotmail.com>  
Bug reports: https://github.com/OuhscBbmc/REDCapR/issues

1 error  | 0 warnings | 1 note 

```
checking tests ... ERROR
Running the tests in ‘tests/test-all.R’ failed.
Last 13 lines of output:
         verbose = verbose, config_options = config_options)
  6: httr::POST(url = redcap_uri, body = post_body, config = config_options)
  7: request_perform(req, hu$handle$handle)
  8: request_fetch(req$output, req$url, handle)
  9: request_fetch.write_memory(req$output, req$url, handle)
  10: curl::curl_fetch_memory(url, handle = handle)
  
  testthat results ================================================================
  OK: 52 SKIPPED: 43 FAILED: 1
  1. Error: Batch: Bad Uri -Not HTTPS (@test-read_errors.R#54) 
  
  Error: testthat unit tests failed
  Execution halted

checking package dependencies ... NOTE
Package suggested but not available for checking: ‘RODBC’
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

## reportr (1.2.0)
Maintainer: Jon Clayden <code@clayden.org>

1 error  | 0 warnings | 0 notes

```
checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  > library(reportr)
  > 
  > test_check("reportr")
  1. Failure: message reporting works (@test-05-reportr.R#16) --------------------
  report(OL$Info, "Test message") produced no output
  
  
  testthat results ================================================================
  OK: 13 SKIPPED: 0 FAILED: 1
  1. Failure: message reporting works (@test-05-reportr.R#16) 
  
  Error: testthat unit tests failed
  Execution halted
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

## rlist (0.4.6)
Maintainer: Kun Ren <ken@renkun.me>  
Bug reports: https://github.com/renkun-ken/rlist/issues

1 error  | 0 warnings | 0 notes

```
checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  
  3. Failure: list.group (@test-group.R#27) --------------------------------------
  lapply(2:4, function(i) list.group(x, sum(unlist(score)) <= i)) produced no output
  
  
  testthat results ================================================================
  OK: 288 SKIPPED: 0 FAILED: 3
  1. Failure: list.is (@test-filter.R#12) 
  2. Failure: list.filter (@test-filter.R#34) 
  3. Failure: list.group (@test-group.R#27) 
  
  Error: testthat unit tests failed
  Execution halted
```

## RLumModel (0.1.0)
Maintainer: Johannes Friedrich <johannes.friedrich@uni-bayreuth.de>

1 error  | 0 warnings | 0 notes

```
checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  .set_pars("Pagonis2008") produced no output
  
  
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

## rmumps (5.0.1.8)
Maintainer: Serguei Sokol <sokol@insa-toulouse.fr>  
Bug reports: https://github.com/sgsokol/rmumps/issues

1 error  | 0 warnings | 0 notes

```
checking whether package ‘rmumps’ can be installed ... ERROR
Installation failed.
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/rmumps.Rcheck/00install.out’ for details.
```

## rnetcarto (0.2.4)
Maintainer: Guilhem Doulcier <guilhem.doulcier@ens.fr>

1 error  | 0 warnings | 0 notes

```
checking whether package ‘rnetcarto’ can be installed ... ERROR
Installation failed.
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/rnetcarto.Rcheck/00install.out’ for details.
```

## RNiftyReg (2.2.0)
Maintainer: Jon Clayden <code@clayden.org>  
Bug reports: https://github.com/jonclayden/RNiftyReg/issues

1 error  | 0 warnings | 0 notes

```
checking package dependencies ... ERROR
Package required but not available: ‘RcppEigen’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
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

## rpf (0.51)
Maintainer: Joshua Pritikin <jpritikin@pobox.com>

1 error  | 0 warnings | 0 notes

```
checking package dependencies ... ERROR
Package required but not available: ‘RcppEigen’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
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
checking package dependencies ... ERROR
Packages required but not available: ‘StanHeaders’ ‘BH’ ‘RcppEigen’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
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
checking package dependencies ... ERROR
Package required but not available: ‘BH’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
```

## simmer (3.1.2)
Maintainer: Iñaki Ucar <i.ucar86@gmail.com>  
Bug reports: https://github.com/Bart6114/simmer/issues

1 error  | 0 warnings | 0 notes

```
checking package dependencies ... ERROR
Package required but not available: ‘BH’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
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

## spaMM (1.7.2)
Maintainer: François Rousset <francois.rousset@univ-montp2.fr>

1 error  | 0 warnings | 0 notes

```
checking package dependencies ... ERROR
Package required but not available: ‘RcppEigen’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
```

## sparseHessianFD (0.3.0)
Maintainer: Michael Braun <braunm@smu.edu>

1 error  | 0 warnings | 0 notes

```
checking package dependencies ... ERROR
Package required but not available: ‘RcppEigen’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
```

## spduration (0.15.0)
Maintainer: Andreas Beger <adbeger@gmail.com>

1 error  | 0 warnings | 0 notes

```
checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  plot_hazard(model.coups, zvals = c(1, -5), ci = FALSE, col = "blue") produced no output
  
  
  testthat results ================================================================
  OK: 17 SKIPPED: 0 FAILED: 5
  1. Failure: plot_hazard accepts all input options (@test_plotting.R#8) 
  2. Failure: plot_hazard accepts all input options (@test_plotting.R#10) 
  3. Failure: plot_hazard accepts all input options (@test_plotting.R#13) 
  4. Failure: plot_hazard accepts all input options (@test_plotting.R#17) 
  5. Failure: plot_hazard accepts all input options (@test_plotting.R#22) 
  
  Error: testthat unit tests failed
  Execution halted
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

## svglite (1.1.0)
Maintainer: Hadley Wickham <hadley@rstudio.com>  
Bug reports: https://github.com/hadley/svglite/issues

1 error  | 0 warnings | 0 notes

```
checking package dependencies ... ERROR
Package required but not available: ‘BH’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
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
checking package dependencies ... ERROR
Package required but not available: ‘BH’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
```

## tigris (0.2.2)
Maintainer: Kyle Walker <kyle.walker@tcu.edu>

0 errors | 1 warning  | 0 notes

```
checking whether package ‘tigris’ can be installed ... WARNING
Found the following significant warnings:
  Warning: replacing previous import ‘maptools::nowrapSpatialLines’ by ‘sp::nowrapSpatialLines’ when loading ‘tigris’
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/tigris.Rcheck/00install.out’ for details.
```

## tmod (0.24)
Maintainer: January Weiner <january.weiner@gmail.com>

2 errors | 0 warnings | 2 notes

```
checking examples ... ERROR
Running examples in ‘tmod-Ex.R’ failed
The error most likely occurred in:

> base::assign(".ptime", proc.time(), pos = "CheckExEnv")
> ### Name: tmodLimmaTest
> ### Title: Run tmod enrichment tests directly on a limma object
> ### Aliases: tmodLimmaTest
> 
> ### ** Examples
> 
> library(limma)
Error in library(limma) : there is no package called ‘limma’
Execution halted

checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  
  
  2. Failure: tmod is sane (@test_data.R#8) --------------------------------------
  `tmod` produced no output
  
  
  testthat results ================================================================
  OK: 15 SKIPPED: 0 FAILED: 2
  1. Failure: tmod is sane (@test_data.R#7) 
  2. Failure: tmod is sane (@test_data.R#8) 
  
  Error: testthat unit tests failed
  Execution halted

checking package dependencies ... NOTE
Packages suggested but not available for checking: ‘limma’ ‘org.Hs.eg.db’

checking re-building of vignette outputs ... NOTE
Error in re-building vignettes:
  ...
Quitting from lines 46-56 (tmod.rmd) 
Error: processing vignette 'tmod.rmd' failed with diagnostics:
there is no package called 'limma'
Execution halted

```

## toaster (0.5.1)
Maintainer: Gregory Kanevsky <gregory.kanevsky@teradata.com>  
Bug reports: https://github.com/teradata-aster-field/toaster/issues

1 error  | 0 warnings | 0 notes

```
checking package dependencies ... ERROR
Package required but not available: ‘RODBC’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
```

## trustOptim (0.8.5)
Maintainer: Michael Braun <braunm@smu.edu>

1 error  | 0 warnings | 0 notes

```
checking package dependencies ... ERROR
Package required but not available: ‘RcppEigen’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
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

## useful (1.2.0)
Maintainer: Jared P. Lander <packages@jaredlander.com>

1 error  | 0 warnings | 0 notes

```
checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  4. Failure: simple.impute.default properly imputes the mean (@test-simple-impute.r#41) 
  all.equal(...) produced no output
  
  
  testthat results ================================================================
  OK: 324 SKIPPED: 0 FAILED: 4
  1. Failure: simple.impute.default properly imputes the mean (@test-simple-impute.r#32) 
  2. Failure: simple.impute.default properly imputes the mean (@test-simple-impute.r#35) 
  3. Failure: simple.impute.default properly imputes the mean (@test-simple-impute.r#38) 
  4. Failure: simple.impute.default properly imputes the mean (@test-simple-impute.r#41) 
  
  Error: testthat unit tests failed
  Execution halted
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

## walkr (0.3.3)
Maintainer: Andy Yao <andy.yao17@gmail.com>  
Bug reports: https://github.com/andyyao95/walkr/issues

1 error  | 0 warnings | 0 notes

```
checking package dependencies ... ERROR
Package required but not available: ‘RcppEigen’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
```

## wgsea (1.8)
Maintainer: Chris Wallace <chris.wallace@cimr.cam.ac.uk>

1 error  | 0 warnings | 0 notes

```
checking package dependencies ... ERROR
Package required but not available: ‘snpStats’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
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

## xml2 (0.1.2)
Maintainer: Hadley Wickham <hadley@rstudio.com>  
Bug reports: https://github.com/hadley/xml2/issues/

1 error  | 0 warnings | 0 notes

```
checking package dependencies ... ERROR
Package required but not available: ‘BH’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
```

## yCrypticRNAs (0.99.2)
Maintainer: Nicole Uwimana <nicole.uwimana@gmail.com>  
Bug reports: https://bitbucket.org/nuwimana/ycrypticrnas/issues

1 error  | 0 warnings | 0 notes

```
checking package dependencies ... ERROR
Packages required but not available: ‘biomaRt’ ‘IRanges’ ‘Rsamtools’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
```

## Zelig (5.0-11)
Maintainer: James Honaker <zelig-zee@iq.harvard.edu>

1 error  | 0 warnings | 0 notes

```
checking whether package ‘Zelig’ can be installed ... ERROR
Installation failed.
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/Zelig.Rcheck/00install.out’ for details.
```

## ZeligChoice (0.9-0)
Maintainer: James Honaker <zelig-zee@iq.harvard.edu>

1 error  | 0 warnings | 0 notes

```
checking whether package ‘ZeligChoice’ can be installed ... ERROR
Installation failed.
See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks/ZeligChoice.Rcheck/00install.out’ for details.
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

