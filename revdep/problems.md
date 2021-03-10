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
      Warning (test-zoom.R:105:3): dm_update_tbl() works
      Warning (test-zoom.R:105:3): dm_update_tbl() works
      Warning (test-zoom.R:105:3): dm_update_tbl() works
      Warning (test-zoom.R:105:3): dm_update_tbl() works
      Warning (test-zoom.R:105:3): dm_update_tbl() works
      Warning (test-zoom.R:105:3): dm_update_tbl() works
      Warning (test-zoom.R:105:3): dm_update_tbl() works
      Warning (test-zoom.R:105:3): dm_update_tbl() works
      Warning (test-zoom.R:105:3): dm_update_tbl() works
      
      [ FAIL 10 | WARN 1761 | SKIP 58 | PASS 746 ]
      Error: Test failures
      In addition: Warning message:
      call dbDisconnect() when finished working with a connection 
      Execution halted
    ```

# fdapace

<details>

* Version: 0.5.5
* GitHub: https://github.com/functionaldata/tPACE
* Source code: https://github.com/cran/fdapace
* Date/Publication: 2020-07-29 05:10:20 UTC
* Number of recursive dependencies: 112

Run `cloud_details(, "fdapace")` for more info

</details>

## Newly broken

*   checking whether package ‘fdapace’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/fdapace/new/fdapace.Rcheck/00install.out’ for details.
    ```

## Newly fixed

*   checking installed package size ... NOTE
    ```
      installed size is 73.1Mb
      sub-directories of 1Mb or more:
        libs  71.5Mb
    ```

## Installation

### Devel

```
* installing *source* package ‘fdapace’ ...
** package ‘fdapace’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppEigen/include' -I/usr/local/include   -fpic  -g -O2  -c CPPlwls1d.cpp -o CPPlwls1d.o
In file included from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/Core:392,
                 from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/Dense:1,
                 from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/RcppEigenForward.h:30,
                 from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/RcppEigen.h:25,
                 from CPPlwls1d.cpp:1:
...
/opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/src/Core/ProductEvaluators.h:35:90:   required from ‘Eigen::internal::evaluator<Eigen::Product<Lhs, Rhs, Option> >::evaluator(const XprType&) [with Lhs = Eigen::Matrix<double, 1, 4>; Rhs = Eigen::Solve<Eigen::ColPivHouseholderQR<Eigen::Matrix<double, 4, 4> >, Eigen::Matrix<double, 4, 1> >; int Options = 0; Eigen::internal::evaluator<Eigen::Product<Lhs, Rhs, Option> >::XprType = Eigen::Product<Eigen::Matrix<double, 1, 4>, Eigen::Solve<Eigen::ColPivHouseholderQR<Eigen::Matrix<double, 4, 4> >, Eigen::Matrix<double, 4, 1> >, 0>]’
/opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/src/Core/Product.h:132:22:   required from ‘Eigen::internal::dense_product_base<Lhs, Rhs, Option, 6>::operator const Scalar() const [with Lhs = Eigen::Matrix<double, 1, 4>; Rhs = Eigen::Solve<Eigen::ColPivHouseholderQR<Eigen::Matrix<double, 4, 4> >, Eigen::Matrix<double, 4, 1> >; int Option = 0; Eigen::internal::dense_product_base<Lhs, Rhs, Option, 6>::Scalar = double]’
interp2lin.cpp:124:56:   required from here
/opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/src/Core/CoreEvaluators.h:960:8: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__vector(2) double’} [-Wignored-attributes]
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppEigen/include' -I/usr/local/include   -fpic  -g -O2  -c trapzRcpp.cpp -o trapzRcpp.o
g++ -std=gnu++11 -shared -L/opt/R/4.0.3/lib/R/lib -L/usr/local/lib -o fdapace.so CPPlwls1d.o GetIndCEScoresCPP.o GetIndCEScoresCPPnewInd.o RCPPmean.o RCPPvar.o RcppExports.o RcppPseudoApprox.o Rcppsort.o Rmullwlsk.o RmullwlskCC.o RmullwlskCCsort2.o RmullwlskUniversal.o RmullwlskUniversalDeriv.o RrotatedMullwlsk.o cumtrapzRcpp.o dropZeroElementsXYWin.o interp2lin.o trapzRcpp.o -L/opt/R/4.0.3/lib/R/lib -lR
collect2: error: ld returned 1 exit status
make: *** [/opt/R/4.0.3/lib/R/share/make/shlib.mk:10: fdapace.so] Error 1
ERROR: compilation failed for package ‘fdapace’
* removing ‘/tmp/workdir/fdapace/new/fdapace.Rcheck/fdapace’


```
### CRAN

```
* installing *source* package ‘fdapace’ ...
** package ‘fdapace’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppEigen/include' -I/usr/local/include   -fpic  -g -O2  -c CPPlwls1d.cpp -o CPPlwls1d.o
In file included from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/Core:392,
                 from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/Dense:1,
                 from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/RcppEigenForward.h:30,
                 from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/RcppEigen.h:25,
                 from CPPlwls1d.cpp:1:
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
* DONE (fdapace)


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
      Warning (test-sa-decision.R:31:5): simulated annealing decisions
      Warning (test-sa-decision.R:31:5): simulated annealing decisions
      Warning (test-sa-decision.R:31:5): simulated annealing decisions
      Warning (test-sa-decision.R:31:5): simulated annealing decisions
      Warning (test-sa-decision.R:31:5): simulated annealing decisions
    ...
      Warning (test-sa-decision.R:31:5): simulated annealing decisions
      Warning (test-sa-decision.R:31:5): simulated annealing decisions
      Warning (test-sa-decision.R:31:5): simulated annealing decisions
      Warning (test-sa-decision.R:31:5): simulated annealing decisions
      Warning (test-sa-decision.R:31:5): simulated annealing decisions
      Warning (test-sa-decision.R:31:5): simulated annealing decisions
      
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

# git2rdata

<details>

* Version: 0.2.1
* GitHub: https://github.com/ropensci/git2rdata
* Source code: https://github.com/cran/git2rdata
* Date/Publication: 2020-03-02 15:30:02 UTC
* Number of recursive dependencies: 68

Run `cloud_details(, "git2rdata")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > library(git2rdata)
      > 
      > test_check("git2rdata")
      ── FAILURE (test_d_recent_commit.R:82:1): (code run outside of `test_that()`) ──
      all(output$commit %in% c(cm_1$sha, cm_2$sha)) is not TRUE
      
      `actual`:   FALSE
      `expected`: TRUE 
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      FAILURE (test_d_recent_commit.R:82:1): (code run outside of `test_that()`)
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 336 ]
      Error: Test failures
      Execution halted
    ```

# glmmTMB

<details>

* Version: 1.0.2.1
* GitHub: https://github.com/glmmTMB/glmmTMB
* Source code: https://github.com/cran/glmmTMB
* Date/Publication: 2020-07-02 11:30:17 UTC
* Number of recursive dependencies: 159

Run `cloud_details(, "glmmTMB")` for more info

</details>

## Newly broken

*   checking whether package ‘glmmTMB’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/glmmTMB/new/glmmTMB.Rcheck/00install.out’ for details.
    ```

## Newly fixed

*   checking installed package size ... NOTE
    ```
      installed size is 64.6Mb
      sub-directories of 1Mb or more:
        doc         1.2Mb
        libs       60.9Mb
        test_data   1.2Mb
    ```

## Installation

### Devel

```
* installing *source* package ‘glmmTMB’ ...
** package ‘glmmTMB’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/TMB/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppEigen/include' -I/usr/local/include   -fpic  -g -O2  -c glmmTMB.cpp -o glmmTMB.o
In file included from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/Core:392,
                 from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/Dense:1,
                 from /opt/R/4.0.3/lib/R/site-library/TMB/include/TMB.hpp:53,
                 from glmmTMB.cpp:1:
/opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/src/Core/arch/SSE/PacketMath.h:60:39: warning: ignoring attributes on template argument ‘__m128’ {aka ‘__vector(4) float’} [-Wignored-attributes]
...
  259 |     while(size) ptr[--size].~T();
      |     ^~~~~
glmmTMB.cpp: At global scope:
glmmTMB.cpp:911:1: fatal error: error writing to /tmp/ccOA31m7.s: No space left on device
  911 | }
      | ^
compilation terminated.
make: *** [/opt/R/4.0.3/lib/R/etc/Makeconf:181: glmmTMB.o] Error 1
ERROR: compilation failed for package ‘glmmTMB’
* removing ‘/tmp/workdir/glmmTMB/new/glmmTMB.Rcheck/glmmTMB’


```
### CRAN

```
* installing *source* package ‘glmmTMB’ ...
** package ‘glmmTMB’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/TMB/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppEigen/include' -I/usr/local/include   -fpic  -g -O2  -c glmmTMB.cpp -o glmmTMB.o
In file included from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/Core:392,
                 from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/Dense:1,
                 from /opt/R/4.0.3/lib/R/site-library/TMB/include/TMB.hpp:53,
                 from glmmTMB.cpp:1:
/opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/src/Core/arch/SSE/PacketMath.h:60:39: warning: ignoring attributes on template argument ‘__m128’ {aka ‘__vector(4) float’} [-Wignored-attributes]
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
* DONE (glmmTMB)


```
# GroupSeq

<details>

* Version: 1.3.5
* GitHub: https://github.com/rpahl/GroupSeq
* Source code: https://github.com/cran/GroupSeq
* Date/Publication: 2018-04-11 15:00:32 UTC
* Number of recursive dependencies: 34

Run `cloud_details(, "GroupSeq")` for more info

</details>

## Newly broken

*   checking whether package ‘GroupSeq’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/GroupSeq/new/GroupSeq.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘GroupSeq’ ...
** package ‘GroupSeq’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** byte-compile and prepare package for lazy loading
Warning in fun(libname, pkgname) : couldn't connect to display ":109"
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded from temporary location
...
Warning in fun(libname, pkgname) : couldn't connect to display ":109"
Error: package or namespace load failed for ‘GroupSeq’:
 .onAttach failed in attachNamespace() for 'GroupSeq', details:
  call: structure(.External(.C_dotTclObjv, objv), class = "tclObj")
  error: [tcl] invalid command name "toplevel".

Error: loading failed
Execution halted
ERROR: loading failed
* removing ‘/tmp/workdir/GroupSeq/new/GroupSeq.Rcheck/GroupSeq’


```
### CRAN

```
* installing *source* package ‘GroupSeq’ ...
** package ‘GroupSeq’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (GroupSeq)


```
# gtfs2gps

<details>

* Version: 1.3-2
* GitHub: https://github.com/ipeaGIT/gtfs2gps
* Source code: https://github.com/cran/gtfs2gps
* Date/Publication: 2020-11-05 17:30:12 UTC
* Number of recursive dependencies: 77

Run `cloud_details(, "gtfs2gps")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
       10. │         └─future:::resolve.list(...)
       11. │           ├─future::value(obj, stdout = FALSE, signal = FALSE)
       12. │           └─future:::value.Future(obj, stdout = FALSE, signal = FALSE)
       13. │             ├─future::result(future)
       14. │             └─future:::result.MulticoreFuture(future)
       15. └─data.table::rbindlist(.)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      Warning (test_gtfs2gps.R:71:5): gtfs2gps
      Warning (test_gtfs2gps.R:71:5): gtfs2gps
      ERROR (test_gtfs2gps.R:71:5): gtfs2gps
      
      [ FAIL 1 | WARN 2 | SKIP 0 | PASS 158 ]
      Error: Test failures
      Execution halted
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
# here

<details>

* Version: 1.0.0
* GitHub: https://github.com/r-lib/here
* Source code: https://github.com/cran/here
* Date/Publication: 2020-11-15 17:10:02 UTC
* Number of recursive dependencies: 66

Run `cloud_details(, "here")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      Class:   simpleError/error/condition
      
      -- Skip (test-i_am.R:23:3): i_am() fails with useful message -------------------
      Reason: On CRAN
      
      ── Skipped tests  ──────────────────────────────────────────────────────────────
      ● On CRAN (5)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      FAILURE (test-i_am.R:23:3): i_am() fails with useful message
      
      [ FAIL 1 | WARN 0 | SKIP 5 | PASS 6 ]
      Error: Test failures
      No snapshots to update
      Execution halted
    ```

# mapdeck

<details>

* Version: 0.3.4
* GitHub: https://github.com/SymbolixAU/mapdeck
* Source code: https://github.com/cran/mapdeck
* Date/Publication: 2020-09-04 05:22:10 UTC
* Number of recursive dependencies: 83

Run `cloud_details(, "mapdeck")` for more info

</details>

## Newly broken

*   checking whether package ‘mapdeck’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/mapdeck/new/mapdeck.Rcheck/00install.out’ for details.
    ```

## Newly fixed

*   checking installed package size ... NOTE
    ```
      installed size is 76.1Mb
      sub-directories of 1Mb or more:
        data          1.3Mb
        doc           1.6Mb
        htmlwidgets   2.3Mb
        libs         70.5Mb
    ```

## Installation

### Devel

```
* installing *source* package ‘mapdeck’ ...
** package ‘mapdeck’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -DSTRICT_R_HEADERS -DBOOST_NO_AUTO_PTR -I'/opt/R/4.0.3/lib/R/site-library/BH/include' -I'/opt/R/4.0.3/lib/R/site-library/colourvalues/include' -I'/opt/R/4.0.3/lib/R/site-library/geojsonsf/include' -I'/opt/R/4.0.3/lib/R/site-library/geometries/include' -I'/opt/R/4.0.3/lib/R/site-library/jsonify/include' -I'/opt/R/4.0.3/lib/R/site-library/rapidjsonr/include' -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/sfheaders/include' -I'/opt/R/4.0.3/lib/R/site-library/spatialwidget/include' -I/usr/local/include  -I../inst/include -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -DSTRICT_R_HEADERS -DBOOST_NO_AUTO_PTR -I'/opt/R/4.0.3/lib/R/site-library/BH/include' -I'/opt/R/4.0.3/lib/R/site-library/colourvalues/include' -I'/opt/R/4.0.3/lib/R/site-library/geojsonsf/include' -I'/opt/R/4.0.3/lib/R/site-library/geometries/include' -I'/opt/R/4.0.3/lib/R/site-library/jsonify/include' -I'/opt/R/4.0.3/lib/R/site-library/rapidjsonr/include' -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/sfheaders/include' -I'/opt/R/4.0.3/lib/R/site-library/spatialwidget/include' -I/usr/local/include  -I../inst/include -fpic  -g -O2  -c aggregate.cpp -o aggregate.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -DSTRICT_R_HEADERS -DBOOST_NO_AUTO_PTR -I'/opt/R/4.0.3/lib/R/site-library/BH/include' -I'/opt/R/4.0.3/lib/R/site-library/colourvalues/include' -I'/opt/R/4.0.3/lib/R/site-library/geojsonsf/include' -I'/opt/R/4.0.3/lib/R/site-library/geometries/include' -I'/opt/R/4.0.3/lib/R/site-library/jsonify/include' -I'/opt/R/4.0.3/lib/R/site-library/rapidjsonr/include' -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/sfheaders/include' -I'/opt/R/4.0.3/lib/R/site-library/spatialwidget/include' -I/usr/local/include  -I../inst/include -fpic  -g -O2  -c geojson.cpp -o geojson.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -DSTRICT_R_HEADERS -DBOOST_NO_AUTO_PTR -I'/opt/R/4.0.3/lib/R/site-library/BH/include' -I'/opt/R/4.0.3/lib/R/site-library/colourvalues/include' -I'/opt/R/4.0.3/lib/R/site-library/geojsonsf/include' -I'/opt/R/4.0.3/lib/R/site-library/geometries/include' -I'/opt/R/4.0.3/lib/R/site-library/jsonify/include' -I'/opt/R/4.0.3/lib/R/site-library/rapidjsonr/include' -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/sfheaders/include' -I'/opt/R/4.0.3/lib/R/site-library/spatialwidget/include' -I/usr/local/include  -I../inst/include -fpic  -g -O2  -c mesh.cpp -o mesh.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -DSTRICT_R_HEADERS -DBOOST_NO_AUTO_PTR -I'/opt/R/4.0.3/lib/R/site-library/BH/include' -I'/opt/R/4.0.3/lib/R/site-library/colourvalues/include' -I'/opt/R/4.0.3/lib/R/site-library/geojsonsf/include' -I'/opt/R/4.0.3/lib/R/site-library/geometries/include' -I'/opt/R/4.0.3/lib/R/site-library/jsonify/include' -I'/opt/R/4.0.3/lib/R/site-library/rapidjsonr/include' -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/sfheaders/include' -I'/opt/R/4.0.3/lib/R/site-library/spatialwidget/include' -I/usr/local/include  -I../inst/include -fpic  -g -O2  -c od.cpp -o od.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -DSTRICT_R_HEADERS -DBOOST_NO_AUTO_PTR -I'/opt/R/4.0.3/lib/R/site-library/BH/include' -I'/opt/R/4.0.3/lib/R/site-library/colourvalues/include' -I'/opt/R/4.0.3/lib/R/site-library/geojsonsf/include' -I'/opt/R/4.0.3/lib/R/site-library/geometries/include' -I'/opt/R/4.0.3/lib/R/site-library/jsonify/include' -I'/opt/R/4.0.3/lib/R/site-library/rapidjsonr/include' -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/sfheaders/include' -I'/opt/R/4.0.3/lib/R/site-library/spatialwidget/include' -I/usr/local/include  -I../inst/include -fpic  -g -O2  -c path.cpp -o path.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -DSTRICT_R_HEADERS -DBOOST_NO_AUTO_PTR -I'/opt/R/4.0.3/lib/R/site-library/BH/include' -I'/opt/R/4.0.3/lib/R/site-library/colourvalues/include' -I'/opt/R/4.0.3/lib/R/site-library/geojsonsf/include' -I'/opt/R/4.0.3/lib/R/site-library/geometries/include' -I'/opt/R/4.0.3/lib/R/site-library/jsonify/include' -I'/opt/R/4.0.3/lib/R/site-library/rapidjsonr/include' -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/sfheaders/include' -I'/opt/R/4.0.3/lib/R/site-library/spatialwidget/include' -I/usr/local/include  -I../inst/include -fpic  -g -O2  -c point.cpp -o point.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -DSTRICT_R_HEADERS -DBOOST_NO_AUTO_PTR -I'/opt/R/4.0.3/lib/R/site-library/BH/include' -I'/opt/R/4.0.3/lib/R/site-library/colourvalues/include' -I'/opt/R/4.0.3/lib/R/site-library/geojsonsf/include' -I'/opt/R/4.0.3/lib/R/site-library/geometries/include' -I'/opt/R/4.0.3/lib/R/site-library/jsonify/include' -I'/opt/R/4.0.3/lib/R/site-library/rapidjsonr/include' -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/sfheaders/include' -I'/opt/R/4.0.3/lib/R/site-library/spatialwidget/include' -I/usr/local/include  -I../inst/include -fpic  -g -O2  -c polygon.cpp -o polygon.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -DSTRICT_R_HEADERS -DBOOST_NO_AUTO_PTR -I'/opt/R/4.0.3/lib/R/site-library/BH/include' -I'/opt/R/4.0.3/lib/R/site-library/colourvalues/include' -I'/opt/R/4.0.3/lib/R/site-library/geojsonsf/include' -I'/opt/R/4.0.3/lib/R/site-library/geometries/include' -I'/opt/R/4.0.3/lib/R/site-library/jsonify/include' -I'/opt/R/4.0.3/lib/R/site-library/rapidjsonr/include' -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/sfheaders/include' -I'/opt/R/4.0.3/lib/R/site-library/spatialwidget/include' -I/usr/local/include  -I../inst/include -fpic  -g -O2  -c text.cpp -o text.o
/tmp/ccF55lQ2.s: Assembler messages:
/tmp/ccF55lQ2.s: Fatal error: can't close text.o: No space left on device
make: *** [/opt/R/4.0.3/lib/R/etc/Makeconf:181: text.o] Error 1
ERROR: compilation failed for package ‘mapdeck’
* removing ‘/tmp/workdir/mapdeck/new/mapdeck.Rcheck/mapdeck’


```
### CRAN

```
* installing *source* package ‘mapdeck’ ...
** package ‘mapdeck’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -DSTRICT_R_HEADERS -DBOOST_NO_AUTO_PTR -I'/opt/R/4.0.3/lib/R/site-library/BH/include' -I'/opt/R/4.0.3/lib/R/site-library/colourvalues/include' -I'/opt/R/4.0.3/lib/R/site-library/geojsonsf/include' -I'/opt/R/4.0.3/lib/R/site-library/geometries/include' -I'/opt/R/4.0.3/lib/R/site-library/jsonify/include' -I'/opt/R/4.0.3/lib/R/site-library/rapidjsonr/include' -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/sfheaders/include' -I'/opt/R/4.0.3/lib/R/site-library/spatialwidget/include' -I/usr/local/include  -I../inst/include -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -DSTRICT_R_HEADERS -DBOOST_NO_AUTO_PTR -I'/opt/R/4.0.3/lib/R/site-library/BH/include' -I'/opt/R/4.0.3/lib/R/site-library/colourvalues/include' -I'/opt/R/4.0.3/lib/R/site-library/geojsonsf/include' -I'/opt/R/4.0.3/lib/R/site-library/geometries/include' -I'/opt/R/4.0.3/lib/R/site-library/jsonify/include' -I'/opt/R/4.0.3/lib/R/site-library/rapidjsonr/include' -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/sfheaders/include' -I'/opt/R/4.0.3/lib/R/site-library/spatialwidget/include' -I/usr/local/include  -I../inst/include -fpic  -g -O2  -c aggregate.cpp -o aggregate.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -DSTRICT_R_HEADERS -DBOOST_NO_AUTO_PTR -I'/opt/R/4.0.3/lib/R/site-library/BH/include' -I'/opt/R/4.0.3/lib/R/site-library/colourvalues/include' -I'/opt/R/4.0.3/lib/R/site-library/geojsonsf/include' -I'/opt/R/4.0.3/lib/R/site-library/geometries/include' -I'/opt/R/4.0.3/lib/R/site-library/jsonify/include' -I'/opt/R/4.0.3/lib/R/site-library/rapidjsonr/include' -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/sfheaders/include' -I'/opt/R/4.0.3/lib/R/site-library/spatialwidget/include' -I/usr/local/include  -I../inst/include -fpic  -g -O2  -c geojson.cpp -o geojson.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -DSTRICT_R_HEADERS -DBOOST_NO_AUTO_PTR -I'/opt/R/4.0.3/lib/R/site-library/BH/include' -I'/opt/R/4.0.3/lib/R/site-library/colourvalues/include' -I'/opt/R/4.0.3/lib/R/site-library/geojsonsf/include' -I'/opt/R/4.0.3/lib/R/site-library/geometries/include' -I'/opt/R/4.0.3/lib/R/site-library/jsonify/include' -I'/opt/R/4.0.3/lib/R/site-library/rapidjsonr/include' -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/sfheaders/include' -I'/opt/R/4.0.3/lib/R/site-library/spatialwidget/include' -I/usr/local/include  -I../inst/include -fpic  -g -O2  -c mesh.cpp -o mesh.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -DSTRICT_R_HEADERS -DBOOST_NO_AUTO_PTR -I'/opt/R/4.0.3/lib/R/site-library/BH/include' -I'/opt/R/4.0.3/lib/R/site-library/colourvalues/include' -I'/opt/R/4.0.3/lib/R/site-library/geojsonsf/include' -I'/opt/R/4.0.3/lib/R/site-library/geometries/include' -I'/opt/R/4.0.3/lib/R/site-library/jsonify/include' -I'/opt/R/4.0.3/lib/R/site-library/rapidjsonr/include' -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/sfheaders/include' -I'/opt/R/4.0.3/lib/R/site-library/spatialwidget/include' -I/usr/local/include  -I../inst/include -fpic  -g -O2  -c od.cpp -o od.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -DSTRICT_R_HEADERS -DBOOST_NO_AUTO_PTR -I'/opt/R/4.0.3/lib/R/site-library/BH/include' -I'/opt/R/4.0.3/lib/R/site-library/colourvalues/include' -I'/opt/R/4.0.3/lib/R/site-library/geojsonsf/include' -I'/opt/R/4.0.3/lib/R/site-library/geometries/include' -I'/opt/R/4.0.3/lib/R/site-library/jsonify/include' -I'/opt/R/4.0.3/lib/R/site-library/rapidjsonr/include' -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/sfheaders/include' -I'/opt/R/4.0.3/lib/R/site-library/spatialwidget/include' -I/usr/local/include  -I../inst/include -fpic  -g -O2  -c path.cpp -o path.o
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
* DONE (mapdeck)


```
# qtl2

<details>

* Version: 0.22-11
* GitHub: https://github.com/rqtl/qtl2
* Source code: https://github.com/cran/qtl2
* Date/Publication: 2020-07-10 15:50:02 UTC
* Number of recursive dependencies: 106

Run `cloud_details(, "qtl2")` for more info

</details>

## Newly broken

*   checking whether package ‘qtl2’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/qtl2/new/qtl2.Rcheck/00install.out’ for details.
    ```

## Newly fixed

*   checking installed package size ... NOTE
    ```
      installed size is 88.2Mb
      sub-directories of 1Mb or more:
        extdata   3.3Mb
        libs     83.6Mb
    ```

## Installation

### Devel

```
* installing *source* package ‘qtl2’ ...
** package ‘qtl2’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppEigen/include' -I/usr/local/include   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
In file included from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/Core:392,
                 from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/Dense:1,
                 from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/RcppEigenForward.h:30,
                 from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/RcppEigen.h:25,
                 from RcppExports.cpp:4:
...
/opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/src/Householder/HouseholderSequence.h:333:46:   required from ‘void Eigen::HouseholderSequence<VectorsType, CoeffsType, Side>::applyThisOnTheLeft(Dest&, Workspace&) const [with Dest = Eigen::Matrix<double, -1, 1>; Workspace = Eigen::Matrix<double, 1, 1, 1, 1, 1>; VectorsType = Eigen::Matrix<double, -1, -1>; CoeffsType = Eigen::Matrix<double, -1, 1>; int Side = 1]’
/opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/src/Householder/HouseholderSequence.h:308:7:   required from ‘void Eigen::HouseholderSequence<VectorsType, CoeffsType, Side>::applyThisOnTheLeft(Dest&) const [with Dest = Eigen::Matrix<double, -1, 1>; VectorsType = Eigen::Matrix<double, -1, -1>; CoeffsType = Eigen::Matrix<double, -1, 1>; int Side = 1]’
/opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/src/Householder/HouseholderSequence.h:360:7:   required from ‘typename Eigen::internal::matrix_type_times_scalar_type<typename Eigen::internal::traits<Eigen::HouseholderSequence<VectorsType, CoeffsType, Side> >::Scalar, OtherDerived>::Type Eigen::HouseholderSequence<VectorsType, CoeffsType, Side>::operator*(const Eigen::MatrixBase<OtherDerived>&) const [with OtherDerived = Eigen::Matrix<double, -1, 1>; VectorsType = Eigen::Matrix<double, -1, -1>; CoeffsType = Eigen::Matrix<double, -1, 1>; int Side = 1; typename Eigen::internal::matrix_type_times_scalar_type<typename Eigen::internal::traits<Eigen::HouseholderSequence<VectorsType, CoeffsType, Side> >::Scalar, OtherDerived>::Type = Eigen::Matrix<double, -1, 1>]’
linreg_eigen.cpp:192:58:   required from here
/opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/src/Core/CoreEvaluators.h:960:8: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__vector(2) double’} [-Wignored-attributes]
/tmp/ccRtft5Z.s: Assembler messages:
/tmp/ccRtft5Z.s: Fatal error: can't close linreg_eigen.o: No space left on device
make: *** [/opt/R/4.0.3/lib/R/etc/Makeconf:181: linreg_eigen.o] Error 1
ERROR: compilation failed for package ‘qtl2’
* removing ‘/tmp/workdir/qtl2/new/qtl2.Rcheck/qtl2’


```
### CRAN

```
* installing *source* package ‘qtl2’ ...
** package ‘qtl2’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppEigen/include' -I/usr/local/include   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
In file included from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/Core:392,
                 from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/Dense:1,
                 from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/RcppEigenForward.h:30,
                 from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/RcppEigen.h:25,
                 from RcppExports.cpp:4:
...
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded from temporary location
** checking absolute paths in shared objects and dynamic libraries
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (qtl2)


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
      Warning (test-restructure_ald.R:8:3): may input add_sector_and_borderline(data)
      Warning (test-restructure_ald.R:8:3): may input add_sector_and_borderline(data)
      Warning (test-uniquify_id_column.R:7:3): uniquify_id_column overwrites id_ultimate_parent
      Warning (test-uniquify_id_column.R:7:3): uniquify_id_column overwrites id_ultimate_parent
      Warning (test-uniquify_id_column.R:7:3): uniquify_id_column overwrites id_ultimate_parent
      Warning (test-uniquify_id_column.R:21:3): uniquify_id_column overwrites id_direct_loantaker
      Warning (test-uniquify_id_column.R:21:3): uniquify_id_column overwrites id_direct_loantaker
      Warning (test-uniquify_id_column.R:21:3): uniquify_id_column overwrites id_direct_loantaker
      Warning (???): uniquify_id_column prints its output (fix not returned result)
      Warning (???): uniquify_id_column prints its output (fix not returned result)
      Warning (???): uniquify_id_column prints its output (fix not returned result)
      
      [ FAIL 2 | WARN 503 | SKIP 6 | PASS 168 ]
      Error: Test failures
      Execution halted
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

*   checking whether package ‘RNiftyReg’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/RNiftyReg/new/RNiftyReg.Rcheck/00install.out’ for details.
    ```

## Newly fixed

*   checking installed package size ... NOTE
    ```
      installed size is 124.2Mb
      sub-directories of 1Mb or more:
        extdata    2.0Mb
        libs     122.1Mb
    ```

## Installation

### Devel

```
* installing *source* package ‘RNiftyReg’ ...
** package ‘RNiftyReg’ successfully unpacked and MD5 sums checked
** using staged installation
checking whether the C++ compiler works... yes
checking for C++ compiler default output file name... a.out
checking for suffix of executables... 
checking whether we are cross compiling... no
checking for suffix of object files... o
checking whether we are using the GNU C++ compiler... yes
checking whether g++ -std=gnu++11 accepts -g... yes
...
/opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/src/Core/Matrix.h:245:29:   required from ‘Eigen::Matrix<_Scalar, _Rows, _Cols, _Options, _MaxRows, _MaxCols>& Eigen::Matrix<_Scalar, _Rows, _Cols, _Options, _MaxRows, _MaxCols>::operator=(const Eigen::ReturnByValue<OtherDerived>&) [with OtherDerived = Eigen::MatrixSquareRootReturnValue<Eigen::Matrix<double, 4, 4> >; _Scalar = double; int _Rows = 4; int _Cols = 4; int _Options = 0; int _MaxRows = 4; int _MaxCols = 4]’
reg-lib/cpu/_reg_maths_eigen.cpp:234:15:   required from here
/opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:650:34: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__vector(2) double’} [-Wignored-attributes]
  650 |   return internal::first_aligned<int(unpacket_traits<DefaultPacketType>::alignment),Derived>(m);
      |                                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/tmp/cchQRek2.s: Assembler messages:
/tmp/cchQRek2.s: Fatal error: can't close reg-lib/cpu/_reg_maths_eigen.o: No space left on device
make: *** [/opt/R/4.0.3/lib/R/etc/Makeconf:181: reg-lib/cpu/_reg_maths_eigen.o] Error 1
ERROR: compilation failed for package ‘RNiftyReg’
* removing ‘/tmp/workdir/RNiftyReg/new/RNiftyReg.Rcheck/RNiftyReg’


```
### CRAN

```
* installing *source* package ‘RNiftyReg’ ...
** package ‘RNiftyReg’ successfully unpacked and MD5 sums checked
** using staged installation
checking whether the C++ compiler works... yes
checking for C++ compiler default output file name... a.out
checking for suffix of executables... 
checking whether we are cross compiling... no
checking for suffix of object files... o
checking whether we are using the GNU C++ compiler... yes
checking whether g++ -std=gnu++11 accepts -g... yes
...
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded from temporary location
** checking absolute paths in shared objects and dynamic libraries
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (RNiftyReg)


```
# sarsop

<details>

* Version: 0.6.6
* GitHub: https://github.com/boettiger-lab/sarsop
* Source code: https://github.com/cran/sarsop
* Date/Publication: 2020-12-12 06:30:03 UTC
* Number of recursive dependencies: 105

Run `cloud_details(, "sarsop")` for more info

</details>

## Newly broken

*   checking whether package ‘sarsop’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/sarsop/new/sarsop.Rcheck/00install.out’ for details.
    ```

## Newly fixed

*   checking installed package size ... NOTE
    ```
      installed size is 76.9Mb
      sub-directories of 1Mb or more:
        bin  76.0Mb
    ```

## Installation

### Devel

```
* installing *source* package ‘sarsop’ ...
** package ‘sarsop’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -Iappl-0.96 -Iappl-0.96/MathLib -Iappl-0.96/Algorithms -Iappl-0.96/Algorithms/HSVI -Iappl-0.96/Algorithms/SARSOP -Iappl-0.96/Models/MOMDP -Iappl-0.96/Models/MOMDP/CoLoc -Iappl-0.96/OfflineSolver -Iappl-0.96/Bounds -Iappl-0.96/Core -Iappl-0.96/Parser/Cassandra -Iappl-0.96/Parser/Cassandra/include -Iappl-0.96/Parser -Iappl-0.96/Parser/POMDPX -Iappl-0.96/Utils -Iappl-0.96/Simulator -Iappl-0.96/Evaluator -Iappl-0.96/Controller -I'/opt/R/4.0.3/lib/R/site-library/BH/include' -I/usr/local/include   -fpic  -g -O2  -c readme.cpp -o readme.o
gcc -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -Iappl-0.96 -Iappl-0.96/MathLib -Iappl-0.96/Algorithms -Iappl-0.96/Algorithms/HSVI -Iappl-0.96/Algorithms/SARSOP -Iappl-0.96/Models/MOMDP -Iappl-0.96/Models/MOMDP/CoLoc -Iappl-0.96/OfflineSolver -Iappl-0.96/Bounds -Iappl-0.96/Core -Iappl-0.96/Parser/Cassandra -Iappl-0.96/Parser/Cassandra/include -Iappl-0.96/Parser -Iappl-0.96/Parser/POMDPX -Iappl-0.96/Utils -Iappl-0.96/Simulator -Iappl-0.96/Evaluator -Iappl-0.96/Controller -I'/opt/R/4.0.3/lib/R/site-library/BH/include' -I/usr/local/include   -fpic  -g -O2  -c zzz.c -o zzz.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -Iappl-0.96 -Iappl-0.96/MathLib -Iappl-0.96/Algorithms -Iappl-0.96/Algorithms/HSVI -Iappl-0.96/Algorithms/SARSOP -Iappl-0.96/Models/MOMDP -Iappl-0.96/Models/MOMDP/CoLoc -Iappl-0.96/OfflineSolver -Iappl-0.96/Bounds -Iappl-0.96/Core -Iappl-0.96/Parser/Cassandra -Iappl-0.96/Parser/Cassandra/include -Iappl-0.96/Parser -Iappl-0.96/Parser/POMDPX -Iappl-0.96/Utils -Iappl-0.96/Simulator -Iappl-0.96/Evaluator -Iappl-0.96/Controller -I'/opt/R/4.0.3/lib/R/site-library/BH/include' -I/usr/local/include   -fpic  -g -O2  -c appl-0.96/Models/MOMDP/BeliefTransitionMOMDP.cpp -o appl-0.96/Models/MOMDP/BeliefTransitionMOMDP.o
In file included from /opt/R/4.0.3/lib/R/site-library/BH/include/boost/smart_ptr/shared_ptr.hpp:28,
                 from appl-0.96/Core/MObject.h:7,
                 from appl-0.96/Models/MOMDP/IVariableValue.h:7,
...
Warning in file.append(to[okay], from[okay]) :
  write error during file append
Warning in file.append(to[okay], from[okay]) :
  write error during file append
Warning in file.append(to[okay], from[okay]) :
  write error during file append
** byte-compile and prepare package for lazy loading
Fatal error: cannot create 'R_TempDir'
ERROR: lazy loading failed for package ‘sarsop’
* removing ‘/tmp/workdir/sarsop/new/sarsop.Rcheck/sarsop’


```
### CRAN

```
* installing *source* package ‘sarsop’ ...
** package ‘sarsop’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -Iappl-0.96 -Iappl-0.96/MathLib -Iappl-0.96/Algorithms -Iappl-0.96/Algorithms/HSVI -Iappl-0.96/Algorithms/SARSOP -Iappl-0.96/Models/MOMDP -Iappl-0.96/Models/MOMDP/CoLoc -Iappl-0.96/OfflineSolver -Iappl-0.96/Bounds -Iappl-0.96/Core -Iappl-0.96/Parser/Cassandra -Iappl-0.96/Parser/Cassandra/include -Iappl-0.96/Parser -Iappl-0.96/Parser/POMDPX -Iappl-0.96/Utils -Iappl-0.96/Simulator -Iappl-0.96/Evaluator -Iappl-0.96/Controller -I'/opt/R/4.0.3/lib/R/site-library/BH/include' -I/usr/local/include   -fpic  -g -O2  -c readme.cpp -o readme.o
gcc -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -Iappl-0.96 -Iappl-0.96/MathLib -Iappl-0.96/Algorithms -Iappl-0.96/Algorithms/HSVI -Iappl-0.96/Algorithms/SARSOP -Iappl-0.96/Models/MOMDP -Iappl-0.96/Models/MOMDP/CoLoc -Iappl-0.96/OfflineSolver -Iappl-0.96/Bounds -Iappl-0.96/Core -Iappl-0.96/Parser/Cassandra -Iappl-0.96/Parser/Cassandra/include -Iappl-0.96/Parser -Iappl-0.96/Parser/POMDPX -Iappl-0.96/Utils -Iappl-0.96/Simulator -Iappl-0.96/Evaluator -Iappl-0.96/Controller -I'/opt/R/4.0.3/lib/R/site-library/BH/include' -I/usr/local/include   -fpic  -g -O2  -c zzz.c -o zzz.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -Iappl-0.96 -Iappl-0.96/MathLib -Iappl-0.96/Algorithms -Iappl-0.96/Algorithms/HSVI -Iappl-0.96/Algorithms/SARSOP -Iappl-0.96/Models/MOMDP -Iappl-0.96/Models/MOMDP/CoLoc -Iappl-0.96/OfflineSolver -Iappl-0.96/Bounds -Iappl-0.96/Core -Iappl-0.96/Parser/Cassandra -Iappl-0.96/Parser/Cassandra/include -Iappl-0.96/Parser -Iappl-0.96/Parser/POMDPX -Iappl-0.96/Utils -Iappl-0.96/Simulator -Iappl-0.96/Evaluator -Iappl-0.96/Controller -I'/opt/R/4.0.3/lib/R/site-library/BH/include' -I/usr/local/include   -fpic  -g -O2  -c appl-0.96/Models/MOMDP/BeliefTransitionMOMDP.cpp -o appl-0.96/Models/MOMDP/BeliefTransitionMOMDP.o
In file included from /opt/R/4.0.3/lib/R/site-library/BH/include/boost/smart_ptr/shared_ptr.hpp:28,
                 from appl-0.96/Core/MObject.h:7,
                 from appl-0.96/Models/MOMDP/IVariableValue.h:7,
...
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
*** copying figures
** building package indices
** testing if installed package can be loaded from temporary location
** checking absolute paths in shared objects and dynamic libraries
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (sarsop)


```
# symengine

<details>

* Version: 0.1.5
* GitHub: https://github.com/symengine/symengine.R
* Source code: https://github.com/cran/symengine
* Date/Publication: 2020-07-06 12:00:02 UTC
* Number of recursive dependencies: 50

Run `cloud_details(, "symengine")` for more info

</details>

## Newly broken

*   checking whether package ‘symengine’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/symengine/new/symengine.Rcheck/00install.out’ for details.
    ```

## Newly fixed

*   checking installed package size ... NOTE
    ```
      installed size is 60.2Mb
      sub-directories of 1Mb or more:
        libs  59.3Mb
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

## Installation

### Devel

```
* installing *source* package ‘symengine’ ...
** package ‘symengine’ successfully unpacked and MD5 sums checked
** using staged installation
====== configuring symengine R package ======
== current working directory
/tmp/workdir/symengine/new/symengine.Rcheck/00_pkg_src/symengine
==
== cmake:
/usr/bin/cmake
cmake version 3.16.3
...
make[3]: *** [symengine/CMakeFiles/symengine.dir/build.make:925: symengine/libsymengine.a] Error 1
make[3]: *** Deleting file 'symengine/libsymengine.a'
make[3]: Leaving directory '/tmp/workdir/symengine/new/symengine.Rcheck/00_pkg_src/symengine/src/upstream'
make[2]: *** [CMakeFiles/Makefile2:114: symengine/CMakeFiles/symengine.dir/all] Error 2
make[2]: Leaving directory '/tmp/workdir/symengine/new/symengine.Rcheck/00_pkg_src/symengine/src/upstream'
make[1]: *** [Makefile:141: all] Error 2
make[1]: Leaving directory '/tmp/workdir/symengine/new/symengine.Rcheck/00_pkg_src/symengine/src/upstream'
make: *** [Makevars:15: do_upstream] Error 2
ERROR: compilation failed for package ‘symengine’
* removing ‘/tmp/workdir/symengine/new/symengine.Rcheck/symengine’


```
### CRAN

```
* installing *source* package ‘symengine’ ...
** package ‘symengine’ successfully unpacked and MD5 sums checked
** using staged installation
====== configuring symengine R package ======
== current working directory
/tmp/workdir/symengine/old/symengine.Rcheck/00_pkg_src/symengine
==
== cmake:
/usr/bin/cmake
cmake version 3.16.3
...
Creating a generic function for ‘rep.int’ from package ‘base’ in package ‘symengine’
** help
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
** checking absolute paths in shared objects and dynamic libraries
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (symengine)


```
# torch

<details>

* Version: 0.1.1
* GitHub: https://github.com/mlverse/torch
* Source code: https://github.com/cran/torch
* Date/Publication: 2020-10-20 21:10:02 UTC
* Number of recursive dependencies: 58

Run `cloud_details(, "torch")` for more info

</details>

## Newly broken

*   checking whether package ‘torch’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/torch/new/torch.Rcheck/00install.out’ for details.
    ```

## Newly fixed

*   checking installed package size ... NOTE
    ```
      installed size is 157.8Mb
      sub-directories of 1Mb or more:
        R       3.1Mb
        help    2.8Mb
        libs  151.4Mb
    ```

## Installation

### Devel

```
* installing *source* package ‘torch’ ...
** package ‘torch’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c autograd.cpp -o autograd.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c contrib.cpp -o contrib.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c cuda.cpp -o cuda.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c device.cpp -o device.o
In file included from device.cpp:2:
...
Renaming torch lib to torchpkg
"/opt/R/4.0.3/lib/R/bin/Rscript" "../tools/renamelib.R"
installing to /tmp/workdir/torch/new/torch.Rcheck/00LOCK-torch/00new/torch/libs
** R
Warning in dir.create(outCodeDir) :
  cannot create dir '/tmp/workdir/torch/new/torch.Rcheck/00LOCK-torch/00new/torch/R', reason 'No space left on device'
Error in .install_package_code_files(".", instdir) : 
  cannot open directory '/tmp/workdir/torch/new/torch.Rcheck/00LOCK-torch/00new/torch/R'
ERROR: unable to collate and parse R files for package ‘torch’
* removing ‘/tmp/workdir/torch/new/torch.Rcheck/torch’


```
### CRAN

```
* installing *source* package ‘torch’ ...
** package ‘torch’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c autograd.cpp -o autograd.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c contrib.cpp -o contrib.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c cuda.cpp -o cuda.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c device.cpp -o device.o
In file included from device.cpp:2:
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
* DONE (torch)


```
# volesti

<details>

* Version: 1.1.2
* GitHub: https://github.com/GeomScale/volume_approximation
* Source code: https://github.com/cran/volesti
* Date/Publication: 2020-10-19 09:20:03 UTC
* Number of recursive dependencies: 39

Run `cloud_details(, "volesti")` for more info

</details>

## Newly broken

*   checking whether package ‘volesti’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/volesti/new/volesti.Rcheck/00install.out’ for details.
    ```

## Newly fixed

*   checking installed package size ... NOTE
    ```
      installed size is 139.6Mb
      sub-directories of 1Mb or more:
        libs  139.2Mb
    ```

## Installation

### Devel

```
* installing *source* package ‘volesti’ ...
** package ‘volesti’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -Iexternal -Iexternal/lpsolve/headers/run_headers -Iexternal/minimum_ellipsoid -Iinclude -Iinclude/convex_bodies/spectrahedra -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppEigen/include' -I'/opt/R/4.0.3/lib/R/site-library/BH/include' -I/usr/local/include  -DBOOST_NO_AUTO_PTR -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
In file included from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/Core:392,
                 from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/Dense:1,
                 from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/RcppEigenForward.h:30,
                 from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/RcppEigen.h:25,
                 from RcppExports.cpp:4:
...
include/convex_bodies/zpolytope.h:192:9:   required from ‘void Zonotope<Point>::init(unsigned int, const MT&, const VT&) [with Point = point<Cartesian<double> >; Zonotope<Point>::MT = Eigen::Matrix<double, -1, -1>; typename Point::FT = double; Zonotope<Point>::VT = Eigen::Matrix<double, -1, 1>; typename K::FT = double]’
exact_vol.cpp:111:59:   required from here
/opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/src/Core/CoreEvaluators.h:960:8: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__vector(2) double’} [-Wignored-attributes]
exact_vol.cpp:119:1: fatal error: error writing to /tmp/ccXakZWD.s: No space left on device
  119 | }
      | ^
compilation terminated.
make: *** [/opt/R/4.0.3/lib/R/etc/Makeconf:181: exact_vol.o] Error 1
ERROR: compilation failed for package ‘volesti’
* removing ‘/tmp/workdir/volesti/new/volesti.Rcheck/volesti’


```
### CRAN

```
* installing *source* package ‘volesti’ ...
** package ‘volesti’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -Iexternal -Iexternal/lpsolve/headers/run_headers -Iexternal/minimum_ellipsoid -Iinclude -Iinclude/convex_bodies/spectrahedra -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppEigen/include' -I'/opt/R/4.0.3/lib/R/site-library/BH/include' -I/usr/local/include  -DBOOST_NO_AUTO_PTR -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
In file included from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/Core:392,
                 from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/Dense:1,
                 from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/RcppEigenForward.h:30,
                 from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/RcppEigen.h:25,
                 from RcppExports.cpp:4:
...
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded from temporary location
** checking absolute paths in shared objects and dynamic libraries
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (volesti)


```
