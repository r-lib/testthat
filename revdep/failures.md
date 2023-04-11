# babelmixr2

<details>

* Version: 0.1.0
* GitHub: NA
* Source code: https://github.com/cran/babelmixr2
* Date/Publication: 2022-10-28 16:00:09 UTC
* Number of recursive dependencies: 180

Run `revdepcheck::cloud_details(, "babelmixr2")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/babelmixr2/new/babelmixr2.Rcheck’
* using R version 4.1.1 (2021-08-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘babelmixr2/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘babelmixr2’ version ‘0.1.0’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'nlmixr2', 'nlmixr2est'

Package suggested but not available for checking: ‘lixoftConnectors’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/babelmixr2/old/babelmixr2.Rcheck’
* using R version 4.1.1 (2021-08-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘babelmixr2/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘babelmixr2’ version ‘0.1.0’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'nlmixr2', 'nlmixr2est'

Package suggested but not available for checking: ‘lixoftConnectors’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# beadplexr

<details>

* Version: 0.4.1
* GitHub: NA
* Source code: https://github.com/cran/beadplexr
* Date/Publication: 2022-03-05 13:50:02 UTC
* Number of recursive dependencies: 128

Run `revdepcheck::cloud_details(, "beadplexr")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/beadplexr/new/beadplexr.Rcheck’
* using R version 4.1.1 (2021-08-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘beadplexr/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘beadplexr’ version ‘0.4.1’
* package encoding: UTF-8
* checking package namespace information ... OK
...
  Running ‘testthat.R’
* checking for unstated dependencies in vignettes ... OK
* checking package vignettes in ‘inst/doc’ ... OK
* checking running R code from vignettes ... NONE
  ‘cba_macsplex_example.Rmd’ using ‘UTF-8’... OK
  ‘legendplex_analysis.Rmd’ using ‘UTF-8’... OK
  ‘preparing_flow_data.Rmd’ using ‘UTF-8’... OK
* checking re-building of vignette outputs ... OK
* DONE
Status: 1 NOTE





```
### CRAN

```
* using log directory ‘/tmp/workdir/beadplexr/old/beadplexr.Rcheck’
* using R version 4.1.1 (2021-08-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘beadplexr/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘beadplexr’ version ‘0.4.1’
* package encoding: UTF-8
* checking package namespace information ... OK
...
  Running ‘testthat.R’
* checking for unstated dependencies in vignettes ... OK
* checking package vignettes in ‘inst/doc’ ... OK
* checking running R code from vignettes ... NONE
  ‘cba_macsplex_example.Rmd’ using ‘UTF-8’... OK
  ‘legendplex_analysis.Rmd’ using ‘UTF-8’... OK
  ‘preparing_flow_data.Rmd’ using ‘UTF-8’... OK
* checking re-building of vignette outputs ... OK
* DONE
Status: 1 NOTE





```
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
g++ -std=gnu++17 -I"/opt/R/4.1.1/lib/R/include" -DNDEBUG -I. -I../inst/include -IBmath -Imath/cephes -DADD_ -DR_NO_REMAP -DEIGEN_WARNINGS_DISABLED  -I/usr/local/include   -fpic  -g -O2  -c boom_r_tools.cpp -o boom_r_tools.o
g++ -std=gnu++17 -I"/opt/R/4.1.1/lib/R/include" -DNDEBUG -I. -I../inst/include -IBmath -Imath/cephes -DADD_ -DR_NO_REMAP -DEIGEN_WARNINGS_DISABLED  -I/usr/local/include   -fpic  -g -O2  -c create_poisson_process.cpp -o create_poisson_process.o
g++ -std=gnu++17 -I"/opt/R/4.1.1/lib/R/include" -DNDEBUG -I. -I../inst/include -IBmath -Imath/cephes -DADD_ -DR_NO_REMAP -DEIGEN_WARNINGS_DISABLED  -I/usr/local/include   -fpic  -g -O2  -c create_mixture_component.cpp -o create_mixture_component.o
g++ -std=gnu++17 -I"/opt/R/4.1.1/lib/R/include" -DNDEBUG -I. -I../inst/include -IBmath -Imath/cephes -DADD_ -DR_NO_REMAP -DEIGEN_WARNINGS_DISABLED  -I/usr/local/include   -fpic  -g -O2  -c parse_model_formula.cpp -o parse_model_formula.o
g++ -std=gnu++17 -I"/opt/R/4.1.1/lib/R/include" -DNDEBUG -I. -I../inst/include -IBmath -Imath/cephes -DADD_ -DR_NO_REMAP -DEIGEN_WARNINGS_DISABLED  -I/usr/local/include   -fpic  -g -O2  -c extract_mixture_data.cpp -o extract_mixture_data.o
g++ -std=gnu++17 -I"/opt/R/4.1.1/lib/R/include" -DNDEBUG -I. -I../inst/include -IBmath -Imath/cephes -DADD_ -DR_NO_REMAP -DEIGEN_WARNINGS_DISABLED  -I/usr/local/include   -fpic  -g -O2  -c seed_rng_from_R.cpp -o seed_rng_from_R.o
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
g++ -std=gnu++17 -I"/opt/R/4.1.1/lib/R/include" -DNDEBUG -I. -I../inst/include -IBmath -Imath/cephes -DADD_ -DR_NO_REMAP -DEIGEN_WARNINGS_DISABLED  -I/usr/local/include   -fpic  -g -O2  -c boom_r_tools.cpp -o boom_r_tools.o
g++ -std=gnu++17 -I"/opt/R/4.1.1/lib/R/include" -DNDEBUG -I. -I../inst/include -IBmath -Imath/cephes -DADD_ -DR_NO_REMAP -DEIGEN_WARNINGS_DISABLED  -I/usr/local/include   -fpic  -g -O2  -c create_poisson_process.cpp -o create_poisson_process.o
g++ -std=gnu++17 -I"/opt/R/4.1.1/lib/R/include" -DNDEBUG -I. -I../inst/include -IBmath -Imath/cephes -DADD_ -DR_NO_REMAP -DEIGEN_WARNINGS_DISABLED  -I/usr/local/include   -fpic  -g -O2  -c create_mixture_component.cpp -o create_mixture_component.o
g++ -std=gnu++17 -I"/opt/R/4.1.1/lib/R/include" -DNDEBUG -I. -I../inst/include -IBmath -Imath/cephes -DADD_ -DR_NO_REMAP -DEIGEN_WARNINGS_DISABLED  -I/usr/local/include   -fpic  -g -O2  -c parse_model_formula.cpp -o parse_model_formula.o
g++ -std=gnu++17 -I"/opt/R/4.1.1/lib/R/include" -DNDEBUG -I. -I../inst/include -IBmath -Imath/cephes -DADD_ -DR_NO_REMAP -DEIGEN_WARNINGS_DISABLED  -I/usr/local/include   -fpic  -g -O2  -c extract_mixture_data.cpp -o extract_mixture_data.o
g++ -std=gnu++17 -I"/opt/R/4.1.1/lib/R/include" -DNDEBUG -I. -I../inst/include -IBmath -Imath/cephes -DADD_ -DR_NO_REMAP -DEIGEN_WARNINGS_DISABLED  -I/usr/local/include   -fpic  -g -O2  -c seed_rng_from_R.cpp -o seed_rng_from_R.o
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
# bsts

<details>

* Version: 0.9.9
* GitHub: NA
* Source code: https://github.com/cran/bsts
* Date/Publication: 2022-11-07 08:50:11 UTC
* Number of recursive dependencies: 37

Run `revdepcheck::cloud_details(, "bsts")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/bsts/new/bsts.Rcheck’
* using R version 4.1.1 (2021-08-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘bsts/DESCRIPTION’ ... OK
* this is package ‘bsts’ version ‘0.9.9’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'BoomSpikeSlab', 'Boom'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/bsts/old/bsts.Rcheck’
* using R version 4.1.1 (2021-08-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘bsts/DESCRIPTION’ ... OK
* this is package ‘bsts’ version ‘0.9.9’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'BoomSpikeSlab', 'Boom'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





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
* using R version 4.1.1 (2021-08-10)
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
* using R version 4.1.1 (2021-08-10)
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
# convey

<details>

* Version: NA
* GitHub: NA
* Source code: https://github.com/cran/convey
* Number of recursive dependencies: 74

Run `revdepcheck::cloud_details(, "convey")` for more info

</details>

## Error before installation

### Devel

```






```
### CRAN

```






```
# covidmx

<details>

* Version: NA
* GitHub: NA
* Source code: https://github.com/cran/covidmx
* Number of recursive dependencies: 151

Run `revdepcheck::cloud_details(, "covidmx")` for more info

</details>

## Error before installation

### Devel

```






```
### CRAN

```






```
# ctbi

<details>

* Version: NA
* GitHub: NA
* Source code: https://github.com/cran/ctbi
* Number of recursive dependencies: 32

Run `revdepcheck::cloud_details(, "ctbi")` for more info

</details>

## Error before installation

### Devel

```






```
### CRAN

```






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
make: *** [/opt/R/4.1.1/lib/R/etc/Makeconf:175: stanExports_ctsm.o] Error 1
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
make: *** [/opt/R/4.1.1/lib/R/etc/Makeconf:175: stanExports_ctsm.o] Error 1
ERROR: compilation failed for package ‘ctsem’
* removing ‘/tmp/workdir/ctsem/old/ctsem.Rcheck/ctsem’


```
# D2MCS

<details>

* Version: NA
* GitHub: NA
* Source code: https://github.com/cran/D2MCS
* Number of recursive dependencies: 181

Run `revdepcheck::cloud_details(, "D2MCS")` for more info

</details>

## Error before installation

### Devel

```






```
### CRAN

```






```
# DAISIE

<details>

* Version: NA
* GitHub: NA
* Source code: https://github.com/cran/DAISIE
* Number of recursive dependencies: 120

Run `revdepcheck::cloud_details(, "DAISIE")` for more info

</details>

## Error before installation

### Devel

```






```
### CRAN

```






```
# ddc

<details>

* Version: NA
* GitHub: NA
* Source code: https://github.com/cran/ddc
* Number of recursive dependencies: 99

Run `revdepcheck::cloud_details(, "ddc")` for more info

</details>

## Error before installation

### Devel

```






```
### CRAN

```






```
# discAUC

<details>

* Version: NA
* GitHub: NA
* Source code: https://github.com/cran/discAUC
* Number of recursive dependencies: 53

Run `revdepcheck::cloud_details(, "discAUC")` for more info

</details>

## Error before installation

### Devel

```






```
### CRAN

```






```
# ebvcube

<details>

* Version: NA
* GitHub: NA
* Source code: https://github.com/cran/ebvcube
* Number of recursive dependencies: 0

Run `revdepcheck::cloud_details(, "ebvcube")` for more info

</details>

## Error before installation

### Devel

```






```
### CRAN

```






```
# emdi

<details>

* Version: NA
* GitHub: NA
* Source code: https://github.com/cran/emdi
* Number of recursive dependencies: 131

Run `revdepcheck::cloud_details(, "emdi")` for more info

</details>

## Error before installation

### Devel

```






```
### CRAN

```






```
# EpiForsk

<details>

* Version: NA
* GitHub: NA
* Source code: https://github.com/cran/EpiForsk
* Number of recursive dependencies: 77

Run `revdepcheck::cloud_details(, "EpiForsk")` for more info

</details>

## Error before installation

### Devel

```






```
### CRAN

```






```
# epitopeR

<details>

* Version: NA
* GitHub: NA
* Source code: https://github.com/cran/epitopeR
* Number of recursive dependencies: 161

Run `revdepcheck::cloud_details(, "epitopeR")` for more info

</details>

## Error before installation

### Devel

```






```
### CRAN

```






```
# EScvtmle

<details>

* Version: NA
* GitHub: NA
* Source code: https://github.com/cran/EScvtmle
* Number of recursive dependencies: 78

Run `revdepcheck::cloud_details(, "EScvtmle")` for more info

</details>

## Error before installation

### Devel

```






```
### CRAN

```






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
g++ -std=gnu++17 -I"/opt/R/4.1.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.1.1/lib/R/site-library/RcppEigen/include' -I'/opt/R/4.1.1/lib/R/site-library/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c Global_Utilities/Source/Lambda.cpp -o Global_Utilities/Source/Lambda.o
In file included from /opt/R/4.1.1/lib/R/site-library/RcppEigen/include/Eigen/Core:397,
                 from /opt/R/4.1.1/lib/R/site-library/RcppEigen/include/Eigen/StdVector:14,
                 from Global_Utilities/Source/../Include/../../FdaPDE.h:32,
                 from Global_Utilities/Source/../Include/Lambda.h:4,
                 from Global_Utilities/Source/Lambda.cpp:1:
...
/opt/R/4.1.1/lib/R/site-library/RcppEigen/include/Eigen/src/Core/Matrix.h:225:24:   required from ‘Eigen::Matrix<_Scalar, _Rows, _Cols, _Options, _MaxRows, _MaxCols>& Eigen::Matrix<_Scalar, _Rows, _Cols, _Options, _MaxRows, _MaxCols>::operator=(const Eigen::DenseBase<OtherDerived>&) [with OtherDerived = Eigen::CwiseBinaryOp<Eigen::internal::scalar_product_op<double, double>, const Eigen::CwiseNullaryOp<Eigen::internal::scalar_constant_op<double>, const Eigen::Matrix<double, -1, -1> >, const Eigen::CwiseBinaryOp<Eigen::internal::scalar_sum_op<double, double>, const Eigen::Solve<Eigen::PartialPivLU<Eigen::Matrix<double, -1, -1> >, Eigen::CwiseNullaryOp<Eigen::internal::scalar_identity_op<double>, Eigen::Matrix<double, -1, -1> > >, const Eigen::Solve<Eigen::PartialPivLU<Eigen::Matrix<double, -1, -1> >, Eigen::Product<Eigen::Product<Eigen::Product<Eigen::Product<Eigen::Transpose<const Eigen::Matrix<double, -1, -1> >, Eigen::Matrix<double, -1, -1>, 0>, Eigen::Transpose<Eigen::Matrix<double, -1, -1> >, 0>, Eigen::Matrix<double, -1, -1>, 0>, Eigen::Solve<Eigen::PartialPivLU<Eigen::Matrix<double, -1, -1> >, Eigen::CwiseNullaryOp<Eigen::internal::scalar_identity_op<double>, Eigen::Matrix<double, -1, -1> > >, 0> > > >; _Scalar = double; int _Rows = -1; int _Cols = -1; int _Options = 0; int _MaxRows = -1; int _MaxCols = -1]’
Regression/Source/../../Skeletons/Include/../../Inference/Include/Wald_imp.h:54:5:   required from ‘void Wald_Base<InputHandler, MatrixType>::compute_V() [with InputHandler = RegressionData; MatrixType = Eigen::Matrix<double, -1, -1>]’
Regression/Source/../../Skeletons/Include/../../Inference/Include/Wald_imp.h:123:5:   required from ‘VectorXr Wald_Base<InputHandler, MatrixType>::compute_beta_pvalue() [with InputHandler = RegressionData; MatrixType = Eigen::Matrix<double, -1, -1>; VectorXr = Eigen::Matrix<double, -1, 1>]’
Regression/Source/../../Skeletons/Include/../../Inference/Include/Wald_imp.h:104:10:   required from here
/opt/R/4.1.1/lib/R/site-library/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:55:30: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__vector(2) double’} [-Wignored-attributes]
g++: fatal error: Killed signal terminated program cc1plus
compilation terminated.
make: *** [/opt/R/4.1.1/lib/R/etc/Makeconf:177: Regression/Source/Rfun_Regression_Laplace.o] Error 1
ERROR: compilation failed for package ‘fdaPDE’
* removing ‘/tmp/workdir/fdaPDE/new/fdaPDE.Rcheck/fdaPDE’


```
### CRAN

```
* installing *source* package ‘fdaPDE’ ...
** package ‘fdaPDE’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++17 -I"/opt/R/4.1.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.1.1/lib/R/site-library/RcppEigen/include' -I'/opt/R/4.1.1/lib/R/site-library/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c Global_Utilities/Source/Lambda.cpp -o Global_Utilities/Source/Lambda.o
In file included from /opt/R/4.1.1/lib/R/site-library/RcppEigen/include/Eigen/Core:397,
                 from /opt/R/4.1.1/lib/R/site-library/RcppEigen/include/Eigen/StdVector:14,
                 from Global_Utilities/Source/../Include/../../FdaPDE.h:32,
                 from Global_Utilities/Source/../Include/Lambda.h:4,
                 from Global_Utilities/Source/Lambda.cpp:1:
...
/opt/R/4.1.1/lib/R/site-library/RcppEigen/include/Eigen/src/Core/Matrix.h:225:24:   required from ‘Eigen::Matrix<_Scalar, _Rows, _Cols, _Options, _MaxRows, _MaxCols>& Eigen::Matrix<_Scalar, _Rows, _Cols, _Options, _MaxRows, _MaxCols>::operator=(const Eigen::DenseBase<OtherDerived>&) [with OtherDerived = Eigen::CwiseBinaryOp<Eigen::internal::scalar_product_op<double, double>, const Eigen::CwiseNullaryOp<Eigen::internal::scalar_constant_op<double>, const Eigen::Matrix<double, -1, -1> >, const Eigen::CwiseBinaryOp<Eigen::internal::scalar_sum_op<double, double>, const Eigen::Solve<Eigen::PartialPivLU<Eigen::Matrix<double, -1, -1> >, Eigen::CwiseNullaryOp<Eigen::internal::scalar_identity_op<double>, Eigen::Matrix<double, -1, -1> > >, const Eigen::Solve<Eigen::PartialPivLU<Eigen::Matrix<double, -1, -1> >, Eigen::Product<Eigen::Product<Eigen::Product<Eigen::Product<Eigen::Transpose<const Eigen::Matrix<double, -1, -1> >, Eigen::Matrix<double, -1, -1>, 0>, Eigen::Transpose<Eigen::Matrix<double, -1, -1> >, 0>, Eigen::Matrix<double, -1, -1>, 0>, Eigen::Solve<Eigen::PartialPivLU<Eigen::Matrix<double, -1, -1> >, Eigen::CwiseNullaryOp<Eigen::internal::scalar_identity_op<double>, Eigen::Matrix<double, -1, -1> > >, 0> > > >; _Scalar = double; int _Rows = -1; int _Cols = -1; int _Options = 0; int _MaxRows = -1; int _MaxCols = -1]’
Regression/Source/../../Skeletons/Include/../../Inference/Include/Wald_imp.h:54:5:   required from ‘void Wald_Base<InputHandler, MatrixType>::compute_V() [with InputHandler = RegressionData; MatrixType = Eigen::Matrix<double, -1, -1>]’
Regression/Source/../../Skeletons/Include/../../Inference/Include/Wald_imp.h:123:5:   required from ‘VectorXr Wald_Base<InputHandler, MatrixType>::compute_beta_pvalue() [with InputHandler = RegressionData; MatrixType = Eigen::Matrix<double, -1, -1>; VectorXr = Eigen::Matrix<double, -1, 1>]’
Regression/Source/../../Skeletons/Include/../../Inference/Include/Wald_imp.h:104:10:   required from here
/opt/R/4.1.1/lib/R/site-library/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:55:30: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__vector(2) double’} [-Wignored-attributes]
g++: fatal error: Killed signal terminated program cc1plus
compilation terminated.
make: *** [/opt/R/4.1.1/lib/R/etc/Makeconf:177: Regression/Source/Rfun_Regression_Laplace.o] Error 1
ERROR: compilation failed for package ‘fdaPDE’
* removing ‘/tmp/workdir/fdaPDE/old/fdaPDE.Rcheck/fdaPDE’


```
# forceR

<details>

* Version: NA
* GitHub: NA
* Source code: https://github.com/cran/forceR
* Number of recursive dependencies: 87

Run `revdepcheck::cloud_details(, "forceR")` for more info

</details>

## Error before installation

### Devel

```






```
### CRAN

```






```
# genekitr

<details>

* Version: 1.1.5
* GitHub: https://github.com/GangLiLab/genekitr
* Source code: https://github.com/cran/genekitr
* Date/Publication: 2023-03-23 12:22:08 UTC
* Number of recursive dependencies: 206

Run `revdepcheck::cloud_details(, "genekitr")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/genekitr/new/genekitr.Rcheck’
* using R version 4.1.1 (2021-08-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘genekitr/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘genekitr’ version ‘1.1.5’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘clusterProfiler’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/genekitr/old/genekitr.Rcheck’
* using R version 4.1.1 (2021-08-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘genekitr/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘genekitr’ version ‘1.1.5’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘clusterProfiler’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# ggpicrust2

<details>

* Version: 1.6.0
* GitHub: https://github.com/cafferychen777/ggpicrust2
* Source code: https://github.com/cran/ggpicrust2
* Date/Publication: 2023-04-08 13:30:05 UTC
* Number of recursive dependencies: 287

Run `revdepcheck::cloud_details(, "ggpicrust2")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/ggpicrust2/new/ggpicrust2.Rcheck’
* using R version 4.1.1 (2021-08-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘ggpicrust2/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘ggpicrust2’ version ‘1.6.0’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘Maaslin2’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/ggpicrust2/old/ggpicrust2.Rcheck’
* using R version 4.1.1 (2021-08-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘ggpicrust2/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘ggpicrust2’ version ‘1.6.0’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘Maaslin2’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# ggPMX

<details>

* Version: 1.2.8
* GitHub: https://github.com/ggPMXdevelopment/ggPMX
* Source code: https://github.com/cran/ggPMX
* Date/Publication: 2022-06-17 23:10:02 UTC
* Number of recursive dependencies: 175

Run `revdepcheck::cloud_details(, "ggPMX")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/ggPMX/new/ggPMX.Rcheck’
* using R version 4.1.1 (2021-08-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘ggPMX/DESCRIPTION’ ... OK
* this is package ‘ggPMX’ version ‘1.2.8’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... NOTE
...
--- failed re-building ‘ggPMX-guide.Rmd’

SUMMARY: processing the following file failed:
  ‘ggPMX-guide.Rmd’

Error: Vignette re-building failed.
Execution halted

* DONE
Status: 1 ERROR, 1 WARNING, 2 NOTEs





```
### CRAN

```
* using log directory ‘/tmp/workdir/ggPMX/old/ggPMX.Rcheck’
* using R version 4.1.1 (2021-08-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘ggPMX/DESCRIPTION’ ... OK
* this is package ‘ggPMX’ version ‘1.2.8’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... NOTE
...
--- failed re-building ‘ggPMX-guide.Rmd’

SUMMARY: processing the following file failed:
  ‘ggPMX-guide.Rmd’

Error: Vignette re-building failed.
Execution halted

* DONE
Status: 1 ERROR, 1 WARNING, 2 NOTEs





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
g++ -std=gnu++14 -I"/opt/R/4.1.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.1.1/lib/R/site-library/TMB/include' -I'/opt/R/4.1.1/lib/R/site-library/RcppEigen/include' -I/usr/local/include   -fpic  -g -O2  -c gllvm.cpp -o gllvm.o
In file included from /opt/R/4.1.1/lib/R/site-library/RcppEigen/include/Eigen/Core:397,
                 from /opt/R/4.1.1/lib/R/site-library/RcppEigen/include/Eigen/Dense:1,
                 from /opt/R/4.1.1/lib/R/site-library/TMB/include/TMB.hpp:83,
                 from gllvm.cpp:2:
/opt/R/4.1.1/lib/R/site-library/RcppEigen/include/Eigen/src/Core/arch/SSE/PacketMath.h:60:39: warning: ignoring attributes on template argument ‘__m128’ {aka ‘__vector(4) float’} [-Wignored-attributes]
...
/opt/R/4.1.1/lib/R/site-library/RcppEigen/include/Eigen/src/Core/Assign.h:66:28:   required from ‘Derived& Eigen::MatrixBase<Derived>::operator=(const Eigen::DenseBase<OtherDerived>&) [with OtherDerived = Eigen::Product<Eigen::Map<const Eigen::Matrix<double, -1, -1>, 0, Eigen::Stride<0, 0> >, Eigen::Map<const Eigen::Matrix<double, -1, -1>, 0, Eigen::Stride<0, 0> >, 0>; Derived = Eigen::Map<Eigen::Matrix<double, -1, -1>, 0, Eigen::Stride<0, 0> >]’
/opt/R/4.1.1/lib/R/site-library/TMB/include/atomic_math.hpp:435:1:   required from ‘void atomic::matmul(const CppAD::vector<Type>&, CppAD::vector<Type>&) [with Double = double]’
/opt/R/4.1.1/lib/R/site-library/TMB/include/atomic_math.hpp:435:1:   required from ‘bool atomic::atomicmatmul<Type>::forward(size_t, size_t, const CppAD::vector<bool>&, CppAD::vector<bool>&, const CppAD::vector<Type>&, CppAD::vector<Type>&) [with Type = double; size_t = long unsigned int]’
/opt/R/4.1.1/lib/R/site-library/TMB/include/atomic_math.hpp:435:1:   required from here
/opt/R/4.1.1/lib/R/site-library/RcppEigen/include/Eigen/src/Core/CoreEvaluators.h:960:8: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__vector(2) double’} [-Wignored-attributes]
g++: fatal error: Killed signal terminated program cc1plus
compilation terminated.
make: *** [/opt/R/4.1.1/lib/R/etc/Makeconf:177: gllvm.o] Error 1
ERROR: compilation failed for package ‘gllvm’
* removing ‘/tmp/workdir/gllvm/new/gllvm.Rcheck/gllvm’


```
### CRAN

```
* installing *source* package ‘gllvm’ ...
** package ‘gllvm’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++14 -I"/opt/R/4.1.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.1.1/lib/R/site-library/TMB/include' -I'/opt/R/4.1.1/lib/R/site-library/RcppEigen/include' -I/usr/local/include   -fpic  -g -O2  -c gllvm.cpp -o gllvm.o
In file included from /opt/R/4.1.1/lib/R/site-library/RcppEigen/include/Eigen/Core:397,
                 from /opt/R/4.1.1/lib/R/site-library/RcppEigen/include/Eigen/Dense:1,
                 from /opt/R/4.1.1/lib/R/site-library/TMB/include/TMB.hpp:83,
                 from gllvm.cpp:2:
/opt/R/4.1.1/lib/R/site-library/RcppEigen/include/Eigen/src/Core/arch/SSE/PacketMath.h:60:39: warning: ignoring attributes on template argument ‘__m128’ {aka ‘__vector(4) float’} [-Wignored-attributes]
...
/opt/R/4.1.1/lib/R/site-library/RcppEigen/include/Eigen/src/Core/Assign.h:66:28:   required from ‘Derived& Eigen::MatrixBase<Derived>::operator=(const Eigen::DenseBase<OtherDerived>&) [with OtherDerived = Eigen::Product<Eigen::Map<const Eigen::Matrix<double, -1, -1>, 0, Eigen::Stride<0, 0> >, Eigen::Map<const Eigen::Matrix<double, -1, -1>, 0, Eigen::Stride<0, 0> >, 0>; Derived = Eigen::Map<Eigen::Matrix<double, -1, -1>, 0, Eigen::Stride<0, 0> >]’
/opt/R/4.1.1/lib/R/site-library/TMB/include/atomic_math.hpp:435:1:   required from ‘void atomic::matmul(const CppAD::vector<Type>&, CppAD::vector<Type>&) [with Double = double]’
/opt/R/4.1.1/lib/R/site-library/TMB/include/atomic_math.hpp:435:1:   required from ‘bool atomic::atomicmatmul<Type>::forward(size_t, size_t, const CppAD::vector<bool>&, CppAD::vector<bool>&, const CppAD::vector<Type>&, CppAD::vector<Type>&) [with Type = double; size_t = long unsigned int]’
/opt/R/4.1.1/lib/R/site-library/TMB/include/atomic_math.hpp:435:1:   required from here
/opt/R/4.1.1/lib/R/site-library/RcppEigen/include/Eigen/src/Core/CoreEvaluators.h:960:8: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__vector(2) double’} [-Wignored-attributes]
g++: fatal error: Killed signal terminated program cc1plus
compilation terminated.
make: *** [/opt/R/4.1.1/lib/R/etc/Makeconf:177: gllvm.o] Error 1
ERROR: compilation failed for package ‘gllvm’
* removing ‘/tmp/workdir/gllvm/old/gllvm.Rcheck/gllvm’


```
# journalabbr

<details>

* Version: NA
* GitHub: NA
* Source code: https://github.com/cran/journalabbr
* Number of recursive dependencies: 72

Run `revdepcheck::cloud_details(, "journalabbr")` for more info

</details>

## Error before installation

### Devel

```






```
### CRAN

```






```
# landsepi

<details>

* Version: NA
* GitHub: NA
* Source code: https://github.com/cran/landsepi
* Number of recursive dependencies: 108

Run `revdepcheck::cloud_details(, "landsepi")` for more info

</details>

## Error before installation

### Devel

```






```
### CRAN

```






```
# lifeR

<details>

* Version: NA
* GitHub: NA
* Source code: https://github.com/cran/lifeR
* Number of recursive dependencies: 93

Run `revdepcheck::cloud_details(, "lifeR")` for more info

</details>

## Error before installation

### Devel

```






```
### CRAN

```






```
# LikertMakeR

<details>

* Version: NA
* GitHub: NA
* Source code: https://github.com/cran/LikertMakeR
* Number of recursive dependencies: 36

Run `revdepcheck::cloud_details(, "LikertMakeR")` for more info

</details>

## Error before installation

### Devel

```






```
### CRAN

```






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
* using R version 4.1.1 (2021-08-10)
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
* using R version 4.1.1 (2021-08-10)
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
* using R version 4.1.1 (2021-08-10)
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
* using R version 4.1.1 (2021-08-10)
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
### CRAN

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
# mcglm

<details>

* Version: NA
* GitHub: NA
* Source code: https://github.com/cran/mcglm
* Number of recursive dependencies: 103

Run `revdepcheck::cloud_details(, "mcglm")` for more info

</details>

## Error before installation

### Devel

```






```
### CRAN

```






```
# MGMS2

<details>

* Version: 1.0.2
* GitHub: NA
* Source code: https://github.com/cran/MGMS2
* Date/Publication: 2020-04-24 04:10:02 UTC
* Number of recursive dependencies: 37

Run `revdepcheck::cloud_details(, "MGMS2")` for more info

</details>

## In both

*   checking whether package ‘MGMS2’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/MGMS2/new/MGMS2.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘MGMS2’ ...
** package ‘MGMS2’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error: package or namespace load failed for ‘MALDIquantForeign’ in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]):
 there is no package called ‘readMzXmlData’
Execution halted
ERROR: lazy loading failed for package ‘MGMS2’
* removing ‘/tmp/workdir/MGMS2/new/MGMS2.Rcheck/MGMS2’


```
### CRAN

```
* installing *source* package ‘MGMS2’ ...
** package ‘MGMS2’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error: package or namespace load failed for ‘MALDIquantForeign’ in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]):
 there is no package called ‘readMzXmlData’
Execution halted
ERROR: lazy loading failed for package ‘MGMS2’
* removing ‘/tmp/workdir/MGMS2/old/MGMS2.Rcheck/MGMS2’


```
# microservices

<details>

* Version: NA
* GitHub: NA
* Source code: https://github.com/cran/microservices
* Number of recursive dependencies: 70

Run `revdepcheck::cloud_details(, "microservices")` for more info

</details>

## Error before installation

### Devel

```






```
### CRAN

```






```
# moexer

<details>

* Version: NA
* GitHub: NA
* Source code: https://github.com/cran/moexer
* Number of recursive dependencies: 87

Run `revdepcheck::cloud_details(, "moexer")` for more info

</details>

## Error before installation

### Devel

```






```
### CRAN

```






```
# MRTAnalysis

<details>

* Version: NA
* GitHub: NA
* Source code: https://github.com/cran/MRTAnalysis
* Number of recursive dependencies: 64

Run `revdepcheck::cloud_details(, "MRTAnalysis")` for more info

</details>

## Error before installation

### Devel

```






```
### CRAN

```






```
# nlmixr2

<details>

* Version: 2.0.9
* GitHub: https://github.com/nlmixr2/nlmixr2
* Source code: https://github.com/cran/nlmixr2
* Date/Publication: 2023-02-21 04:00:02 UTC
* Number of recursive dependencies: 197

Run `revdepcheck::cloud_details(, "nlmixr2")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/nlmixr2/new/nlmixr2.Rcheck’
* using R version 4.1.1 (2021-08-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘nlmixr2/DESCRIPTION’ ... OK
* this is package ‘nlmixr2’ version ‘2.0.9’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available:
  'nlmixr2est', 'nlmixr2extra', 'nlmixr2plot'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/nlmixr2/old/nlmixr2.Rcheck’
* using R version 4.1.1 (2021-08-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘nlmixr2/DESCRIPTION’ ... OK
* this is package ‘nlmixr2’ version ‘2.0.9’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available:
  'nlmixr2est', 'nlmixr2extra', 'nlmixr2plot'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# nlmixr2extra

<details>

* Version: 2.0.8
* GitHub: https://github.com/nlmixr2/nlmixr2extra
* Source code: https://github.com/cran/nlmixr2extra
* Date/Publication: 2022-10-22 22:32:34 UTC
* Number of recursive dependencies: 188

Run `revdepcheck::cloud_details(, "nlmixr2extra")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/nlmixr2extra/new/nlmixr2extra.Rcheck’
* using R version 4.1.1 (2021-08-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘nlmixr2extra/DESCRIPTION’ ... OK
* this is package ‘nlmixr2extra’ version ‘2.0.8’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'nlmixr2est', 'symengine'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/nlmixr2extra/old/nlmixr2extra.Rcheck’
* using R version 4.1.1 (2021-08-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘nlmixr2extra/DESCRIPTION’ ... OK
* this is package ‘nlmixr2extra’ version ‘2.0.8’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'nlmixr2est', 'symengine'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# nlmixr2lib

<details>

* Version: 0.2.0
* GitHub: https://github.com/nlmixr2/nlmixr2lib
* Source code: https://github.com/cran/nlmixr2lib
* Date/Publication: 2023-03-29 16:10:02 UTC
* Number of recursive dependencies: 105

Run `revdepcheck::cloud_details(, "nlmixr2lib")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/nlmixr2lib/new/nlmixr2lib.Rcheck’
* using R version 4.1.1 (2021-08-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘nlmixr2lib/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘nlmixr2lib’ version ‘0.2.0’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘nlmixr2est’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/nlmixr2lib/old/nlmixr2lib.Rcheck’
* using R version 4.1.1 (2021-08-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘nlmixr2lib/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘nlmixr2lib’ version ‘0.2.0’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘nlmixr2est’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# nlmixr2plot

<details>

* Version: 2.0.7
* GitHub: https://github.com/nlmixr2/nlmixr2plot
* Source code: https://github.com/cran/nlmixr2plot
* Date/Publication: 2022-10-20 03:12:36 UTC
* Number of recursive dependencies: 164

Run `revdepcheck::cloud_details(, "nlmixr2plot")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/nlmixr2plot/new/nlmixr2plot.Rcheck’
* using R version 4.1.1 (2021-08-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘nlmixr2plot/DESCRIPTION’ ... OK
* this is package ‘nlmixr2plot’ version ‘2.0.7’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'nlmixr2est', 'nlmixr2extra'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/nlmixr2plot/old/nlmixr2plot.Rcheck’
* using R version 4.1.1 (2021-08-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘nlmixr2plot/DESCRIPTION’ ... OK
* this is package ‘nlmixr2plot’ version ‘2.0.7’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'nlmixr2est', 'nlmixr2extra'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# nlmixr2rpt

<details>

* Version: 0.1.0
* GitHub: https://github.com/nlmixr2/nlmixr2rpt
* Source code: https://github.com/cran/nlmixr2rpt
* Date/Publication: 2022-12-05 10:40:02 UTC
* Number of recursive dependencies: 218

Run `revdepcheck::cloud_details(, "nlmixr2rpt")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/nlmixr2rpt/new/nlmixr2rpt.Rcheck’
* using R version 4.1.1 (2021-08-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘nlmixr2rpt/DESCRIPTION’ ... OK
* this is package ‘nlmixr2rpt’ version ‘0.1.0’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'nlmixr2extra', 'xpose.nlmixr2'

Package suggested but not available for checking: ‘nlmixr2’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/nlmixr2rpt/old/nlmixr2rpt.Rcheck’
* using R version 4.1.1 (2021-08-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘nlmixr2rpt/DESCRIPTION’ ... OK
* this is package ‘nlmixr2rpt’ version ‘0.1.0’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'nlmixr2extra', 'xpose.nlmixr2'

Package suggested but not available for checking: ‘nlmixr2’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# numbat

<details>

* Version: 1.3.0
* GitHub: https://github.com/kharchenkolab/numbat
* Source code: https://github.com/cran/numbat
* Date/Publication: 2023-04-02 17:50:03 UTC
* Number of recursive dependencies: 132

Run `revdepcheck::cloud_details(, "numbat")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/numbat/new/numbat.Rcheck’
* using R version 4.1.1 (2021-08-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘numbat/DESCRIPTION’ ... OK
* this is package ‘numbat’ version ‘1.3.0’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'ggtree', 'scistreer'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/numbat/old/numbat.Rcheck’
* using R version 4.1.1 (2021-08-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘numbat/DESCRIPTION’ ... OK
* this is package ‘numbat’ version ‘1.3.0’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'ggtree', 'scistreer'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# OlinkAnalyze

<details>

* Version: 3.3.1
* GitHub: NA
* Source code: https://github.com/cran/OlinkAnalyze
* Date/Publication: 2023-02-27 20:22:30 UTC
* Number of recursive dependencies: 203

Run `revdepcheck::cloud_details(, "OlinkAnalyze")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/OlinkAnalyze/new/OlinkAnalyze.Rcheck’
* using R version 4.1.1 (2021-08-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘OlinkAnalyze/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘OlinkAnalyze’ version ‘3.3.1’
* package encoding: UTF-8
* checking package namespace information ... OK
...
* checking for unstated dependencies in ‘tests’ ... OK
* checking tests ... OK
  Running ‘testthat.R’
* checking for unstated dependencies in vignettes ... OK
* checking package vignettes in ‘inst/doc’ ... OK
* checking running R code from vignettes ... NONE
  ‘Vignett.Rmd’ using ‘UTF-8’... OK
* checking re-building of vignette outputs ... OK
* DONE
Status: 1 NOTE





```
### CRAN

```
* using log directory ‘/tmp/workdir/OlinkAnalyze/old/OlinkAnalyze.Rcheck’
* using R version 4.1.1 (2021-08-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘OlinkAnalyze/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘OlinkAnalyze’ version ‘3.3.1’
* package encoding: UTF-8
* checking package namespace information ... OK
...
* checking for unstated dependencies in ‘tests’ ... OK
* checking tests ... OK
  Running ‘testthat.R’
* checking for unstated dependencies in vignettes ... OK
* checking package vignettes in ‘inst/doc’ ... OK
* checking running R code from vignettes ... NONE
  ‘Vignett.Rmd’ using ‘UTF-8’... OK
* checking re-building of vignette outputs ... OK
* DONE
Status: 1 NOTE





```
# oosse

<details>

* Version: NA
* GitHub: NA
* Source code: https://github.com/cran/oosse
* Number of recursive dependencies: 71

Run `revdepcheck::cloud_details(, "oosse")` for more info

</details>

## Error before installation

### Devel

```






```
### CRAN

```






```
# OpenMx

<details>

* Version: 2.21.8
* GitHub: https://github.com/OpenMx/OpenMx
* Source code: https://github.com/cran/OpenMx
* Date/Publication: 2023-04-05 20:43:20 UTC
* Number of recursive dependencies: 147

Run `revdepcheck::cloud_details(, "OpenMx")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/OpenMx/new/OpenMx.Rcheck’
* using R version 4.1.1 (2021-08-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘OpenMx/DESCRIPTION’ ... OK
* this is package ‘OpenMx’ version ‘2.21.8’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... NOTE
...
* checking for unstated dependencies in vignettes ... OK
* checking package vignettes in ‘inst/doc’ ... OK
* checking running R code from vignettes ... NONE
  ‘deriv.Rmd’ using ‘UTF-8’... OK
  ‘reg_mimic.Rmd’ using ‘UTF-8’... OK
  ‘factor_analysis.Rmd’ using ‘UTF-8’... OK
  ‘regularization.Rmd’ using ‘UTF-8’... OK
* checking re-building of vignette outputs ... OK
* DONE
Status: 4 NOTEs





```
### CRAN

```
* using log directory ‘/tmp/workdir/OpenMx/old/OpenMx.Rcheck’
* using R version 4.1.1 (2021-08-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘OpenMx/DESCRIPTION’ ... OK
* this is package ‘OpenMx’ version ‘2.21.8’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... NOTE
...
* checking for unstated dependencies in vignettes ... OK
* checking package vignettes in ‘inst/doc’ ... OK
* checking running R code from vignettes ... NONE
  ‘deriv.Rmd’ using ‘UTF-8’... OK
  ‘reg_mimic.Rmd’ using ‘UTF-8’... OK
  ‘factor_analysis.Rmd’ using ‘UTF-8’... OK
  ‘regularization.Rmd’ using ‘UTF-8’... OK
* checking re-building of vignette outputs ... OK
* DONE
Status: 4 NOTEs





```
# paramsim

<details>

* Version: NA
* GitHub: NA
* Source code: https://github.com/cran/paramsim
* Number of recursive dependencies: 74

Run `revdepcheck::cloud_details(, "paramsim")` for more info

</details>

## Error before installation

### Devel

```






```
### CRAN

```






```
# pathwayTMB

<details>

* Version: 0.1.3
* GitHub: NA
* Source code: https://github.com/cran/pathwayTMB
* Date/Publication: 2022-08-09 13:50:02 UTC
* Number of recursive dependencies: 223

Run `revdepcheck::cloud_details(, "pathwayTMB")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/pathwayTMB/new/pathwayTMB.Rcheck’
* using R version 4.1.1 (2021-08-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘pathwayTMB/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘pathwayTMB’ version ‘0.1.3’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘clusterProfiler’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/pathwayTMB/old/pathwayTMB.Rcheck’
* using R version 4.1.1 (2021-08-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘pathwayTMB/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘pathwayTMB’ version ‘0.1.3’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘clusterProfiler’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# prqlr

<details>

* Version: NA
* GitHub: NA
* Source code: https://github.com/cran/prqlr
* Number of recursive dependencies: 67

Run `revdepcheck::cloud_details(, "prqlr")` for more info

</details>

## Error before installation

### Devel

```






```
### CRAN

```






```
# rankinma

<details>

* Version: NA
* GitHub: NA
* Source code: https://github.com/cran/rankinma
* Number of recursive dependencies: 83

Run `revdepcheck::cloud_details(, "rankinma")` for more info

</details>

## Error before installation

### Devel

```






```
### CRAN

```






```
# RevGadgets

<details>

* Version: NA
* GitHub: NA
* Source code: https://github.com/cran/RevGadgets
* Number of recursive dependencies: 131

Run `revdepcheck::cloud_details(, "RevGadgets")` for more info

</details>

## Error before installation

### Devel

```






```
### CRAN

```






```
# rlibkriging

<details>

* Version: NA
* GitHub: NA
* Source code: https://github.com/cran/rlibkriging
* Number of recursive dependencies: 43

Run `revdepcheck::cloud_details(, "rlibkriging")` for more info

</details>

## Error before installation

### Devel

```






```
### CRAN

```






```
# rolog

<details>

* Version: NA
* GitHub: NA
* Source code: https://github.com/cran/rolog
* Number of recursive dependencies: 95

Run `revdepcheck::cloud_details(, "rolog")` for more info

</details>

## Error before installation

### Devel

```






```
### CRAN

```






```
# rswipl

<details>

* Version: NA
* GitHub: NA
* Source code: https://github.com/cran/rswipl
* Number of recursive dependencies: 32

Run `revdepcheck::cloud_details(, "rswipl")` for more info

</details>

## Error before installation

### Devel

```






```
### CRAN

```






```
# rTensor2

<details>

* Version: NA
* GitHub: NA
* Source code: https://github.com/cran/rTensor2
* Number of recursive dependencies: 40

Run `revdepcheck::cloud_details(, "rTensor2")` for more info

</details>

## Error before installation

### Devel

```






```
### CRAN

```






```
# SCpubr

<details>

* Version: 1.1.2
* GitHub: https://github.com/enblacar/SCpubr
* Source code: https://github.com/cran/SCpubr
* Date/Publication: 2023-01-18 12:20:02 UTC
* Number of recursive dependencies: 290

Run `revdepcheck::cloud_details(, "SCpubr")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/SCpubr/new/SCpubr.Rcheck’
* using R version 4.1.1 (2021-08-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘SCpubr/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘SCpubr’ version ‘1.1.2’
* package encoding: UTF-8
* checking package namespace information ... OK
...
* checking for unstated dependencies in ‘tests’ ... OK
* checking tests ... OK
  Running ‘testthat.R’
* checking for unstated dependencies in vignettes ... OK
* checking package vignettes in ‘inst/doc’ ... OK
* checking running R code from vignettes ... NONE
  ‘reference_manual.Rmd’ using ‘UTF-8’... OK
* checking re-building of vignette outputs ... OK
* DONE
Status: 1 WARNING, 2 NOTEs





```
### CRAN

```
* using log directory ‘/tmp/workdir/SCpubr/old/SCpubr.Rcheck’
* using R version 4.1.1 (2021-08-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘SCpubr/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘SCpubr’ version ‘1.1.2’
* package encoding: UTF-8
* checking package namespace information ... OK
...
* checking for unstated dependencies in ‘tests’ ... OK
* checking tests ... OK
  Running ‘testthat.R’
* checking for unstated dependencies in vignettes ... OK
* checking package vignettes in ‘inst/doc’ ... OK
* checking running R code from vignettes ... NONE
  ‘reference_manual.Rmd’ using ‘UTF-8’... OK
* checking re-building of vignette outputs ... OK
* DONE
Status: 1 WARNING, 2 NOTEs





```
# SherlockHolmes

<details>

* Version: NA
* GitHub: NA
* Source code: https://github.com/cran/SherlockHolmes
* Number of recursive dependencies: 108

Run `revdepcheck::cloud_details(, "SherlockHolmes")` for more info

</details>

## Error before installation

### Devel

```






```
### CRAN

```






```
# shinyHugePlot

<details>

* Version: NA
* GitHub: NA
* Source code: https://github.com/cran/shinyHugePlot
* Number of recursive dependencies: 97

Run `revdepcheck::cloud_details(, "shinyHugePlot")` for more info

</details>

## Error before installation

### Devel

```






```
### CRAN

```






```
# string2path

<details>

* Version: NA
* GitHub: NA
* Source code: https://github.com/cran/string2path
* Number of recursive dependencies: 31

Run `revdepcheck::cloud_details(, "string2path")` for more info

</details>

## Error before installation

### Devel

```






```
### CRAN

```






```
# symengine

<details>

* Version: NA
* GitHub: NA
* Source code: https://github.com/cran/symengine
* Number of recursive dependencies: 54

Run `revdepcheck::cloud_details(, "symengine")` for more info

</details>

## Error before installation

### Devel

```






```
### CRAN

```






```
# tame

<details>

* Version: NA
* GitHub: NA
* Source code: https://github.com/cran/tame
* Number of recursive dependencies: 66

Run `revdepcheck::cloud_details(, "tame")` for more info

</details>

## Error before installation

### Devel

```






```
### CRAN

```






```
# taxlist

<details>

* Version: 0.2.4
* GitHub: https://github.com/ropensci/taxlist
* Source code: https://github.com/cran/taxlist
* Date/Publication: 2023-03-12 21:50:02 UTC
* Number of recursive dependencies: 86

Run `revdepcheck::cloud_details(, "taxlist")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/taxlist/new/taxlist.Rcheck’
* using R version 4.1.1 (2021-08-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘taxlist/DESCRIPTION’ ... OK
* this is package ‘taxlist’ version ‘0.2.4’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘biblio’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/taxlist/old/taxlist.Rcheck’
* using R version 4.1.1 (2021-08-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘taxlist/DESCRIPTION’ ... OK
* this is package ‘taxlist’ version ‘0.2.4’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘biblio’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# TempStable

<details>

* Version: NA
* GitHub: NA
* Source code: https://github.com/cran/TempStable
* Number of recursive dependencies: 74

Run `revdepcheck::cloud_details(, "TempStable")` for more info

</details>

## Error before installation

### Devel

```






```
### CRAN

```






```
# textBoxPlacement

<details>

* Version: NA
* GitHub: NA
* Source code: https://github.com/cran/textBoxPlacement
* Number of recursive dependencies: 50

Run `revdepcheck::cloud_details(, "textBoxPlacement")` for more info

</details>

## Error before installation

### Devel

```






```
### CRAN

```






```
# tidySEM

<details>

* Version: 0.2.3
* GitHub: https://github.com/cjvanlissa/tidySEM
* Source code: https://github.com/cran/tidySEM
* Date/Publication: 2022-04-14 17:50:02 UTC
* Number of recursive dependencies: 173

Run `revdepcheck::cloud_details(, "tidySEM")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/tidySEM/new/tidySEM.Rcheck’
* using R version 4.1.1 (2021-08-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘tidySEM/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘tidySEM’ version ‘0.2.3’
* package encoding: UTF-8
* checking package namespace information ... OK
...
* checking for unstated dependencies in vignettes ... OK
* checking package vignettes in ‘inst/doc’ ... OK
* checking running R code from vignettes ... NONE
  ‘Generating_syntax.Rmd’ using ‘UTF-8’... OK
  ‘Plotting_graphs.Rmd’ using ‘UTF-8’... OK
  ‘Tabulating_results.Rmd’ using ‘UTF-8’... OK
  ‘sem_graph.Rmd’ using ‘UTF-8’... OK
* checking re-building of vignette outputs ... OK
* DONE
Status: 1 NOTE





```
### CRAN

```
* using log directory ‘/tmp/workdir/tidySEM/old/tidySEM.Rcheck’
* using R version 4.1.1 (2021-08-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘tidySEM/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘tidySEM’ version ‘0.2.3’
* package encoding: UTF-8
* checking package namespace information ... OK
...
* checking for unstated dependencies in vignettes ... OK
* checking package vignettes in ‘inst/doc’ ... OK
* checking running R code from vignettes ... NONE
  ‘Generating_syntax.Rmd’ using ‘UTF-8’... OK
  ‘Plotting_graphs.Rmd’ using ‘UTF-8’... OK
  ‘Tabulating_results.Rmd’ using ‘UTF-8’... OK
  ‘sem_graph.Rmd’ using ‘UTF-8’... OK
* checking re-building of vignette outputs ... OK
* DONE
Status: 1 NOTE





```
# tidytags

<details>

* Version: NA
* GitHub: NA
* Source code: https://github.com/cran/tidytags
* Number of recursive dependencies: 123

Run `revdepcheck::cloud_details(, "tidytags")` for more info

</details>

## Error before installation

### Devel

```






```
### CRAN

```






```
# timeLineGraphics

<details>

* Version: NA
* GitHub: NA
* Source code: https://github.com/cran/timeLineGraphics
* Number of recursive dependencies: 60

Run `revdepcheck::cloud_details(, "timeLineGraphics")` for more info

</details>

## Error before installation

### Devel

```






```
### CRAN

```






```
# tinyarray

<details>

* Version: 2.2.9
* GitHub: https://github.com/xjsun1221/tinyarray
* Source code: https://github.com/cran/tinyarray
* Date/Publication: 2023-03-04 07:40:02 UTC
* Number of recursive dependencies: 229

Run `revdepcheck::cloud_details(, "tinyarray")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/tinyarray/new/tinyarray.Rcheck’
* using R version 4.1.1 (2021-08-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘tinyarray/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘tinyarray’ version ‘2.2.9’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘clusterProfiler’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/tinyarray/old/tinyarray.Rcheck’
* using R version 4.1.1 (2021-08-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘tinyarray/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘tinyarray’ version ‘2.2.9’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘clusterProfiler’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# vegtable

<details>

* Version: 0.1.8
* GitHub: https://github.com/kamapu/vegtable
* Source code: https://github.com/cran/vegtable
* Date/Publication: 2023-03-14 08:30:02 UTC
* Number of recursive dependencies: 100

Run `revdepcheck::cloud_details(, "vegtable")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/vegtable/new/vegtable.Rcheck’
* using R version 4.1.1 (2021-08-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘vegtable/DESCRIPTION’ ... OK
* this is package ‘vegtable’ version ‘0.1.8’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘taxlist’

Package suggested but not available for checking: ‘biblio’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/vegtable/old/vegtable.Rcheck’
* using R version 4.1.1 (2021-08-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘vegtable/DESCRIPTION’ ... OK
* this is package ‘vegtable’ version ‘0.1.8’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘taxlist’

Package suggested but not available for checking: ‘biblio’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# vivid

<details>

* Version: 0.2.6
* GitHub: NA
* Source code: https://github.com/cran/vivid
* Date/Publication: 2023-04-05 20:50:02 UTC
* Number of recursive dependencies: 209

Run `revdepcheck::cloud_details(, "vivid")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/vivid/new/vivid.Rcheck’
* using R version 4.1.1 (2021-08-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘vivid/DESCRIPTION’ ... OK
* this is package ‘vivid’ version ‘0.2.6’
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
* using R version 4.1.1 (2021-08-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘vivid/DESCRIPTION’ ... OK
* this is package ‘vivid’ version ‘0.2.6’
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
# VSURF

<details>

* Version: NA
* GitHub: NA
* Source code: https://github.com/cran/VSURF
* Number of recursive dependencies: 44

Run `revdepcheck::cloud_details(, "VSURF")` for more info

</details>

## Error before installation

### Devel

```






```
### CRAN

```






```
# waspasR

<details>

* Version: NA
* GitHub: NA
* Source code: https://github.com/cran/waspasR
* Number of recursive dependencies: 50

Run `revdepcheck::cloud_details(, "waspasR")` for more info

</details>

## Error before installation

### Devel

```






```
### CRAN

```






```
# Wats

<details>

* Version: NA
* GitHub: NA
* Source code: https://github.com/cran/Wats
* Number of recursive dependencies: 122

Run `revdepcheck::cloud_details(, "Wats")` for more info

</details>

## Error before installation

### Devel

```






```
### CRAN

```






```
# wrappedtools

<details>

* Version: NA
* GitHub: NA
* Source code: https://github.com/cran/wrappedtools
* Number of recursive dependencies: 102

Run `revdepcheck::cloud_details(, "wrappedtools")` for more info

</details>

## Error before installation

### Devel

```






```
### CRAN

```






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
g++ -std=gnu++14 -I"/opt/R/4.1.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.1.1/lib/R/site-library/Rcpp/include' -I/usr/local/include  -I../inst/include --std=c++14 -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
In file included from RcppExports.cpp:4:
../inst/include/xtensor.h:1:10: fatal error: xtensor-r/rcontainer.hpp: No such file or directory
    1 | #include "xtensor-r/rcontainer.hpp"
      |          ^~~~~~~~~~~~~~~~~~~~~~~~~~
compilation terminated.
make: *** [/opt/R/4.1.1/lib/R/etc/Makeconf:177: RcppExports.o] Error 1
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
g++ -std=gnu++14 -I"/opt/R/4.1.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.1.1/lib/R/site-library/Rcpp/include' -I/usr/local/include  -I../inst/include --std=c++14 -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
In file included from RcppExports.cpp:4:
../inst/include/xtensor.h:1:10: fatal error: xtensor-r/rcontainer.hpp: No such file or directory
    1 | #include "xtensor-r/rcontainer.hpp"
      |          ^~~~~~~~~~~~~~~~~~~~~~~~~~
compilation terminated.
make: *** [/opt/R/4.1.1/lib/R/etc/Makeconf:177: RcppExports.o] Error 1
ERROR: compilation failed for package ‘xtensor’
* removing ‘/tmp/workdir/xtensor/old/xtensor.Rcheck/xtensor’


```
# yamlme

<details>

* Version: NA
* GitHub: NA
* Source code: https://github.com/cran/yamlme
* Number of recursive dependencies: 50

Run `revdepcheck::cloud_details(, "yamlme")` for more info

</details>

## Error before installation

### Devel

```






```
### CRAN

```






```
