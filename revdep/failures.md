# bayesdfa (1.3.4)

* GitHub: <https://github.com/fate-ewi/bayesdfa>
* Email: <mailto:eric.ward@noaa.gov>
* GitHub mirror: <https://github.com/cran/bayesdfa>

Run `revdepcheck::cloud_details(, "bayesdfa")` for more info

## In both

*   checking whether package ‘bayesdfa’ can be installed ... ERROR
     ```
     Installation failed.
     See ‘/tmp/workdir/bayesdfa/new/bayesdfa.Rcheck/00install.out’ for details.
     ```

## Installation

### Devel

```
* installing *source* package ‘bayesdfa’ ...
** this is package ‘bayesdfa’ version ‘1.3.4’
** package ‘bayesdfa’ successfully unpacked and MD5 sums checked
** using staged installation
Error in loadNamespace(x) : there is no package called ‘rstantools’
Calls: loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: configuration failed for package ‘bayesdfa’
* removing ‘/tmp/workdir/bayesdfa/new/bayesdfa.Rcheck/bayesdfa’


```
### CRAN

```
* installing *source* package ‘bayesdfa’ ...
** this is package ‘bayesdfa’ version ‘1.3.4’
** package ‘bayesdfa’ successfully unpacked and MD5 sums checked
** using staged installation
Error in loadNamespace(x) : there is no package called ‘rstantools’
Calls: loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: configuration failed for package ‘bayesdfa’
* removing ‘/tmp/workdir/bayesdfa/old/bayesdfa.Rcheck/bayesdfa’


```
# cocktailApp (0.2.3)

* GitHub: <https://github.com/shabbychef/cocktailApp>
* Email: <mailto:shabbychef@gmail.com>
* GitHub mirror: <https://github.com/cran/cocktailApp>

Run `revdepcheck::cloud_details(, "cocktailApp")` for more info

## In both

*   checking whether package ‘cocktailApp’ can be installed ... ERROR
     ```
     Installation failed.
     See ‘/tmp/workdir/cocktailApp/new/cocktailApp.Rcheck/00install.out’ for details.
     ```

## Installation

### Devel

```
* installing *source* package ‘cocktailApp’ ...
** this is package ‘cocktailApp’ version ‘0.2.3’
** package ‘cocktailApp’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error: .onLoad failed in loadNamespace() for 'ggtern', details:
  call: NULL
  error: <ggplot2::element_line> object properties are invalid:
- @lineend must be <character> or <NULL>, not S3<arrow>
Execution halted
ERROR: lazy loading failed for package ‘cocktailApp’
* removing ‘/tmp/workdir/cocktailApp/new/cocktailApp.Rcheck/cocktailApp’


```
### CRAN

```
* installing *source* package ‘cocktailApp’ ...
** this is package ‘cocktailApp’ version ‘0.2.3’
** package ‘cocktailApp’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error: .onLoad failed in loadNamespace() for 'ggtern', details:
  call: NULL
  error: <ggplot2::element_line> object properties are invalid:
- @lineend must be <character> or <NULL>, not S3<arrow>
Execution halted
ERROR: lazy loading failed for package ‘cocktailApp’
* removing ‘/tmp/workdir/cocktailApp/old/cocktailApp.Rcheck/cocktailApp’


```
# ctsem (3.10.4)

* GitHub: <https://github.com/cdriveraus/ctsem>
* Email: <mailto:charles.driver2@uzh.ch>
* GitHub mirror: <https://github.com/cran/ctsem>

Run `revdepcheck::cloud_details(, "ctsem")` for more info

## In both

*   checking whether package ‘ctsem’ can be installed ... ERROR
     ```
     Installation failed.
     See ‘/tmp/workdir/ctsem/new/ctsem.Rcheck/00install.out’ for details.
     ```

## Installation

### Devel

```
* installing *source* package ‘ctsem’ ...
** this is package ‘ctsem’ version ‘3.10.4’
** package ‘ctsem’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C++ compiler: ‘g++ (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0’
using C++17


g++ -std=gnu++17 -I"/opt/R/4.5.1/lib/R/include" -DNDEBUG -I"../inst/include" -I"/usr/local/lib/R/site-library/StanHeaders/include/src" -DBOOST_DISABLE_ASSERTS -DEIGEN_NO_DEBUG -DBOOST_MATH_OVERFLOW_ERROR_POLICY=errno_on_error -DUSE_STANC3 -D_HAS_AUTO_PTR_ETC=0 -I'/usr/local/lib/R/site-library/BH/include' -I'/usr/local/lib/R/site-library/Rcpp/include' -I'/usr/local/lib/R/site-library/RcppEigen/include' -I'/usr/local/lib/R/site-library/RcppParallel/include' -I'/usr/local/lib/R/site-library/rstan/include' -I'/usr/local/lib/R/site-library/StanHeaders/include' -I/usr/local/include    -I'/usr/local/lib/R/site-library/RcppParallel/include' -D_REENTRANT -DSTAN_THREADS   -fpic  -g -O2   -c RcppExports.cpp -o RcppExports.o
...
/usr/local/lib/R/site-library/StanHeaders/include/src/stan/mcmc/hmc/hamiltonians/dense_e_metric.hpp:22:0:   required from ‘double stan::mcmc::dense_e_metric<Model, BaseRNG>::T(stan::mcmc::dense_e_point&) [with Model = model_ctsm_namespace::model_ctsm; BaseRNG = boost::random::additive_combine_engine<boost::random::linear_congruential_engine<unsigned int, 40014, 0, 2147483563>, boost::random::linear_congruential_engine<unsigned int, 40692, 0, 2147483399> >]’
/usr/local/lib/R/site-library/StanHeaders/include/src/stan/mcmc/hmc/hamiltonians/dense_e_metric.hpp:21:0:   required from here
/usr/local/lib/R/site-library/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:654:74: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__m128d’} [-Wignored-attributes]
  654 |   return internal::first_aligned<int(unpacket_traits<DefaultPacketType>::alignment),Derived>(m);
      |                                                                          ^~~~~~~~~
g++: fatal error: Killed signal terminated program cc1plus
compilation terminated.
make: *** [/opt/R/4.5.1/lib/R/etc/Makeconf:209: stanExports_ctsm.o] Error 1
ERROR: compilation failed for package ‘ctsem’
* removing ‘/tmp/workdir/ctsem/new/ctsem.Rcheck/ctsem’


```
### CRAN

```
* installing *source* package ‘ctsem’ ...
** this is package ‘ctsem’ version ‘3.10.4’
** package ‘ctsem’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C++ compiler: ‘g++ (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0’
using C++17


g++ -std=gnu++17 -I"/opt/R/4.5.1/lib/R/include" -DNDEBUG -I"../inst/include" -I"/usr/local/lib/R/site-library/StanHeaders/include/src" -DBOOST_DISABLE_ASSERTS -DEIGEN_NO_DEBUG -DBOOST_MATH_OVERFLOW_ERROR_POLICY=errno_on_error -DUSE_STANC3 -D_HAS_AUTO_PTR_ETC=0 -I'/usr/local/lib/R/site-library/BH/include' -I'/usr/local/lib/R/site-library/Rcpp/include' -I'/usr/local/lib/R/site-library/RcppEigen/include' -I'/usr/local/lib/R/site-library/RcppParallel/include' -I'/usr/local/lib/R/site-library/rstan/include' -I'/usr/local/lib/R/site-library/StanHeaders/include' -I/usr/local/include    -I'/usr/local/lib/R/site-library/RcppParallel/include' -D_REENTRANT -DSTAN_THREADS   -fpic  -g -O2   -c RcppExports.cpp -o RcppExports.o
...
/usr/local/lib/R/site-library/StanHeaders/include/src/stan/mcmc/hmc/hamiltonians/dense_e_metric.hpp:22:0:   required from ‘double stan::mcmc::dense_e_metric<Model, BaseRNG>::T(stan::mcmc::dense_e_point&) [with Model = model_ctsm_namespace::model_ctsm; BaseRNG = boost::random::additive_combine_engine<boost::random::linear_congruential_engine<unsigned int, 40014, 0, 2147483563>, boost::random::linear_congruential_engine<unsigned int, 40692, 0, 2147483399> >]’
/usr/local/lib/R/site-library/StanHeaders/include/src/stan/mcmc/hmc/hamiltonians/dense_e_metric.hpp:21:0:   required from here
/usr/local/lib/R/site-library/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:654:74: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__m128d’} [-Wignored-attributes]
  654 |   return internal::first_aligned<int(unpacket_traits<DefaultPacketType>::alignment),Derived>(m);
      |                                                                          ^~~~~~~~~
g++: fatal error: Killed signal terminated program cc1plus
compilation terminated.
make: *** [/opt/R/4.5.1/lib/R/etc/Makeconf:209: stanExports_ctsm.o] Error 1
ERROR: compilation failed for package ‘ctsem’
* removing ‘/tmp/workdir/ctsem/old/ctsem.Rcheck/ctsem’


```
# DSMolgenisArmadillo (3.0.1)

* GitHub: <https://github.com/molgenis/molgenis-r-datashield>
* Email: <mailto:m.k.slofstra@umcg.nl>
* GitHub mirror: <https://github.com/cran/DSMolgenisArmadillo>

Run `revdepcheck::cloud_details(, "DSMolgenisArmadillo")` for more info

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/DSMolgenisArmadillo/new/DSMolgenisArmadillo.Rcheck’
* using R version 4.5.1 (2025-06-13)
* using platform: x86_64-pc-linux-gnu
* R was compiled by
    gcc (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0
    GNU Fortran (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0
* running under: Ubuntu 24.04.3 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘DSMolgenisArmadillo/DESCRIPTION’ ... OK
...
  
  [ FAIL 72 | WARN 0 | SKIP 1 | PASS 45 ]
  Error:
  ! Test failures.
  Execution halted
* checking for unstated dependencies in vignettes ... OK
* checking package vignettes ... OK
* checking re-building of vignette outputs ... OK
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/DSMolgenisArmadillo/old/DSMolgenisArmadillo.Rcheck’
* using R version 4.5.1 (2025-06-13)
* using platform: x86_64-pc-linux-gnu
* R was compiled by
    gcc (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0
    GNU Fortran (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0
* running under: Ubuntu 24.04.3 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘DSMolgenisArmadillo/DESCRIPTION’ ... OK
...
* checking files in ‘vignettes’ ... OK
* checking examples ... OK
* checking for unstated dependencies in ‘tests’ ... OK
* checking tests ... OK
  Running ‘testthat.R’
* checking for unstated dependencies in vignettes ... OK
* checking package vignettes ... OK
* checking re-building of vignette outputs ... OK
* DONE
Status: OK





```
# dsTidyverse (1.0.4)

* Email: <mailto:t.j.cadman@umcg.nl>
* GitHub mirror: <https://github.com/cran/dsTidyverse>

Run `revdepcheck::cloud_details(, "dsTidyverse")` for more info

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/dsTidyverse/new/dsTidyverse.Rcheck’
* using R version 4.5.1 (2025-06-13)
* using platform: x86_64-pc-linux-gnu
* R was compiled by
    gcc (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0
    GNU Fortran (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0
* running under: Ubuntu 24.04.3 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘dsTidyverse/DESCRIPTION’ ... OK
...
* checking for code/documentation mismatches ... OK
* checking Rd \usage sections ... OK
* checking Rd contents ... OK
* checking for unstated dependencies in examples ... OK
* checking examples ... NONE
* checking for unstated dependencies in ‘tests’ ... OK
* checking tests ... OK
  Running ‘testthat.R’
* DONE
Status: OK





```
### CRAN

```
* using log directory ‘/tmp/workdir/dsTidyverse/old/dsTidyverse.Rcheck’
* using R version 4.5.1 (2025-06-13)
* using platform: x86_64-pc-linux-gnu
* R was compiled by
    gcc (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0
    GNU Fortran (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0
* running under: Ubuntu 24.04.3 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘dsTidyverse/DESCRIPTION’ ... OK
...
* checking for code/documentation mismatches ... OK
* checking Rd \usage sections ... OK
* checking Rd contents ... OK
* checking for unstated dependencies in examples ... OK
* checking examples ... NONE
* checking for unstated dependencies in ‘tests’ ... OK
* checking tests ... OK
  Running ‘testthat.R’
* DONE
Status: OK





```
# dsTidyverseClient (1.0.2)

* Email: <mailto:t.j.cadman@umcg.nl>
* GitHub mirror: <https://github.com/cran/dsTidyverseClient>

Run `revdepcheck::cloud_details(, "dsTidyverseClient")` for more info

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/dsTidyverseClient/new/dsTidyverseClient.Rcheck’
* using R version 4.5.1 (2025-06-13)
* using platform: x86_64-pc-linux-gnu
* R was compiled by
    gcc (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0
    GNU Fortran (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0
* running under: Ubuntu 24.04.3 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘dsTidyverseClient/DESCRIPTION’ ... OK
...
* checking files in ‘vignettes’ ... OK
* checking examples ... OK
* checking for unstated dependencies in ‘tests’ ... OK
* checking tests ... OK
  Running ‘testthat.R’
* checking for unstated dependencies in vignettes ... OK
* checking package vignettes ... OK
* checking re-building of vignette outputs ... OK
* DONE
Status: OK





```
### CRAN

```
* using log directory ‘/tmp/workdir/dsTidyverseClient/old/dsTidyverseClient.Rcheck’
* using R version 4.5.1 (2025-06-13)
* using platform: x86_64-pc-linux-gnu
* R was compiled by
    gcc (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0
    GNU Fortran (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0
* running under: Ubuntu 24.04.3 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘dsTidyverseClient/DESCRIPTION’ ... OK
...
* checking files in ‘vignettes’ ... OK
* checking examples ... OK
* checking for unstated dependencies in ‘tests’ ... OK
* checking tests ... OK
  Running ‘testthat.R’
* checking for unstated dependencies in vignettes ... OK
* checking package vignettes ... OK
* checking re-building of vignette outputs ... OK
* DONE
Status: OK





```
# EcoEnsemble (1.1.2)

* GitHub: <https://github.com/CefasRepRes/EcoEnsemble>
* Email: <mailto:michael.spence@cefas.gov.uk>
* GitHub mirror: <https://github.com/cran/EcoEnsemble>

Run `revdepcheck::cloud_details(, "EcoEnsemble")` for more info

## In both

*   checking whether package ‘EcoEnsemble’ can be installed ... ERROR
     ```
     Installation failed.
     See ‘/tmp/workdir/EcoEnsemble/new/EcoEnsemble.Rcheck/00install.out’ for details.
     ```

## Installation

### Devel

```
* installing *source* package ‘EcoEnsemble’ ...
** this is package ‘EcoEnsemble’ version ‘1.1.2’
** package ‘EcoEnsemble’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C++ compiler: ‘g++ (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0’
using C++17


g++ -std=gnu++17 -I"/opt/R/4.5.1/lib/R/include" -DNDEBUG -I"../inst/include" -I"/usr/local/lib/R/site-library/StanHeaders/include/src" -DBOOST_DISABLE_ASSERTS -DEIGEN_NO_DEBUG -DBOOST_MATH_OVERFLOW_ERROR_POLICY=errno_on_error -DUSE_STANC3 -D_HAS_AUTO_PTR_ETC=0 -I'/usr/local/lib/R/site-library/BH/include' -I'/usr/local/lib/R/site-library/Rcpp/include' -I'/usr/local/lib/R/site-library/RcppEigen/include' -I'/usr/local/lib/R/site-library/RcppParallel/include' -I'/usr/local/lib/R/site-library/rstan/include' -I'/usr/local/lib/R/site-library/StanHeaders/include' -I/usr/local/include    -I'/usr/local/lib/R/site-library/RcppParallel/include' -D_REENTRANT -DSTAN_THREADS   -fpic  -g -O2   -c KF_back.cpp -o KF_back.o
...
/usr/local/lib/R/site-library/StanHeaders/include/src/stan/mcmc/hmc/hamiltonians/dense_e_metric.hpp:22:0:   required from ‘double stan::mcmc::dense_e_metric<Model, BaseRNG>::T(stan::mcmc::dense_e_point&) [with Model = model_ensemble_model_hierarchical_namespace::model_ensemble_model_hierarchical; BaseRNG = boost::random::additive_combine_engine<boost::random::linear_congruential_engine<unsigned int, 40014, 0, 2147483563>, boost::random::linear_congruential_engine<unsigned int, 40692, 0, 2147483399> >]’
/usr/local/lib/R/site-library/StanHeaders/include/src/stan/mcmc/hmc/hamiltonians/dense_e_metric.hpp:21:0:   required from here
/usr/local/lib/R/site-library/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:654:74: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__m128d’} [-Wignored-attributes]
  654 |   return internal::first_aligned<int(unpacket_traits<DefaultPacketType>::alignment),Derived>(m);
      |                                                                          ^~~~~~~~~
g++: fatal error: Killed signal terminated program cc1plus
compilation terminated.
make: *** [/opt/R/4.5.1/lib/R/etc/Makeconf:209: stanExports_ensemble_model_hierarchical.o] Error 1
ERROR: compilation failed for package ‘EcoEnsemble’
* removing ‘/tmp/workdir/EcoEnsemble/new/EcoEnsemble.Rcheck/EcoEnsemble’


```
### CRAN

```
* installing *source* package ‘EcoEnsemble’ ...
** this is package ‘EcoEnsemble’ version ‘1.1.2’
** package ‘EcoEnsemble’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C++ compiler: ‘g++ (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0’
using C++17


g++ -std=gnu++17 -I"/opt/R/4.5.1/lib/R/include" -DNDEBUG -I"../inst/include" -I"/usr/local/lib/R/site-library/StanHeaders/include/src" -DBOOST_DISABLE_ASSERTS -DEIGEN_NO_DEBUG -DBOOST_MATH_OVERFLOW_ERROR_POLICY=errno_on_error -DUSE_STANC3 -D_HAS_AUTO_PTR_ETC=0 -I'/usr/local/lib/R/site-library/BH/include' -I'/usr/local/lib/R/site-library/Rcpp/include' -I'/usr/local/lib/R/site-library/RcppEigen/include' -I'/usr/local/lib/R/site-library/RcppParallel/include' -I'/usr/local/lib/R/site-library/rstan/include' -I'/usr/local/lib/R/site-library/StanHeaders/include' -I/usr/local/include    -I'/usr/local/lib/R/site-library/RcppParallel/include' -D_REENTRANT -DSTAN_THREADS   -fpic  -g -O2   -c KF_back.cpp -o KF_back.o
...
/usr/local/lib/R/site-library/StanHeaders/include/src/stan/mcmc/hmc/hamiltonians/dense_e_metric.hpp:22:0:   required from ‘double stan::mcmc::dense_e_metric<Model, BaseRNG>::T(stan::mcmc::dense_e_point&) [with Model = model_ensemble_model_hierarchical_namespace::model_ensemble_model_hierarchical; BaseRNG = boost::random::additive_combine_engine<boost::random::linear_congruential_engine<unsigned int, 40014, 0, 2147483563>, boost::random::linear_congruential_engine<unsigned int, 40692, 0, 2147483399> >]’
/usr/local/lib/R/site-library/StanHeaders/include/src/stan/mcmc/hmc/hamiltonians/dense_e_metric.hpp:21:0:   required from here
/usr/local/lib/R/site-library/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:654:74: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__m128d’} [-Wignored-attributes]
  654 |   return internal::first_aligned<int(unpacket_traits<DefaultPacketType>::alignment),Derived>(m);
      |                                                                          ^~~~~~~~~
g++: fatal error: Killed signal terminated program cc1plus
compilation terminated.
make: *** [/opt/R/4.5.1/lib/R/etc/Makeconf:209: stanExports_ensemble_model_hierarchical.o] Error 1
ERROR: compilation failed for package ‘EcoEnsemble’
* removing ‘/tmp/workdir/EcoEnsemble/old/EcoEnsemble.Rcheck/EcoEnsemble’


```
# fdaPDE (1.1-21)

* Email: <mailto:eleonora.arnone@polimi.it>
* GitHub mirror: <https://github.com/cran/fdaPDE>

Run `revdepcheck::cloud_details(, "fdaPDE")` for more info

## In both

*   checking whether package ‘fdaPDE’ can be installed ... ERROR
     ```
     Installation failed.
     See ‘/tmp/workdir/fdaPDE/new/fdaPDE.Rcheck/00install.out’ for details.
     ```

## Installation

### Devel

```
* installing *source* package ‘fdaPDE’ ...
** this is package ‘fdaPDE’ version ‘1.1-21’
** package ‘fdaPDE’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C compiler: ‘gcc (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0’
using C++ compiler: ‘g++ (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0’
using C++17
g++ -std=gnu++17 -I"/opt/R/4.5.1/lib/R/include" -DNDEBUG  -I'/usr/local/lib/R/site-library/RcppEigen/include' -I'/usr/local/lib/R/site-library/Rcpp/include' -I/usr/local/include    -fpic  -g -O2   -c Density_Estimation/Source/Rfun_Density_Estimation.cpp -o Density_Estimation/Source/Rfun_Density_Estimation.o
In file included from /usr/local/lib/R/site-library/RcppEigen/include/Eigen/Core:205,
...
/usr/local/lib/R/site-library/RcppEigen/include/Eigen/src/Core/Matrix.h:225:24:   required from ‘Eigen::Matrix<_Scalar, _Rows, _Cols, _Options, _MaxRows, _MaxCols>& Eigen::Matrix<_Scalar, _Rows, _Cols, _Options, _MaxRows, _MaxCols>::operator=(const Eigen::DenseBase<OtherDerived>&) [with OtherDerived = Eigen::CwiseBinaryOp<Eigen::internal::scalar_product_op<double, double>, const Eigen::CwiseNullaryOp<Eigen::internal::scalar_constant_op<double>, const Eigen::Matrix<double, -1, -1> >, const Eigen::CwiseBinaryOp<Eigen::internal::scalar_sum_op<double, double>, const Eigen::Solve<Eigen::PartialPivLU<Eigen::Matrix<double, -1, -1> >, Eigen::CwiseNullaryOp<Eigen::internal::scalar_identity_op<double>, Eigen::Matrix<double, -1, -1> > >, const Eigen::Solve<Eigen::PartialPivLU<Eigen::Matrix<double, -1, -1> >, Eigen::Product<Eigen::Product<Eigen::Product<Eigen::Product<Eigen::Transpose<const Eigen::Matrix<double, -1, -1> >, Eigen::Matrix<double, -1, -1>, 0>, Eigen::Transpose<Eigen::Matrix<double, -1, -1> >, 0>, Eigen::Matrix<double, -1, -1>, 0>, Eigen::Solve<Eigen::PartialPivLU<Eigen::Matrix<double, -1, -1> >, Eigen::CwiseNullaryOp<Eigen::internal::scalar_identity_op<double>, Eigen::Matrix<double, -1, -1> > >, 0> > > >; _Scalar = double; int _Rows = -1; int _Cols = -1; int _Options = 0; int _MaxRows = -1; int _MaxCols = -1]’
Regression/Source/../../Skeletons/Include/../../Inference/Include/Wald_imp.h:54:5:   required from ‘void Wald_Base<InputHandler, MatrixType>::compute_V() [with InputHandler = RegressionData; MatrixType = Eigen::Matrix<double, -1, -1>]’
Regression/Source/../../Skeletons/Include/../../Inference/Include/Wald_imp.h:123:5:   required from ‘VectorXr Wald_Base<InputHandler, MatrixType>::compute_beta_pvalue() [with InputHandler = RegressionData; MatrixType = Eigen::Matrix<double, -1, -1>; VectorXr = Eigen::Matrix<double, -1, 1>]’
Regression/Source/../../Skeletons/Include/../../Inference/Include/Wald_imp.h:104:10:   required from here
/usr/local/lib/R/site-library/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:56:30: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__m128d’} [-Wignored-attributes]
g++: fatal error: Killed signal terminated program cc1plus
compilation terminated.
make: *** [/opt/R/4.5.1/lib/R/etc/Makeconf:211: Regression/Source/Rfun_Regression_Laplace.o] Error 1
ERROR: compilation failed for package ‘fdaPDE’
* removing ‘/tmp/workdir/fdaPDE/new/fdaPDE.Rcheck/fdaPDE’


```
### CRAN

```
* installing *source* package ‘fdaPDE’ ...
** this is package ‘fdaPDE’ version ‘1.1-21’
** package ‘fdaPDE’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C compiler: ‘gcc (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0’
using C++ compiler: ‘g++ (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0’
using C++17
g++ -std=gnu++17 -I"/opt/R/4.5.1/lib/R/include" -DNDEBUG  -I'/usr/local/lib/R/site-library/RcppEigen/include' -I'/usr/local/lib/R/site-library/Rcpp/include' -I/usr/local/include    -fpic  -g -O2   -c Density_Estimation/Source/Rfun_Density_Estimation.cpp -o Density_Estimation/Source/Rfun_Density_Estimation.o
In file included from /usr/local/lib/R/site-library/RcppEigen/include/Eigen/Core:205,
...
/usr/local/lib/R/site-library/RcppEigen/include/Eigen/src/Core/Matrix.h:225:24:   required from ‘Eigen::Matrix<_Scalar, _Rows, _Cols, _Options, _MaxRows, _MaxCols>& Eigen::Matrix<_Scalar, _Rows, _Cols, _Options, _MaxRows, _MaxCols>::operator=(const Eigen::DenseBase<OtherDerived>&) [with OtherDerived = Eigen::CwiseBinaryOp<Eigen::internal::scalar_product_op<double, double>, const Eigen::CwiseNullaryOp<Eigen::internal::scalar_constant_op<double>, const Eigen::Matrix<double, -1, -1> >, const Eigen::CwiseBinaryOp<Eigen::internal::scalar_sum_op<double, double>, const Eigen::Solve<Eigen::PartialPivLU<Eigen::Matrix<double, -1, -1> >, Eigen::CwiseNullaryOp<Eigen::internal::scalar_identity_op<double>, Eigen::Matrix<double, -1, -1> > >, const Eigen::Solve<Eigen::PartialPivLU<Eigen::Matrix<double, -1, -1> >, Eigen::Product<Eigen::Product<Eigen::Product<Eigen::Product<Eigen::Transpose<const Eigen::Matrix<double, -1, -1> >, Eigen::Matrix<double, -1, -1>, 0>, Eigen::Transpose<Eigen::Matrix<double, -1, -1> >, 0>, Eigen::Matrix<double, -1, -1>, 0>, Eigen::Solve<Eigen::PartialPivLU<Eigen::Matrix<double, -1, -1> >, Eigen::CwiseNullaryOp<Eigen::internal::scalar_identity_op<double>, Eigen::Matrix<double, -1, -1> > >, 0> > > >; _Scalar = double; int _Rows = -1; int _Cols = -1; int _Options = 0; int _MaxRows = -1; int _MaxCols = -1]’
Regression/Source/../../Skeletons/Include/../../Inference/Include/Wald_imp.h:54:5:   required from ‘void Wald_Base<InputHandler, MatrixType>::compute_V() [with InputHandler = RegressionData; MatrixType = Eigen::Matrix<double, -1, -1>]’
Regression/Source/../../Skeletons/Include/../../Inference/Include/Wald_imp.h:123:5:   required from ‘VectorXr Wald_Base<InputHandler, MatrixType>::compute_beta_pvalue() [with InputHandler = RegressionData; MatrixType = Eigen::Matrix<double, -1, -1>; VectorXr = Eigen::Matrix<double, -1, 1>]’
Regression/Source/../../Skeletons/Include/../../Inference/Include/Wald_imp.h:104:10:   required from here
/usr/local/lib/R/site-library/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:56:30: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__m128d’} [-Wignored-attributes]
g++: fatal error: Killed signal terminated program cc1plus
compilation terminated.
make: *** [/opt/R/4.5.1/lib/R/etc/Makeconf:211: Regression/Source/Rfun_Regression_Laplace.o] Error 1
ERROR: compilation failed for package ‘fdaPDE’
* removing ‘/tmp/workdir/fdaPDE/old/fdaPDE.Rcheck/fdaPDE’


```
# fio (0.1.6)

* GitHub: <https://github.com/albersonmiranda/fio>
* Email: <mailto:albersonmiranda@hotmail.com>
* GitHub mirror: <https://github.com/cran/fio>

Run `revdepcheck::cloud_details(, "fio")` for more info

## In both

*   checking whether package ‘fio’ can be installed ... ERROR
     ```
     Installation failed.
     See ‘/tmp/workdir/fio/new/fio.Rcheck/00install.out’ for details.
     ```

## Installation

### Devel

```
* installing *source* package ‘fio’ ...
** this is package ‘fio’ version ‘0.1.6’
** package ‘fio’ successfully unpacked and MD5 sums checked
** using staged installation
Error in eval(ei, envir) : 
------------------ [UNSUPPORTED RUST VERSION]------------------
- Minimum supported Rust version is 1.77.
- Installed Rust version is 1.75.0.
---------------------------------------------------------------
Calls: source -> withVisible -> eval -> eval
Execution halted
ERROR: configuration failed for package ‘fio’
* removing ‘/tmp/workdir/fio/new/fio.Rcheck/fio’


```
### CRAN

```
* installing *source* package ‘fio’ ...
** this is package ‘fio’ version ‘0.1.6’
** package ‘fio’ successfully unpacked and MD5 sums checked
** using staged installation
Error in eval(ei, envir) : 
------------------ [UNSUPPORTED RUST VERSION]------------------
- Minimum supported Rust version is 1.77.
- Installed Rust version is 1.75.0.
---------------------------------------------------------------
Calls: source -> withVisible -> eval -> eval
Execution halted
ERROR: configuration failed for package ‘fio’
* removing ‘/tmp/workdir/fio/old/fio.Rcheck/fio’


```
# gadjid (0.1.0)

* GitHub: <https://github.com/CausalDisco/gadjid>
* Email: <mailto:sweichwald@math.ku.dk>
* GitHub mirror: <https://github.com/cran/gadjid>

Run `revdepcheck::cloud_details(, "gadjid")` for more info

## In both

*   checking whether package ‘gadjid’ can be installed ... ERROR
     ```
     Installation failed.
     See ‘/tmp/workdir/gadjid/new/gadjid.Rcheck/00install.out’ for details.
     ```

## Installation

### Devel

```
* installing *source* package ‘gadjid’ ...
** this is package ‘gadjid’ version ‘0.1.0’
** package ‘gadjid’ successfully unpacked and MD5 sums checked
** using staged installation
Using cargo 1.75.0
Using rustc 1.75.0 (82e1608df 2023-12-21) (built from a source tarball)
Building for CRAN.
Writing `src/Makevars`.
`tools/config.R` has finished.
** libs
...
export CARGO_HOME=/tmp/workdir/gadjid/new/gadjid.Rcheck/00_pkg_src/gadjid/src/.cargo && \
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/root/.cargo/bin" && \
RUSTFLAGS=" --print=native-static-libs" cargo build -j 2 --offline --lib --release --manifest-path=./rust/Cargo.toml --target-dir ./rust/target 
error: failed to parse lock file at: /tmp/workdir/gadjid/new/gadjid.Rcheck/00_pkg_src/gadjid/src/rust/Cargo.lock

Caused by:
  lock file version 4 requires `-Znext-lockfile-bump`
make: *** [Makevars:26: rust/target/release/libgadjid.a] Error 101
ERROR: compilation failed for package ‘gadjid’
* removing ‘/tmp/workdir/gadjid/new/gadjid.Rcheck/gadjid’


```
### CRAN

```
* installing *source* package ‘gadjid’ ...
** this is package ‘gadjid’ version ‘0.1.0’
** package ‘gadjid’ successfully unpacked and MD5 sums checked
** using staged installation
Using cargo 1.75.0
Using rustc 1.75.0 (82e1608df 2023-12-21) (built from a source tarball)
Building for CRAN.
Writing `src/Makevars`.
`tools/config.R` has finished.
** libs
...
export CARGO_HOME=/tmp/workdir/gadjid/old/gadjid.Rcheck/00_pkg_src/gadjid/src/.cargo && \
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/root/.cargo/bin" && \
RUSTFLAGS=" --print=native-static-libs" cargo build -j 2 --offline --lib --release --manifest-path=./rust/Cargo.toml --target-dir ./rust/target 
error: failed to parse lock file at: /tmp/workdir/gadjid/old/gadjid.Rcheck/00_pkg_src/gadjid/src/rust/Cargo.lock

Caused by:
  lock file version 4 requires `-Znext-lockfile-bump`
make: *** [Makevars:26: rust/target/release/libgadjid.a] Error 101
ERROR: compilation failed for package ‘gadjid’
* removing ‘/tmp/workdir/gadjid/old/gadjid.Rcheck/gadjid’


```
# gllvm (2.0.5)

* GitHub: <https://github.com/JenniNiku/gllvm>
* Email: <mailto:jenni.m.e.niku@jyu.fi>
* GitHub mirror: <https://github.com/cran/gllvm>

Run `revdepcheck::cloud_details(, "gllvm")` for more info

## In both

*   checking whether package ‘gllvm’ can be installed ... ERROR
     ```
     Installation failed.
     See ‘/tmp/workdir/gllvm/new/gllvm.Rcheck/00install.out’ for details.
     ```

## Installation

### Devel

```
* installing *source* package ‘gllvm’ ...
** this is package ‘gllvm’ version ‘2.0.5’
** package ‘gllvm’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C++ compiler: ‘g++ (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0’
g++ -std=gnu++17 -I"/opt/R/4.5.1/lib/R/include" -DNDEBUG -DTMBAD_FRAMEWORK -I'/usr/local/lib/R/site-library/TMB/include' -I'/usr/local/lib/R/site-library/RcppEigen/include' -I/usr/local/include   -fopenmp -fpic  -g -O2   -c gllvm.cpp -o gllvm.o
In file included from /usr/local/lib/R/site-library/RcppEigen/include/Eigen/Core:205,
                 from /usr/local/lib/R/site-library/RcppEigen/include/Eigen/Dense:1,
                 from /usr/local/lib/R/site-library/TMB/include/TMB.hpp:92,
...
/usr/local/lib/R/site-library/TMB/include/tiny_ad/atomic.hpp:30:1:   required from ‘void atomic::bessel_kOp<order, ninput, noutput, mask>::reverse(TMBad::ReverseArgs<Type>&) [with Type = double; int order = 3; int ninput = 2; int noutput = 8; long int mask = 9]’
/usr/local/lib/R/site-library/TMB/include/TMBad/global.hpp:1739:28:   required from ‘void TMBad::global::AddForwardMarkReverseMark<OperatorBase>::reverse(TMBad::ReverseArgs<Type>&) [with Type = double; OperatorBase = TMBad::global::AddIncrementDecrement<TMBad::global::AddDependencies<TMBad::global::AddInputSizeOutputSize<atomic::bessel_kOp<3, 2, 8, 9> > > >]’
/usr/local/lib/R/site-library/TMB/include/TMBad/global.hpp:2132:57:   required from ‘void TMBad::global::Complete<OperatorBase>::reverse(TMBad::ReverseArgs<double>&) [with OperatorBase = atomic::bessel_kOp<3, 2, 8, 9>]’
/usr/local/lib/R/site-library/TMB/include/TMBad/global.hpp:2132:10:   required from here
/usr/local/lib/R/site-library/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:56:30: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__m128d’} [-Wignored-attributes]
g++: fatal error: Killed signal terminated program cc1plus
compilation terminated.
make: *** [/opt/R/4.5.1/lib/R/etc/Makeconf:211: gllvm.o] Error 1
ERROR: compilation failed for package ‘gllvm’
* removing ‘/tmp/workdir/gllvm/new/gllvm.Rcheck/gllvm’


```
### CRAN

```
* installing *source* package ‘gllvm’ ...
** this is package ‘gllvm’ version ‘2.0.5’
** package ‘gllvm’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C++ compiler: ‘g++ (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0’
g++ -std=gnu++17 -I"/opt/R/4.5.1/lib/R/include" -DNDEBUG -DTMBAD_FRAMEWORK -I'/usr/local/lib/R/site-library/TMB/include' -I'/usr/local/lib/R/site-library/RcppEigen/include' -I/usr/local/include   -fopenmp -fpic  -g -O2   -c gllvm.cpp -o gllvm.o
In file included from /usr/local/lib/R/site-library/RcppEigen/include/Eigen/Core:205,
                 from /usr/local/lib/R/site-library/RcppEigen/include/Eigen/Dense:1,
                 from /usr/local/lib/R/site-library/TMB/include/TMB.hpp:92,
...
/usr/local/lib/R/site-library/TMB/include/tiny_ad/atomic.hpp:30:1:   required from ‘void atomic::bessel_kOp<order, ninput, noutput, mask>::reverse(TMBad::ReverseArgs<Type>&) [with Type = double; int order = 3; int ninput = 2; int noutput = 8; long int mask = 9]’
/usr/local/lib/R/site-library/TMB/include/TMBad/global.hpp:1739:28:   required from ‘void TMBad::global::AddForwardMarkReverseMark<OperatorBase>::reverse(TMBad::ReverseArgs<Type>&) [with Type = double; OperatorBase = TMBad::global::AddIncrementDecrement<TMBad::global::AddDependencies<TMBad::global::AddInputSizeOutputSize<atomic::bessel_kOp<3, 2, 8, 9> > > >]’
/usr/local/lib/R/site-library/TMB/include/TMBad/global.hpp:2132:57:   required from ‘void TMBad::global::Complete<OperatorBase>::reverse(TMBad::ReverseArgs<double>&) [with OperatorBase = atomic::bessel_kOp<3, 2, 8, 9>]’
/usr/local/lib/R/site-library/TMB/include/TMBad/global.hpp:2132:10:   required from here
/usr/local/lib/R/site-library/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:56:30: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__m128d’} [-Wignored-attributes]
g++: fatal error: Killed signal terminated program cc1plus
compilation terminated.
make: *** [/opt/R/4.5.1/lib/R/etc/Makeconf:211: gllvm.o] Error 1
ERROR: compilation failed for package ‘gllvm’
* removing ‘/tmp/workdir/gllvm/old/gllvm.Rcheck/gllvm’


```
# gpboost (1.6.3)

* GitHub: <https://github.com/fabsig/GPBoost>
* Email: <mailto:fabiosigrist@gmail.com>
* GitHub mirror: <https://github.com/cran/gpboost>

Run `revdepcheck::cloud_details(, "gpboost")` for more info

## In both

*   checking whether package ‘gpboost’ can be installed ... ERROR
     ```
     Installation failed.
     See ‘/tmp/workdir/gpboost/new/gpboost.Rcheck/00install.out’ for details.
     ```

## Installation

### Devel

```
* installing *source* package ‘gpboost’ ...
** this is package ‘gpboost’ version ‘1.6.3’
** package ‘gpboost’ successfully unpacked and MD5 sums checked
** using staged installation
checking location of R... /opt/R/4.5.1/lib/R
checking whether MM_PREFETCH works... yes
checking whether MM_MALLOC works... yes
configure: creating ./config.status
config.status: creating src/Makevars
** libs
...
./include/GPBoost/re_model_template.h:1520:6:   required from ‘void GPBoost::REModelTemplate<T_mat, T_chol>::OptimLinRegrCoefCovPar(const double*, const double*, int, double*, double*, int&, double*, double*, double*, double*, bool, const double*, bool, bool, bool, bool, bool) [with T_mat = Eigen::SparseMatrix<double>; T_chol = Eigen::SimplicialLLT<Eigen::SparseMatrix<double>, 1, Eigen::AMDOrdering<int> >]’
re_model.cpp:324:40:   required from here
./include/Eigen/src/Core/CoreEvaluators.h:1064:54: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__m128d’} [-Wignored-attributes]
 1064 |     PacketAlignment = unpacket_traits<PacketScalar>::alignment,
      |                                                      ^~~~~~~~~
g++: fatal error: Killed signal terminated program cc1plus
compilation terminated.
make: *** [/opt/R/4.5.1/lib/R/etc/Makeconf:211: re_model.o] Error 1
ERROR: compilation failed for package ‘gpboost’
* removing ‘/tmp/workdir/gpboost/new/gpboost.Rcheck/gpboost’


```
### CRAN

```
* installing *source* package ‘gpboost’ ...
** this is package ‘gpboost’ version ‘1.6.3’
** package ‘gpboost’ successfully unpacked and MD5 sums checked
** using staged installation
checking location of R... /opt/R/4.5.1/lib/R
checking whether MM_PREFETCH works... yes
checking whether MM_MALLOC works... yes
configure: creating ./config.status
config.status: creating src/Makevars
** libs
...
./include/GPBoost/re_model_template.h:1520:6:   required from ‘void GPBoost::REModelTemplate<T_mat, T_chol>::OptimLinRegrCoefCovPar(const double*, const double*, int, double*, double*, int&, double*, double*, double*, double*, bool, const double*, bool, bool, bool, bool, bool) [with T_mat = Eigen::SparseMatrix<double>; T_chol = Eigen::SimplicialLLT<Eigen::SparseMatrix<double>, 1, Eigen::AMDOrdering<int> >]’
re_model.cpp:324:40:   required from here
./include/Eigen/src/Core/CoreEvaluators.h:1064:54: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__m128d’} [-Wignored-attributes]
 1064 |     PacketAlignment = unpacket_traits<PacketScalar>::alignment,
      |                                                      ^~~~~~~~~
g++: fatal error: Killed signal terminated program cc1plus
compilation terminated.
make: *** [/opt/R/4.5.1/lib/R/etc/Makeconf:211: re_model.o] Error 1
ERROR: compilation failed for package ‘gpboost’
* removing ‘/tmp/workdir/gpboost/old/gpboost.Rcheck/gpboost’


```
# gpuR (2.0.6)

* GitHub: <https://github.com/cdeterman/gpuR>
* Email: <mailto:ruoyong.xu@mail.utoronto.ca>
* GitHub mirror: <https://github.com/cran/gpuR>

Run `revdepcheck::cloud_details(, "gpuR")` for more info

## In both

*   checking whether package ‘gpuR’ can be installed ... ERROR
     ```
     Installation failed.
     See ‘/tmp/workdir/gpuR/new/gpuR.Rcheck/00install.out’ for details.
     ```

## Installation

### Devel

```
* installing *source* package ‘gpuR’ ...
** this is package ‘gpuR’ version ‘2.0.6’
** package ‘gpuR’ successfully unpacked and MD5 sums checked
** using staged installation
OPENCL_FLAGS not set, using default -DCL_HPP_MINIMUM_OPENCL_VERSION=110 -DCL_USE_DEPRECATED_OPENCL_1_2_APIS  -DCL_HPP_TARGET_OPENCL_VERSION=120
Linux OS
found OpenCL library
Checking OpenCL C++ API
OPENCL_INC not set, using default include directory /usr/include
No OpenCL C++ API found, will use the headers contained in the package
...
/usr/local/lib/R/site-library/RcppEigen/include/Eigen/src/Core/Assign.h:66:28:   required from ‘Derived& Eigen::MatrixBase<Derived>::operator=(const Eigen::DenseBase<OtherDerived>&) [with OtherDerived = Eigen::Matrix<double, -1, 1>; Derived = Eigen::Block<Eigen::Ref<Eigen::Matrix<double, -1, -1>, 0, Eigen::OuterStride<> >, -1, 1, true>]’
../inst/include/gpuR/dynEigenMat.hpp:192:30:   required from ‘void dynEigenMat<T>::setCol(SEXP, int) [with T = double; SEXP = SEXPREC*]’
../inst/include/gpuR/dynEigenMat.hpp:383:16:   required from here
/usr/local/lib/R/site-library/RcppEigen/include/Eigen/src/Core/CoreEvaluators.h:1071:54: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__m128d’} [-Wignored-attributes]
g++ -std=gnu++17 -shared -L/opt/R/4.5.1/lib/R/lib -L/usr/local/lib -o gpuR.so RcppExports.o chol.o context.o custom_math.o device.o gpuEigenPtr.o gpuMatrix_igemm.o norm.o platform.o set_row_order.o solve.o synchronize.o trunc_gpuMat.o utils-vcl.o utils.o vclPtr.o vienna_blas1.o vienna_blas2.o vienna_blas3.o vienna_eigen.o vienna_qr.o vienna_stats.o vienna_svd.o -lOpenCL -L/opt/R/4.5.1/lib/R/lib -lR
/usr/bin/ld: cannot find -lOpenCL: No such file or directory
collect2: error: ld returned 1 exit status
make: *** [/opt/R/4.5.1/lib/R/share/make/shlib.mk:10: gpuR.so] Error 1
ERROR: compilation failed for package ‘gpuR’
* removing ‘/tmp/workdir/gpuR/new/gpuR.Rcheck/gpuR’


```
### CRAN

```
* installing *source* package ‘gpuR’ ...
** this is package ‘gpuR’ version ‘2.0.6’
** package ‘gpuR’ successfully unpacked and MD5 sums checked
** using staged installation
OPENCL_FLAGS not set, using default -DCL_HPP_MINIMUM_OPENCL_VERSION=110 -DCL_USE_DEPRECATED_OPENCL_1_2_APIS  -DCL_HPP_TARGET_OPENCL_VERSION=120
Linux OS
found OpenCL library
Checking OpenCL C++ API
OPENCL_INC not set, using default include directory /usr/include
No OpenCL C++ API found, will use the headers contained in the package
...
/usr/local/lib/R/site-library/RcppEigen/include/Eigen/src/Core/Assign.h:66:28:   required from ‘Derived& Eigen::MatrixBase<Derived>::operator=(const Eigen::DenseBase<OtherDerived>&) [with OtherDerived = Eigen::Matrix<double, -1, 1>; Derived = Eigen::Block<Eigen::Ref<Eigen::Matrix<double, -1, -1>, 0, Eigen::OuterStride<> >, -1, 1, true>]’
../inst/include/gpuR/dynEigenMat.hpp:192:30:   required from ‘void dynEigenMat<T>::setCol(SEXP, int) [with T = double; SEXP = SEXPREC*]’
../inst/include/gpuR/dynEigenMat.hpp:383:16:   required from here
/usr/local/lib/R/site-library/RcppEigen/include/Eigen/src/Core/CoreEvaluators.h:1071:54: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__m128d’} [-Wignored-attributes]
g++ -std=gnu++17 -shared -L/opt/R/4.5.1/lib/R/lib -L/usr/local/lib -o gpuR.so RcppExports.o chol.o context.o custom_math.o device.o gpuEigenPtr.o gpuMatrix_igemm.o norm.o platform.o set_row_order.o solve.o synchronize.o trunc_gpuMat.o utils-vcl.o utils.o vclPtr.o vienna_blas1.o vienna_blas2.o vienna_blas3.o vienna_eigen.o vienna_qr.o vienna_stats.o vienna_svd.o -lOpenCL -L/opt/R/4.5.1/lib/R/lib -lR
/usr/bin/ld: cannot find -lOpenCL: No such file or directory
collect2: error: ld returned 1 exit status
make: *** [/opt/R/4.5.1/lib/R/share/make/shlib.mk:10: gpuR.so] Error 1
ERROR: compilation failed for package ‘gpuR’
* removing ‘/tmp/workdir/gpuR/old/gpuR.Rcheck/gpuR’


```
# loon.shiny (1.0.3)

* Email: <mailto:z267xu@uwaterloo.ca>
* GitHub mirror: <https://github.com/cran/loon.shiny>

Run `revdepcheck::cloud_details(, "loon.shiny")` for more info

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/loon.shiny/new/loon.shiny.Rcheck’
* using R version 4.5.1 (2025-06-13)
* using platform: x86_64-pc-linux-gnu
* R was compiled by
    gcc (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0
    GNU Fortran (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0
* running under: Ubuntu 24.04.3 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘loon.shiny/DESCRIPTION’ ... OK
...
* this is package ‘loon.shiny’ version ‘1.0.3’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'loon', 'loon.ggplot'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/loon.shiny/old/loon.shiny.Rcheck’
* using R version 4.5.1 (2025-06-13)
* using platform: x86_64-pc-linux-gnu
* R was compiled by
    gcc (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0
    GNU Fortran (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0
* running under: Ubuntu 24.04.3 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘loon.shiny/DESCRIPTION’ ... OK
...
* this is package ‘loon.shiny’ version ‘1.0.3’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'loon', 'loon.ggplot'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# loon.tourr (0.1.4)

* GitHub: <https://github.com/z267xu/loon.tourr>
* Email: <mailto:z267xu@gmail.com>
* GitHub mirror: <https://github.com/cran/loon.tourr>

Run `revdepcheck::cloud_details(, "loon.tourr")` for more info

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/loon.tourr/new/loon.tourr.Rcheck’
* using R version 4.5.1 (2025-06-13)
* using platform: x86_64-pc-linux-gnu
* R was compiled by
    gcc (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0
    GNU Fortran (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0
* running under: Ubuntu 24.04.3 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘loon.tourr/DESCRIPTION’ ... OK
...
* this is package ‘loon.tourr’ version ‘0.1.4’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'loon', 'loon.ggplot'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/loon.tourr/old/loon.tourr.Rcheck’
* using R version 4.5.1 (2025-06-13)
* using platform: x86_64-pc-linux-gnu
* R was compiled by
    gcc (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0
    GNU Fortran (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0
* running under: Ubuntu 24.04.3 LTS
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘loon.tourr/DESCRIPTION’ ... OK
...
* this is package ‘loon.tourr’ version ‘0.1.4’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'loon', 'loon.ggplot'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# multinma (0.8.1)

* GitHub: <https://github.com/dmphillippo/multinma>
* Email: <mailto:david.phillippo@bristol.ac.uk>
* GitHub mirror: <https://github.com/cran/multinma>

Run `revdepcheck::cloud_details(, "multinma")` for more info

## In both

*   checking whether package ‘multinma’ can be installed ... ERROR
     ```
     Installation failed.
     See ‘/tmp/workdir/multinma/new/multinma.Rcheck/00install.out’ for details.
     ```

## Installation

### Devel

```
* installing *source* package ‘multinma’ ...
** this is package ‘multinma’ version ‘0.8.1’
** package ‘multinma’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C++ compiler: ‘g++ (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0’
using C++17


g++ -std=gnu++17 -I"/opt/R/4.5.1/lib/R/include" -DNDEBUG -I"../inst/include" -I"/usr/local/lib/R/site-library/StanHeaders/include/src" -DBOOST_DISABLE_ASSERTS -DEIGEN_NO_DEBUG -DBOOST_MATH_OVERFLOW_ERROR_POLICY=errno_on_error -DUSE_STANC3 -D_HAS_AUTO_PTR_ETC=0 -I'/usr/local/lib/R/site-library/BH/include' -I'/usr/local/lib/R/site-library/Rcpp/include' -I'/usr/local/lib/R/site-library/RcppEigen/include' -I'/usr/local/lib/R/site-library/RcppParallel/include' -I'/usr/local/lib/R/site-library/rstan/include' -I'/usr/local/lib/R/site-library/StanHeaders/include' -I/usr/local/include    -I'/usr/local/lib/R/site-library/RcppParallel/include' -D_REENTRANT -DSTAN_THREADS   -fpic  -g -O2   -c RcppExports.cpp -o RcppExports.o
...
/usr/local/lib/R/site-library/StanHeaders/include/src/stan/mcmc/hmc/hamiltonians/dense_e_metric.hpp:22:0:   required from ‘double stan::mcmc::dense_e_metric<Model, BaseRNG>::T(stan::mcmc::dense_e_point&) [with Model = model_survival_param_namespace::model_survival_param; BaseRNG = boost::random::additive_combine_engine<boost::random::linear_congruential_engine<unsigned int, 40014, 0, 2147483563>, boost::random::linear_congruential_engine<unsigned int, 40692, 0, 2147483399> >]’
/usr/local/lib/R/site-library/StanHeaders/include/src/stan/mcmc/hmc/hamiltonians/dense_e_metric.hpp:21:0:   required from here
/usr/local/lib/R/site-library/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:654:74: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__m128d’} [-Wignored-attributes]
  654 |   return internal::first_aligned<int(unpacket_traits<DefaultPacketType>::alignment),Derived>(m);
      |                                                                          ^~~~~~~~~
g++: fatal error: Killed signal terminated program cc1plus
compilation terminated.
make: *** [/opt/R/4.5.1/lib/R/etc/Makeconf:209: stanExports_survival_param.o] Error 1
ERROR: compilation failed for package ‘multinma’
* removing ‘/tmp/workdir/multinma/new/multinma.Rcheck/multinma’


```
### CRAN

```
* installing *source* package ‘multinma’ ...
** this is package ‘multinma’ version ‘0.8.1’
** package ‘multinma’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C++ compiler: ‘g++ (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0’
using C++17


g++ -std=gnu++17 -I"/opt/R/4.5.1/lib/R/include" -DNDEBUG -I"../inst/include" -I"/usr/local/lib/R/site-library/StanHeaders/include/src" -DBOOST_DISABLE_ASSERTS -DEIGEN_NO_DEBUG -DBOOST_MATH_OVERFLOW_ERROR_POLICY=errno_on_error -DUSE_STANC3 -D_HAS_AUTO_PTR_ETC=0 -I'/usr/local/lib/R/site-library/BH/include' -I'/usr/local/lib/R/site-library/Rcpp/include' -I'/usr/local/lib/R/site-library/RcppEigen/include' -I'/usr/local/lib/R/site-library/RcppParallel/include' -I'/usr/local/lib/R/site-library/rstan/include' -I'/usr/local/lib/R/site-library/StanHeaders/include' -I/usr/local/include    -I'/usr/local/lib/R/site-library/RcppParallel/include' -D_REENTRANT -DSTAN_THREADS   -fpic  -g -O2   -c RcppExports.cpp -o RcppExports.o
...
/usr/local/lib/R/site-library/StanHeaders/include/src/stan/mcmc/hmc/hamiltonians/dense_e_metric.hpp:22:0:   required from ‘double stan::mcmc::dense_e_metric<Model, BaseRNG>::T(stan::mcmc::dense_e_point&) [with Model = model_survival_param_namespace::model_survival_param; BaseRNG = boost::random::additive_combine_engine<boost::random::linear_congruential_engine<unsigned int, 40014, 0, 2147483563>, boost::random::linear_congruential_engine<unsigned int, 40692, 0, 2147483399> >]’
/usr/local/lib/R/site-library/StanHeaders/include/src/stan/mcmc/hmc/hamiltonians/dense_e_metric.hpp:21:0:   required from here
/usr/local/lib/R/site-library/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:654:74: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__m128d’} [-Wignored-attributes]
  654 |   return internal::first_aligned<int(unpacket_traits<DefaultPacketType>::alignment),Derived>(m);
      |                                                                          ^~~~~~~~~
g++: fatal error: Killed signal terminated program cc1plus
compilation terminated.
make: *** [/opt/R/4.5.1/lib/R/etc/Makeconf:209: stanExports_survival_param.o] Error 1
ERROR: compilation failed for package ‘multinma’
* removing ‘/tmp/workdir/multinma/old/multinma.Rcheck/multinma’


```
# rstanarm (2.32.2)

* GitHub: <https://github.com/stan-dev/rstanarm>
* Email: <mailto:benjamin.goodrich@columbia.edu>
* GitHub mirror: <https://github.com/cran/rstanarm>

Run `revdepcheck::cloud_details(, "rstanarm")` for more info

## In both

*   checking whether package ‘rstanarm’ can be installed ... ERROR
     ```
     Installation failed.
     See ‘/tmp/workdir/rstanarm/new/rstanarm.Rcheck/00install.out’ for details.
     ```

## Installation

### Devel

```
* installing *source* package ‘rstanarm’ ...
** this is package ‘rstanarm’ version ‘2.32.2’
** package ‘rstanarm’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C++ compiler: ‘g++ (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0’
using C++17


g++ -std=gnu++17 -I"/opt/R/4.5.1/lib/R/include" -DNDEBUG -I"../inst/include" -I"/usr/local/lib/R/site-library/StanHeaders/include/src" -DBOOST_DISABLE_ASSERTS -DEIGEN_NO_DEBUG -DBOOST_MATH_OVERFLOW_ERROR_POLICY=errno_on_error -DUSE_STANC3 -D_HAS_AUTO_PTR_ETC=0 -I'/usr/local/lib/R/site-library/StanHeaders/include' -I'/usr/local/lib/R/site-library/rstan/include' -I'/usr/local/lib/R/site-library/BH/include' -I'/usr/local/lib/R/site-library/Rcpp/include' -I'/usr/local/lib/R/site-library/RcppEigen/include' -I'/usr/local/lib/R/site-library/RcppParallel/include' -I/usr/local/include    -I'/usr/local/lib/R/site-library/RcppParallel/include' -D_REENTRANT -DSTAN_THREADS   -fpic  -g -O2   -c init.cpp -o init.o
...
/usr/local/lib/R/site-library/StanHeaders/include/stan/math/rev/fun/quad_form.hpp:91:0:   required from ‘void stan::math::internal::quad_form_vari<Ta, Ra, Ca, Tb, Rb, Cb>::chain() [with Ta = double; int Ra = -1; int Ca = -1; Tb = stan::math::var_value<double>; int Rb = -1; int Cb = 1]’
/usr/local/lib/R/site-library/StanHeaders/include/stan/math/rev/fun/quad_form.hpp:88:0:   required from here
/usr/local/lib/R/site-library/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:654:74: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__m128d’} [-Wignored-attributes]
  654 |   return internal::first_aligned<int(unpacket_traits<DefaultPacketType>::alignment),Derived>(m);
      |                                                                          ^~~~~~~~~
g++: fatal error: Killed signal terminated program cc1plus
compilation terminated.
make: *** [/opt/R/4.5.1/lib/R/etc/Makeconf:209: stanExports_continuous.o] Error 1
ERROR: compilation failed for package ‘rstanarm’
* removing ‘/tmp/workdir/rstanarm/new/rstanarm.Rcheck/rstanarm’


```
### CRAN

```
* installing *source* package ‘rstanarm’ ...
** this is package ‘rstanarm’ version ‘2.32.2’
** package ‘rstanarm’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C++ compiler: ‘g++ (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0’
using C++17


g++ -std=gnu++17 -I"/opt/R/4.5.1/lib/R/include" -DNDEBUG -I"../inst/include" -I"/usr/local/lib/R/site-library/StanHeaders/include/src" -DBOOST_DISABLE_ASSERTS -DEIGEN_NO_DEBUG -DBOOST_MATH_OVERFLOW_ERROR_POLICY=errno_on_error -DUSE_STANC3 -D_HAS_AUTO_PTR_ETC=0 -I'/usr/local/lib/R/site-library/StanHeaders/include' -I'/usr/local/lib/R/site-library/rstan/include' -I'/usr/local/lib/R/site-library/BH/include' -I'/usr/local/lib/R/site-library/Rcpp/include' -I'/usr/local/lib/R/site-library/RcppEigen/include' -I'/usr/local/lib/R/site-library/RcppParallel/include' -I/usr/local/include    -I'/usr/local/lib/R/site-library/RcppParallel/include' -D_REENTRANT -DSTAN_THREADS   -fpic  -g -O2   -c init.cpp -o init.o
...
/usr/local/lib/R/site-library/StanHeaders/include/stan/math/rev/fun/quad_form.hpp:91:0:   required from ‘void stan::math::internal::quad_form_vari<Ta, Ra, Ca, Tb, Rb, Cb>::chain() [with Ta = double; int Ra = -1; int Ca = -1; Tb = stan::math::var_value<double>; int Rb = -1; int Cb = 1]’
/usr/local/lib/R/site-library/StanHeaders/include/stan/math/rev/fun/quad_form.hpp:88:0:   required from here
/usr/local/lib/R/site-library/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:654:74: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__m128d’} [-Wignored-attributes]
  654 |   return internal::first_aligned<int(unpacket_traits<DefaultPacketType>::alignment),Derived>(m);
      |                                                                          ^~~~~~~~~
g++: fatal error: Killed signal terminated program cc1plus
compilation terminated.
make: *** [/opt/R/4.5.1/lib/R/etc/Makeconf:209: stanExports_continuous.o] Error 1
ERROR: compilation failed for package ‘rstanarm’
* removing ‘/tmp/workdir/rstanarm/old/rstanarm.Rcheck/rstanarm’


```
# SQLFormatteR (0.0.2)

* GitHub: <https://github.com/dataupsurge/SQLFormatteR>
* Email: <mailto:morgan@dataupsurge.com>
* GitHub mirror: <https://github.com/cran/SQLFormatteR>

Run `revdepcheck::cloud_details(, "SQLFormatteR")` for more info

## In both

*   checking whether package ‘SQLFormatteR’ can be installed ... ERROR
     ```
     Installation failed.
     See ‘/tmp/workdir/SQLFormatteR/new/SQLFormatteR.Rcheck/00install.out’ for details.
     ```

## Installation

### Devel

```
* installing *source* package ‘SQLFormatteR’ ...
** this is package ‘SQLFormatteR’ version ‘0.0.2’
** package ‘SQLFormatteR’ successfully unpacked and MD5 sums checked
** using staged installation
Error in eval(ei, envir) : 
------------------ [UNSUPPORTED RUST VERSION]------------------
- Minimum supported Rust version is 1.78.0.
- Installed Rust version is 1.75.0.
---------------------------------------------------------------
Calls: source -> withVisible -> eval -> eval
Execution halted
ERROR: configuration failed for package ‘SQLFormatteR’
* removing ‘/tmp/workdir/SQLFormatteR/new/SQLFormatteR.Rcheck/SQLFormatteR’


```
### CRAN

```
* installing *source* package ‘SQLFormatteR’ ...
** this is package ‘SQLFormatteR’ version ‘0.0.2’
** package ‘SQLFormatteR’ successfully unpacked and MD5 sums checked
** using staged installation
Error in eval(ei, envir) : 
------------------ [UNSUPPORTED RUST VERSION]------------------
- Minimum supported Rust version is 1.78.0.
- Installed Rust version is 1.75.0.
---------------------------------------------------------------
Calls: source -> withVisible -> eval -> eval
Execution halted
ERROR: configuration failed for package ‘SQLFormatteR’
* removing ‘/tmp/workdir/SQLFormatteR/old/SQLFormatteR.Rcheck/SQLFormatteR’


```
# string2path (0.2.2)

* GitHub: <https://github.com/yutannihilation/string2path>
* Email: <mailto:yutani.ini@gmail.com>
* GitHub mirror: <https://github.com/cran/string2path>

Run `revdepcheck::cloud_details(, "string2path")` for more info

## In both

*   checking whether package ‘string2path’ can be installed ... ERROR
     ```
     Installation failed.
     See ‘/tmp/workdir/string2path/new/string2path.Rcheck/00install.out’ for details.
     ```

## Installation

### Devel

```
* installing *source* package ‘string2path’ ...
** this is package ‘string2path’ version ‘0.2.2’
** package ‘string2path’ successfully unpacked and MD5 sums checked
** using staged installation
*** Checking if cargo is installed
*** Checking if cargo is newer than the required version

-------------- ERROR: CONFIGURATION FAILED --------------------

[cargo check result]
The installed version of cargo (1.75.0) is older than the requirement (1.78.0)

Please refer to <https://www.rust-lang.org/tools/install> to install Rust.

---------------------------------------------------------------

ERROR: configuration failed for package ‘string2path’
* removing ‘/tmp/workdir/string2path/new/string2path.Rcheck/string2path’


```
### CRAN

```
* installing *source* package ‘string2path’ ...
** this is package ‘string2path’ version ‘0.2.2’
** package ‘string2path’ successfully unpacked and MD5 sums checked
** using staged installation
*** Checking if cargo is installed
*** Checking if cargo is newer than the required version

-------------- ERROR: CONFIGURATION FAILED --------------------

[cargo check result]
The installed version of cargo (1.75.0) is older than the requirement (1.78.0)

Please refer to <https://www.rust-lang.org/tools/install> to install Rust.

---------------------------------------------------------------

ERROR: configuration failed for package ‘string2path’
* removing ‘/tmp/workdir/string2path/old/string2path.Rcheck/string2path’


```
# tok (0.2.1)

* GitHub: <https://github.com/mlverse/tok>
* Email: <mailto:daniel@posit.co>
* GitHub mirror: <https://github.com/cran/tok>

Run `revdepcheck::cloud_details(, "tok")` for more info

## In both

*   checking whether package ‘tok’ can be installed ... ERROR
     ```
     Installation failed.
     See ‘/tmp/workdir/tok/new/tok.Rcheck/00install.out’ for details.
     ```

## Installation

### Devel

```
* installing *source* package ‘tok’ ...
** this is package ‘tok’ version ‘0.2.1’
** package ‘tok’ successfully unpacked and MD5 sums checked
** using staged installation
Using cargo 1.75.0
Using rustc 1.75.0 (82e1608df 2023-12-21) (built from a source tarball)
Building for CRAN.
Writing `src/Makevars`.
`tools/config.R` has finished.
** libs
...
export CARGO_HOME=/tmp/workdir/tok/new/tok.Rcheck/00_pkg_src/tok/src/.cargo && \
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/root/.cargo/bin" && \
RUSTFLAGS=" --print=native-static-libs" cargo build -j 2 --offline --lib --release --manifest-path=./rust/Cargo.toml --target-dir ./rust/target 
error: package `rayon v1.11.0` cannot be built because it requires rustc 1.80 or newer, while the currently active rustc version is 1.75.0
Either upgrade to rustc 1.80 or newer, or use
cargo update rayon@1.11.0 --precise ver
where `ver` is the latest version of `rayon` supporting rustc 1.75.0
make: *** [Makevars:26: rust/target/release/libtok.a] Error 101
ERROR: compilation failed for package ‘tok’
* removing ‘/tmp/workdir/tok/new/tok.Rcheck/tok’


```
### CRAN

```
* installing *source* package ‘tok’ ...
** this is package ‘tok’ version ‘0.2.1’
** package ‘tok’ successfully unpacked and MD5 sums checked
** using staged installation
Using cargo 1.75.0
Using rustc 1.75.0 (82e1608df 2023-12-21) (built from a source tarball)
Building for CRAN.
Writing `src/Makevars`.
`tools/config.R` has finished.
** libs
...
export CARGO_HOME=/tmp/workdir/tok/old/tok.Rcheck/00_pkg_src/tok/src/.cargo && \
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/root/.cargo/bin" && \
RUSTFLAGS=" --print=native-static-libs" cargo build -j 2 --offline --lib --release --manifest-path=./rust/Cargo.toml --target-dir ./rust/target 
error: package `rayon-core v1.13.0` cannot be built because it requires rustc 1.80 or newer, while the currently active rustc version is 1.75.0
Either upgrade to rustc 1.80 or newer, or use
cargo update rayon-core@1.13.0 --precise ver
where `ver` is the latest version of `rayon-core` supporting rustc 1.75.0
make: *** [Makevars:26: rust/target/release/libtok.a] Error 101
ERROR: compilation failed for package ‘tok’
* removing ‘/tmp/workdir/tok/old/tok.Rcheck/tok’


```
# tricolore (1.2.4)

* GitHub: <https://github.com/jschoeley/tricolore>
* Email: <mailto:jschoeley@gmail.com>
* GitHub mirror: <https://github.com/cran/tricolore>

Run `revdepcheck::cloud_details(, "tricolore")` for more info

## In both

*   checking whether package ‘tricolore’ can be installed ... ERROR
     ```
     Installation failed.
     See ‘/tmp/workdir/tricolore/new/tricolore.Rcheck/00install.out’ for details.
     ```

## Installation

### Devel

```
* installing *source* package ‘tricolore’ ...
** this is package ‘tricolore’ version ‘1.2.4’
** package ‘tricolore’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error: .onLoad failed in loadNamespace() for 'ggtern', details:
  call: NULL
  error: <ggplot2::element_line> object properties are invalid:
- @lineend must be <character> or <NULL>, not S3<arrow>
Execution halted
ERROR: lazy loading failed for package ‘tricolore’
* removing ‘/tmp/workdir/tricolore/new/tricolore.Rcheck/tricolore’


```
### CRAN

```
* installing *source* package ‘tricolore’ ...
** this is package ‘tricolore’ version ‘1.2.4’
** package ‘tricolore’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error: .onLoad failed in loadNamespace() for 'ggtern', details:
  call: NULL
  error: <ggplot2::element_line> object properties are invalid:
- @lineend must be <character> or <NULL>, not S3<arrow>
Execution halted
ERROR: lazy loading failed for package ‘tricolore’
* removing ‘/tmp/workdir/tricolore/old/tricolore.Rcheck/tricolore’


```
# TriDimRegression (1.0.3)

* GitHub: <https://github.com/alexander-pastukhov/tridim-regression>
* Email: <mailto:pastukhov.alexander@gmail.com>
* GitHub mirror: <https://github.com/cran/TriDimRegression>

Run `revdepcheck::cloud_details(, "TriDimRegression")` for more info

## In both

*   checking whether package ‘TriDimRegression’ can be installed ... ERROR
     ```
     Installation failed.
     See ‘/tmp/workdir/TriDimRegression/new/TriDimRegression.Rcheck/00install.out’ for details.
     ```

## Installation

### Devel

```
* installing *source* package ‘TriDimRegression’ ...
** this is package ‘TriDimRegression’ version ‘1.0.3’
** package ‘TriDimRegression’ successfully unpacked and MD5 sums checked
** using staged installation
Error in loadNamespace(x) : there is no package called ‘rstantools’
Calls: loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: configuration failed for package ‘TriDimRegression’
* removing ‘/tmp/workdir/TriDimRegression/new/TriDimRegression.Rcheck/TriDimRegression’


```
### CRAN

```
* installing *source* package ‘TriDimRegression’ ...
** this is package ‘TriDimRegression’ version ‘1.0.3’
** package ‘TriDimRegression’ successfully unpacked and MD5 sums checked
** using staged installation
Error in loadNamespace(x) : there is no package called ‘rstantools’
Calls: loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: configuration failed for package ‘TriDimRegression’
* removing ‘/tmp/workdir/TriDimRegression/old/TriDimRegression.Rcheck/TriDimRegression’


```
# xactonomial (1.2.0)

* GitHub: <https://github.com/sachsmc/xactonomial>
* Email: <mailto:sachsmc@gmail.com>
* GitHub mirror: <https://github.com/cran/xactonomial>

Run `revdepcheck::cloud_details(, "xactonomial")` for more info

## In both

*   checking whether package ‘xactonomial’ can be installed ... ERROR
     ```
     Installation failed.
     See ‘/tmp/workdir/xactonomial/new/xactonomial.Rcheck/00install.out’ for details.
     ```

## Installation

### Devel

```
* installing *source* package ‘xactonomial’ ...
** this is package ‘xactonomial’ version ‘1.2.0’
** package ‘xactonomial’ successfully unpacked and MD5 sums checked
** using staged installation
Using cargo 1.75.0
Using rustc 1.75.0 (82e1608df 2023-12-21) (built from a source tarball)
Building for CRAN.
Writing `src/Makevars`.
`tools/config.R` has finished.
** libs
...
106 |         [::std::mem::offset_of!(R_CallMethodDef, numArgs) - 16usize];
    |          ^^^^^^^^^^^^^^^^^^^^^
    |
    = note: see issue #106655 <https://github.com/rust-lang/rust/issues/106655> for more information

For more information about this error, try `rustc --explain E0658`.
error: could not compile `xactonomial` (lib) due to 7 previous errors
make: *** [Makevars:28: rust/target/release/libxactonomial.a] Error 101
ERROR: compilation failed for package ‘xactonomial’
* removing ‘/tmp/workdir/xactonomial/new/xactonomial.Rcheck/xactonomial’


```
### CRAN

```
* installing *source* package ‘xactonomial’ ...
** this is package ‘xactonomial’ version ‘1.2.0’
** package ‘xactonomial’ successfully unpacked and MD5 sums checked
** using staged installation
Using cargo 1.75.0
Using rustc 1.75.0 (82e1608df 2023-12-21) (built from a source tarball)
Building for CRAN.
Writing `src/Makevars`.
`tools/config.R` has finished.
** libs
...
106 |         [::std::mem::offset_of!(R_CallMethodDef, numArgs) - 16usize];
    |          ^^^^^^^^^^^^^^^^^^^^^
    |
    = note: see issue #106655 <https://github.com/rust-lang/rust/issues/106655> for more information

For more information about this error, try `rustc --explain E0658`.
error: could not compile `xactonomial` (lib) due to 7 previous errors
make: *** [Makevars:28: rust/target/release/libxactonomial.a] Error 101
ERROR: compilation failed for package ‘xactonomial’
* removing ‘/tmp/workdir/xactonomial/old/xactonomial.Rcheck/xactonomial’


```
