# doMIsaul

<details>

* Version: 1.0.0
* GitHub: https://github.com/LilithF/doMIsaul
* Source code: https://github.com/cran/doMIsaul
* Date/Publication: 2021-08-05 08:20:02 UTC
* Number of recursive dependencies: 183

Run `cloud_details(, "doMIsaul")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/doMIsaul/new/doMIsaul.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘doMIsaul/DESCRIPTION’ ... OK
* this is package ‘doMIsaul’ version ‘1.0.0’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'aricode', 'Gmedian', 'mice', 'plyr'

Packages suggested but not available for checking:
  'CPE', 'dbscan', 'ggpubr', 'reshape2', 'timeROC'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/doMIsaul/old/doMIsaul.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘doMIsaul/DESCRIPTION’ ... OK
* this is package ‘doMIsaul’ version ‘1.0.0’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'aricode', 'Gmedian', 'mice', 'plyr'

Packages suggested but not available for checking:
  'CPE', 'dbscan', 'ggpubr', 'reshape2', 'timeROC'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# dynplot

<details>

* Version: 1.1.1
* GitHub: https://github.com/dynverse/dynplot
* Source code: https://github.com/cran/dynplot
* Date/Publication: 2021-06-28 06:30:02 UTC
* Number of recursive dependencies: 129

Run `cloud_details(, "dynplot")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/dynplot/new/dynplot.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘dynplot/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘dynplot’ version ‘1.1.1’
* package encoding: UTF-8
* checking package namespace information ... OK
...
* checking package dependencies ... ERROR
Packages required but not available:
  'ggforce', 'ggplot2', 'ggraph', 'ggrepel', 'patchwork'

Package suggested but not available for checking: ‘RColorBrewer’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/dynplot/old/dynplot.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘dynplot/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘dynplot’ version ‘1.1.1’
* package encoding: UTF-8
* checking package namespace information ... OK
...
* checking package dependencies ... ERROR
Packages required but not available:
  'ggforce', 'ggplot2', 'ggraph', 'ggrepel', 'patchwork'

Package suggested but not available for checking: ‘RColorBrewer’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





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
./include/Eigen/src/Core/PlainObjectBase.h:787:32:   required from ‘Derived& Eigen::PlainObjectBase<Derived>::_set(const Eigen::DenseBase<OtherDerived>&) [with OtherDerived = Eigen::Product<Eigen::Product<Eigen::SparseMatrix<double>, Eigen::Matrix<double, -1, -1>, 0>, Eigen::Transpose<const Eigen::SparseMatrix<double> >, 0>; Derived = Eigen::Matrix<double, -1, -1>]’
./include/Eigen/src/Core/Matrix.h:225:24:   required from ‘Eigen::Matrix<_Scalar, _Rows, _Cols, _Options, _MaxRows, _MaxCols>& Eigen::Matrix<_Scalar, _Rows, _Cols, _Options, _MaxRows, _MaxCols>::operator=(const Eigen::DenseBase<OtherDerived>&) [with OtherDerived = Eigen::Product<Eigen::Product<Eigen::SparseMatrix<double>, Eigen::Matrix<double, -1, -1>, 0>, Eigen::Transpose<const Eigen::SparseMatrix<double> >, 0>; _Scalar = double; int _Rows = -1; int _Cols = -1; int _Options = 0; int _MaxRows = -1; int _MaxCols = -1]’
./include/GPBoost/re_comp.h:977:22:   required from ‘std::shared_ptr<_Tp> GPBoost::RECompGP<T_mat>::GetZSigmaZtGrad(int, bool, double) const [with T_mat = Eigen::Matrix<double, -1, -1>]’
./include/GPBoost/re_comp.h:950:26:   required from here
./include/Eigen/src/SparseCore/SparseMatrixBase.h:47:30: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__vector(2) double’} [-Wignored-attributes]
g++: fatal error: Killed signal terminated program cc1plus
compilation terminated.
make: *** [/opt/R/4.0.3/lib/R/etc/Makeconf:181: re_model.o] Error 1
ERROR: compilation failed for package ‘gpboost’
* removing ‘/tmp/workdir/gpboost/old/gpboost.Rcheck/gpboost’


```
# quanteda

<details>

* Version: 3.1.0
* GitHub: https://github.com/quanteda/quanteda
* Source code: https://github.com/cran/quanteda
* Date/Publication: 2021-08-17 16:10:02 UTC
* Number of recursive dependencies: 125

Run `cloud_details(, "quanteda")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/quanteda/new/quanteda.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘quanteda/DESCRIPTION’ ... OK
* this is package ‘quanteda’ version ‘3.1.0’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
...
Package required but not available: ‘fastmatch’

Packages suggested but not available for checking:
  'quanteda.textmodels', 'quanteda.textstats', 'quanteda.textplots',
  'stm', 'quanteda'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/quanteda/old/quanteda.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘quanteda/DESCRIPTION’ ... OK
* this is package ‘quanteda’ version ‘3.1.0’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
...
Package required but not available: ‘fastmatch’

Packages suggested but not available for checking:
  'quanteda.textmodels', 'quanteda.textstats', 'quanteda.textplots',
  'stm', 'quanteda'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# rbison

<details>

* Version: 1.0.0
* GitHub: https://github.com/ropensci/rbison
* Source code: https://github.com/cran/rbison
* Date/Publication: 2020-06-08 18:30:03 UTC
* Number of recursive dependencies: 141

Run `cloud_details(, "rbison")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/rbison/new/rbison.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘rbison/DESCRIPTION’ ... OK
* this is package ‘rbison’ version ‘1.0.0’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... NOTE
...
  Calls: test_check ... source_dir -> lapply -> FUN -> eval -> eval -> library
  Execution halted
* checking for unstated dependencies in vignettes ... OK
* checking package vignettes in ‘inst/doc’ ... OK
* checking running R code from vignettes ... NONE
  ‘other_functions.Rmd’ using ‘UTF-8’... OK
  ‘rbison.Rmd’ using ‘UTF-8’... OK
* checking re-building of vignette outputs ... SKIPPED
* DONE
Status: 1 ERROR, 1 NOTE





```
### CRAN

```
* using log directory ‘/tmp/workdir/rbison/old/rbison.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘rbison/DESCRIPTION’ ... OK
* this is package ‘rbison’ version ‘1.0.0’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... NOTE
...
  Calls: test_check ... source_dir -> lapply -> FUN -> eval -> eval -> library
  Execution halted
* checking for unstated dependencies in vignettes ... OK
* checking package vignettes in ‘inst/doc’ ... OK
* checking running R code from vignettes ... NONE
  ‘other_functions.Rmd’ using ‘UTF-8’... OK
  ‘rbison.Rmd’ using ‘UTF-8’... OK
* checking re-building of vignette outputs ... SKIPPED
* DONE
Status: 1 ERROR, 1 NOTE





```
# rmdcev

<details>

* Version: 1.2.4
* GitHub: https://github.com/plloydsmith/rmdcev
* Source code: https://github.com/cran/rmdcev
* Date/Publication: 2020-09-30 18:40:02 UTC
* Number of recursive dependencies: 82

Run `cloud_details(, "rmdcev")` for more info

</details>

## In both

*   checking whether package ‘rmdcev’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/rmdcev/new/rmdcev.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘rmdcev’ ...
** package ‘rmdcev’ successfully unpacked and MD5 sums checked
** using staged installation
** libs


g++ -std=gnu++14 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -I"../inst/include" -I"/opt/R/4.0.3/lib/R/site-library/StanHeaders/include/src" -DBOOST_DISABLE_ASSERTS -DEIGEN_NO_DEBUG -DBOOST_MATH_OVERFLOW_ERROR_POLICY=errno_on_error -I'/opt/R/4.0.3/lib/R/site-library/BH/include' -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppEigen/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppParallel/include' -I'/opt/R/4.0.3/lib/R/site-library/rstan/include' -I'/opt/R/4.0.3/lib/R/site-library/StanHeaders/include' -I/usr/local/include   -I'/opt/R/4.0.3/lib/R/site-library/RcppParallel/include' -D_REENTRANT -DSTAN_THREADS   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
In file included from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/Core:397,
                 from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/Dense:1,
                 from /opt/R/4.0.3/lib/R/site-library/StanHeaders/include/stan/math/prim/mat/fun/Eigen.hpp:13,
...
/opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/src/Core/ProductEvaluators.h:35:90:   required from ‘Eigen::internal::evaluator<Eigen::Product<Lhs, Rhs, Option> >::evaluator(const XprType&) [with Lhs = Eigen::Product<Eigen::CwiseBinaryOp<Eigen::internal::scalar_product_op<double, double>, const Eigen::CwiseNullaryOp<Eigen::internal::scalar_constant_op<double>, const Eigen::Matrix<double, 1, -1> >, const Eigen::Transpose<Eigen::Matrix<double, -1, 1> > >, Eigen::Matrix<double, -1, -1>, 0>; Rhs = Eigen::Matrix<double, -1, 1>; int Options = 0; Eigen::internal::evaluator<Eigen::Product<Lhs, Rhs, Option> >::XprType = Eigen::Product<Eigen::Product<Eigen::CwiseBinaryOp<Eigen::internal::scalar_product_op<double, double>, const Eigen::CwiseNullaryOp<Eigen::internal::scalar_constant_op<double>, const Eigen::Matrix<double, 1, -1> >, const Eigen::Transpose<Eigen::Matrix<double, -1, 1> > >, Eigen::Matrix<double, -1, -1>, 0>, Eigen::Matrix<double, -1, 1>, 0>]’
/opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/src/Core/Product.h:132:22:   required from ‘Eigen::internal::dense_product_base<Lhs, Rhs, Option, 6>::operator const Scalar() const [with Lhs = Eigen::Product<Eigen::CwiseBinaryOp<Eigen::internal::scalar_product_op<double, double>, const Eigen::CwiseNullaryOp<Eigen::internal::scalar_constant_op<double>, const Eigen::Matrix<double, 1, -1> >, const Eigen::Transpose<Eigen::Matrix<double, -1, 1> > >, Eigen::Matrix<double, -1, -1>, 0>; Rhs = Eigen::Matrix<double, -1, 1>; int Option = 0; Eigen::internal::dense_product_base<Lhs, Rhs, Option, 6>::Scalar = double]’
/opt/R/4.0.3/lib/R/site-library/StanHeaders/include/src/stan/mcmc/hmc/hamiltonians/dense_e_metric.hpp:23:56:   required from ‘double stan::mcmc::dense_e_metric<Model, BaseRNG>::T(stan::mcmc::dense_e_point&) [with Model = model_mdcev_namespace::model_mdcev; BaseRNG = boost::random::additive_combine_engine<boost::random::linear_congruential_engine<unsigned int, 40014, 0, 2147483563>, boost::random::linear_congruential_engine<unsigned int, 40692, 0, 2147483399> >]’
/opt/R/4.0.3/lib/R/site-library/StanHeaders/include/src/stan/mcmc/hmc/hamiltonians/dense_e_metric.hpp:22:10:   required from here
/opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:55:30: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__vector(2) double’} [-Wignored-attributes]
g++: fatal error: Killed signal terminated program cc1plus
compilation terminated.
make: *** [/opt/R/4.0.3/lib/R/etc/Makeconf:179: stanExports_mdcev.o] Error 1
ERROR: compilation failed for package ‘rmdcev’
* removing ‘/tmp/workdir/rmdcev/new/rmdcev.Rcheck/rmdcev’


```
### CRAN

```
* installing *source* package ‘rmdcev’ ...
** package ‘rmdcev’ successfully unpacked and MD5 sums checked
** using staged installation
** libs


g++ -std=gnu++14 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -I"../inst/include" -I"/opt/R/4.0.3/lib/R/site-library/StanHeaders/include/src" -DBOOST_DISABLE_ASSERTS -DEIGEN_NO_DEBUG -DBOOST_MATH_OVERFLOW_ERROR_POLICY=errno_on_error -I'/opt/R/4.0.3/lib/R/site-library/BH/include' -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppEigen/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppParallel/include' -I'/opt/R/4.0.3/lib/R/site-library/rstan/include' -I'/opt/R/4.0.3/lib/R/site-library/StanHeaders/include' -I/usr/local/include   -I'/opt/R/4.0.3/lib/R/site-library/RcppParallel/include' -D_REENTRANT -DSTAN_THREADS   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
In file included from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/Core:397,
                 from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/Dense:1,
                 from /opt/R/4.0.3/lib/R/site-library/StanHeaders/include/stan/math/prim/mat/fun/Eigen.hpp:13,
...
/opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/src/Core/ProductEvaluators.h:35:90:   required from ‘Eigen::internal::evaluator<Eigen::Product<Lhs, Rhs, Option> >::evaluator(const XprType&) [with Lhs = Eigen::Product<Eigen::CwiseBinaryOp<Eigen::internal::scalar_product_op<double, double>, const Eigen::CwiseNullaryOp<Eigen::internal::scalar_constant_op<double>, const Eigen::Matrix<double, 1, -1> >, const Eigen::Transpose<Eigen::Matrix<double, -1, 1> > >, Eigen::Matrix<double, -1, -1>, 0>; Rhs = Eigen::Matrix<double, -1, 1>; int Options = 0; Eigen::internal::evaluator<Eigen::Product<Lhs, Rhs, Option> >::XprType = Eigen::Product<Eigen::Product<Eigen::CwiseBinaryOp<Eigen::internal::scalar_product_op<double, double>, const Eigen::CwiseNullaryOp<Eigen::internal::scalar_constant_op<double>, const Eigen::Matrix<double, 1, -1> >, const Eigen::Transpose<Eigen::Matrix<double, -1, 1> > >, Eigen::Matrix<double, -1, -1>, 0>, Eigen::Matrix<double, -1, 1>, 0>]’
/opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/src/Core/Product.h:132:22:   required from ‘Eigen::internal::dense_product_base<Lhs, Rhs, Option, 6>::operator const Scalar() const [with Lhs = Eigen::Product<Eigen::CwiseBinaryOp<Eigen::internal::scalar_product_op<double, double>, const Eigen::CwiseNullaryOp<Eigen::internal::scalar_constant_op<double>, const Eigen::Matrix<double, 1, -1> >, const Eigen::Transpose<Eigen::Matrix<double, -1, 1> > >, Eigen::Matrix<double, -1, -1>, 0>; Rhs = Eigen::Matrix<double, -1, 1>; int Option = 0; Eigen::internal::dense_product_base<Lhs, Rhs, Option, 6>::Scalar = double]’
/opt/R/4.0.3/lib/R/site-library/StanHeaders/include/src/stan/mcmc/hmc/hamiltonians/dense_e_metric.hpp:23:56:   required from ‘double stan::mcmc::dense_e_metric<Model, BaseRNG>::T(stan::mcmc::dense_e_point&) [with Model = model_mdcev_namespace::model_mdcev; BaseRNG = boost::random::additive_combine_engine<boost::random::linear_congruential_engine<unsigned int, 40014, 0, 2147483563>, boost::random::linear_congruential_engine<unsigned int, 40692, 0, 2147483399> >]’
/opt/R/4.0.3/lib/R/site-library/StanHeaders/include/src/stan/mcmc/hmc/hamiltonians/dense_e_metric.hpp:22:10:   required from here
/opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:55:30: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__vector(2) double’} [-Wignored-attributes]
g++: fatal error: Killed signal terminated program cc1plus
compilation terminated.
make: *** [/opt/R/4.0.3/lib/R/etc/Makeconf:179: stanExports_mdcev.o] Error 1
ERROR: compilation failed for package ‘rmdcev’
* removing ‘/tmp/workdir/rmdcev/old/rmdcev.Rcheck/rmdcev’


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
# seqgendiff

<details>

* Version: 1.2.2
* GitHub: https://github.com/dcgerard/seqgendiff
* Source code: https://github.com/cran/seqgendiff
* Date/Publication: 2020-05-24 19:20:05 UTC
* Number of recursive dependencies: 136

Run `cloud_details(, "seqgendiff")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/seqgendiff/new/seqgendiff.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘seqgendiff/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘seqgendiff’ version ‘1.2.2’
* package encoding: UTF-8
* checking package namespace information ... OK
...
Packages required but not available: 'sva', 'cate'

Packages suggested but not available for checking:
  'SummarizedExperiment', 'DESeq2', 'airway', 'limma', 'qvalue',
  'edgeR'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/seqgendiff/old/seqgendiff.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘seqgendiff/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘seqgendiff’ version ‘1.2.2’
* package encoding: UTF-8
* checking package namespace information ... OK
...
Packages required but not available: 'sva', 'cate'

Packages suggested but not available for checking:
  'SummarizedExperiment', 'DESeq2', 'airway', 'limma', 'qvalue',
  'edgeR'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# shattering

<details>

* Version: 1.0.7
* GitHub: NA
* Source code: https://github.com/cran/shattering
* Date/Publication: 2021-08-21 13:50:02 UTC
* Number of recursive dependencies: 84

Run `cloud_details(, "shattering")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/shattering/new/shattering.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘shattering/DESCRIPTION’ ... OK
* this is package ‘shattering’ version ‘1.0.7’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘NMF’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/shattering/old/shattering.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘shattering/DESCRIPTION’ ... OK
* this is package ‘shattering’ version ‘1.0.7’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘NMF’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# stablespec

<details>

* Version: 0.3.0
* GitHub: https://github.com/rahmarid/stablespec
* Source code: https://github.com/cran/stablespec
* Date/Publication: 2017-04-05 03:27:52 UTC
* Number of recursive dependencies: 96

Run `cloud_details(, "stablespec")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/stablespec/new/stablespec.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘stablespec/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘stablespec’ version ‘0.3.0’
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'ggm', 'graph', 'Rgraphviz'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/stablespec/old/stablespec.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘stablespec/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘stablespec’ version ‘0.3.0’
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'ggm', 'graph', 'Rgraphviz'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# superb

<details>

* Version: 0.9.7.5
* GitHub: https://github.com/dcousin3/superb
* Source code: https://github.com/cran/superb
* Date/Publication: 2021-06-23 04:10:02 UTC
* Number of recursive dependencies: 162

Run `cloud_details(, "superb")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/superb/new/superb.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘superb/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘superb’ version ‘0.9.7.5’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘referenceIntervals’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/superb/old/superb.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘superb/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘superb’ version ‘0.9.7.5’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘referenceIntervals’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# tinyarray

<details>

* Version: 2.2.6
* GitHub: https://github.com/xjsun1221/tinyarray
* Source code: https://github.com/cran/tinyarray
* Date/Publication: 2021-09-14 06:40:02 UTC
* Number of recursive dependencies: 206

Run `cloud_details(, "tinyarray")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/tinyarray/new/tinyarray.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘tinyarray/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘tinyarray’ version ‘2.2.6’
* package encoding: UTF-8
* checking package namespace information ... OK
...
Packages required but not available:
  'clusterProfiler', 'limma', 'org.Hs.eg.db'

Packages suggested but not available for checking:
  'AnnoProbe', 'GEOquery', 'Biobase'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/tinyarray/old/tinyarray.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘tinyarray/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘tinyarray’ version ‘2.2.6’
* package encoding: UTF-8
* checking package namespace information ... OK
...
Packages required but not available:
  'clusterProfiler', 'limma', 'org.Hs.eg.db'

Packages suggested but not available for checking:
  'AnnoProbe', 'GEOquery', 'Biobase'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
