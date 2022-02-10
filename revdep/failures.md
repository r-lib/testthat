[1m# bayesmodels[22m

<details>

* Version: 0.1.1
* GitHub: https://github.com/AlbertoAlmuinha/bayesmodels
* Source code: https://github.com/cran/bayesmodels
* Date/Publication: 2021-06-28 21:30:02 UTC
* Number of recursive dependencies: 254

Run `cloud_details(, "bayesmodels")` for more info

</details>

[1m## Error before installation[22m

[1m### Devel[22m

```
* using log directory ‘/tmp/workdir/bayesmodels/new/bayesmodels.Rcheck’
* using R version 4.1.1 (2021-08-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘bayesmodels/DESCRIPTION’ ... OK
* this is package ‘bayesmodels’ version ‘0.1.1’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘bsts’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
[1m### CRAN[22m

```
* using log directory ‘/tmp/workdir/bayesmodels/old/bayesmodels.Rcheck’
* using R version 4.1.1 (2021-08-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘bayesmodels/DESCRIPTION’ ... OK
* this is package ‘bayesmodels’ version ‘0.1.1’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘bsts’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
[1m# Boom[22m

<details>

* Version: 0.9.7
* GitHub: NA
* Source code: https://github.com/cran/Boom
* Date/Publication: 2021-02-23 17:40:03 UTC
* Number of recursive dependencies: 32

Run `cloud_details(, "Boom")` for more info

</details>

[1m## In both[22m

*   [31mchecking whether package ‘Boom’ can be installed ... ERROR[39m
    ```
    Installation failed.
    See ‘/tmp/workdir/Boom/new/Boom.Rcheck/00install.out’ for details.
    ```

[1m## Installation[22m

[1m### Devel[22m

```
* installing *source* package ‘Boom’ ...
** package ‘Boom’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++11 -I"/opt/R/4.1.1/lib/R/include" -DNDEBUG -I. -I../inst/include -IBmath -Imath/cephes -DADD_ -DR_NO_REMAP -DEIGEN_WARNINGS_DISABLED  -I/usr/local/include   -fpic  -g -O2  -c boom_r_tools.cpp -o boom_r_tools.o
g++ -std=gnu++11 -I"/opt/R/4.1.1/lib/R/include" -DNDEBUG -I. -I../inst/include -IBmath -Imath/cephes -DADD_ -DR_NO_REMAP -DEIGEN_WARNINGS_DISABLED  -I/usr/local/include   -fpic  -g -O2  -c create_poisson_process.cpp -o create_poisson_process.o
g++ -std=gnu++11 -I"/opt/R/4.1.1/lib/R/include" -DNDEBUG -I. -I../inst/include -IBmath -Imath/cephes -DADD_ -DR_NO_REMAP -DEIGEN_WARNINGS_DISABLED  -I/usr/local/include   -fpic  -g -O2  -c create_mixture_component.cpp -o create_mixture_component.o
g++ -std=gnu++11 -I"/opt/R/4.1.1/lib/R/include" -DNDEBUG -I. -I../inst/include -IBmath -Imath/cephes -DADD_ -DR_NO_REMAP -DEIGEN_WARNINGS_DISABLED  -I/usr/local/include   -fpic  -g -O2  -c parse_model_formula.cpp -o parse_model_formula.o
g++ -std=gnu++11 -I"/opt/R/4.1.1/lib/R/include" -DNDEBUG -I. -I../inst/include -IBmath -Imath/cephes -DADD_ -DR_NO_REMAP -DEIGEN_WARNINGS_DISABLED  -I/usr/local/include   -fpic  -g -O2  -c extract_mixture_data.cpp -o extract_mixture_data.o
g++ -std=gnu++11 -I"/opt/R/4.1.1/lib/R/include" -DNDEBUG -I. -I../inst/include -IBmath -Imath/cephes -DADD_ -DR_NO_REMAP -DEIGEN_WARNINGS_DISABLED  -I/usr/local/include   -fpic  -g -O2  -c seed_rng_from_R.cpp -o seed_rng_from_R.o
...
../inst/include/Eigen/src/Core/products/TriangularMatrixVector.h:282:27:   [ skipping 14 instantiation contexts, use -ftemplate-backtrace-limit=0 to disable ]
../inst/include/Eigen/src/Householder/BlockHouseholder.h:85:55:   required from ‘void Eigen::internal::apply_block_householder_on_the_left(MatrixType&, const VectorsType&, const CoeffsType&, bool) [with MatrixType = Eigen::Block<Eigen::Matrix<double, -1, -1>, -1, -1, false>; VectorsType = Eigen::Block<Eigen::Matrix<double, -1, -1>, -1, -1, false>; CoeffsType = Eigen::VectorBlock<const Eigen::Matrix<double, -1, 1>, -1>]’
../inst/include/Eigen/src/Householder/HouseholderSequence.h:333:46:   required from ‘void Eigen::HouseholderSequence<VectorsType, CoeffsType, Side>::applyThisOnTheLeft(Dest&, Workspace&) const [with Dest = Eigen::Matrix<double, -1, -1>; Workspace = Eigen::Matrix<double, 1, -1>; VectorsType = Eigen::Matrix<double, -1, -1>; CoeffsType = Eigen::Matrix<double, -1, 1>; int Side = 1]’
../inst/include/Eigen/src/SVD/JacobiSVD.h:237:9:   required from ‘bool Eigen::internal::qr_preconditioner_impl<MatrixType, 2, 0, true>::run(Eigen::JacobiSVD<MatrixType, 2>&, const MatrixType&) [with MatrixType = Eigen::Matrix<double, -1, -1>]’
../inst/include/Eigen/src/SVD/JacobiSVD.h:684:5:   required from ‘Eigen::JacobiSVD<MatrixType, QRPreconditioner>& Eigen::JacobiSVD<MatrixType, QRPreconditioner>::compute(const MatrixType&, unsigned int) [with _MatrixType = Eigen::Matrix<double, -1, -1>; int QRPreconditioner = 2; Eigen::JacobiSVD<MatrixType, QRPreconditioner>::MatrixType = Eigen::Matrix<double, -1, -1>]’
../inst/include/Eigen/src/SVD/JacobiSVD.h:548:7:   required from ‘Eigen::JacobiSVD<MatrixType, QRPreconditioner>::JacobiSVD(const MatrixType&, unsigned int) [with _MatrixType = Eigen::Matrix<double, -1, -1>; int QRPreconditioner = 2; Eigen::JacobiSVD<MatrixType, QRPreconditioner>::MatrixType = Eigen::Matrix<double, -1, -1>]’
LinAlg/Matrix.cpp:759:67:   required from here
../inst/include/Eigen/src/Core/CoreEvaluators.h:960:8: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__vector(2) double’} [-Wignored-attributes]
ERROR: compilation failed for package ‘Boom’
* removing ‘/tmp/workdir/Boom/new/Boom.Rcheck/Boom’


```
[1m### CRAN[22m

```
* installing *source* package ‘Boom’ ...
** package ‘Boom’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++11 -I"/opt/R/4.1.1/lib/R/include" -DNDEBUG -I. -I../inst/include -IBmath -Imath/cephes -DADD_ -DR_NO_REMAP -DEIGEN_WARNINGS_DISABLED  -I/usr/local/include   -fpic  -g -O2  -c boom_r_tools.cpp -o boom_r_tools.o
g++ -std=gnu++11 -I"/opt/R/4.1.1/lib/R/include" -DNDEBUG -I. -I../inst/include -IBmath -Imath/cephes -DADD_ -DR_NO_REMAP -DEIGEN_WARNINGS_DISABLED  -I/usr/local/include   -fpic  -g -O2  -c create_poisson_process.cpp -o create_poisson_process.o
g++ -std=gnu++11 -I"/opt/R/4.1.1/lib/R/include" -DNDEBUG -I. -I../inst/include -IBmath -Imath/cephes -DADD_ -DR_NO_REMAP -DEIGEN_WARNINGS_DISABLED  -I/usr/local/include   -fpic  -g -O2  -c create_mixture_component.cpp -o create_mixture_component.o
g++ -std=gnu++11 -I"/opt/R/4.1.1/lib/R/include" -DNDEBUG -I. -I../inst/include -IBmath -Imath/cephes -DADD_ -DR_NO_REMAP -DEIGEN_WARNINGS_DISABLED  -I/usr/local/include   -fpic  -g -O2  -c parse_model_formula.cpp -o parse_model_formula.o
g++ -std=gnu++11 -I"/opt/R/4.1.1/lib/R/include" -DNDEBUG -I. -I../inst/include -IBmath -Imath/cephes -DADD_ -DR_NO_REMAP -DEIGEN_WARNINGS_DISABLED  -I/usr/local/include   -fpic  -g -O2  -c extract_mixture_data.cpp -o extract_mixture_data.o
g++ -std=gnu++11 -I"/opt/R/4.1.1/lib/R/include" -DNDEBUG -I. -I../inst/include -IBmath -Imath/cephes -DADD_ -DR_NO_REMAP -DEIGEN_WARNINGS_DISABLED  -I/usr/local/include   -fpic  -g -O2  -c seed_rng_from_R.cpp -o seed_rng_from_R.o
...
../inst/include/Eigen/src/Core/products/TriangularMatrixVector.h:282:27:   [ skipping 14 instantiation contexts, use -ftemplate-backtrace-limit=0 to disable ]
../inst/include/Eigen/src/Householder/BlockHouseholder.h:85:55:   required from ‘void Eigen::internal::apply_block_householder_on_the_left(MatrixType&, const VectorsType&, const CoeffsType&, bool) [with MatrixType = Eigen::Block<Eigen::Matrix<double, -1, -1>, -1, -1, false>; VectorsType = Eigen::Block<Eigen::Matrix<double, -1, -1>, -1, -1, false>; CoeffsType = Eigen::VectorBlock<const Eigen::Matrix<double, -1, 1>, -1>]’
../inst/include/Eigen/src/Householder/HouseholderSequence.h:333:46:   required from ‘void Eigen::HouseholderSequence<VectorsType, CoeffsType, Side>::applyThisOnTheLeft(Dest&, Workspace&) const [with Dest = Eigen::Matrix<double, -1, -1>; Workspace = Eigen::Matrix<double, 1, -1>; VectorsType = Eigen::Matrix<double, -1, -1>; CoeffsType = Eigen::Matrix<double, -1, 1>; int Side = 1]’
../inst/include/Eigen/src/SVD/JacobiSVD.h:237:9:   required from ‘bool Eigen::internal::qr_preconditioner_impl<MatrixType, 2, 0, true>::run(Eigen::JacobiSVD<MatrixType, 2>&, const MatrixType&) [with MatrixType = Eigen::Matrix<double, -1, -1>]’
../inst/include/Eigen/src/SVD/JacobiSVD.h:684:5:   required from ‘Eigen::JacobiSVD<MatrixType, QRPreconditioner>& Eigen::JacobiSVD<MatrixType, QRPreconditioner>::compute(const MatrixType&, unsigned int) [with _MatrixType = Eigen::Matrix<double, -1, -1>; int QRPreconditioner = 2; Eigen::JacobiSVD<MatrixType, QRPreconditioner>::MatrixType = Eigen::Matrix<double, -1, -1>]’
../inst/include/Eigen/src/SVD/JacobiSVD.h:548:7:   required from ‘Eigen::JacobiSVD<MatrixType, QRPreconditioner>::JacobiSVD(const MatrixType&, unsigned int) [with _MatrixType = Eigen::Matrix<double, -1, -1>; int QRPreconditioner = 2; Eigen::JacobiSVD<MatrixType, QRPreconditioner>::MatrixType = Eigen::Matrix<double, -1, -1>]’
LinAlg/Matrix.cpp:759:67:   required from here
../inst/include/Eigen/src/Core/CoreEvaluators.h:960:8: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__vector(2) double’} [-Wignored-attributes]
ERROR: compilation failed for package ‘Boom’
* removing ‘/tmp/workdir/Boom/old/Boom.Rcheck/Boom’


```
[1m# bsts[22m

<details>

* Version: 0.9.7
* GitHub: NA
* Source code: https://github.com/cran/bsts
* Date/Publication: 2021-07-02 04:30:07 UTC
* Number of recursive dependencies: 37

Run `cloud_details(, "bsts")` for more info

</details>

[1m## Error before installation[22m

[1m### Devel[22m

```
* using log directory ‘/tmp/workdir/bsts/new/bsts.Rcheck’
* using R version 4.1.1 (2021-08-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘bsts/DESCRIPTION’ ... OK
* this is package ‘bsts’ version ‘0.9.7’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'BoomSpikeSlab', 'Boom'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
[1m### CRAN[22m

```
* using log directory ‘/tmp/workdir/bsts/old/bsts.Rcheck’
* using R version 4.1.1 (2021-08-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘bsts/DESCRIPTION’ ... OK
* this is package ‘bsts’ version ‘0.9.7’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'BoomSpikeSlab', 'Boom'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
[1m# CausalImpact[22m

<details>

* Version: 1.2.7
* GitHub: NA
* Source code: https://github.com/cran/CausalImpact
* Date/Publication: 2021-06-07 06:40:02 UTC
* Number of recursive dependencies: 68

Run `cloud_details(, "CausalImpact")` for more info

</details>

[1m## Error before installation[22m

[1m### Devel[22m

```
* using log directory ‘/tmp/workdir/CausalImpact/new/CausalImpact.Rcheck’
* using R version 4.1.1 (2021-08-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘CausalImpact/DESCRIPTION’ ... OK
* this is package ‘CausalImpact’ version ‘1.2.7’
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'bsts', 'Boom'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
[1m### CRAN[22m

```
* using log directory ‘/tmp/workdir/CausalImpact/old/CausalImpact.Rcheck’
* using R version 4.1.1 (2021-08-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘CausalImpact/DESCRIPTION’ ... OK
* this is package ‘CausalImpact’ version ‘1.2.7’
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'bsts', 'Boom'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
[1m# cbar[22m

<details>

* Version: 0.1.3
* GitHub: https://github.com/zedoul/cbar
* Source code: https://github.com/cran/cbar
* Date/Publication: 2017-10-24 13:20:22 UTC
* Number of recursive dependencies: 61

Run `cloud_details(, "cbar")` for more info

</details>

[1m## Error before installation[22m

[1m### Devel[22m

```
* using log directory ‘/tmp/workdir/cbar/new/cbar.Rcheck’
* using R version 4.1.1 (2021-08-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘cbar/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘cbar’ version ‘0.1.3’
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'Boom', 'bsts'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
[1m### CRAN[22m

```
* using log directory ‘/tmp/workdir/cbar/old/cbar.Rcheck’
* using R version 4.1.1 (2021-08-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘cbar/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘cbar’ version ‘0.1.3’
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'Boom', 'bsts'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
[1m# NA[22m

<details>

* Version: NA
* GitHub: NA
* Source code: https://github.com/cran/NA
* Number of recursive dependencies: 0

Run `cloud_details(, "NA")` for more info

</details>

[1m## Error before installation[22m

[1m### Devel[22m

```






```
[1m### CRAN[22m

```






```
[1m# NA[22m

<details>

* Version: NA
* GitHub: NA
* Source code: https://github.com/cran/NA
* Number of recursive dependencies: 0

Run `cloud_details(, "NA")` for more info

</details>

[1m## Error before installation[22m

[1m### Devel[22m

```






```
[1m### CRAN[22m

```






```
[1m# conos[22m

<details>

* Version: 1.4.5
* GitHub: https://github.com/kharchenkolab/conos
* Source code: https://github.com/cran/conos
* Date/Publication: 2022-01-21 09:12:56 UTC
* Number of recursive dependencies: 238

Run `cloud_details(, "conos")` for more info

</details>

[1m## In both[22m

*   [31mchecking whether package ‘conos’ can be installed ... ERROR[39m
    ```
    Installation failed.
    See ‘/tmp/workdir/conos/new/conos.Rcheck/00install.out’ for details.
    ```

[1m## Installation[22m

[1m### Devel[22m

```
* installing *source* package ‘conos’ ...
** package ‘conos’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++11 -I"/opt/R/4.1.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.1.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.1.1/lib/R/site-library/RcppArmadillo/include' -I'/opt/R/4.1.1/lib/R/site-library/RcppEigen/include' -I'/opt/R/4.1.1/lib/R/site-library/RcppProgress/include' -I/usr/local/include  -I"./include" -fopenmp  -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
In file included from /opt/R/4.1.1/lib/R/site-library/RcppEigen/include/Eigen/Core:397,
                 from /opt/R/4.1.1/lib/R/site-library/RcppEigen/include/Eigen/Dense:1,
                 from /opt/R/4.1.1/lib/R/site-library/RcppEigen/include/RcppEigenForward.h:30,
                 from /opt/R/4.1.1/lib/R/site-library/RcppEigen/include/RcppEigen.h:25,
                 from RcppExports.cpp:6:
...
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in dyn.load(file, DLLpath = DLLpath, ...) : 
  unable to load shared object '/opt/R/4.1.1/lib/R/site-library/leidenAlg/libs/leidenAlg.so':
  /rspm_builder/tmp/tmp.vYZcnqsJUt/igraph/libs/igraph.so: cannot open shared object file: No such file or directory
Calls: <Anonymous> ... namespaceImport -> loadNamespace -> library.dynam -> dyn.load
Execution halted
ERROR: lazy loading failed for package ‘conos’
* removing ‘/tmp/workdir/conos/new/conos.Rcheck/conos’


```
[1m### CRAN[22m

```
* installing *source* package ‘conos’ ...
** package ‘conos’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++11 -I"/opt/R/4.1.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.1.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.1.1/lib/R/site-library/RcppArmadillo/include' -I'/opt/R/4.1.1/lib/R/site-library/RcppEigen/include' -I'/opt/R/4.1.1/lib/R/site-library/RcppProgress/include' -I/usr/local/include  -I"./include" -fopenmp  -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
In file included from /opt/R/4.1.1/lib/R/site-library/RcppEigen/include/Eigen/Core:397,
                 from /opt/R/4.1.1/lib/R/site-library/RcppEigen/include/Eigen/Dense:1,
                 from /opt/R/4.1.1/lib/R/site-library/RcppEigen/include/RcppEigenForward.h:30,
                 from /opt/R/4.1.1/lib/R/site-library/RcppEigen/include/RcppEigen.h:25,
                 from RcppExports.cpp:6:
...
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in dyn.load(file, DLLpath = DLLpath, ...) : 
  unable to load shared object '/opt/R/4.1.1/lib/R/site-library/leidenAlg/libs/leidenAlg.so':
  /rspm_builder/tmp/tmp.vYZcnqsJUt/igraph/libs/igraph.so: cannot open shared object file: No such file or directory
Calls: <Anonymous> ... namespaceImport -> loadNamespace -> library.dynam -> dyn.load
Execution halted
ERROR: lazy loading failed for package ‘conos’
* removing ‘/tmp/workdir/conos/old/conos.Rcheck/conos’


```
[1m# NA[22m

<details>

* Version: NA
* GitHub: NA
* Source code: https://github.com/cran/NA
* Number of recursive dependencies: 0

Run `cloud_details(, "NA")` for more info

</details>

[1m## Error before installation[22m

[1m### Devel[22m

```






```
[1m### CRAN[22m

```






```
[1m# ctsem[22m

<details>

* Version: 3.5.4
* GitHub: https://github.com/cdriveraus/ctsem
* Source code: https://github.com/cran/ctsem
* Date/Publication: 2021-07-23 16:40:02 UTC
* Number of recursive dependencies: 125

Run `cloud_details(, "ctsem")` for more info

</details>

[1m## In both[22m

*   [31mchecking whether package ‘ctsem’ can be installed ... ERROR[39m
    ```
    Installation failed.
    See ‘/tmp/workdir/ctsem/new/ctsem.Rcheck/00install.out’ for details.
    ```

[1m## Installation[22m

[1m### Devel[22m

```
* installing *source* package ‘ctsem’ ...
** package ‘ctsem’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
"/opt/R/4.1.1/lib/R/bin/Rscript" -e "source(file.path('..', 'tools', 'make_cc.R')); make_cc(commandArgs(TRUE))" stan_files/ctsm.stan
DIAGNOSTIC(S) FROM PARSER:
Info: integer division implicitly rounds to integer. Found int division: d * d - d / 2
 Positive values rounded down, negative values rounded up or down in platform-dependent way.

Wrote C++ file "stan_files/ctsm.cc"
...
 2348 |     T__ log_prob(std::vector<T__>& params_r__,
      |         ^~~~~~~~
stan_files/ctsm.hpp: In member function ‘T__ model_ctsm_namespace::model_ctsm::log_prob(std::vector<T_l>&, std::vector<int>&, std::ostream*) const [with bool propto__ = false; bool jacobian__ = false; T__ = double]’:
stan_files/ctsm.hpp:2348:9: note: variable tracking size limit exceeded with ‘-fvar-tracking-assignments’, retrying without
g++: fatal error: Killed signal terminated program cc1plus
compilation terminated.
make: *** [/opt/R/4.1.1/lib/R/etc/Makeconf:175: stan_files/ctsm.o] Error 1
rm stan_files/ctsm.cc
ERROR: compilation failed for package ‘ctsem’
* removing ‘/tmp/workdir/ctsem/new/ctsem.Rcheck/ctsem’


```
[1m### CRAN[22m

```
* installing *source* package ‘ctsem’ ...
** package ‘ctsem’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
"/opt/R/4.1.1/lib/R/bin/Rscript" -e "source(file.path('..', 'tools', 'make_cc.R')); make_cc(commandArgs(TRUE))" stan_files/ctsm.stan
DIAGNOSTIC(S) FROM PARSER:
Info: integer division implicitly rounds to integer. Found int division: d * d - d / 2
 Positive values rounded down, negative values rounded up or down in platform-dependent way.

Wrote C++ file "stan_files/ctsm.cc"
...
 2348 |     T__ log_prob(std::vector<T__>& params_r__,
      |         ^~~~~~~~
stan_files/ctsm.hpp: In member function ‘T__ model_ctsm_namespace::model_ctsm::log_prob(std::vector<T_l>&, std::vector<int>&, std::ostream*) const [with bool propto__ = false; bool jacobian__ = false; T__ = double]’:
stan_files/ctsm.hpp:2348:9: note: variable tracking size limit exceeded with ‘-fvar-tracking-assignments’, retrying without
g++: fatal error: Killed signal terminated program cc1plus
compilation terminated.
make: *** [/opt/R/4.1.1/lib/R/etc/Makeconf:175: stan_files/ctsm.o] Error 1
rm stan_files/ctsm.cc
ERROR: compilation failed for package ‘ctsem’
* removing ‘/tmp/workdir/ctsem/old/ctsem.Rcheck/ctsem’


```
[1m# NA[22m

<details>

* Version: NA
* GitHub: NA
* Source code: https://github.com/cran/NA
* Number of recursive dependencies: 0

Run `cloud_details(, "NA")` for more info

</details>

[1m## Error before installation[22m

[1m### Devel[22m

```






```
[1m### CRAN[22m

```






```
[1m# geocmeans[22m

<details>

* Version: 0.2.0
* GitHub: https://github.com/JeremyGelb/geocmeans
* Source code: https://github.com/cran/geocmeans
* Date/Publication: 2021-08-23 07:11:35 UTC
* Number of recursive dependencies: 203

Run `cloud_details(, "geocmeans")` for more info

</details>

[1m## Error before installation[22m

[1m### Devel[22m

```
* using log directory ‘/tmp/workdir/geocmeans/new/geocmeans.Rcheck’
* using R version 4.1.1 (2021-08-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘geocmeans/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘geocmeans’ version ‘0.2.0’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘reldist’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
[1m### CRAN[22m

```
* using log directory ‘/tmp/workdir/geocmeans/old/geocmeans.Rcheck’
* using R version 4.1.1 (2021-08-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘geocmeans/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘geocmeans’ version ‘0.2.0’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘reldist’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
[1m# NA[22m

<details>

* Version: NA
* GitHub: NA
* Source code: https://github.com/cran/NA
* Number of recursive dependencies: 0

Run `cloud_details(, "NA")` for more info

</details>

[1m## Error before installation[22m

[1m### Devel[22m

```






```
[1m### CRAN[22m

```






```
[1m# lidaRtRee[22m

<details>

* Version: 3.1.2
* GitHub: NA
* Source code: https://github.com/cran/lidaRtRee
* Date/Publication: 2021-12-09 13:30:02 UTC
* Number of recursive dependencies: 141

Run `cloud_details(, "lidaRtRee")` for more info

</details>

[1m## Error before installation[22m

[1m### Devel[22m

```
* using log directory ‘/tmp/workdir/lidaRtRee/new/lidaRtRee.Rcheck’
* using R version 4.1.1 (2021-08-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘lidaRtRee/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘lidaRtRee’ version ‘3.1.2’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘reldist’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
[1m### CRAN[22m

```
* using log directory ‘/tmp/workdir/lidaRtRee/old/lidaRtRee.Rcheck’
* using R version 4.1.1 (2021-08-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘lidaRtRee/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘lidaRtRee’ version ‘3.1.2’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘reldist’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
[1m# loon.ggplot[22m

<details>

* Version: 1.3.1
* GitHub: https://github.com/great-northern-diver/loon.ggplot
* Source code: https://github.com/cran/loon.ggplot
* Date/Publication: 2022-02-07 21:50:06 UTC
* Number of recursive dependencies: 99

Run `cloud_details(, "loon.ggplot")` for more info

</details>

[1m## Error before installation[22m

[1m### Devel[22m

```
* using log directory ‘/tmp/workdir/loon.ggplot/new/loon.ggplot.Rcheck’
* using R version 4.1.1 (2021-08-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘loon.ggplot/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘loon.ggplot’ version ‘1.3.1’
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
[1m### CRAN[22m

```
* using log directory ‘/tmp/workdir/loon.ggplot/old/loon.ggplot.Rcheck’
* using R version 4.1.1 (2021-08-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘loon.ggplot/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘loon.ggplot’ version ‘1.3.1’
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
[1m# loon.shiny[22m

<details>

* Version: 1.0.2
* GitHub: NA
* Source code: https://github.com/cran/loon.shiny
* Date/Publication: 2022-02-07 04:50:02 UTC
* Number of recursive dependencies: 131

Run `cloud_details(, "loon.shiny")` for more info

</details>

[1m## Error before installation[22m

[1m### Devel[22m

```
* using log directory ‘/tmp/workdir/loon.shiny/new/loon.shiny.Rcheck’
* using R version 4.1.1 (2021-08-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘loon.shiny/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘loon.shiny’ version ‘1.0.2’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'loon', 'loon.ggplot'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
[1m### CRAN[22m

```
* using log directory ‘/tmp/workdir/loon.shiny/old/loon.shiny.Rcheck’
* using R version 4.1.1 (2021-08-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘loon.shiny/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘loon.shiny’ version ‘1.0.2’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'loon', 'loon.ggplot'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
[1m# loon.tourr[22m

<details>

* Version: 0.1.3
* GitHub: https://github.com/z267xu/loon.tourr
* Source code: https://github.com/cran/loon.tourr
* Date/Publication: 2021-10-27 14:10:05 UTC
* Number of recursive dependencies: 118

Run `cloud_details(, "loon.tourr")` for more info

</details>

[1m## Error before installation[22m

[1m### Devel[22m

```
* using log directory ‘/tmp/workdir/loon.tourr/new/loon.tourr.Rcheck’
* using R version 4.1.1 (2021-08-10)
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
[1m### CRAN[22m

```
* using log directory ‘/tmp/workdir/loon.tourr/old/loon.tourr.Rcheck’
* using R version 4.1.1 (2021-08-10)
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
[1m# NA[22m

<details>

* Version: NA
* GitHub: NA
* Source code: https://github.com/cran/NA
* Number of recursive dependencies: 0

Run `cloud_details(, "NA")` for more info

</details>

[1m## Error before installation[22m

[1m### Devel[22m

```






```
[1m### CRAN[22m

```






```
[1m# vivid[22m

<details>

* Version: 0.2.3
* GitHub: NA
* Source code: https://github.com/cran/vivid
* Date/Publication: 2021-11-20 01:30:02 UTC
* Number of recursive dependencies: 202

Run `cloud_details(, "vivid")` for more info

</details>

[1m## Error before installation[22m

[1m### Devel[22m

```
* using log directory ‘/tmp/workdir/vivid/new/vivid.Rcheck’
* using R version 4.1.1 (2021-08-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘vivid/DESCRIPTION’ ... OK
* this is package ‘vivid’ version ‘0.2.3’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... NOTE
...
* checking tests ... OK
  Running ‘testthat.R’
* checking for unstated dependencies in vignettes ... OK
* checking package vignettes in ‘inst/doc’ ... OK
* checking running R code from vignettes ... NONE
  ‘vivid.Rmd’ using ‘UTF-8’... OK
  ‘vividQStart.Rmd’ using ‘UTF-8’... OK
* checking re-building of vignette outputs ... OK
* DONE
Status: 2 NOTEs





```
[1m### CRAN[22m

```
* using log directory ‘/tmp/workdir/vivid/old/vivid.Rcheck’
* using R version 4.1.1 (2021-08-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘vivid/DESCRIPTION’ ... OK
* this is package ‘vivid’ version ‘0.2.3’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... NOTE
...
* checking tests ... OK
  Running ‘testthat.R’
* checking for unstated dependencies in vignettes ... OK
* checking package vignettes in ‘inst/doc’ ... OK
* checking running R code from vignettes ... NONE
  ‘vivid.Rmd’ using ‘UTF-8’... OK
  ‘vividQStart.Rmd’ using ‘UTF-8’... OK
* checking re-building of vignette outputs ... OK
* DONE
Status: 2 NOTEs





```
