# Boom

<details>

* Version: 0.9.11
* GitHub: NA
* Source code: https://github.com/cran/Boom
* Date/Publication: 2022-11-06 05:20:02 UTC
* Number of recursive dependencies: 32

Run `revdepcheck::cloud_details(, "Boom")` for more info

</details>

## In both

*   checking whether package ‘Boom’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/Boom/new/Boom.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘Boom’ ...
** package ‘Boom’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++17 -I"/opt/R/4.2.1/lib/R/include" -DNDEBUG -I. -I../inst/include -IBmath -Imath/cephes -DADD_ -DR_NO_REMAP -DEIGEN_WARNINGS_DISABLED  -I/usr/local/include   -fpic  -g -O2  -c boom_r_tools.cpp -o boom_r_tools.o
g++ -std=gnu++17 -I"/opt/R/4.2.1/lib/R/include" -DNDEBUG -I. -I../inst/include -IBmath -Imath/cephes -DADD_ -DR_NO_REMAP -DEIGEN_WARNINGS_DISABLED  -I/usr/local/include   -fpic  -g -O2  -c create_poisson_process.cpp -o create_poisson_process.o
g++ -std=gnu++17 -I"/opt/R/4.2.1/lib/R/include" -DNDEBUG -I. -I../inst/include -IBmath -Imath/cephes -DADD_ -DR_NO_REMAP -DEIGEN_WARNINGS_DISABLED  -I/usr/local/include   -fpic  -g -O2  -c create_mixture_component.cpp -o create_mixture_component.o
g++ -std=gnu++17 -I"/opt/R/4.2.1/lib/R/include" -DNDEBUG -I. -I../inst/include -IBmath -Imath/cephes -DADD_ -DR_NO_REMAP -DEIGEN_WARNINGS_DISABLED  -I/usr/local/include   -fpic  -g -O2  -c parse_model_formula.cpp -o parse_model_formula.o
g++ -std=gnu++17 -I"/opt/R/4.2.1/lib/R/include" -DNDEBUG -I. -I../inst/include -IBmath -Imath/cephes -DADD_ -DR_NO_REMAP -DEIGEN_WARNINGS_DISABLED  -I/usr/local/include   -fpic  -g -O2  -c extract_mixture_data.cpp -o extract_mixture_data.o
g++ -std=gnu++17 -I"/opt/R/4.2.1/lib/R/include" -DNDEBUG -I. -I../inst/include -IBmath -Imath/cephes -DADD_ -DR_NO_REMAP -DEIGEN_WARNINGS_DISABLED  -I/usr/local/include   -fpic  -g -O2  -c seed_rng_from_R.cpp -o seed_rng_from_R.o
...
../inst/include/Eigen/src/Core/AssignEvaluator.h:890:49:   [ skipping 16 instantiation contexts, use -ftemplate-backtrace-limit=0 to disable ]
../inst/include/Eigen/src/Householder/BlockHouseholder.h:102:19:   required from ‘void Eigen::internal::apply_block_householder_on_the_left(MatrixType&, const VectorsType&, const CoeffsType&, bool) [with MatrixType = Eigen::Block<Eigen::Matrix<double, -1, -1>, -1, -1, false>; VectorsType = Eigen::Block<Eigen::Matrix<double, -1, -1>, -1, -1, false>; CoeffsType = Eigen::VectorBlock<const Eigen::Matrix<double, -1, 1>, -1>]’
../inst/include/Eigen/src/Householder/HouseholderSequence.h:399:46:   required from ‘void Eigen::HouseholderSequence<VectorsType, CoeffsType, Side>::applyThisOnTheLeft(Dest&, Workspace&, bool) const [with Dest = Eigen::Matrix<double, -1, -1>; Workspace = Eigen::Matrix<double, 1, -1>; VectorsType = Eigen::Matrix<double, -1, -1>; CoeffsType = Eigen::Matrix<double, -1, 1>; int Side = 1]’
../inst/include/Eigen/src/SVD/JacobiSVD.h:236:9:   required from ‘bool Eigen::internal::qr_preconditioner_impl<MatrixType, 2, 0, true>::run(Eigen::JacobiSVD<MatrixType, 2>&, const MatrixType&) [with MatrixType = Eigen::Matrix<double, -1, -1>]’
../inst/include/Eigen/src/SVD/JacobiSVD.h:692:5:   required from ‘Eigen::JacobiSVD<MatrixType, QRPreconditioner>& Eigen::JacobiSVD<MatrixType, QRPreconditioner>::compute(const MatrixType&, unsigned int) [with _MatrixType = Eigen::Matrix<double, -1, -1>; int QRPreconditioner = 2; Eigen::JacobiSVD<MatrixType, QRPreconditioner>::MatrixType = Eigen::Matrix<double, -1, -1>]’
../inst/include/Eigen/src/SVD/JacobiSVD.h:549:7:   required from ‘Eigen::JacobiSVD<MatrixType, QRPreconditioner>::JacobiSVD(const MatrixType&, unsigned int) [with _MatrixType = Eigen::Matrix<double, -1, -1>; int QRPreconditioner = 2; Eigen::JacobiSVD<MatrixType, QRPreconditioner>::MatrixType = Eigen::Matrix<double, -1, -1>]’
LinAlg/Matrix.cpp:811:67:   required from here
../inst/include/Eigen/src/Core/CoreEvaluators.h:1042:8: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__vector(2) double’} [-Wignored-attributes]
ERROR: compilation failed for package ‘Boom’
* removing ‘/tmp/workdir/Boom/new/Boom.Rcheck/Boom’


```
### CRAN

```
* installing *source* package ‘Boom’ ...
** package ‘Boom’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++17 -I"/opt/R/4.2.1/lib/R/include" -DNDEBUG -I. -I../inst/include -IBmath -Imath/cephes -DADD_ -DR_NO_REMAP -DEIGEN_WARNINGS_DISABLED  -I/usr/local/include   -fpic  -g -O2  -c boom_r_tools.cpp -o boom_r_tools.o
g++ -std=gnu++17 -I"/opt/R/4.2.1/lib/R/include" -DNDEBUG -I. -I../inst/include -IBmath -Imath/cephes -DADD_ -DR_NO_REMAP -DEIGEN_WARNINGS_DISABLED  -I/usr/local/include   -fpic  -g -O2  -c create_poisson_process.cpp -o create_poisson_process.o
g++ -std=gnu++17 -I"/opt/R/4.2.1/lib/R/include" -DNDEBUG -I. -I../inst/include -IBmath -Imath/cephes -DADD_ -DR_NO_REMAP -DEIGEN_WARNINGS_DISABLED  -I/usr/local/include   -fpic  -g -O2  -c create_mixture_component.cpp -o create_mixture_component.o
g++ -std=gnu++17 -I"/opt/R/4.2.1/lib/R/include" -DNDEBUG -I. -I../inst/include -IBmath -Imath/cephes -DADD_ -DR_NO_REMAP -DEIGEN_WARNINGS_DISABLED  -I/usr/local/include   -fpic  -g -O2  -c parse_model_formula.cpp -o parse_model_formula.o
g++ -std=gnu++17 -I"/opt/R/4.2.1/lib/R/include" -DNDEBUG -I. -I../inst/include -IBmath -Imath/cephes -DADD_ -DR_NO_REMAP -DEIGEN_WARNINGS_DISABLED  -I/usr/local/include   -fpic  -g -O2  -c extract_mixture_data.cpp -o extract_mixture_data.o
g++ -std=gnu++17 -I"/opt/R/4.2.1/lib/R/include" -DNDEBUG -I. -I../inst/include -IBmath -Imath/cephes -DADD_ -DR_NO_REMAP -DEIGEN_WARNINGS_DISABLED  -I/usr/local/include   -fpic  -g -O2  -c seed_rng_from_R.cpp -o seed_rng_from_R.o
...
../inst/include/Eigen/src/Core/AssignEvaluator.h:890:49:   [ skipping 16 instantiation contexts, use -ftemplate-backtrace-limit=0 to disable ]
../inst/include/Eigen/src/Householder/BlockHouseholder.h:102:19:   required from ‘void Eigen::internal::apply_block_householder_on_the_left(MatrixType&, const VectorsType&, const CoeffsType&, bool) [with MatrixType = Eigen::Block<Eigen::Matrix<double, -1, -1>, -1, -1, false>; VectorsType = Eigen::Block<Eigen::Matrix<double, -1, -1>, -1, -1, false>; CoeffsType = Eigen::VectorBlock<const Eigen::Matrix<double, -1, 1>, -1>]’
../inst/include/Eigen/src/Householder/HouseholderSequence.h:399:46:   required from ‘void Eigen::HouseholderSequence<VectorsType, CoeffsType, Side>::applyThisOnTheLeft(Dest&, Workspace&, bool) const [with Dest = Eigen::Matrix<double, -1, -1>; Workspace = Eigen::Matrix<double, 1, -1>; VectorsType = Eigen::Matrix<double, -1, -1>; CoeffsType = Eigen::Matrix<double, -1, 1>; int Side = 1]’
../inst/include/Eigen/src/SVD/JacobiSVD.h:236:9:   required from ‘bool Eigen::internal::qr_preconditioner_impl<MatrixType, 2, 0, true>::run(Eigen::JacobiSVD<MatrixType, 2>&, const MatrixType&) [with MatrixType = Eigen::Matrix<double, -1, -1>]’
../inst/include/Eigen/src/SVD/JacobiSVD.h:692:5:   required from ‘Eigen::JacobiSVD<MatrixType, QRPreconditioner>& Eigen::JacobiSVD<MatrixType, QRPreconditioner>::compute(const MatrixType&, unsigned int) [with _MatrixType = Eigen::Matrix<double, -1, -1>; int QRPreconditioner = 2; Eigen::JacobiSVD<MatrixType, QRPreconditioner>::MatrixType = Eigen::Matrix<double, -1, -1>]’
../inst/include/Eigen/src/SVD/JacobiSVD.h:549:7:   required from ‘Eigen::JacobiSVD<MatrixType, QRPreconditioner>::JacobiSVD(const MatrixType&, unsigned int) [with _MatrixType = Eigen::Matrix<double, -1, -1>; int QRPreconditioner = 2; Eigen::JacobiSVD<MatrixType, QRPreconditioner>::MatrixType = Eigen::Matrix<double, -1, -1>]’
LinAlg/Matrix.cpp:811:67:   required from here
../inst/include/Eigen/src/Core/CoreEvaluators.h:1042:8: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__vector(2) double’} [-Wignored-attributes]
ERROR: compilation failed for package ‘Boom’
* removing ‘/tmp/workdir/Boom/old/Boom.Rcheck/Boom’


```
# CausalImpact

<details>

* Version: 1.3.0
* GitHub: NA
* Source code: https://github.com/cran/CausalImpact
* Date/Publication: 2022-11-09 08:40:40 UTC
* Number of recursive dependencies: 79

Run `revdepcheck::cloud_details(, "CausalImpact")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/CausalImpact/new/CausalImpact.Rcheck’
* using R version 4.2.1 (2022-06-23)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘CausalImpact/DESCRIPTION’ ... OK
* this is package ‘CausalImpact’ version ‘1.3.0’
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'bsts', 'Boom'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/CausalImpact/old/CausalImpact.Rcheck’
* using R version 4.2.1 (2022-06-23)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘CausalImpact/DESCRIPTION’ ... OK
* this is package ‘CausalImpact’ version ‘1.3.0’
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'bsts', 'Boom'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# ctsem

<details>

* Version: 3.7.6
* GitHub: https://github.com/cdriveraus/ctsem
* Source code: https://github.com/cran/ctsem
* Date/Publication: 2023-03-26 17:10:02 UTC
* Number of recursive dependencies: 137

Run `revdepcheck::cloud_details(, "ctsem")` for more info

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
DIAGNOSTIC(S) FROM PARSER:
Info: integer division implicitly rounds to integer. Found int division: d * d - d / 2
 Positive values rounded down, negative values rounded up or down in platform-dependent way.
Info: integer division implicitly rounds to integer. Found int division: d * d - d / 2
 Positive values rounded down, negative values rounded up or down in platform-dependent way.

DIAGNOSTIC(S) FROM PARSER:
...
/opt/R/4.2.1/lib/R/site-library/RcppEigen/include/Eigen/src/Core/ProductEvaluators.h:35:90:   required from ‘Eigen::internal::evaluator<Eigen::Product<Lhs, Rhs, Option> >::evaluator(const XprType&) [with Lhs = Eigen::Product<Eigen::CwiseBinaryOp<Eigen::internal::scalar_product_op<double, double>, const Eigen::CwiseNullaryOp<Eigen::internal::scalar_constant_op<double>, const Eigen::Matrix<double, 1, -1> >, const Eigen::Transpose<Eigen::Matrix<double, -1, 1> > >, Eigen::Matrix<double, -1, -1>, 0>; Rhs = Eigen::Matrix<double, -1, 1>; int Options = 0; Eigen::internal::evaluator<Eigen::Product<Lhs, Rhs, Option> >::XprType = Eigen::Product<Eigen::Product<Eigen::CwiseBinaryOp<Eigen::internal::scalar_product_op<double, double>, const Eigen::CwiseNullaryOp<Eigen::internal::scalar_constant_op<double>, const Eigen::Matrix<double, 1, -1> >, const Eigen::Transpose<Eigen::Matrix<double, -1, 1> > >, Eigen::Matrix<double, -1, -1>, 0>, Eigen::Matrix<double, -1, 1>, 0>]’
/opt/R/4.2.1/lib/R/site-library/RcppEigen/include/Eigen/src/Core/Product.h:132:22:   required from ‘Eigen::internal::dense_product_base<Lhs, Rhs, Option, 6>::operator const Scalar() const [with Lhs = Eigen::Product<Eigen::CwiseBinaryOp<Eigen::internal::scalar_product_op<double, double>, const Eigen::CwiseNullaryOp<Eigen::internal::scalar_constant_op<double>, const Eigen::Matrix<double, 1, -1> >, const Eigen::Transpose<Eigen::Matrix<double, -1, 1> > >, Eigen::Matrix<double, -1, -1>, 0>; Rhs = Eigen::Matrix<double, -1, 1>; int Option = 0; Eigen::internal::dense_product_base<Lhs, Rhs, Option, 6>::Scalar = double]’
/opt/R/4.2.1/lib/R/site-library/StanHeaders/include/src/stan/mcmc/hmc/hamiltonians/dense_e_metric.hpp:22:56:   required from ‘double stan::mcmc::dense_e_metric<Model, BaseRNG>::T(stan::mcmc::dense_e_point&) [with Model = model_ctsm_namespace::model_ctsm; BaseRNG = boost::random::additive_combine_engine<boost::random::linear_congruential_engine<unsigned int, 40014, 0, 2147483563>, boost::random::linear_congruential_engine<unsigned int, 40692, 0, 2147483399> >]’
/opt/R/4.2.1/lib/R/site-library/StanHeaders/include/src/stan/mcmc/hmc/hamiltonians/dense_e_metric.hpp:21:10:   required from here
/opt/R/4.2.1/lib/R/site-library/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:55:30: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__vector(2) double’} [-Wignored-attributes]
g++: fatal error: Killed signal terminated program cc1plus
compilation terminated.
make: *** [/opt/R/4.2.1/lib/R/etc/Makeconf:175: stanExports_ctsm.o] Error 1
ERROR: compilation failed for package ‘ctsem’
* removing ‘/tmp/workdir/ctsem/new/ctsem.Rcheck/ctsem’


```
### CRAN

```
* installing *source* package ‘ctsem’ ...
** package ‘ctsem’ successfully unpacked and MD5 sums checked
** using staged installation
DIAGNOSTIC(S) FROM PARSER:
Info: integer division implicitly rounds to integer. Found int division: d * d - d / 2
 Positive values rounded down, negative values rounded up or down in platform-dependent way.
Info: integer division implicitly rounds to integer. Found int division: d * d - d / 2
 Positive values rounded down, negative values rounded up or down in platform-dependent way.

DIAGNOSTIC(S) FROM PARSER:
...
/opt/R/4.2.1/lib/R/site-library/RcppEigen/include/Eigen/src/Core/ProductEvaluators.h:35:90:   required from ‘Eigen::internal::evaluator<Eigen::Product<Lhs, Rhs, Option> >::evaluator(const XprType&) [with Lhs = Eigen::Product<Eigen::CwiseBinaryOp<Eigen::internal::scalar_product_op<double, double>, const Eigen::CwiseNullaryOp<Eigen::internal::scalar_constant_op<double>, const Eigen::Matrix<double, 1, -1> >, const Eigen::Transpose<Eigen::Matrix<double, -1, 1> > >, Eigen::Matrix<double, -1, -1>, 0>; Rhs = Eigen::Matrix<double, -1, 1>; int Options = 0; Eigen::internal::evaluator<Eigen::Product<Lhs, Rhs, Option> >::XprType = Eigen::Product<Eigen::Product<Eigen::CwiseBinaryOp<Eigen::internal::scalar_product_op<double, double>, const Eigen::CwiseNullaryOp<Eigen::internal::scalar_constant_op<double>, const Eigen::Matrix<double, 1, -1> >, const Eigen::Transpose<Eigen::Matrix<double, -1, 1> > >, Eigen::Matrix<double, -1, -1>, 0>, Eigen::Matrix<double, -1, 1>, 0>]’
/opt/R/4.2.1/lib/R/site-library/RcppEigen/include/Eigen/src/Core/Product.h:132:22:   required from ‘Eigen::internal::dense_product_base<Lhs, Rhs, Option, 6>::operator const Scalar() const [with Lhs = Eigen::Product<Eigen::CwiseBinaryOp<Eigen::internal::scalar_product_op<double, double>, const Eigen::CwiseNullaryOp<Eigen::internal::scalar_constant_op<double>, const Eigen::Matrix<double, 1, -1> >, const Eigen::Transpose<Eigen::Matrix<double, -1, 1> > >, Eigen::Matrix<double, -1, -1>, 0>; Rhs = Eigen::Matrix<double, -1, 1>; int Option = 0; Eigen::internal::dense_product_base<Lhs, Rhs, Option, 6>::Scalar = double]’
/opt/R/4.2.1/lib/R/site-library/StanHeaders/include/src/stan/mcmc/hmc/hamiltonians/dense_e_metric.hpp:22:56:   required from ‘double stan::mcmc::dense_e_metric<Model, BaseRNG>::T(stan::mcmc::dense_e_point&) [with Model = model_ctsm_namespace::model_ctsm; BaseRNG = boost::random::additive_combine_engine<boost::random::linear_congruential_engine<unsigned int, 40014, 0, 2147483563>, boost::random::linear_congruential_engine<unsigned int, 40692, 0, 2147483399> >]’
/opt/R/4.2.1/lib/R/site-library/StanHeaders/include/src/stan/mcmc/hmc/hamiltonians/dense_e_metric.hpp:21:10:   required from here
/opt/R/4.2.1/lib/R/site-library/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:55:30: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__vector(2) double’} [-Wignored-attributes]
g++: fatal error: Killed signal terminated program cc1plus
compilation terminated.
make: *** [/opt/R/4.2.1/lib/R/etc/Makeconf:175: stanExports_ctsm.o] Error 1
ERROR: compilation failed for package ‘ctsem’
* removing ‘/tmp/workdir/ctsem/old/ctsem.Rcheck/ctsem’


```
# fdaPDE

<details>

* Version: 1.1-16
* GitHub: NA
* Source code: https://github.com/cran/fdaPDE
* Date/Publication: 2023-03-01 08:22:39 UTC
* Number of recursive dependencies: 59

Run `revdepcheck::cloud_details(, "fdaPDE")` for more info

</details>

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
** package ‘fdaPDE’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++17 -I"/opt/R/4.2.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.2.1/lib/R/site-library/RcppEigen/include' -I'/opt/R/4.2.1/lib/R/site-library/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c Global_Utilities/Source/Lambda.cpp -o Global_Utilities/Source/Lambda.o
In file included from /opt/R/4.2.1/lib/R/site-library/RcppEigen/include/Eigen/Core:397,
                 from /opt/R/4.2.1/lib/R/site-library/RcppEigen/include/Eigen/StdVector:14,
                 from Global_Utilities/Source/../Include/../../FdaPDE.h:32,
                 from Global_Utilities/Source/../Include/Lambda.h:4,
                 from Global_Utilities/Source/Lambda.cpp:1:
...
/opt/R/4.2.1/lib/R/site-library/RcppEigen/include/Eigen/src/Core/Matrix.h:225:24:   required from ‘Eigen::Matrix<_Scalar, _Rows, _Cols, _Options, _MaxRows, _MaxCols>& Eigen::Matrix<_Scalar, _Rows, _Cols, _Options, _MaxRows, _MaxCols>::operator=(const Eigen::DenseBase<OtherDerived>&) [with OtherDerived = Eigen::CwiseBinaryOp<Eigen::internal::scalar_product_op<double, double>, const Eigen::CwiseNullaryOp<Eigen::internal::scalar_constant_op<double>, const Eigen::Matrix<double, -1, -1> >, const Eigen::CwiseBinaryOp<Eigen::internal::scalar_sum_op<double, double>, const Eigen::Solve<Eigen::PartialPivLU<Eigen::Matrix<double, -1, -1> >, Eigen::CwiseNullaryOp<Eigen::internal::scalar_identity_op<double>, Eigen::Matrix<double, -1, -1> > >, const Eigen::Solve<Eigen::PartialPivLU<Eigen::Matrix<double, -1, -1> >, Eigen::Product<Eigen::Product<Eigen::Product<Eigen::Product<Eigen::Transpose<const Eigen::Matrix<double, -1, -1> >, Eigen::Matrix<double, -1, -1>, 0>, Eigen::Transpose<Eigen::Matrix<double, -1, -1> >, 0>, Eigen::Matrix<double, -1, -1>, 0>, Eigen::Solve<Eigen::PartialPivLU<Eigen::Matrix<double, -1, -1> >, Eigen::CwiseNullaryOp<Eigen::internal::scalar_identity_op<double>, Eigen::Matrix<double, -1, -1> > >, 0> > > >; _Scalar = double; int _Rows = -1; int _Cols = -1; int _Options = 0; int _MaxRows = -1; int _MaxCols = -1]’
Regression/Source/../../Skeletons/Include/../../Inference/Include/Wald_imp.h:54:5:   required from ‘void Wald_Base<InputHandler, MatrixType>::compute_V() [with InputHandler = RegressionData; MatrixType = Eigen::Matrix<double, -1, -1>]’
Regression/Source/../../Skeletons/Include/../../Inference/Include/Wald_imp.h:123:5:   required from ‘VectorXr Wald_Base<InputHandler, MatrixType>::compute_beta_pvalue() [with InputHandler = RegressionData; MatrixType = Eigen::Matrix<double, -1, -1>; VectorXr = Eigen::Matrix<double, -1, 1>]’
Regression/Source/../../Skeletons/Include/../../Inference/Include/Wald_imp.h:104:10:   required from here
/opt/R/4.2.1/lib/R/site-library/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:55:30: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__vector(2) double’} [-Wignored-attributes]
g++: fatal error: Killed signal terminated program cc1plus
compilation terminated.
make: *** [/opt/R/4.2.1/lib/R/etc/Makeconf:177: Regression/Source/Rfun_Regression_Laplace.o] Error 1
ERROR: compilation failed for package ‘fdaPDE’
* removing ‘/tmp/workdir/fdaPDE/new/fdaPDE.Rcheck/fdaPDE’


```
### CRAN

```
* installing *source* package ‘fdaPDE’ ...
** package ‘fdaPDE’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++17 -I"/opt/R/4.2.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.2.1/lib/R/site-library/RcppEigen/include' -I'/opt/R/4.2.1/lib/R/site-library/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c Global_Utilities/Source/Lambda.cpp -o Global_Utilities/Source/Lambda.o
In file included from /opt/R/4.2.1/lib/R/site-library/RcppEigen/include/Eigen/Core:397,
                 from /opt/R/4.2.1/lib/R/site-library/RcppEigen/include/Eigen/StdVector:14,
                 from Global_Utilities/Source/../Include/../../FdaPDE.h:32,
                 from Global_Utilities/Source/../Include/Lambda.h:4,
                 from Global_Utilities/Source/Lambda.cpp:1:
...
/opt/R/4.2.1/lib/R/site-library/RcppEigen/include/Eigen/src/Core/Matrix.h:225:24:   required from ‘Eigen::Matrix<_Scalar, _Rows, _Cols, _Options, _MaxRows, _MaxCols>& Eigen::Matrix<_Scalar, _Rows, _Cols, _Options, _MaxRows, _MaxCols>::operator=(const Eigen::DenseBase<OtherDerived>&) [with OtherDerived = Eigen::CwiseBinaryOp<Eigen::internal::scalar_product_op<double, double>, const Eigen::CwiseNullaryOp<Eigen::internal::scalar_constant_op<double>, const Eigen::Matrix<double, -1, -1> >, const Eigen::CwiseBinaryOp<Eigen::internal::scalar_sum_op<double, double>, const Eigen::Solve<Eigen::PartialPivLU<Eigen::Matrix<double, -1, -1> >, Eigen::CwiseNullaryOp<Eigen::internal::scalar_identity_op<double>, Eigen::Matrix<double, -1, -1> > >, const Eigen::Solve<Eigen::PartialPivLU<Eigen::Matrix<double, -1, -1> >, Eigen::Product<Eigen::Product<Eigen::Product<Eigen::Product<Eigen::Transpose<const Eigen::Matrix<double, -1, -1> >, Eigen::Matrix<double, -1, -1>, 0>, Eigen::Transpose<Eigen::Matrix<double, -1, -1> >, 0>, Eigen::Matrix<double, -1, -1>, 0>, Eigen::Solve<Eigen::PartialPivLU<Eigen::Matrix<double, -1, -1> >, Eigen::CwiseNullaryOp<Eigen::internal::scalar_identity_op<double>, Eigen::Matrix<double, -1, -1> > >, 0> > > >; _Scalar = double; int _Rows = -1; int _Cols = -1; int _Options = 0; int _MaxRows = -1; int _MaxCols = -1]’
Regression/Source/../../Skeletons/Include/../../Inference/Include/Wald_imp.h:54:5:   required from ‘void Wald_Base<InputHandler, MatrixType>::compute_V() [with InputHandler = RegressionData; MatrixType = Eigen::Matrix<double, -1, -1>]’
Regression/Source/../../Skeletons/Include/../../Inference/Include/Wald_imp.h:123:5:   required from ‘VectorXr Wald_Base<InputHandler, MatrixType>::compute_beta_pvalue() [with InputHandler = RegressionData; MatrixType = Eigen::Matrix<double, -1, -1>; VectorXr = Eigen::Matrix<double, -1, 1>]’
Regression/Source/../../Skeletons/Include/../../Inference/Include/Wald_imp.h:104:10:   required from here
/opt/R/4.2.1/lib/R/site-library/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:55:30: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__vector(2) double’} [-Wignored-attributes]
g++: fatal error: Killed signal terminated program cc1plus
compilation terminated.
make: *** [/opt/R/4.2.1/lib/R/etc/Makeconf:177: Regression/Source/Rfun_Regression_Laplace.o] Error 1
ERROR: compilation failed for package ‘fdaPDE’
* removing ‘/tmp/workdir/fdaPDE/old/fdaPDE.Rcheck/fdaPDE’


```
# gllvm

<details>

* Version: 1.4.1
* GitHub: https://github.com/JenniNiku/gllvm
* Source code: https://github.com/cran/gllvm
* Date/Publication: 2023-01-07 14:20:02 UTC
* Number of recursive dependencies: 69

Run `revdepcheck::cloud_details(, "gllvm")` for more info

</details>

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
** package ‘gllvm’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++14 -I"/opt/R/4.2.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.2.1/lib/R/site-library/TMB/include' -I'/opt/R/4.2.1/lib/R/site-library/RcppEigen/include' -I/usr/local/include   -fpic  -g -O2  -c gllvm.cpp -o gllvm.o
In file included from /opt/R/4.2.1/lib/R/site-library/RcppEigen/include/Eigen/Core:397,
                 from /opt/R/4.2.1/lib/R/site-library/RcppEigen/include/Eigen/Dense:1,
                 from /opt/R/4.2.1/lib/R/site-library/TMB/include/TMB.hpp:83,
                 from gllvm.cpp:2:
/opt/R/4.2.1/lib/R/site-library/RcppEigen/include/Eigen/src/Core/arch/SSE/PacketMath.h:60:39: warning: ignoring attributes on template argument ‘__m128’ {aka ‘__vector(4) float’} [-Wignored-attributes]
...
/opt/R/4.2.1/lib/R/site-library/RcppEigen/include/Eigen/src/Core/Assign.h:66:28:   required from ‘Derived& Eigen::MatrixBase<Derived>::operator=(const Eigen::DenseBase<OtherDerived>&) [with OtherDerived = Eigen::Product<Eigen::Map<const Eigen::Matrix<double, -1, -1>, 0, Eigen::Stride<0, 0> >, Eigen::Map<const Eigen::Matrix<double, -1, -1>, 0, Eigen::Stride<0, 0> >, 0>; Derived = Eigen::Map<Eigen::Matrix<double, -1, -1>, 0, Eigen::Stride<0, 0> >]’
/opt/R/4.2.1/lib/R/site-library/TMB/include/atomic_math.hpp:435:1:   required from ‘void atomic::matmul(const CppAD::vector<Type>&, CppAD::vector<Type>&) [with Double = double]’
/opt/R/4.2.1/lib/R/site-library/TMB/include/atomic_math.hpp:435:1:   required from ‘bool atomic::atomicmatmul<Type>::forward(size_t, size_t, const CppAD::vector<bool>&, CppAD::vector<bool>&, const CppAD::vector<Type>&, CppAD::vector<Type>&) [with Type = double; size_t = long unsigned int]’
/opt/R/4.2.1/lib/R/site-library/TMB/include/atomic_math.hpp:435:1:   required from here
/opt/R/4.2.1/lib/R/site-library/RcppEigen/include/Eigen/src/Core/CoreEvaluators.h:960:8: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__vector(2) double’} [-Wignored-attributes]
g++: fatal error: Killed signal terminated program cc1plus
compilation terminated.
make: *** [/opt/R/4.2.1/lib/R/etc/Makeconf:177: gllvm.o] Error 1
ERROR: compilation failed for package ‘gllvm’
* removing ‘/tmp/workdir/gllvm/new/gllvm.Rcheck/gllvm’


```
### CRAN

```
* installing *source* package ‘gllvm’ ...
** package ‘gllvm’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++14 -I"/opt/R/4.2.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.2.1/lib/R/site-library/TMB/include' -I'/opt/R/4.2.1/lib/R/site-library/RcppEigen/include' -I/usr/local/include   -fpic  -g -O2  -c gllvm.cpp -o gllvm.o
In file included from /opt/R/4.2.1/lib/R/site-library/RcppEigen/include/Eigen/Core:397,
                 from /opt/R/4.2.1/lib/R/site-library/RcppEigen/include/Eigen/Dense:1,
                 from /opt/R/4.2.1/lib/R/site-library/TMB/include/TMB.hpp:83,
                 from gllvm.cpp:2:
/opt/R/4.2.1/lib/R/site-library/RcppEigen/include/Eigen/src/Core/arch/SSE/PacketMath.h:60:39: warning: ignoring attributes on template argument ‘__m128’ {aka ‘__vector(4) float’} [-Wignored-attributes]
...
/opt/R/4.2.1/lib/R/site-library/RcppEigen/include/Eigen/src/Core/Assign.h:66:28:   required from ‘Derived& Eigen::MatrixBase<Derived>::operator=(const Eigen::DenseBase<OtherDerived>&) [with OtherDerived = Eigen::Product<Eigen::Map<const Eigen::Matrix<double, -1, -1>, 0, Eigen::Stride<0, 0> >, Eigen::Map<const Eigen::Matrix<double, -1, -1>, 0, Eigen::Stride<0, 0> >, 0>; Derived = Eigen::Map<Eigen::Matrix<double, -1, -1>, 0, Eigen::Stride<0, 0> >]’
/opt/R/4.2.1/lib/R/site-library/TMB/include/atomic_math.hpp:435:1:   required from ‘void atomic::matmul(const CppAD::vector<Type>&, CppAD::vector<Type>&) [with Double = double]’
/opt/R/4.2.1/lib/R/site-library/TMB/include/atomic_math.hpp:435:1:   required from ‘bool atomic::atomicmatmul<Type>::forward(size_t, size_t, const CppAD::vector<bool>&, CppAD::vector<bool>&, const CppAD::vector<Type>&, CppAD::vector<Type>&) [with Type = double; size_t = long unsigned int]’
/opt/R/4.2.1/lib/R/site-library/TMB/include/atomic_math.hpp:435:1:   required from here
/opt/R/4.2.1/lib/R/site-library/RcppEigen/include/Eigen/src/Core/CoreEvaluators.h:960:8: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__vector(2) double’} [-Wignored-attributes]
g++: fatal error: Killed signal terminated program cc1plus
compilation terminated.
make: *** [/opt/R/4.2.1/lib/R/etc/Makeconf:177: gllvm.o] Error 1
ERROR: compilation failed for package ‘gllvm’
* removing ‘/tmp/workdir/gllvm/old/gllvm.Rcheck/gllvm’


```
# loon.ggplot

<details>

* Version: 1.3.3
* GitHub: https://github.com/great-northern-diver/loon.ggplot
* Source code: https://github.com/cran/loon.ggplot
* Date/Publication: 2022-11-12 22:30:02 UTC
* Number of recursive dependencies: 105

Run `revdepcheck::cloud_details(, "loon.ggplot")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/loon.ggplot/new/loon.ggplot.Rcheck’
* using R version 4.2.1 (2022-06-23)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘loon.ggplot/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘loon.ggplot’ version ‘1.3.3’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘loon’

Package suggested but not available for checking: ‘zenplots’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/loon.ggplot/old/loon.ggplot.Rcheck’
* using R version 4.2.1 (2022-06-23)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘loon.ggplot/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘loon.ggplot’ version ‘1.3.3’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘loon’

Package suggested but not available for checking: ‘zenplots’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# loon.shiny

<details>

* Version: 1.0.3
* GitHub: NA
* Source code: https://github.com/cran/loon.shiny
* Date/Publication: 2022-10-08 15:30:02 UTC
* Number of recursive dependencies: 136

Run `revdepcheck::cloud_details(, "loon.shiny")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/loon.shiny/new/loon.shiny.Rcheck’
* using R version 4.2.1 (2022-06-23)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘loon.shiny/DESCRIPTION’ ... OK
* checking extension type ... Package
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
* using R version 4.2.1 (2022-06-23)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘loon.shiny/DESCRIPTION’ ... OK
* checking extension type ... Package
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
# loon.tourr

<details>

* Version: 0.1.3
* GitHub: https://github.com/z267xu/loon.tourr
* Source code: https://github.com/cran/loon.tourr
* Date/Publication: 2021-10-27 14:10:05 UTC
* Number of recursive dependencies: 127

Run `revdepcheck::cloud_details(, "loon.tourr")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/loon.tourr/new/loon.tourr.Rcheck’
* using R version 4.2.1 (2022-06-23)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘loon.tourr/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘loon.tourr’ version ‘0.1.3’
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
* using R version 4.2.1 (2022-06-23)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘loon.tourr/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘loon.tourr’ version ‘0.1.3’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'loon', 'loon.ggplot'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# Platypus

<details>

* Version: 3.4.1
* GitHub: NA
* Source code: https://github.com/cran/Platypus
* Date/Publication: 2022-08-15 07:20:20 UTC
* Number of recursive dependencies: 354

Run `revdepcheck::cloud_details(, "Platypus")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/Platypus/new/Platypus.Rcheck’
* using R version 4.2.1 (2022-06-23)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘Platypus/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘Platypus’ version ‘3.4.1’
* package encoding: UTF-8
* checking package namespace information ... OK
...
* checking installed files from ‘inst/doc’ ... OK
* checking files in ‘vignettes’ ... OK
* checking examples ... OK
* checking for unstated dependencies in vignettes ... OK
* checking package vignettes in ‘inst/doc’ ... OK
* checking running R code from vignettes ... NONE
  ‘PlatypusV3_agedCNS.Rmd’ using ‘UTF-8’... OK
* checking re-building of vignette outputs ... OK
* DONE
Status: 3 WARNINGs, 2 NOTEs





```
### CRAN

```
* using log directory ‘/tmp/workdir/Platypus/old/Platypus.Rcheck’
* using R version 4.2.1 (2022-06-23)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘Platypus/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘Platypus’ version ‘3.4.1’
* package encoding: UTF-8
* checking package namespace information ... OK
...
* checking installed files from ‘inst/doc’ ... OK
* checking files in ‘vignettes’ ... OK
* checking examples ... OK
* checking for unstated dependencies in vignettes ... OK
* checking package vignettes in ‘inst/doc’ ... OK
* checking running R code from vignettes ... NONE
  ‘PlatypusV3_agedCNS.Rmd’ using ‘UTF-8’... OK
* checking re-building of vignette outputs ... OK
* DONE
Status: 3 WARNINGs, 2 NOTEs





```
# rstanarm

<details>

* Version: 2.21.4
* GitHub: https://github.com/stan-dev/rstanarm
* Source code: https://github.com/cran/rstanarm
* Date/Publication: 2023-04-08 15:30:02 UTC
* Number of recursive dependencies: 137

Run `revdepcheck::cloud_details(, "rstanarm")` for more info

</details>

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
** package ‘rstanarm’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
"/opt/R/4.2.1/lib/R/bin/Rscript" -e "source(file.path('..', 'tools', 'make_cc.R')); make_cc(commandArgs(TRUE))" stan_files/lm.stan
Wrote C++ file "stan_files/lm.cc"


g++ -std=gnu++17 -I"/opt/R/4.2.1/lib/R/include" -DNDEBUG -I"../inst/include" -I"/opt/R/4.2.1/lib/R/site-library/StanHeaders/include/src" -DBOOST_DISABLE_ASSERTS -DEIGEN_NO_DEBUG -DBOOST_MATH_OVERFLOW_ERROR_POLICY=errno_on_error  -D_HAS_AUTO_PTR_ETC=0 -I'/opt/R/4.2.1/lib/R/site-library/StanHeaders/include' -I'/opt/R/4.2.1/lib/R/site-library/rstan/include' -I'/opt/R/4.2.1/lib/R/site-library/BH/include' -I'/opt/R/4.2.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.2.1/lib/R/site-library/RcppEigen/include' -I'/opt/R/4.2.1/lib/R/site-library/RcppParallel/include' -I/usr/local/include   -I'/opt/R/4.2.1/lib/R/site-library/RcppParallel/include' -D_REENTRANT -DSTAN_THREADS   -fpic  -g -O2  -c stan_files/lm.cc -o stan_files/lm.o
In file included from /opt/R/4.2.1/lib/R/site-library/RcppEigen/include/Eigen/Core:397,
...
stan_files/jm.hpp: In member function ‘void model_jm_namespace::model_jm::ctor_body(stan::io::var_context&, unsigned int, std::ostream*)’:
stan_files/jm.hpp:4877:10: note: variable tracking size limit exceeded with ‘-fvar-tracking-assignments’, retrying without
 4877 |     void ctor_body(stan::io::var_context& context__,
      |          ^~~~~~~~~
g++: fatal error: Killed signal terminated program cc1plus
compilation terminated.
make: *** [/opt/R/4.2.1/lib/R/etc/Makeconf:175: stan_files/jm.o] Error 1
rm stan_files/jm.cc stan_files/binomial.cc stan_files/lm.cc stan_files/count.cc stan_files/mvmer.cc
ERROR: compilation failed for package ‘rstanarm’
* removing ‘/tmp/workdir/rstanarm/new/rstanarm.Rcheck/rstanarm’


```
### CRAN

```
* installing *source* package ‘rstanarm’ ...
** package ‘rstanarm’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
"/opt/R/4.2.1/lib/R/bin/Rscript" -e "source(file.path('..', 'tools', 'make_cc.R')); make_cc(commandArgs(TRUE))" stan_files/lm.stan
Wrote C++ file "stan_files/lm.cc"


g++ -std=gnu++17 -I"/opt/R/4.2.1/lib/R/include" -DNDEBUG -I"../inst/include" -I"/opt/R/4.2.1/lib/R/site-library/StanHeaders/include/src" -DBOOST_DISABLE_ASSERTS -DEIGEN_NO_DEBUG -DBOOST_MATH_OVERFLOW_ERROR_POLICY=errno_on_error  -D_HAS_AUTO_PTR_ETC=0 -I'/opt/R/4.2.1/lib/R/site-library/StanHeaders/include' -I'/opt/R/4.2.1/lib/R/site-library/rstan/include' -I'/opt/R/4.2.1/lib/R/site-library/BH/include' -I'/opt/R/4.2.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.2.1/lib/R/site-library/RcppEigen/include' -I'/opt/R/4.2.1/lib/R/site-library/RcppParallel/include' -I/usr/local/include   -I'/opt/R/4.2.1/lib/R/site-library/RcppParallel/include' -D_REENTRANT -DSTAN_THREADS   -fpic  -g -O2  -c stan_files/lm.cc -o stan_files/lm.o
In file included from /opt/R/4.2.1/lib/R/site-library/RcppEigen/include/Eigen/Core:397,
...
stan_files/jm.hpp: In member function ‘void model_jm_namespace::model_jm::ctor_body(stan::io::var_context&, unsigned int, std::ostream*)’:
stan_files/jm.hpp:4877:10: note: variable tracking size limit exceeded with ‘-fvar-tracking-assignments’, retrying without
 4877 |     void ctor_body(stan::io::var_context& context__,
      |          ^~~~~~~~~
g++: fatal error: Killed signal terminated program cc1plus
compilation terminated.
make: *** [/opt/R/4.2.1/lib/R/etc/Makeconf:175: stan_files/jm.o] Error 1
rm stan_files/jm.cc stan_files/binomial.cc stan_files/lm.cc stan_files/count.cc stan_files/mvmer.cc
ERROR: compilation failed for package ‘rstanarm’
* removing ‘/tmp/workdir/rstanarm/old/rstanarm.Rcheck/rstanarm’


```
# tidyfit

<details>

* Version: 0.6.4
* GitHub: https://github.com/jpfitzinger/tidyfit
* Source code: https://github.com/cran/tidyfit
* Date/Publication: 2023-05-20 15:40:02 UTC
* Number of recursive dependencies: 165

Run `revdepcheck::cloud_details(, "tidyfit")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/tidyfit/new/tidyfit.Rcheck’
* using R version 4.2.1 (2022-06-23)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘tidyfit/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘tidyfit’ version ‘0.6.4’
* package encoding: UTF-8
* checking package namespace information ... OK
...
  ‘Flowchart.Rmd’ using ‘UTF-8’... OK
  ‘Predicting_Boston_House_Prices.Rmd’ using ‘UTF-8’... OK
  ‘Bootstrapping_Confidence_Intervals.Rmd’ using ‘UTF-8’... OK
  ‘Feature_Selection.Rmd’ using ‘UTF-8’... OK
  ‘Multinomial_Classification.Rmd’ using ‘UTF-8’... OK
  ‘Rolling_Window_Time_Series_Regression.Rmd’ using ‘UTF-8’... OK
  ‘Time-varying_parameters_vs_rolling_windows.Rmd’ using ‘UTF-8’... OK
* checking re-building of vignette outputs ... OK
* DONE
Status: 2 ERRORs, 1 NOTE





```
### CRAN

```
* using log directory ‘/tmp/workdir/tidyfit/old/tidyfit.Rcheck’
* using R version 4.2.1 (2022-06-23)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘tidyfit/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘tidyfit’ version ‘0.6.4’
* package encoding: UTF-8
* checking package namespace information ... OK
...
  ‘Flowchart.Rmd’ using ‘UTF-8’... OK
  ‘Predicting_Boston_House_Prices.Rmd’ using ‘UTF-8’... OK
  ‘Bootstrapping_Confidence_Intervals.Rmd’ using ‘UTF-8’... OK
  ‘Feature_Selection.Rmd’ using ‘UTF-8’... OK
  ‘Multinomial_Classification.Rmd’ using ‘UTF-8’... OK
  ‘Rolling_Window_Time_Series_Regression.Rmd’ using ‘UTF-8’... OK
  ‘Time-varying_parameters_vs_rolling_windows.Rmd’ using ‘UTF-8’... OK
* checking re-building of vignette outputs ... OK
* DONE
Status: 2 ERRORs, 1 NOTE





```
# vivid

<details>

* Version: 0.2.7
* GitHub: NA
* Source code: https://github.com/cran/vivid
* Date/Publication: 2023-04-11 13:50:02 UTC
* Number of recursive dependencies: 209

Run `revdepcheck::cloud_details(, "vivid")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/vivid/new/vivid.Rcheck’
* using R version 4.2.1 (2022-06-23)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘vivid/DESCRIPTION’ ... OK
* this is package ‘vivid’ version ‘0.2.7’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... NOTE
...
* checking installed files from ‘inst/doc’ ... OK
* checking files in ‘vignettes’ ... OK
* checking examples ... OK
* checking for unstated dependencies in vignettes ... OK
* checking package vignettes in ‘inst/doc’ ... OK
* checking running R code from vignettes ... NONE
  ‘vividVignette.Rmd’ using ‘UTF-8’... OK
* checking re-building of vignette outputs ... OK
* DONE
Status: 1 NOTE





```
### CRAN

```
* using log directory ‘/tmp/workdir/vivid/old/vivid.Rcheck’
* using R version 4.2.1 (2022-06-23)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘vivid/DESCRIPTION’ ... OK
* this is package ‘vivid’ version ‘0.2.7’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... NOTE
...
* checking installed files from ‘inst/doc’ ... OK
* checking files in ‘vignettes’ ... OK
* checking examples ... OK
* checking for unstated dependencies in vignettes ... OK
* checking package vignettes in ‘inst/doc’ ... OK
* checking running R code from vignettes ... NONE
  ‘vividVignette.Rmd’ using ‘UTF-8’... OK
* checking re-building of vignette outputs ... OK
* DONE
Status: 1 NOTE





```
# xtensor

<details>

* Version: 0.14.1-0
* GitHub: https://github.com/xtensor-stack/xtensor
* Source code: https://github.com/cran/xtensor
* Date/Publication: 2023-02-15 10:00:02 UTC
* Number of recursive dependencies: 32

Run `revdepcheck::cloud_details(, "xtensor")` for more info

</details>

## In both

*   checking whether package ‘xtensor’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/xtensor/new/xtensor.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘xtensor’ ...
** package ‘xtensor’ successfully unpacked and MD5 sums checked
** using staged installation
Vendoring of xtensor headers is enabled.
./tools/vendor: 11: git: not found
cp: cannot stat 'xtl/include/xtl': No such file or directory
./tools/vendor: 15: cannot create ./inst/include/xtl/xhalf_float_impl.hpp: Directory nonexistent
./tools/vendor: 23: git: not found
cp: cannot stat 'xsimd/include/xsimd': No such file or directory
./tools/vendor: 33: git: not found
...
** libs
g++ -std=gnu++14 -I"/opt/R/4.2.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.2.1/lib/R/site-library/Rcpp/include' -I/usr/local/include  -I../inst/include --std=c++14 -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
In file included from RcppExports.cpp:4:
../inst/include/xtensor.h:1:10: fatal error: xtensor-r/rcontainer.hpp: No such file or directory
    1 | #include "xtensor-r/rcontainer.hpp"
      |          ^~~~~~~~~~~~~~~~~~~~~~~~~~
compilation terminated.
make: *** [/opt/R/4.2.1/lib/R/etc/Makeconf:177: RcppExports.o] Error 1
ERROR: compilation failed for package ‘xtensor’
* removing ‘/tmp/workdir/xtensor/new/xtensor.Rcheck/xtensor’


```
### CRAN

```
* installing *source* package ‘xtensor’ ...
** package ‘xtensor’ successfully unpacked and MD5 sums checked
** using staged installation
Vendoring of xtensor headers is enabled.
./tools/vendor: 11: git: not found
cp: cannot stat 'xtl/include/xtl': No such file or directory
./tools/vendor: 15: cannot create ./inst/include/xtl/xhalf_float_impl.hpp: Directory nonexistent
./tools/vendor: 23: git: not found
cp: cannot stat 'xsimd/include/xsimd': No such file or directory
./tools/vendor: 33: git: not found
...
** libs
g++ -std=gnu++14 -I"/opt/R/4.2.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.2.1/lib/R/site-library/Rcpp/include' -I/usr/local/include  -I../inst/include --std=c++14 -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
In file included from RcppExports.cpp:4:
../inst/include/xtensor.h:1:10: fatal error: xtensor-r/rcontainer.hpp: No such file or directory
    1 | #include "xtensor-r/rcontainer.hpp"
      |          ^~~~~~~~~~~~~~~~~~~~~~~~~~
compilation terminated.
make: *** [/opt/R/4.2.1/lib/R/etc/Makeconf:177: RcppExports.o] Error 1
ERROR: compilation failed for package ‘xtensor’
* removing ‘/tmp/workdir/xtensor/old/xtensor.Rcheck/xtensor’


```
