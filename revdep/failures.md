# bayesGAM

<details>

* Version: 0.0.1
* GitHub: NA
* Source code: https://github.com/cran/bayesGAM
* Date/Publication: 2020-11-18 10:20:06 UTC
* Number of recursive dependencies: 84

Run `cloud_details(, "bayesGAM")` for more info

</details>

## In both

*   checking whether package ‘bayesGAM’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/bayesGAM/new/bayesGAM.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘bayesGAM’ ...
** package ‘bayesGAM’ successfully unpacked and MD5 sums checked
** using staged installation
** libs


g++ -std=gnu++14 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -I"../inst/include" -I"/opt/R/4.0.3/lib/R/site-library/StanHeaders/include/src" -DBOOST_DISABLE_ASSERTS -DEIGEN_NO_DEBUG -DBOOST_MATH_OVERFLOW_ERROR_POLICY=errno_on_error -I'/opt/R/4.0.3/lib/R/site-library/BH/include' -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppEigen/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppParallel/include' -I'/opt/R/4.0.3/lib/R/site-library/rstan/include' -I'/opt/R/4.0.3/lib/R/site-library/StanHeaders/include' -I/usr/local/include   -I'/opt/R/4.0.3/lib/R/site-library/RcppParallel/include' -D_REENTRANT -DSTAN_THREADS   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
In file included from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/Core:397,
                 from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/Dense:1,
                 from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/RcppEigenForward.h:30,
...
/opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/src/Core/ProductEvaluators.h:35:90:   required from ‘Eigen::internal::evaluator<Eigen::Product<Lhs, Rhs, Option> >::evaluator(const XprType&) [with Lhs = Eigen::Product<Eigen::CwiseBinaryOp<Eigen::internal::scalar_product_op<double, double>, const Eigen::CwiseNullaryOp<Eigen::internal::scalar_constant_op<double>, const Eigen::Matrix<double, 1, -1> >, const Eigen::Transpose<Eigen::Matrix<double, -1, 1> > >, Eigen::Matrix<double, -1, -1>, 0>; Rhs = Eigen::Matrix<double, -1, 1>; int Options = 0; Eigen::internal::evaluator<Eigen::Product<Lhs, Rhs, Option> >::XprType = Eigen::Product<Eigen::Product<Eigen::CwiseBinaryOp<Eigen::internal::scalar_product_op<double, double>, const Eigen::CwiseNullaryOp<Eigen::internal::scalar_constant_op<double>, const Eigen::Matrix<double, 1, -1> >, const Eigen::Transpose<Eigen::Matrix<double, -1, 1> > >, Eigen::Matrix<double, -1, -1>, 0>, Eigen::Matrix<double, -1, 1>, 0>]’
/opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/src/Core/Product.h:132:22:   required from ‘Eigen::internal::dense_product_base<Lhs, Rhs, Option, 6>::operator const Scalar() const [with Lhs = Eigen::Product<Eigen::CwiseBinaryOp<Eigen::internal::scalar_product_op<double, double>, const Eigen::CwiseNullaryOp<Eigen::internal::scalar_constant_op<double>, const Eigen::Matrix<double, 1, -1> >, const Eigen::Transpose<Eigen::Matrix<double, -1, 1> > >, Eigen::Matrix<double, -1, -1>, 0>; Rhs = Eigen::Matrix<double, -1, 1>; int Option = 0; Eigen::internal::dense_product_base<Lhs, Rhs, Option, 6>::Scalar = double]’
/opt/R/4.0.3/lib/R/site-library/StanHeaders/include/src/stan/mcmc/hmc/hamiltonians/dense_e_metric.hpp:23:56:   required from ‘double stan::mcmc::dense_e_metric<Model, BaseRNG>::T(stan::mcmc::dense_e_point&) [with Model = model_glmm_discrete_namespace::model_glmm_discrete; BaseRNG = boost::random::additive_combine_engine<boost::random::linear_congruential_engine<unsigned int, 40014, 0, 2147483563>, boost::random::linear_congruential_engine<unsigned int, 40692, 0, 2147483399> >]’
/opt/R/4.0.3/lib/R/site-library/StanHeaders/include/src/stan/mcmc/hmc/hamiltonians/dense_e_metric.hpp:22:10:   required from here
/opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:55:30: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__vector(2) double’} [-Wignored-attributes]
g++: fatal error: Killed signal terminated program cc1plus
compilation terminated.
make: *** [/opt/R/4.0.3/lib/R/etc/Makeconf:179: stanExports_glmm_discrete.o] Error 1
ERROR: compilation failed for package ‘bayesGAM’
* removing ‘/tmp/workdir/bayesGAM/new/bayesGAM.Rcheck/bayesGAM’


```
### CRAN

```
* installing *source* package ‘bayesGAM’ ...
** package ‘bayesGAM’ successfully unpacked and MD5 sums checked
** using staged installation
** libs


g++ -std=gnu++14 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -I"../inst/include" -I"/opt/R/4.0.3/lib/R/site-library/StanHeaders/include/src" -DBOOST_DISABLE_ASSERTS -DEIGEN_NO_DEBUG -DBOOST_MATH_OVERFLOW_ERROR_POLICY=errno_on_error -I'/opt/R/4.0.3/lib/R/site-library/BH/include' -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppEigen/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppParallel/include' -I'/opt/R/4.0.3/lib/R/site-library/rstan/include' -I'/opt/R/4.0.3/lib/R/site-library/StanHeaders/include' -I/usr/local/include   -I'/opt/R/4.0.3/lib/R/site-library/RcppParallel/include' -D_REENTRANT -DSTAN_THREADS   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
In file included from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/Core:397,
                 from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/Dense:1,
                 from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/RcppEigenForward.h:30,
...
/opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/src/Core/ProductEvaluators.h:35:90:   required from ‘Eigen::internal::evaluator<Eigen::Product<Lhs, Rhs, Option> >::evaluator(const XprType&) [with Lhs = Eigen::Product<Eigen::CwiseBinaryOp<Eigen::internal::scalar_product_op<double, double>, const Eigen::CwiseNullaryOp<Eigen::internal::scalar_constant_op<double>, const Eigen::Matrix<double, 1, -1> >, const Eigen::Transpose<Eigen::Matrix<double, -1, 1> > >, Eigen::Matrix<double, -1, -1>, 0>; Rhs = Eigen::Matrix<double, -1, 1>; int Options = 0; Eigen::internal::evaluator<Eigen::Product<Lhs, Rhs, Option> >::XprType = Eigen::Product<Eigen::Product<Eigen::CwiseBinaryOp<Eigen::internal::scalar_product_op<double, double>, const Eigen::CwiseNullaryOp<Eigen::internal::scalar_constant_op<double>, const Eigen::Matrix<double, 1, -1> >, const Eigen::Transpose<Eigen::Matrix<double, -1, 1> > >, Eigen::Matrix<double, -1, -1>, 0>, Eigen::Matrix<double, -1, 1>, 0>]’
/opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/src/Core/Product.h:132:22:   required from ‘Eigen::internal::dense_product_base<Lhs, Rhs, Option, 6>::operator const Scalar() const [with Lhs = Eigen::Product<Eigen::CwiseBinaryOp<Eigen::internal::scalar_product_op<double, double>, const Eigen::CwiseNullaryOp<Eigen::internal::scalar_constant_op<double>, const Eigen::Matrix<double, 1, -1> >, const Eigen::Transpose<Eigen::Matrix<double, -1, 1> > >, Eigen::Matrix<double, -1, -1>, 0>; Rhs = Eigen::Matrix<double, -1, 1>; int Option = 0; Eigen::internal::dense_product_base<Lhs, Rhs, Option, 6>::Scalar = double]’
/opt/R/4.0.3/lib/R/site-library/StanHeaders/include/src/stan/mcmc/hmc/hamiltonians/dense_e_metric.hpp:23:56:   required from ‘double stan::mcmc::dense_e_metric<Model, BaseRNG>::T(stan::mcmc::dense_e_point&) [with Model = model_glmm_discrete_namespace::model_glmm_discrete; BaseRNG = boost::random::additive_combine_engine<boost::random::linear_congruential_engine<unsigned int, 40014, 0, 2147483563>, boost::random::linear_congruential_engine<unsigned int, 40692, 0, 2147483399> >]’
/opt/R/4.0.3/lib/R/site-library/StanHeaders/include/src/stan/mcmc/hmc/hamiltonians/dense_e_metric.hpp:22:10:   required from here
/opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:55:30: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__vector(2) double’} [-Wignored-attributes]
g++: fatal error: Killed signal terminated program cc1plus
compilation terminated.
make: *** [/opt/R/4.0.3/lib/R/etc/Makeconf:179: stanExports_glmm_discrete.o] Error 1
ERROR: compilation failed for package ‘bayesGAM’
* removing ‘/tmp/workdir/bayesGAM/old/bayesGAM.Rcheck/bayesGAM’


```
# ctsem

<details>

* Version: 3.5.4
* GitHub: https://github.com/cdriveraus/ctsem
* Source code: https://github.com/cran/ctsem
* Date/Publication: 2021-07-23 16:40:02 UTC
* Number of recursive dependencies: 124

Run `cloud_details(, "ctsem")` for more info

</details>

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
** package ‘ctsem’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
"/opt/R/4.0.3/lib/R/bin/Rscript" -e "source(file.path('..', 'tools', 'make_cc.R')); make_cc(commandArgs(TRUE))" stan_files/ctsm.stan
DIAGNOSTIC(S) FROM PARSER:
Info: integer division implicitly rounds to integer. Found int division: d * d - d / 2
 Positive values rounded down, negative values rounded up or down in platform-dependent way.

Wrote C++ file "stan_files/ctsm.cc"
...
/opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/src/Core/Matrix.h:377:29:   required from ‘Eigen::Matrix<_Scalar, _Rows, _Cols, _Options, _MaxRows, _MaxCols>::Matrix(const Eigen::EigenBase<OtherDerived>&) [with OtherDerived = Eigen::Solve<Eigen::ColPivHouseholderQR<Eigen::Matrix<double, -1, -1, 1, -1, -1> >, Eigen::CwiseUnaryView<Eigen::MatrixBase<Eigen::Map<Eigen::Matrix<stan::math::vari*, -1, -1> > >::adj_Op, Eigen::Map<Eigen::Matrix<stan::math::vari*, -1, -1> > > >; _Scalar = double; int _Rows = -1; int _Cols = -1; int _Options = 0; int _MaxRows = -1; int _MaxCols = -1]’
/opt/R/4.0.3/lib/R/site-library/StanHeaders/include/stan/math/rev/mat/fun/mdivide_left.hpp:63:14:   required from ‘void stan::math::internal::mdivide_left_vv_vari<R1, C1, R2, C2>::chain() [with int R1 = -1; int C1 = -1; int R2 = -1; int C2 = 1]’
/opt/R/4.0.3/lib/R/site-library/StanHeaders/include/stan/math/rev/mat/fun/mdivide_left.hpp:61:16:   required from here
/opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/src/Core/CoreEvaluators.h:960:8: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__vector(2) double’} [-Wignored-attributes]
g++: fatal error: Killed signal terminated program cc1plus
compilation terminated.
make: *** [/opt/R/4.0.3/lib/R/etc/Makeconf:179: stan_files/ctsm.o] Error 1
rm stan_files/ctsm.cc
ERROR: compilation failed for package ‘ctsem’
* removing ‘/tmp/workdir/ctsem/new/ctsem.Rcheck/ctsem’


```
### CRAN

```
* installing *source* package ‘ctsem’ ...
** package ‘ctsem’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
"/opt/R/4.0.3/lib/R/bin/Rscript" -e "source(file.path('..', 'tools', 'make_cc.R')); make_cc(commandArgs(TRUE))" stan_files/ctsm.stan
DIAGNOSTIC(S) FROM PARSER:
Info: integer division implicitly rounds to integer. Found int division: d * d - d / 2
 Positive values rounded down, negative values rounded up or down in platform-dependent way.

Wrote C++ file "stan_files/ctsm.cc"
...
/opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/src/Core/Matrix.h:377:29:   required from ‘Eigen::Matrix<_Scalar, _Rows, _Cols, _Options, _MaxRows, _MaxCols>::Matrix(const Eigen::EigenBase<OtherDerived>&) [with OtherDerived = Eigen::Solve<Eigen::ColPivHouseholderQR<Eigen::Matrix<double, -1, -1, 1, -1, -1> >, Eigen::CwiseUnaryView<Eigen::MatrixBase<Eigen::Map<Eigen::Matrix<stan::math::vari*, -1, -1> > >::adj_Op, Eigen::Map<Eigen::Matrix<stan::math::vari*, -1, -1> > > >; _Scalar = double; int _Rows = -1; int _Cols = -1; int _Options = 0; int _MaxRows = -1; int _MaxCols = -1]’
/opt/R/4.0.3/lib/R/site-library/StanHeaders/include/stan/math/rev/mat/fun/mdivide_left.hpp:63:14:   required from ‘void stan::math::internal::mdivide_left_vv_vari<R1, C1, R2, C2>::chain() [with int R1 = -1; int C1 = -1; int R2 = -1; int C2 = 1]’
/opt/R/4.0.3/lib/R/site-library/StanHeaders/include/stan/math/rev/mat/fun/mdivide_left.hpp:61:16:   required from here
/opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/src/Core/CoreEvaluators.h:960:8: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__vector(2) double’} [-Wignored-attributes]
g++: fatal error: Killed signal terminated program cc1plus
compilation terminated.
make: *** [/opt/R/4.0.3/lib/R/etc/Makeconf:179: stan_files/ctsm.o] Error 1
rm stan_files/ctsm.cc
ERROR: compilation failed for package ‘ctsem’
* removing ‘/tmp/workdir/ctsem/old/ctsem.Rcheck/ctsem’


```
# gpboost

<details>

* Version: 0.6.7
* GitHub: https://github.com/fabsig/GPBoost
* Source code: https://github.com/cran/gpboost
* Date/Publication: 2021-08-17 16:20:10 UTC
* Number of recursive dependencies: 35

Run `cloud_details(, "gpboost")` for more info

</details>

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
** package ‘gpboost’ successfully unpacked and MD5 sums checked
** using staged installation
checking location of R... /opt/R/4.0.3/lib/R
checking whether MM_PREFETCH works... yes
checking whether MM_MALLOC works... yes
configure: creating ./config.status
config.status: creating src/Makevars
** libs
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -I./include -DEIGEN_MPL2_ONLY -DMM_PREFETCH=1 -DMM_MALLOC=1 -DUSE_SOCKET -DLGB_R_BUILD  -I/usr/local/include  -fopenmp -pthread -fpic  -g -O2  -c boosting/boosting.cpp -o boosting/boosting.o
...
./include/Eigen/src/Core/PlainObjectBase.h:787:32:   required from ‘Derived& Eigen::PlainObjectBase<Derived>::_set(const Eigen::DenseBase<OtherDerived>&) [with OtherDerived = Eigen::Product<Eigen::Product<Eigen::SparseMatrix<double>, Eigen::Matrix<double, -1, -1>, 0>, Eigen::Transpose<const Eigen::SparseMatrix<double> >, 0>; Derived = Eigen::Matrix<double, -1, -1>]’
./include/Eigen/src/Core/Matrix.h:225:24:   required from ‘Eigen::Matrix<_Scalar, _Rows, _Cols, _Options, _MaxRows, _MaxCols>& Eigen::Matrix<_Scalar, _Rows, _Cols, _Options, _MaxRows, _MaxCols>::operator=(const Eigen::DenseBase<OtherDerived>&) [with OtherDerived = Eigen::Product<Eigen::Product<Eigen::SparseMatrix<double>, Eigen::Matrix<double, -1, -1>, 0>, Eigen::Transpose<const Eigen::SparseMatrix<double> >, 0>; _Scalar = double; int _Rows = -1; int _Cols = -1; int _Options = 0; int _MaxRows = -1; int _MaxCols = -1]’
./include/GPBoost/re_comp.h:977:22:   required from ‘std::shared_ptr<_Tp> GPBoost::RECompGP<T_mat>::GetZSigmaZtGrad(int, bool, double) const [with T_mat = Eigen::Matrix<double, -1, -1>]’
./include/GPBoost/re_comp.h:950:26:   required from here
./include/Eigen/src/SparseCore/SparseMatrixBase.h:47:30: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__vector(2) double’} [-Wignored-attributes]
g++: fatal error: Killed signal terminated program cc1plus
compilation terminated.
make: *** [/opt/R/4.0.3/lib/R/etc/Makeconf:181: re_model.o] Error 1
ERROR: compilation failed for package ‘gpboost’
* removing ‘/tmp/workdir/gpboost/new/gpboost.Rcheck/gpboost’


```
### CRAN

```
* installing *source* package ‘gpboost’ ...
** package ‘gpboost’ successfully unpacked and MD5 sums checked
** using staged installation
checking location of R... /opt/R/4.0.3/lib/R
checking whether MM_PREFETCH works... yes
checking whether MM_MALLOC works... yes
configure: creating ./config.status
config.status: creating src/Makevars
** libs
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -I./include -DEIGEN_MPL2_ONLY -DMM_PREFETCH=1 -DMM_MALLOC=1 -DUSE_SOCKET -DLGB_R_BUILD  -I/usr/local/include  -fopenmp -pthread -fpic  -g -O2  -c boosting/boosting.cpp -o boosting/boosting.o
...
./include/GPBoost/re_comp.h:977:22:   required from ‘std::shared_ptr<_Tp> GPBoost::RECompGP<T_mat>::GetZSigmaZtGrad(int, bool, double) const [with T_mat = Eigen::Matrix<double, -1, -1>]’
./include/GPBoost/re_comp.h:950:26:   required from here
./include/Eigen/src/SparseCore/SparseMatrixBase.h:47:30: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__vector(2) double’} [-Wignored-attributes]
re_model.cpp:745:1: fatal error: error writing to /tmp/cccMKpKg.s: Cannot allocate memory
  745 | }  // namespace GPBoost
      | ^
compilation terminated.
make: *** [/opt/R/4.0.3/lib/R/etc/Makeconf:181: re_model.o] Error 1
ERROR: compilation failed for package ‘gpboost’
* removing ‘/tmp/workdir/gpboost/old/gpboost.Rcheck/gpboost’


```
# mlr3pipelines

<details>

* Version: 0.3.6
* GitHub: https://github.com/mlr-org/mlr3pipelines
* Source code: https://github.com/cran/mlr3pipelines
* Date/Publication: 2021-09-07 17:30:02 UTC
* Number of recursive dependencies: 168

Run `cloud_details(, "mlr3pipelines")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/mlr3pipelines/new/mlr3pipelines.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘mlr3pipelines/DESCRIPTION’ ... OK
* this is package ‘mlr3pipelines’ version ‘0.3.6’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... NOTE
...
* checking Rd \usage sections ... OK
* checking Rd contents ... OK
* checking for unstated dependencies in examples ... OK
* checking installed files from ‘inst/doc’ ... OK
* checking examples ... OK
* checking for unstated dependencies in ‘tests’ ... OK
* checking tests ... OK
  Running ‘testthat.R’
* DONE
Status: 2 NOTEs





```
### CRAN

```
* using log directory ‘/tmp/workdir/mlr3pipelines/old/mlr3pipelines.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘mlr3pipelines/DESCRIPTION’ ... OK
* this is package ‘mlr3pipelines’ version ‘0.3.6’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... NOTE
...
* checking Rd \usage sections ... OK
* checking Rd contents ... OK
* checking for unstated dependencies in examples ... OK
* checking installed files from ‘inst/doc’ ... OK
* checking examples ... OK
* checking for unstated dependencies in ‘tests’ ... OK
* checking tests ... OK
  Running ‘testthat.R’
* DONE
Status: 2 NOTEs





```
# OncoBayes2

<details>

* Version: 0.8-2
* GitHub: NA
* Source code: https://github.com/cran/OncoBayes2
* Date/Publication: 2021-09-14 10:10:02 UTC
* Number of recursive dependencies: 91

Run `cloud_details(, "OncoBayes2")` for more info

</details>

## In both

*   checking whether package ‘OncoBayes2’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/OncoBayes2/new/OncoBayes2.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘OncoBayes2’ ...
** package ‘OncoBayes2’ successfully unpacked and MD5 sums checked
** using staged installation
DIAGNOSTIC(S) FROM PARSER:
Info: integer division implicitly rounds to integer. Found int division: current / base
 Positive values rounded down, negative values rounded up or down in platform-dependent way.
Info: integer division implicitly rounds to integer. Found int division: left_ind + right_ind / 2
 Positive values rounded down, negative values rounded up or down in platform-dependent way.

** libs
...
/opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/src/Core/ProductEvaluators.h:35:90:   required from ‘Eigen::internal::evaluator<Eigen::Product<Lhs, Rhs, Option> >::evaluator(const XprType&) [with Lhs = Eigen::Product<Eigen::CwiseBinaryOp<Eigen::internal::scalar_product_op<double, double>, const Eigen::CwiseNullaryOp<Eigen::internal::scalar_constant_op<double>, const Eigen::Matrix<double, 1, -1> >, const Eigen::Transpose<Eigen::Matrix<double, -1, 1> > >, Eigen::Matrix<double, -1, -1>, 0>; Rhs = Eigen::Matrix<double, -1, 1>; int Options = 0; Eigen::internal::evaluator<Eigen::Product<Lhs, Rhs, Option> >::XprType = Eigen::Product<Eigen::Product<Eigen::CwiseBinaryOp<Eigen::internal::scalar_product_op<double, double>, const Eigen::CwiseNullaryOp<Eigen::internal::scalar_constant_op<double>, const Eigen::Matrix<double, 1, -1> >, const Eigen::Transpose<Eigen::Matrix<double, -1, 1> > >, Eigen::Matrix<double, -1, -1>, 0>, Eigen::Matrix<double, -1, 1>, 0>]’
/opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/src/Core/Product.h:132:22:   required from ‘Eigen::internal::dense_product_base<Lhs, Rhs, Option, 6>::operator const Scalar() const [with Lhs = Eigen::Product<Eigen::CwiseBinaryOp<Eigen::internal::scalar_product_op<double, double>, const Eigen::CwiseNullaryOp<Eigen::internal::scalar_constant_op<double>, const Eigen::Matrix<double, 1, -1> >, const Eigen::Transpose<Eigen::Matrix<double, -1, 1> > >, Eigen::Matrix<double, -1, -1>, 0>; Rhs = Eigen::Matrix<double, -1, 1>; int Option = 0; Eigen::internal::dense_product_base<Lhs, Rhs, Option, 6>::Scalar = double]’
/opt/R/4.0.3/lib/R/site-library/StanHeaders/include/src/stan/mcmc/hmc/hamiltonians/dense_e_metric.hpp:23:56:   required from ‘double stan::mcmc::dense_e_metric<Model, BaseRNG>::T(stan::mcmc::dense_e_point&) [with Model = model_blrm_exnex_namespace::model_blrm_exnex; BaseRNG = boost::random::additive_combine_engine<boost::random::linear_congruential_engine<unsigned int, 40014, 0, 2147483563>, boost::random::linear_congruential_engine<unsigned int, 40692, 0, 2147483399> >]’
/opt/R/4.0.3/lib/R/site-library/StanHeaders/include/src/stan/mcmc/hmc/hamiltonians/dense_e_metric.hpp:22:10:   required from here
/opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:55:30: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__vector(2) double’} [-Wignored-attributes]
g++: fatal error: Killed signal terminated program cc1plus
compilation terminated.
make: *** [/opt/R/4.0.3/lib/R/etc/Makeconf:179: stanExports_blrm_exnex.o] Error 1
ERROR: compilation failed for package ‘OncoBayes2’
* removing ‘/tmp/workdir/OncoBayes2/new/OncoBayes2.Rcheck/OncoBayes2’


```
### CRAN

```
* installing *source* package ‘OncoBayes2’ ...
** package ‘OncoBayes2’ successfully unpacked and MD5 sums checked
** using staged installation
DIAGNOSTIC(S) FROM PARSER:
Info: integer division implicitly rounds to integer. Found int division: current / base
 Positive values rounded down, negative values rounded up or down in platform-dependent way.
Info: integer division implicitly rounds to integer. Found int division: left_ind + right_ind / 2
 Positive values rounded down, negative values rounded up or down in platform-dependent way.

** libs
...
/opt/R/4.0.3/lib/R/site-library/StanHeaders/include/src/stan/mcmc/hmc/hamiltonians/dense_e_metric.hpp:23:56:   required from ‘double stan::mcmc::dense_e_metric<Model, BaseRNG>::T(stan::mcmc::dense_e_point&) [with Model = model_blrm_exnex_namespace::model_blrm_exnex; BaseRNG = boost::random::additive_combine_engine<boost::random::linear_congruential_engine<unsigned int, 40014, 0, 2147483563>, boost::random::linear_congruential_engine<unsigned int, 40692, 0, 2147483399> >]’
/opt/R/4.0.3/lib/R/site-library/StanHeaders/include/src/stan/mcmc/hmc/hamiltonians/dense_e_metric.hpp:22:10:   required from here
/opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:55:30: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__vector(2) double’} [-Wignored-attributes]
stanExports_blrm_exnex.cc:32:1: fatal error: error writing to /tmp/cceNipeZ.s: Cannot allocate memory
   32 | }
      | ^
compilation terminated.
make: *** [/opt/R/4.0.3/lib/R/etc/Makeconf:179: stanExports_blrm_exnex.o] Error 1
ERROR: compilation failed for package ‘OncoBayes2’
* removing ‘/tmp/workdir/OncoBayes2/old/OncoBayes2.Rcheck/OncoBayes2’


```
# RNiftyReg

<details>

* Version: 2.7.0
* GitHub: https://github.com/jonclayden/RNiftyReg
* Source code: https://github.com/cran/RNiftyReg
* Date/Publication: 2020-09-12 05:51:01 UTC
* Number of recursive dependencies: 50

Run `cloud_details(, "RNiftyReg")` for more info

</details>

## In both

*   checking whether package ‘RNiftyReg’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/RNiftyReg/new/RNiftyReg.Rcheck/00install.out’ for details.
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
g++: fatal error: Killed signal terminated program cc1plus
compilation terminated.
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
/opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/src/Core/Matrix.h:245:29:   required from ‘Eigen::Matrix<_Scalar, _Rows, _Cols, _Options, _MaxRows, _MaxCols>& Eigen::Matrix<_Scalar, _Rows, _Cols, _Options, _MaxRows, _MaxCols>::operator=(const Eigen::ReturnByValue<OtherDerived>&) [with OtherDerived = Eigen::MatrixSquareRootReturnValue<Eigen::Matrix<double, 4, 4> >; _Scalar = double; int _Rows = 4; int _Cols = 4; int _Options = 0; int _MaxRows = 4; int _MaxCols = 4]’
reg-lib/cpu/_reg_maths_eigen.cpp:234:15:   required from here
/opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:650:34: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__vector(2) double’} [-Wignored-attributes]
  650 |   return internal::first_aligned<int(unpacket_traits<DefaultPacketType>::alignment),Derived>(m);
      |                                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
g++: fatal error: Killed signal terminated program cc1plus
compilation terminated.
make: *** [/opt/R/4.0.3/lib/R/etc/Makeconf:181: reg-lib/cpu/_reg_maths_eigen.o] Error 1
ERROR: compilation failed for package ‘RNiftyReg’
* removing ‘/tmp/workdir/RNiftyReg/old/RNiftyReg.Rcheck/RNiftyReg’


```
# SDraw

<details>

* Version: 2.1.13
* GitHub: https://github.com/tmcd82070/SDraw
* Source code: https://github.com/cran/SDraw
* Date/Publication: 2020-07-03 16:20:09 UTC
* Number of recursive dependencies: 127

Run `cloud_details(, "SDraw")` for more info

</details>

## Newly broken

*   checking whether package ‘SDraw’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/SDraw/new/SDraw.Rcheck/00install.out’ for details.
    ```

## Newly fixed

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      3: package ‘methods’ in options("defaultPackages") was not found 
      Error: package or namespace load failed for ‘methods’:
       .onLoad failed in loadNamespace() for 'methods', details:
        call: getGeneric("$")
        error: lazy-load database '/opt/R/4.0.3/lib/R/library/methods/R/methods.rdb' is corrupt
      During startup - Warning messages:
      1: package "methods" in options("defaultPackages") was not found 
      2: In getGeneric("$") : internal error -3 in R_decompress1
      3: package ‘methods’ in options("defaultPackages") was not found 
      Error: .onLoad failed in loadNamespace() for 'methods', details:
        call: getGeneric("$")
        error: lazy-load database '/opt/R/4.0.3/lib/R/library/methods/R/methods.rdb' is corrupt
      In addition: Warning message:
      In getGeneric("$") : internal error -3 in R_decompress1
      Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘covr’
      All declared Imports should be used.
    ```

## Installation

### Devel

```
* installing *source* package ‘SDraw’ ...
** package ‘SDraw’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Killed
ERROR: lazy loading failed for package ‘SDraw’
* removing ‘/tmp/workdir/SDraw/new/SDraw.Rcheck/SDraw’


```
### CRAN

```
* installing *source* package ‘SDraw’ ...
** package ‘SDraw’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (SDraw)


```
