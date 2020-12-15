# baggr

<details>

* Version: 0.4.0
* GitHub: https://github.com/wwiecek/baggr
* Source code: https://github.com/cran/baggr
* Date/Publication: 2020-02-28 11:20:09 UTC
* Number of recursive dependencies: 88

Run `cloud_details(, "baggr")` for more info

</details>

## Newly broken

*   checking installed package size ... NOTE
    ```
      installed size is 168.5Mb
      sub-directories of 1Mb or more:
        libs  167.3Mb
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

## Newly fixed

*   checking whether package ‘baggr’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/baggr/old/baggr.Rcheck/00install.out’ for details.
    ```

# clustermole

<details>

* Version: 1.0.1
* GitHub: https://github.com/igordot/clustermole
* Source code: https://github.com/cran/clustermole
* Date/Publication: 2020-01-27 10:00:02 UTC
* Number of recursive dependencies: 105

Run `cloud_details(, "clustermole")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > 
      > test_check("clustermole")
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Error (test-functions.R:103:3): read_gmt() output ───────────────────────────
      Error: cannot open the connection to 'http://software.broadinstitute.org/gsea/msigdb/supplemental/scsig.all.v1.0.symbols.gmt'
      Backtrace:
          █
       1. └─clustermole::read_gmt(file = "http://software.broadinstitute.org/gsea/msigdb/supplemental/scsig.all.v1.0.symbols.gmt") test-functions.R:103:2
       2.   ├─base::strsplit(readLines(file), "\t")
       3.   └─base::readLines(file)
       4.     └─base::file(con, "r")
      
      [ FAIL 1 | WARN 3 | SKIP 0 | PASS 27 ]
      Error: Test failures
      Execution halted
    ```

# CLVTools

<details>

* Version: 0.7.0
* GitHub: https://github.com/bachmannpatrick/CLVTools
* Source code: https://github.com/cran/CLVTools
* Date/Publication: 2020-08-26 20:10:02 UTC
* Number of recursive dependencies: 86

Run `cloud_details(, "CLVTools")` for more info

</details>

## Newly broken

*   checking whether package ‘CLVTools’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/CLVTools/new/CLVTools.Rcheck/00install.out’ for details.
    ```

## Newly fixed

*   checking installed package size ... NOTE
    ```
      installed size is 15.4Mb
      sub-directories of 1Mb or more:
        libs  14.2Mb
    ```

## Installation

### Devel

```
* installing *source* package ‘CLVTools’ ...
** package ‘CLVTools’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppArmadillo/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppGSL/include' -I/usr/local/include  -fopenmp -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppArmadillo/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppGSL/include' -I/usr/local/include  -fopenmp -fpic  -g -O2  -c bgnbd_CET.cpp -o bgnbd_CET.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppArmadillo/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppGSL/include' -I/usr/local/include  -fopenmp -fpic  -g -O2  -c bgnbd_LL.cpp -o bgnbd_LL.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppArmadillo/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppGSL/include' -I/usr/local/include  -fopenmp -fpic  -g -O2  -c bgnbd_PAlive.cpp -o bgnbd_PAlive.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppArmadillo/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppGSL/include' -I/usr/local/include  -fopenmp -fpic  -g -O2  -c bgnbd_expectation.cpp -o bgnbd_expectation.o
bgnbd_expectation.cpp:71:1: fatal error: error writing to /tmp/ccWp9Kk1.s: No space left on device
   71 | }
      | ^
compilation terminated.
make: *** [/opt/R/4.0.3/lib/R/etc/Makeconf:181: bgnbd_expectation.o] Error 1
ERROR: compilation failed for package ‘CLVTools’
* removing ‘/tmp/workdir/CLVTools/new/CLVTools.Rcheck/CLVTools’


```
### CRAN

```
* installing *source* package ‘CLVTools’ ...
** package ‘CLVTools’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppArmadillo/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppGSL/include' -I/usr/local/include  -fopenmp -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppArmadillo/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppGSL/include' -I/usr/local/include  -fopenmp -fpic  -g -O2  -c bgnbd_CET.cpp -o bgnbd_CET.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppArmadillo/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppGSL/include' -I/usr/local/include  -fopenmp -fpic  -g -O2  -c bgnbd_LL.cpp -o bgnbd_LL.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppArmadillo/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppGSL/include' -I/usr/local/include  -fopenmp -fpic  -g -O2  -c bgnbd_PAlive.cpp -o bgnbd_PAlive.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppArmadillo/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppGSL/include' -I/usr/local/include  -fopenmp -fpic  -g -O2  -c bgnbd_expectation.cpp -o bgnbd_expectation.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppArmadillo/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppGSL/include' -I/usr/local/include  -fopenmp -fpic  -g -O2  -c clv_vectorized.cpp -o clv_vectorized.o
...
** help
*** installing help indices
*** copying figures
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
** checking absolute paths in shared objects and dynamic libraries
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (CLVTools)


```
# crminer

<details>

* Version: 0.4.0
* GitHub: https://github.com/ropensci/crminer
* Source code: https://github.com/cran/crminer
* Date/Publication: 2020-06-27 04:50:12 UTC
* Number of recursive dependencies: 86

Run `cloud_details(, "crminer")` for more info

</details>

## Newly broken

*   checking Rd files ... WARNING
    ```
    as_tdmurl.Rd: Sections \title, and \name must exist and be unique in Rd files
    auth.Rd: Sections \title, and \name must exist and be unique in Rd files
    crm_cache.Rd: Sections \title, and \name must exist and be unique in Rd files
    crm_extract.Rd: Sections \title, and \name must exist and be unique in Rd files
    crm_html.Rd: Sections \title, and \name must exist and be unique in Rd files
    crm_links.Rd: Sections \title, and \name must exist and be unique in Rd files
    Error writing to connection:  No space left on device
    crm_plain.Rd: Sections \title, and \name must exist and be unique in Rd files
    problems found in ‘as_tdmurl.Rd’, ‘auth.Rd’, ‘crm_cache.Rd’, ‘crm_extract.Rd’, ‘crm_html.Rd’, ‘crm_links.Rd’, ‘crm_pdf.Rd’, ‘crm_plain.Rd’
    ```

*   checking for code/documentation mismatches ... WARNING
    ```
    Fatal error: cannot create 'R_TempDir'
    ```

# dm

<details>

* Version: 0.1.9
* GitHub: https://github.com/krlmlr/dm
* Source code: https://github.com/cran/dm
* Date/Publication: 2020-11-18 20:50:03 UTC
* Number of recursive dependencies: 123

Run `cloud_details(, "dm")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `{ ... }` threw an unexpected error.
      Message: Option unknown: "bogus", "mad". Must be one of "all", "tables", "keys", "select", "color".
      Class:   dm_error_unknown_option/dm_error/rlang_error/error/condition
      Backtrace:
          █
       1. ├─dm() %>% dm_paste(options = c("bogus", "all", "mad"))
       2. └─dm::dm_paste(., options = c("bogus", "all", "mad"))
       3.   └─dm:::check_paste_options(options, select, caller_env())
       4.     └─dm:::abort_unknown_option(options, allowed_options)
      
      [ FAIL 10 | WARN 1761 | SKIP 58 | PASS 746 ]
      Error: Test failures
      In addition: Warning message:
      call dbDisconnect() when finished working with a connection 
      Execution halted
    ```

# EpiNow2

<details>

* Version: 1.3.2
* GitHub: https://github.com/epiforecasts/EpiNow2
* Source code: https://github.com/cran/EpiNow2
* Date/Publication: 2020-12-14 09:00:15 UTC
* Number of recursive dependencies: 150

Run `cloud_details(, "EpiNow2")` for more info

</details>

## Newly broken

*   checking installed package size ... NOTE
    ```
      installed size is 269.1Mb
      sub-directories of 1Mb or more:
        libs  267.4Mb
    ```

## Newly fixed

*   checking whether package ‘EpiNow2’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/EpiNow2/old/EpiNow2.Rcheck/00install.out’ for details.
    ```

# fastpos

<details>

* Version: 0.4.1
* GitHub: https://github.com/johannes-titz/fastpos
* Source code: https://github.com/cran/fastpos
* Date/Publication: 2020-09-29 08:50:08 UTC
* Number of recursive dependencies: 65

Run `cloud_details(, "fastpos")` for more info

</details>

## Newly broken

*   checking whether package ‘fastpos’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/fastpos/new/fastpos.Rcheck/00install.out’ for details.
    ```

## Newly fixed

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > library(testthat)
      > library(fastpos)
      > 
      > test_check("fastpos")
      ── Warning (test-fastpos.R:2:1): (code run outside of `test_that()`) ───────────
      59 simulation[s] did not reach the corridor of
                  stability.
      Increase sample_size_max and rerun the simulation.
      
      ── Warning (test-fastpos.R:4:1): (code run outside of `test_that()`) ───────────
      338 simulation[s] did not reach the corridor of
                  stability.
      Increase sample_size_max and rerun the simulation.
      
      Killed
    ```

## Installation

### Devel

```
* installing *source* package ‘fastpos’ ...
** package ‘fastpos’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppArmadillo/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppProgress/include' -I/usr/local/include  -fopenmp -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++: fatal error: Killed signal terminated program cc1plus
compilation terminated.
make: *** [/opt/R/4.0.3/lib/R/etc/Makeconf:181: RcppExports.o] Error 1
ERROR: compilation failed for package ‘fastpos’
* removing ‘/tmp/workdir/fastpos/new/fastpos.Rcheck/fastpos’


```
### CRAN

```
* installing *source* package ‘fastpos’ ...
** package ‘fastpos’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppArmadillo/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppProgress/include' -I/usr/local/include  -fopenmp -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppArmadillo/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppProgress/include' -I/usr/local/include  -fopenmp -fpic  -g -O2  -c rcpparma.cpp -o rcpparma.o
g++ -std=gnu++11 -shared -L/opt/R/4.0.3/lib/R/lib -L/usr/local/lib -o fastpos.so RcppExports.o rcpparma.o -fopenmp -llapack -lblas -lgfortran -lm -lquadmath -L/opt/R/4.0.3/lib/R/lib -lR
installing to /tmp/workdir/fastpos/old/fastpos.Rcheck/00LOCK-fastpos/00new/fastpos/libs
** R
** inst
...
** help
*** installing help indices
*** copying figures
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
** checking absolute paths in shared objects and dynamic libraries
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (fastpos)


```
# fdaoutlier

<details>

* Version: 0.1.1
* GitHub: https://github.com/otsegun/fdaoutlier
* Source code: https://github.com/cran/fdaoutlier
* Date/Publication: 2020-11-28 14:50:03 UTC
* Number of recursive dependencies: 56

Run `cloud_details(, "fdaoutlier")` for more info

</details>

## Newly broken

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 75 marked UTF-8 strings
    ```

## Newly fixed

*   checking whether package ‘fdaoutlier’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/fdaoutlier/old/fdaoutlier.Rcheck/00install.out’ for details.
    ```

# finetune

<details>

* Version: 0.0.1
* GitHub: https://github.com/tidymodels/finetune
* Source code: https://github.com/cran/finetune
* Date/Publication: 2020-11-20 10:30:15 UTC
* Number of recursive dependencies: 153

Run `cloud_details(, "finetune")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘helpers.R’
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      
      The following object is masked from 'package:dials':
      
          smoothness
      
    ...
      ══ Skipped tests ═══════════════════════════════════════════════════════════════
      ● On CRAN (13)
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-anova-filter.R:131:3): top-level anova filter interfaces ──────
      `expect_error(...)` produced warnings, messages.
      
      [ FAIL 1 | WARN 120 | SKIP 13 | PASS 181 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘yardstick’
      All declared Imports should be used.
    ```

# gWidgets2tcltk

<details>

* Version: 1.0-6
* GitHub: https://github.com/jverzani/gWidgets2tcltk
* Source code: https://github.com/cran/gWidgets2tcltk
* Date/Publication: 2018-09-25 13:20:02 UTC
* Number of recursive dependencies: 36

Run `cloud_details(, "gWidgets2tcltk")` for more info

</details>

## Newly broken

*   checking whether package ‘gWidgets2tcltk’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/gWidgets2tcltk/new/gWidgets2tcltk.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘gWidgets2tcltk’ ...
** package ‘gWidgets2tcltk’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** demo
** inst
** byte-compile and prepare package for lazy loading
Warning message:
In fun(libname, pkgname) : couldn't connect to display ":109"
Error in structure(.External(.C_dotTclObjv, objv), class = "tclObj") : 
  [tcl] invalid command name "font".

Error: unable to load R code in package ‘gWidgets2tcltk’
Execution halted
ERROR: lazy loading failed for package ‘gWidgets2tcltk’
* removing ‘/tmp/workdir/gWidgets2tcltk/new/gWidgets2tcltk.Rcheck/gWidgets2tcltk’


```
### CRAN

```
* installing *source* package ‘gWidgets2tcltk’ ...
** package ‘gWidgets2tcltk’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** demo
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (gWidgets2tcltk)


```
# HRM

<details>

* Version: 1.2.1
* GitHub: https://github.com/happma/HRM
* Source code: https://github.com/cran/HRM
* Date/Publication: 2020-02-06 14:50:02 UTC
* Number of recursive dependencies: 78

Run `cloud_details(, "HRM")` for more info

</details>

## Newly broken

*   checking dependencies in R code ... NOTE
    ```
    
    (R:14395): Gtk-WARNING **: 22:23:45.300: gtk_disable_setlocale() must be called before gtk_init()
    ```

# hsstan

<details>

* Version: 0.8
* GitHub: https://github.com/mcol/hsstan
* Source code: https://github.com/cran/hsstan
* Date/Publication: 2020-06-29 17:40:07 UTC
* Number of recursive dependencies: 66

Run `cloud_details(, "hsstan")` for more info

</details>

## Newly broken

*   checking whether package ‘hsstan’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/hsstan/new/hsstan.Rcheck/00install.out’ for details.
    ```

## Newly fixed

*   checking installed package size ... NOTE
    ```
      installed size is 128.3Mb
      sub-directories of 1Mb or more:
        libs  127.8Mb
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

## Installation

### Devel

```
* installing *source* package ‘hsstan’ ...
** package ‘hsstan’ successfully unpacked and MD5 sums checked
** using staged installation
** libs


g++ -std=gnu++14 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -I"../inst/include" -I"/opt/R/4.0.3/lib/R/site-library/StanHeaders/include/src" -DBOOST_DISABLE_ASSERTS -DEIGEN_NO_DEBUG -DBOOST_MATH_OVERFLOW_ERROR_POLICY=errno_on_error -I'/opt/R/4.0.3/lib/R/site-library/BH/include' -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppEigen/include' -I'/opt/R/4.0.3/lib/R/site-library/StanHeaders/include' -I'/opt/R/4.0.3/lib/R/site-library/rstan/include' -I/usr/local/include   -I'/opt/R/4.0.3/lib/R/site-library/RcppParallel/include' -D_REENTRANT -DSTAN_THREADS   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
In file included from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/Core:392,
                 from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/Dense:1,
                 from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/RcppEigenForward.h:30,
...
/opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:55:30: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__vector(2) double’} [-Wignored-attributes]
   55 |                      >::type PacketReturnType;
      |                              ^~~~~~~~~~~~~~~~
stanExports_base.cc:32:1: fatal error: error writing to /tmp/ccN15uGF.s: No space left on device
   32 | }
      | ^
compilation terminated.
make: *** [/opt/R/4.0.3/lib/R/etc/Makeconf:179: stanExports_base.o] Error 1
ERROR: compilation failed for package ‘hsstan’
* removing ‘/tmp/workdir/hsstan/new/hsstan.Rcheck/hsstan’


```
### CRAN

```
* installing *source* package ‘hsstan’ ...
** package ‘hsstan’ successfully unpacked and MD5 sums checked
** using staged installation
** libs


g++ -std=gnu++14 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -I"../inst/include" -I"/opt/R/4.0.3/lib/R/site-library/StanHeaders/include/src" -DBOOST_DISABLE_ASSERTS -DEIGEN_NO_DEBUG -DBOOST_MATH_OVERFLOW_ERROR_POLICY=errno_on_error -I'/opt/R/4.0.3/lib/R/site-library/BH/include' -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppEigen/include' -I'/opt/R/4.0.3/lib/R/site-library/StanHeaders/include' -I'/opt/R/4.0.3/lib/R/site-library/rstan/include' -I/usr/local/include   -I'/opt/R/4.0.3/lib/R/site-library/RcppParallel/include' -D_REENTRANT -DSTAN_THREADS   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
In file included from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/Core:392,
                 from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/Dense:1,
                 from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/RcppEigenForward.h:30,
...
Found more than one class "Rcpp_model_base" in cache; using the first, from namespace 'rstan'
Also defined by ‘hsstan’
** checking absolute paths in shared objects and dynamic libraries
** testing if installed package can be loaded from final location
Found more than one class "Rcpp_model_base" in cache; using the first, from namespace 'rstan'
Also defined by ‘hsstan’
Found more than one class "Rcpp_model_base" in cache; using the first, from namespace 'rstan'
Also defined by ‘hsstan’
** testing if installed package keeps a record of temporary installation path
* DONE (hsstan)


```
# InterfaceqPCR

<details>

* Version: 1.0
* GitHub: NA
* Source code: https://github.com/cran/InterfaceqPCR
* Date/Publication: 2017-04-01 06:30:13 UTC
* Number of recursive dependencies: 43

Run `cloud_details(, "InterfaceqPCR")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    Running examples in ‘InterfaceqPCR-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: InterfaceqPCR-package
    > ### Title: GUI to Analyse qPCR Results after PMA Treatment or not
    > ### Aliases: InterfaceqPCR-package InterfaceqPCR
    > 
    > ### ** Examples
    > 
    > 
    > Start_qPCR()
    Warning in tclRequire("BWidget") : Tcl package 'BWidget' not found
    Error in structure(.External(.C_dotTclObjv, objv), class = "tclObj") : 
      [tcl] invalid command name "toplevel".
    Calls: Start_qPCR ... tktoplevel -> tkwidget -> tcl -> .Tcl.objv -> structure
    Execution halted
    ```

*   checking whether package ‘InterfaceqPCR’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: loading Rplot failed
    See ‘/tmp/workdir/InterfaceqPCR/new/InterfaceqPCR.Rcheck/00install.out’ for details.
    ```

# moonBook

<details>

* Version: 0.2.3
* GitHub: https://github.com/cardiomoon/moonBook
* Source code: https://github.com/cran/moonBook
* Date/Publication: 2018-07-23 05:40:02 UTC
* Number of recursive dependencies: 81

Run `cloud_details(, "moonBook")` for more info

</details>

## Newly broken

*   checking whether package ‘moonBook’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/moonBook/new/moonBook.Rcheck/00install.out’ for details.
    ```

## Newly fixed

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘purrr’
      All declared Imports should be used.
    ```

## Installation

### Devel

```
* installing *source* package ‘moonBook’ ...
** package ‘moonBook’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
...
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
Error in as.list.environment(base::getNamespace("moonBook"), all.names = TRUE) : 
  lazy-load database '/tmp/workdir/moonBook/new/moonBook.Rcheck/moonBook/R/moonBook.rdb' is corrupt
Calls: <Anonymous> ... withCallingHandlers -> <Anonymous> -> <Anonymous> -> as.list.environment
Execution halted
ERROR: loading failed
* removing ‘/tmp/workdir/moonBook/new/moonBook.Rcheck/moonBook’


```
### CRAN

```
* installing *source* package ‘moonBook’ ...
** package ‘moonBook’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
*** copying figures
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (moonBook)


```
# needy

<details>

* Version: 0.2
* GitHub: NA
* Source code: https://github.com/cran/needy
* Date/Publication: 2013-07-31 21:17:45
* Number of recursive dependencies: 35

Run `cloud_details(, "needy")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
    unable to create ‘/tmp/workdir/needy/new/needy.Rcheck/tests’
    ```

## In both

*   checking DESCRIPTION meta-information ... NOTE
    ```
    BugReports field is not a suitable URL but contains an email address:
       use the Contact field instead
    ```

# nestfs

<details>

* Version: 1.0
* GitHub: https://github.com/mcol/nestfs
* Source code: https://github.com/cran/nestfs
* Date/Publication: 2019-09-21 15:30:02 UTC
* Number of recursive dependencies: 38

Run `cloud_details(, "nestfs")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `fs.1` not equal to `fs.2`.
      Component "fs": Attributes: < Component "row.names": Numeric: lengths (5, 4) differ >
      Component "fs": Component "vars": Lengths (5, 4) differ (string compare on first 4)
      Component "fs": Component "fdr": Numeric: lengths (5, 4) differ
      Component "fs": Component "llks": Numeric: lengths (5, 4) differ
      Component "fs": Component "diffs": Numeric: lengths (5, 4) differ
      Component "fs": Component "iter": Numeric: lengths (5, 4) differ
      Component "panel": Lengths (3, 2) differ (string compare on first 2)
      Component "final.model": 1 string mismatch
      Component "iter1": Attributes: < Component "row.names": 1 string mismatch >
      ...
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 166 ]
      Error: Test failures
      Execution halted
    ```

# r2dii.match

<details>

* Version: 0.0.7
* GitHub: https://github.com/2DegreesInvesting/r2dii.match
* Source code: https://github.com/cran/r2dii.match
* Date/Publication: 2020-12-03 15:10:02 UTC
* Number of recursive dependencies: 68

Run `cloud_details(, "r2dii.match")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ── Failure (test-prioritize.R:214:3): error if score=1 & values by id_loan+level are duplicated (#114) ──
      `prioritize(invalid)` threw an unexpected error.
      Message: `data` where `score` is `1` must be unique by `id_loan` by `level`.
      Duplicated rows: 2.
      Have you ensured that only one ald-name per loanbook-name is set to `1`?
      Class:   duplicated_score1_by_id_loan_by_level/rlang_error/error/condition
      Backtrace:
          █
       1. ├─r2dii.match::prioritize(invalid)
       2. │ └─`%>%`(...)
       3. └─r2dii.match:::check_duplicated_score1(.)
      
      [ FAIL 2 | WARN 503 | SKIP 6 | PASS 168 ]
      Error: Test failures
      Execution halted
    ```

# RcppAlgos

<details>

* Version: 2.4.1
* GitHub: https://github.com/jwood000/RcppAlgos
* Source code: https://github.com/cran/RcppAlgos
* Date/Publication: 2020-03-24 07:10:04 UTC
* Number of recursive dependencies: 47

Run `cloud_details(, "RcppAlgos")` for more info

</details>

## Newly broken

*   checking whether package ‘RcppAlgos’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/RcppAlgos/new/RcppAlgos.Rcheck/00install.out’ for details.
    ```

## Newly fixed

*   checking installed package size ... NOTE
    ```
      installed size is 41.2Mb
      sub-directories of 1Mb or more:
        libs  40.0Mb
    ```

## Installation

### Devel

```
* installing *source* package ‘RcppAlgos’ ...
** package ‘RcppAlgos’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -I../inst/include/ -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppThread/include' -I/usr/local/include   -fpic  -g -O2  -c BigNumCount.cpp -o BigNumCount.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -I../inst/include/ -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppThread/include' -I/usr/local/include   -fpic  -g -O2  -c CheckReturn.cpp -o CheckReturn.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -I../inst/include/ -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppThread/include' -I/usr/local/include   -fpic  -g -O2  -c CombPermMaster.cpp -o CombPermMaster.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -I../inst/include/ -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppThread/include' -I/usr/local/include   -fpic  -g -O2  -c CombinationResults.cpp -o CombinationResults.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -I../inst/include/ -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppThread/include' -I/usr/local/include   -fpic  -g -O2  -c CombinatoricsApply.cpp -o CombinatoricsApply.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -I../inst/include/ -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppThread/include' -I/usr/local/include   -fpic  -g -O2  -c CombinatoricsCount.cpp -o CombinatoricsCount.o
...
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -I../inst/include/ -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppThread/include' -I/usr/local/include   -fpic  -g -O2  -c ComboClass.cpp -o ComboClass.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -I../inst/include/ -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppThread/include' -I/usr/local/include   -fpic  -g -O2  -c ComboClassUtils.cpp -o ComboClassUtils.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -I../inst/include/ -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppThread/include' -I/usr/local/include   -fpic  -g -O2  -c ComboFunClass.cpp -o ComboFunClass.o
ComboFunClass.cpp:463:1: fatal error: error writing to /tmp/ccxb2d3L.s: No space left on device
  463 | }
      | ^
compilation terminated.
make: *** [/opt/R/4.0.3/lib/R/etc/Makeconf:181: ComboFunClass.o] Error 1
ERROR: compilation failed for package ‘RcppAlgos’
* removing ‘/tmp/workdir/RcppAlgos/new/RcppAlgos.Rcheck/RcppAlgos’


```
### CRAN

```
* installing *source* package ‘RcppAlgos’ ...
** package ‘RcppAlgos’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -I../inst/include/ -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppThread/include' -I/usr/local/include   -fpic  -g -O2  -c BigNumCount.cpp -o BigNumCount.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -I../inst/include/ -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppThread/include' -I/usr/local/include   -fpic  -g -O2  -c CheckReturn.cpp -o CheckReturn.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -I../inst/include/ -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppThread/include' -I/usr/local/include   -fpic  -g -O2  -c CombPermMaster.cpp -o CombPermMaster.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -I../inst/include/ -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppThread/include' -I/usr/local/include   -fpic  -g -O2  -c CombinationResults.cpp -o CombinationResults.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -I../inst/include/ -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppThread/include' -I/usr/local/include   -fpic  -g -O2  -c CombinatoricsApply.cpp -o CombinatoricsApply.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -I../inst/include/ -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppThread/include' -I/usr/local/include   -fpic  -g -O2  -c CombinatoricsCount.cpp -o CombinatoricsCount.o
...
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
** checking absolute paths in shared objects and dynamic libraries
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (RcppAlgos)


```
# RNiftyReg

<details>

* Version: 2.7.0
* GitHub: https://github.com/jonclayden/RNiftyReg
* Source code: https://github.com/cran/RNiftyReg
* Date/Publication: 2020-09-12 05:51:01 UTC
* Number of recursive dependencies: 53

Run `cloud_details(, "RNiftyReg")` for more info

</details>

## Newly broken

*   checking installed package size ... NOTE
    ```
      installed size is 124.2Mb
      sub-directories of 1Mb or more:
        extdata    2.0Mb
        libs     122.1Mb
    ```

## Newly fixed

*   checking whether package ‘RNiftyReg’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/RNiftyReg/old/RNiftyReg.Rcheck/00install.out’ for details.
    ```

