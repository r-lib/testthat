# Boom

<details>

* Version: 0.9.10
* GitHub: NA
* Source code: https://github.com/cran/Boom
* Date/Publication: 2022-05-27 23:50:06 UTC
* Number of recursive dependencies: 32

Run `cloud_details(, "Boom")` for more info

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
../inst/include/Eigen/src/Core/products/TriangularMatrixVector.h:282:27:   [ skipping 14 instantiation contexts, use -ftemplate-backtrace-limit=0 to disable ]
../inst/include/Eigen/src/Householder/BlockHouseholder.h:85:55:   required from ‘void Eigen::internal::apply_block_householder_on_the_left(MatrixType&, const VectorsType&, const CoeffsType&, bool) [with MatrixType = Eigen::Block<Eigen::Matrix<double, -1, -1>, -1, -1, false>; VectorsType = Eigen::Block<Eigen::Matrix<double, -1, -1>, -1, -1, false>; CoeffsType = Eigen::VectorBlock<const Eigen::Matrix<double, -1, 1>, -1>]’
../inst/include/Eigen/src/Householder/HouseholderSequence.h:333:46:   required from ‘void Eigen::HouseholderSequence<VectorsType, CoeffsType, Side>::applyThisOnTheLeft(Dest&, Workspace&) const [with Dest = Eigen::Matrix<double, -1, -1>; Workspace = Eigen::Matrix<double, 1, -1>; VectorsType = Eigen::Matrix<double, -1, -1>; CoeffsType = Eigen::Matrix<double, -1, 1>; int Side = 1]’
../inst/include/Eigen/src/SVD/JacobiSVD.h:237:9:   required from ‘bool Eigen::internal::qr_preconditioner_impl<MatrixType, 2, 0, true>::run(Eigen::JacobiSVD<MatrixType, 2>&, const MatrixType&) [with MatrixType = Eigen::Matrix<double, -1, -1>]’
../inst/include/Eigen/src/SVD/JacobiSVD.h:684:5:   required from ‘Eigen::JacobiSVD<MatrixType, QRPreconditioner>& Eigen::JacobiSVD<MatrixType, QRPreconditioner>::compute(const MatrixType&, unsigned int) [with _MatrixType = Eigen::Matrix<double, -1, -1>; int QRPreconditioner = 2; Eigen::JacobiSVD<MatrixType, QRPreconditioner>::MatrixType = Eigen::Matrix<double, -1, -1>]’
../inst/include/Eigen/src/SVD/JacobiSVD.h:548:7:   required from ‘Eigen::JacobiSVD<MatrixType, QRPreconditioner>::JacobiSVD(const MatrixType&, unsigned int) [with _MatrixType = Eigen::Matrix<double, -1, -1>; int QRPreconditioner = 2; Eigen::JacobiSVD<MatrixType, QRPreconditioner>::MatrixType = Eigen::Matrix<double, -1, -1>]’
LinAlg/Matrix.cpp:800:67:   required from here
../inst/include/Eigen/src/Core/CoreEvaluators.h:960:8: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__vector(2) double’} [-Wignored-attributes]
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
../inst/include/Eigen/src/Core/products/TriangularMatrixVector.h:282:27:   [ skipping 14 instantiation contexts, use -ftemplate-backtrace-limit=0 to disable ]
../inst/include/Eigen/src/Householder/BlockHouseholder.h:85:55:   required from ‘void Eigen::internal::apply_block_householder_on_the_left(MatrixType&, const VectorsType&, const CoeffsType&, bool) [with MatrixType = Eigen::Block<Eigen::Matrix<double, -1, -1>, -1, -1, false>; VectorsType = Eigen::Block<Eigen::Matrix<double, -1, -1>, -1, -1, false>; CoeffsType = Eigen::VectorBlock<const Eigen::Matrix<double, -1, 1>, -1>]’
../inst/include/Eigen/src/Householder/HouseholderSequence.h:333:46:   required from ‘void Eigen::HouseholderSequence<VectorsType, CoeffsType, Side>::applyThisOnTheLeft(Dest&, Workspace&) const [with Dest = Eigen::Matrix<double, -1, -1>; Workspace = Eigen::Matrix<double, 1, -1>; VectorsType = Eigen::Matrix<double, -1, -1>; CoeffsType = Eigen::Matrix<double, -1, 1>; int Side = 1]’
../inst/include/Eigen/src/SVD/JacobiSVD.h:237:9:   required from ‘bool Eigen::internal::qr_preconditioner_impl<MatrixType, 2, 0, true>::run(Eigen::JacobiSVD<MatrixType, 2>&, const MatrixType&) [with MatrixType = Eigen::Matrix<double, -1, -1>]’
../inst/include/Eigen/src/SVD/JacobiSVD.h:684:5:   required from ‘Eigen::JacobiSVD<MatrixType, QRPreconditioner>& Eigen::JacobiSVD<MatrixType, QRPreconditioner>::compute(const MatrixType&, unsigned int) [with _MatrixType = Eigen::Matrix<double, -1, -1>; int QRPreconditioner = 2; Eigen::JacobiSVD<MatrixType, QRPreconditioner>::MatrixType = Eigen::Matrix<double, -1, -1>]’
../inst/include/Eigen/src/SVD/JacobiSVD.h:548:7:   required from ‘Eigen::JacobiSVD<MatrixType, QRPreconditioner>::JacobiSVD(const MatrixType&, unsigned int) [with _MatrixType = Eigen::Matrix<double, -1, -1>; int QRPreconditioner = 2; Eigen::JacobiSVD<MatrixType, QRPreconditioner>::MatrixType = Eigen::Matrix<double, -1, -1>]’
LinAlg/Matrix.cpp:800:67:   required from here
../inst/include/Eigen/src/Core/CoreEvaluators.h:960:8: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__vector(2) double’} [-Wignored-attributes]
ERROR: compilation failed for package ‘Boom’
* removing ‘/tmp/workdir/Boom/old/Boom.Rcheck/Boom’


```
# CausalImpact

<details>

* Version: 1.2.7
* GitHub: NA
* Source code: https://github.com/cran/CausalImpact
* Date/Publication: 2021-06-07 06:40:02 UTC
* Number of recursive dependencies: 73

Run `cloud_details(, "CausalImpact")` for more info

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
* this is package ‘CausalImpact’ version ‘1.2.7’
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
* this is package ‘CausalImpact’ version ‘1.2.7’
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'bsts', 'Boom'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# NA

<details>

* Version: NA
* GitHub: NA
* Source code: https://github.com/cran/NA
* Number of recursive dependencies: 0

Run `cloud_details(, "NA")` for more info

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

* Version: 3.7.1
* GitHub: https://github.com/cdriveraus/ctsem
* Source code: https://github.com/cran/ctsem
* Date/Publication: 2022-08-08 14:00:02 UTC
* Number of recursive dependencies: 135

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
"/opt/R/4.1.1/lib/R/bin/Rscript" -e "source(file.path('..', 'tools', 'make_cc.R')); make_cc(commandArgs(TRUE))" stan_files/ctsm.stan
DIAGNOSTIC(S) FROM PARSER:
Info: integer division implicitly rounds to integer. Found int division: d * d - d / 2
 Positive values rounded down, negative values rounded up or down in platform-dependent way.

Wrote C++ file "stan_files/ctsm.cc"
...
 2340 |     T__ log_prob(std::vector<T__>& params_r__,
      |         ^~~~~~~~
stan_files/ctsm.hpp: In member function ‘T__ model_ctsm_namespace::model_ctsm::log_prob(std::vector<T_l>&, std::vector<int>&, std::ostream*) const [with bool propto__ = false; bool jacobian__ = false; T__ = double]’:
stan_files/ctsm.hpp:2340:9: note: variable tracking size limit exceeded with ‘-fvar-tracking-assignments’, retrying without
g++: fatal error: Killed signal terminated program cc1plus
compilation terminated.
make: *** [/opt/R/4.1.1/lib/R/etc/Makeconf:175: stan_files/ctsm.o] Error 1
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
"/opt/R/4.1.1/lib/R/bin/Rscript" -e "source(file.path('..', 'tools', 'make_cc.R')); make_cc(commandArgs(TRUE))" stan_files/ctsm.stan
DIAGNOSTIC(S) FROM PARSER:
Info: integer division implicitly rounds to integer. Found int division: d * d - d / 2
 Positive values rounded down, negative values rounded up or down in platform-dependent way.

Wrote C++ file "stan_files/ctsm.cc"
...
 2340 |     T__ log_prob(std::vector<T__>& params_r__,
      |         ^~~~~~~~
stan_files/ctsm.hpp: In member function ‘T__ model_ctsm_namespace::model_ctsm::log_prob(std::vector<T_l>&, std::vector<int>&, std::ostream*) const [with bool propto__ = false; bool jacobian__ = false; T__ = double]’:
stan_files/ctsm.hpp:2340:9: note: variable tracking size limit exceeded with ‘-fvar-tracking-assignments’, retrying without
g++: fatal error: Killed signal terminated program cc1plus
compilation terminated.
make: *** [/opt/R/4.1.1/lib/R/etc/Makeconf:175: stan_files/ctsm.o] Error 1
rm stan_files/ctsm.cc
ERROR: compilation failed for package ‘ctsem’
* removing ‘/tmp/workdir/ctsem/old/ctsem.Rcheck/ctsem’


```
# NA

<details>

* Version: NA
* GitHub: NA
* Source code: https://github.com/cran/NA
* Number of recursive dependencies: 0

Run `cloud_details(, "NA")` for more info

</details>

## Error before installation

### Devel

```






```
### CRAN

```






```
# elbird

<details>

* Version: 0.2.5
* GitHub: https://github.com/mrchypark/elbird
* Source code: https://github.com/cran/elbird
* Date/Publication: 2022-08-12 15:50:02 UTC
* Number of recursive dependencies: 54

Run `cloud_details(, "elbird")` for more info

</details>

## In both

*   checking whether package ‘elbird’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/elbird/new/elbird.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘elbird’ ...
** package ‘elbird’ successfully unpacked and MD5 sums checked
** using staged installation
/usr/bin/uname
Prior system libkiwi installation not found
Preparing to download and build library from source...
------------------------------[ ELBIRD ]------------------------------
Configuration failed because 'git' was not found.
If you want to kiwi build from source in package installation prosess,
make sure git and cmake work in system.
-------------------------------------------------------------------------
ERROR: configuration failed for package ‘elbird’
* removing ‘/tmp/workdir/elbird/new/elbird.Rcheck/elbird’


```
### CRAN

```
* installing *source* package ‘elbird’ ...
** package ‘elbird’ successfully unpacked and MD5 sums checked
** using staged installation
/usr/bin/uname
Prior system libkiwi installation not found
Preparing to download and build library from source...
------------------------------[ ELBIRD ]------------------------------
Configuration failed because 'git' was not found.
If you want to kiwi build from source in package installation prosess,
make sure git and cmake work in system.
-------------------------------------------------------------------------
ERROR: configuration failed for package ‘elbird’
* removing ‘/tmp/workdir/elbird/old/elbird.Rcheck/elbird’


```
# ggPMX

<details>

* Version: 1.2.8
* GitHub: https://github.com/ggPMXdevelopment/ggPMX
* Source code: https://github.com/cran/ggPMX
* Date/Publication: 2022-06-17 23:10:02 UTC
* Number of recursive dependencies: 175

Run `cloud_details(, "ggPMX")` for more info

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
  [ FAIL 1 | WARN 10 | SKIP 8 | PASS 327 ]
  Error: Test failures
  Execution halted
* checking for unstated dependencies in vignettes ... OK
* checking package vignettes in ‘inst/doc’ ... OK
* checking running R code from vignettes ... NONE
  ‘ggPMX-guide.Rmd’ using ‘UTF-8’... OK
* checking re-building of vignette outputs ... OK
* DONE
Status: 1 ERROR, 2 NOTEs





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
  [ FAIL 1 | WARN 10 | SKIP 8 | PASS 327 ]
  Error: Test failures
  Execution halted
* checking for unstated dependencies in vignettes ... OK
* checking package vignettes in ‘inst/doc’ ... OK
* checking running R code from vignettes ... NONE
  ‘ggPMX-guide.Rmd’ using ‘UTF-8’... OK
* checking re-building of vignette outputs ... OK
* DONE
Status: 1 ERROR, 2 NOTEs





```
# NA

<details>

* Version: NA
* GitHub: NA
* Source code: https://github.com/cran/NA
* Number of recursive dependencies: 0

Run `cloud_details(, "NA")` for more info

</details>

## Error before installation

### Devel

```






```
### CRAN

```






```
# NA

<details>

* Version: NA
* GitHub: NA
* Source code: https://github.com/cran/NA
* Number of recursive dependencies: 0

Run `cloud_details(, "NA")` for more info

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

* Version: 1.3.2
* GitHub: https://github.com/great-northern-diver/loon.ggplot
* Source code: https://github.com/cran/loon.ggplot
* Date/Publication: 2022-10-03 14:50:02 UTC
* Number of recursive dependencies: 104

Run `cloud_details(, "loon.ggplot")` for more info

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
* this is package ‘loon.ggplot’ version ‘1.3.2’
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
* this is package ‘loon.ggplot’ version ‘1.3.2’
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

* Version: 1.0.2
* GitHub: NA
* Source code: https://github.com/cran/loon.shiny
* Date/Publication: 2022-02-07 04:50:02 UTC
* Number of recursive dependencies: 132

Run `cloud_details(, "loon.shiny")` for more info

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
### CRAN

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
# loon.tourr

<details>

* Version: 0.1.3
* GitHub: https://github.com/z267xu/loon.tourr
* Source code: https://github.com/cran/loon.tourr
* Date/Publication: 2021-10-27 14:10:05 UTC
* Number of recursive dependencies: 121

Run `cloud_details(, "loon.tourr")` for more info

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
# NA

<details>

* Version: NA
* GitHub: NA
* Source code: https://github.com/cran/NA
* Number of recursive dependencies: 0

Run `cloud_details(, "NA")` for more info

</details>

## Error before installation

### Devel

```






```
### CRAN

```






```
# NA

<details>

* Version: NA
* GitHub: NA
* Source code: https://github.com/cran/NA
* Number of recursive dependencies: 0

Run `cloud_details(, "NA")` for more info

</details>

## Error before installation

### Devel

```






```
### CRAN

```






```
# mlrCPO

<details>

* Version: 0.3.7-4
* GitHub: https://github.com/mlr-org/mlrCPO
* Source code: https://github.com/cran/mlrCPO
* Date/Publication: 2022-07-20 14:00:02 UTC
* Number of recursive dependencies: 156

Run `cloud_details(, "mlrCPO")` for more info

</details>

## In both

*   checking whether package ‘mlrCPO’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/mlrCPO/new/mlrCPO.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘mlrCPO’ ...
** package ‘mlrCPO’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in declareFilterCPO(c("randomForestSRC_importance", "randomForestSRC.rfsrc")) : 
  None of the methods randomForestSRC_importance,randomForestSRC.rfsrc could be found
Error: unable to load R code in package ‘mlrCPO’
Execution halted
ERROR: lazy loading failed for package ‘mlrCPO’
* removing ‘/tmp/workdir/mlrCPO/new/mlrCPO.Rcheck/mlrCPO’


```
### CRAN

```
* installing *source* package ‘mlrCPO’ ...
** package ‘mlrCPO’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in declareFilterCPO(c("randomForestSRC_importance", "randomForestSRC.rfsrc")) : 
  None of the methods randomForestSRC_importance,randomForestSRC.rfsrc could be found
Error: unable to load R code in package ‘mlrCPO’
Execution halted
ERROR: lazy loading failed for package ‘mlrCPO’
* removing ‘/tmp/workdir/mlrCPO/old/mlrCPO.Rcheck/mlrCPO’


```
# nlmixr2

<details>

* Version: 2.0.7
* GitHub: https://github.com/nlmixr2/nlmixr2
* Source code: https://github.com/cran/nlmixr2
* Date/Publication: 2022-06-27 22:20:02 UTC
* Number of recursive dependencies: 195

Run `cloud_details(, "nlmixr2")` for more info

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
* this is package ‘nlmixr2’ version ‘2.0.7’
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
* this is package ‘nlmixr2’ version ‘2.0.7’
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

* Version: 2.0.6
* GitHub: https://github.com/nlmixr2/nlmixr2extra
* Source code: https://github.com/cran/nlmixr2extra
* Date/Publication: 2022-05-17 09:20:02 UTC
* Number of recursive dependencies: 117

Run `cloud_details(, "nlmixr2extra")` for more info

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
* this is package ‘nlmixr2extra’ version ‘2.0.6’
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
* this is package ‘nlmixr2extra’ version ‘2.0.6’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'nlmixr2est', 'symengine'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# nlmixr2plot

<details>

* Version: 2.0.6
* GitHub: https://github.com/nlmixr2/nlmixr2plot
* Source code: https://github.com/cran/nlmixr2plot
* Date/Publication: 2022-05-23 07:50:02 UTC
* Number of recursive dependencies: 155

Run `cloud_details(, "nlmixr2plot")` for more info

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
* this is package ‘nlmixr2plot’ version ‘2.0.6’
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
* this is package ‘nlmixr2plot’ version ‘2.0.6’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'nlmixr2est', 'nlmixr2extra'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# NA

<details>

* Version: NA
* GitHub: NA
* Source code: https://github.com/cran/NA
* Number of recursive dependencies: 0

Run `cloud_details(, "NA")` for more info

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

* Version: 2.20.6
* GitHub: https://github.com/OpenMx/OpenMx
* Source code: https://github.com/cran/OpenMx
* Date/Publication: 2022-03-09 10:50:13 UTC
* Number of recursive dependencies: 145

Run `cloud_details(, "OpenMx")` for more info

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
* this is package ‘OpenMx’ version ‘2.20.6’
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
* this is package ‘OpenMx’ version ‘2.20.6’
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
# NA

<details>

* Version: NA
* GitHub: NA
* Source code: https://github.com/cran/NA
* Number of recursive dependencies: 0

Run `cloud_details(, "NA")` for more info

</details>

## Error before installation

### Devel

```






```
### CRAN

```






```
# rPBK

<details>

* Version: 0.2.0
* GitHub: NA
* Source code: https://github.com/cran/rPBK
* Date/Publication: 2022-09-01 15:10:02 UTC
* Number of recursive dependencies: 77

Run `cloud_details(, "rPBK")` for more info

</details>

## In both

*   checking whether package ‘rPBK’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/rPBK/new/rPBK.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘rPBK’ ...
** package ‘rPBK’ successfully unpacked and MD5 sums checked
** using staged installation
Error in loadNamespace(x) : there is no package called ‘rstantools’
Calls: loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: configuration failed for package ‘rPBK’
* removing ‘/tmp/workdir/rPBK/new/rPBK.Rcheck/rPBK’


```
### CRAN

```
* installing *source* package ‘rPBK’ ...
** package ‘rPBK’ successfully unpacked and MD5 sums checked
** using staged installation
Error in loadNamespace(x) : there is no package called ‘rstantools’
Calls: loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: configuration failed for package ‘rPBK’
* removing ‘/tmp/workdir/rPBK/old/rPBK.Rcheck/rPBK’


```
# NA

<details>

* Version: NA
* GitHub: NA
* Source code: https://github.com/cran/NA
* Number of recursive dependencies: 0

Run `cloud_details(, "NA")` for more info

</details>

## Error before installation

### Devel

```






```
### CRAN

```






```
# NA

<details>

* Version: NA
* GitHub: NA
* Source code: https://github.com/cran/NA
* Number of recursive dependencies: 0

Run `cloud_details(, "NA")` for more info

</details>

## Error before installation

### Devel

```






```
### CRAN

```






```
# SSVS

<details>

* Version: 2.0.0
* GitHub: https://github.com/sabainter/SSVS
* Source code: https://github.com/cran/SSVS
* Date/Publication: 2022-05-29 05:40:09 UTC
* Number of recursive dependencies: 125

Run `cloud_details(, "SSVS")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/SSVS/new/SSVS.Rcheck’
* using R version 4.1.1 (2021-08-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘SSVS/DESCRIPTION’ ... OK
* this is package ‘SSVS’ version ‘2.0.0’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘BoomSpikeSlab’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/SSVS/old/SSVS.Rcheck’
* using R version 4.1.1 (2021-08-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘SSVS/DESCRIPTION’ ... OK
* this is package ‘SSVS’ version ‘2.0.0’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘BoomSpikeSlab’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# NA

<details>

* Version: NA
* GitHub: NA
* Source code: https://github.com/cran/NA
* Number of recursive dependencies: 0

Run `cloud_details(, "NA")` for more info

</details>

## Error before installation

### Devel

```






```
### CRAN

```






```
# NA

<details>

* Version: NA
* GitHub: NA
* Source code: https://github.com/cran/NA
* Number of recursive dependencies: 0

Run `cloud_details(, "NA")` for more info

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
* Number of recursive dependencies: 170

Run `cloud_details(, "tidySEM")` for more info

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
# NA

<details>

* Version: NA
* GitHub: NA
* Source code: https://github.com/cran/NA
* Number of recursive dependencies: 0

Run `cloud_details(, "NA")` for more info

</details>

## Error before installation

### Devel

```






```
### CRAN

```






```
# vivid

<details>

* Version: 0.2.3
* GitHub: NA
* Source code: https://github.com/cran/vivid
* Date/Publication: 2021-11-20 01:30:02 UTC
* Number of recursive dependencies: 201

Run `cloud_details(, "vivid")` for more info

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
### CRAN

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
# NA

<details>

* Version: NA
* GitHub: NA
* Source code: https://github.com/cran/NA
* Number of recursive dependencies: 0

Run `cloud_details(, "NA")` for more info

</details>

## Error before installation

### Devel

```






```
### CRAN

```






```
