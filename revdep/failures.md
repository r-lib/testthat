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
../inst/include/Eigen/src/Core/AssignEvaluator.h:890:49:   [ skipping 17 instantiation contexts, use -ftemplate-backtrace-limit=0 to disable ]
../inst/include/Eigen/src/Householder/HouseholderSequence.h:399:46:   required from ‘void Eigen::HouseholderSequence<VectorsType, CoeffsType, Side>::applyThisOnTheLeft(Dest&, Workspace&, bool) const [with Dest = Eigen::Matrix<double, -1, -1>; Workspace = Eigen::Matrix<double, -1, 1>; VectorsType = Eigen::Matrix<double, -1, -1>; CoeffsType = Eigen::Matrix<double, -1, 1>; int Side = 1]’
../inst/include/Eigen/src/Householder/HouseholderSequence.h:320:11:   required from ‘void Eigen::HouseholderSequence<VectorsType, CoeffsType, Side>::evalTo(Dest&, Workspace&) const [with Dest = Eigen::Matrix<double, -1, -1>; Workspace = Eigen::Matrix<double, -1, 1>; VectorsType = Eigen::Matrix<double, -1, -1>; CoeffsType = Eigen::Matrix<double, -1, 1>; int Side = 1]’
../inst/include/Eigen/src/Eigenvalues/RealSchur.h:278:5:   required from ‘Eigen::RealSchur<MatrixType>& Eigen::RealSchur<_MatrixType>::compute(const Eigen::EigenBase<OtherDerived>&, bool) [with InputType = Eigen::Map<const Eigen::Matrix<double, -1, -1>, 0, Eigen::Stride<0, 0> >; _MatrixType = Eigen::Matrix<double, -1, -1>]’
../inst/include/Eigen/src/Eigenvalues/EigenSolver.h:389:3:   required from ‘Eigen::EigenSolver<MatrixType>& Eigen::EigenSolver<_MatrixType>::compute(const Eigen::EigenBase<OtherDerived>&, bool) [with InputType = Eigen::Map<const Eigen::Matrix<double, -1, -1>, 0, Eigen::Stride<0, 0> >; _MatrixType = Eigen::Matrix<double, -1, -1>]’
../inst/include/Eigen/src/Eigenvalues/EigenSolver.h:156:7:   required from ‘Eigen::EigenSolver<_MatrixType>::EigenSolver(const Eigen::EigenBase<OtherDerived>&, bool) [with InputType = Eigen::Map<const Eigen::Matrix<double, -1, -1>, 0, Eigen::Stride<0, 0> >; _MatrixType = Eigen::Matrix<double, -1, -1>]’
LinAlg/Eigen.cpp:37:62:   required from here
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
../inst/include/Eigen/src/Core/AssignEvaluator.h:890:49:   [ skipping 17 instantiation contexts, use -ftemplate-backtrace-limit=0 to disable ]
../inst/include/Eigen/src/Householder/HouseholderSequence.h:399:46:   required from ‘void Eigen::HouseholderSequence<VectorsType, CoeffsType, Side>::applyThisOnTheLeft(Dest&, Workspace&, bool) const [with Dest = Eigen::Matrix<double, -1, -1>; Workspace = Eigen::Matrix<double, -1, 1>; VectorsType = Eigen::Matrix<double, -1, -1>; CoeffsType = Eigen::Matrix<double, -1, 1>; int Side = 1]’
../inst/include/Eigen/src/Householder/HouseholderSequence.h:320:11:   required from ‘void Eigen::HouseholderSequence<VectorsType, CoeffsType, Side>::evalTo(Dest&, Workspace&) const [with Dest = Eigen::Matrix<double, -1, -1>; Workspace = Eigen::Matrix<double, -1, 1>; VectorsType = Eigen::Matrix<double, -1, -1>; CoeffsType = Eigen::Matrix<double, -1, 1>; int Side = 1]’
../inst/include/Eigen/src/Eigenvalues/RealSchur.h:278:5:   required from ‘Eigen::RealSchur<MatrixType>& Eigen::RealSchur<_MatrixType>::compute(const Eigen::EigenBase<OtherDerived>&, bool) [with InputType = Eigen::Map<const Eigen::Matrix<double, -1, -1>, 0, Eigen::Stride<0, 0> >; _MatrixType = Eigen::Matrix<double, -1, -1>]’
../inst/include/Eigen/src/Eigenvalues/EigenSolver.h:389:3:   required from ‘Eigen::EigenSolver<MatrixType>& Eigen::EigenSolver<_MatrixType>::compute(const Eigen::EigenBase<OtherDerived>&, bool) [with InputType = Eigen::Map<const Eigen::Matrix<double, -1, -1>, 0, Eigen::Stride<0, 0> >; _MatrixType = Eigen::Matrix<double, -1, -1>]’
../inst/include/Eigen/src/Eigenvalues/EigenSolver.h:156:7:   required from ‘Eigen::EigenSolver<_MatrixType>::EigenSolver(const Eigen::EigenBase<OtherDerived>&, bool) [with InputType = Eigen::Map<const Eigen::Matrix<double, -1, -1>, 0, Eigen::Stride<0, 0> >; _MatrixType = Eigen::Matrix<double, -1, -1>]’
LinAlg/Eigen.cpp:37:62:   required from here
../inst/include/Eigen/src/Core/CoreEvaluators.h:1042:8: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__vector(2) double’} [-Wignored-attributes]
ERROR: compilation failed for package ‘Boom’
* removing ‘/tmp/workdir/Boom/old/Boom.Rcheck/Boom’


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
In file included from stanExports_ctsm.cc:5:
stanExports_ctsm.h: In member function ‘T__ model_ctsm_namespace::model_ctsm::log_prob(std::vector<T_l>&, std::vector<int>&, std::ostream*) const [with bool propto__ = false; bool jacobian__ = true; T__ = double]’:
stanExports_ctsm.h:2091:9: note: variable tracking size limit exceeded with ‘-fvar-tracking-assignments’, retrying without
 2091 |     T__ log_prob(std::vector<T__>& params_r__,
      |         ^~~~~~~~
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
In file included from stanExports_ctsm.cc:5:
stanExports_ctsm.h: In member function ‘T__ model_ctsm_namespace::model_ctsm::log_prob(std::vector<T_l>&, std::vector<int>&, std::ostream*) const [with bool propto__ = false; bool jacobian__ = true; T__ = double]’:
stanExports_ctsm.h:2091:9: note: variable tracking size limit exceeded with ‘-fvar-tracking-assignments’, retrying without
 2091 |     T__ log_prob(std::vector<T__>& params_r__,
      |         ^~~~~~~~
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
