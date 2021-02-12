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

*   checking whether package ‘EpiNow2’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/EpiNow2/new/EpiNow2.Rcheck/00install.out’ for details.
    ```

## Newly fixed

*   checking installed package size ... NOTE
    ```
      installed size is 265.8Mb
      sub-directories of 1Mb or more:
        libs  264.0Mb
    ```

## Installation

### Devel

```
* installing *source* package ‘EpiNow2’ ...
** package ‘EpiNow2’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++14 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -I"../inst/include" -I"`"/opt/R/4.0.3/lib/R/bin/Rscript" -e 'message()' -e 'cat(system.file("include", "src", package = "StanHeaders", mustWork = TRUE))' -e 'message()' | grep 'StanHeaders'`" -DBOOST_DISABLE_ASSERTS -DEIGEN_NO_DEBUG -DBOOST_MATH_OVERFLOW_ERROR_POLICY=errno_on_error -I'/opt/R/4.0.3/lib/R/site-library/BH/include' -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppEigen/include' -I'/opt/R/4.0.3/lib/R/site-library/rstan/include' -I'/opt/R/4.0.3/lib/R/site-library/StanHeaders/include' -I/usr/local/include  "`"/opt/R/4.0.3/lib/R/bin/Rscript" -e 'StanHeaders:::CxxFlags()'`" -D_REENTRANT -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o


In file included from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/Core:397,
                 from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/Dense:1,
                 from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/RcppEigenForward.h:30,
...
/opt/R/4.0.3/lib/R/site-library/StanHeaders/include/src/stan/mcmc/hmc/hamiltonians/dense_e_metric.hpp:23:56:   required from ‘double stan::mcmc::dense_e_metric<Model, BaseRNG>::T(stan::mcmc::dense_e_point&) [with Model = model_estimate_infections_namespace::model_estimate_infections; BaseRNG = boost::random::additive_combine_engine<boost::random::linear_congruential_engine<unsigned int, 40014, 0, 2147483563>, boost::random::linear_congruential_engine<unsigned int, 40692, 0, 2147483399> >]’
/opt/R/4.0.3/lib/R/site-library/StanHeaders/include/src/stan/mcmc/hmc/hamiltonians/dense_e_metric.hpp:22:10:   required from here
/opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:55:30: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__vector(2) double’} [-Wignored-attributes]
stanExports_estimate_infections.cc:32:1: fatal error: error writing to /tmp/cc5poiaN.s: Cannot allocate memory
   32 | }
      | ^
compilation terminated.
make: *** [/opt/R/4.0.3/lib/R/etc/Makeconf:179: stanExports_estimate_infections.o] Error 1
ERROR: compilation failed for package ‘EpiNow2’
* removing ‘/tmp/workdir/EpiNow2/new/EpiNow2.Rcheck/EpiNow2’


```
### CRAN

```
* installing *source* package ‘EpiNow2’ ...
** package ‘EpiNow2’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++14 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -I"../inst/include" -I"`"/opt/R/4.0.3/lib/R/bin/Rscript" -e 'message()' -e 'cat(system.file("include", "src", package = "StanHeaders", mustWork = TRUE))' -e 'message()' | grep 'StanHeaders'`" -DBOOST_DISABLE_ASSERTS -DEIGEN_NO_DEBUG -DBOOST_MATH_OVERFLOW_ERROR_POLICY=errno_on_error -I'/opt/R/4.0.3/lib/R/site-library/BH/include' -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppEigen/include' -I'/opt/R/4.0.3/lib/R/site-library/rstan/include' -I'/opt/R/4.0.3/lib/R/site-library/StanHeaders/include' -I/usr/local/include  "`"/opt/R/4.0.3/lib/R/bin/Rscript" -e 'StanHeaders:::CxxFlags()'`" -D_REENTRANT -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o


In file included from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/Core:397,
                 from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/Dense:1,
                 from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/RcppEigenForward.h:30,
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
* DONE (EpiNow2)


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
    Complete output:
      > library(testthat)
      > library(fastpos)
      > 
      > test_check("fastpos")
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
# glassdoor

<details>

* Version: 0.8.1
* GitHub: https://github.com/muschellij2/glassdoor
* Source code: https://github.com/cran/glassdoor
* Date/Publication: 2018-11-21 17:00:03 UTC
* Number of recursive dependencies: 54

Run `cloud_details(, "glassdoor")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    Running examples in ‘glassdoor-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: get_ip
    > ### Title: Get IP Address
    > ### Aliases: get_ip
    > 
    > ### ** Examples
    > 
    > get_ip()
    Error: Please install xml2 package
    Execution halted
    ```

# HRM

<details>

* Version: 1.2.1
* GitHub: https://github.com/happma/HRM
* Source code: https://github.com/cran/HRM
* Date/Publication: 2020-02-06 14:50:02 UTC
* Number of recursive dependencies: 85

Run `cloud_details(, "HRM")` for more info

</details>

## Newly broken

*   checking dependencies in R code ... NOTE
    ```
    
    (R:15177): Gtk-WARNING **: 17:16:57.494: gtk_disable_setlocale() must be called before gtk_init()
    ```

# IMEC

<details>

* Version: 0.2.0
* GitHub: NA
* Source code: https://github.com/cran/IMEC
* Date/Publication: 2020-11-27 10:10:03 UTC
* Number of recursive dependencies: 98

Run `cloud_details(, "IMEC")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    Running examples in ‘IMEC-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: computeIMEC
    > ### Title: Computes the Ising model of explanatory coherence.
    > ### Aliases: computeIMEC
    > 
    > ### ** Examples
    > 
    > # simple example comparing two hypotheses one of them with more explanatory breadth##
    ...
    > summary(coherence)
      T1     EC_T1
    1 H1 0.8673686
    2 H2 0.1347264
    > plot(coherence)
    Warning in fun(libname, pkgname) : couldn't connect to display ":109"
    Error in structure(.External(.C_dotTclObjv, objv), class = "tclObj") : 
      [tcl] invalid command name "font".
    Calls: plot ... .tkplot.convert.font -> <Anonymous> -> tcl -> .Tcl.objv -> structure
    Execution halted
    ```

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      
      Backtrace:
          █
       1. ├─base::plot(IMEC) test-0-basictests.R:58:2
       2. └─IMEC:::plot.IMEC(IMEC)
       3.   └─igraph::tkplot(g, vertex.color = colors, canvas.width = 1000)
       4.     └─igraph:::.tkplot.convert.font(...)
       5.       └─tcltk::tkfont.names()
       6.         └─tcltk::tcl("font", "names", ...)
       7.           └─tcltk::.Tcl.objv(.Tcl.args.objv(...))
       8.             └─base::structure(.External(.C_dotTclObjv, objv), class = "tclObj")
      
      [ FAIL 2 | WARN 1 | SKIP 1 | PASS 2 ]
      Error: Test failures
      Execution halted
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

