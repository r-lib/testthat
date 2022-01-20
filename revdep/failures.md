# apisensr

<details>

* Version: 0.3.0
* GitHub: https://github.com/dhaine/apisensr
* Source code: https://github.com/cran/apisensr
* Date/Publication: 2021-03-15 11:20:09 UTC
* Number of recursive dependencies: 130

Run `cloud_details(, "apisensr")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/apisensr/new/apisensr.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘apisensr/DESCRIPTION’ ... OK
* this is package ‘apisensr’ version ‘0.3.0’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘episensr’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/apisensr/old/apisensr.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘apisensr/DESCRIPTION’ ... OK
* this is package ‘apisensr’ version ‘0.3.0’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘episensr’

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
# bayesmodels

<details>

* Version: 0.1.1
* GitHub: https://github.com/AlbertoAlmuinha/bayesmodels
* Source code: https://github.com/cran/bayesmodels
* Date/Publication: 2021-06-28 21:30:02 UTC
* Number of recursive dependencies: 257

Run `cloud_details(, "bayesmodels")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/bayesmodels/new/bayesmodels.Rcheck’
* using R version 4.0.3 (2020-10-10)
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
### CRAN

```
* using log directory ‘/tmp/workdir/bayesmodels/old/bayesmodels.Rcheck’
* using R version 4.0.3 (2020-10-10)
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
# Boom

<details>

* Version: 0.9.7
* GitHub: NA
* Source code: https://github.com/cran/Boom
* Date/Publication: 2021-02-23 17:40:03 UTC
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
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -I. -I../inst/include -IBmath -Imath/cephes -DADD_ -DR_NO_REMAP -DEIGEN_WARNINGS_DISABLED  -I/usr/local/include   -fpic  -g -O2  -c boom_r_tools.cpp -o boom_r_tools.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -I. -I../inst/include -IBmath -Imath/cephes -DADD_ -DR_NO_REMAP -DEIGEN_WARNINGS_DISABLED  -I/usr/local/include   -fpic  -g -O2  -c create_poisson_process.cpp -o create_poisson_process.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -I. -I../inst/include -IBmath -Imath/cephes -DADD_ -DR_NO_REMAP -DEIGEN_WARNINGS_DISABLED  -I/usr/local/include   -fpic  -g -O2  -c create_mixture_component.cpp -o create_mixture_component.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -I. -I../inst/include -IBmath -Imath/cephes -DADD_ -DR_NO_REMAP -DEIGEN_WARNINGS_DISABLED  -I/usr/local/include   -fpic  -g -O2  -c parse_model_formula.cpp -o parse_model_formula.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -I. -I../inst/include -IBmath -Imath/cephes -DADD_ -DR_NO_REMAP -DEIGEN_WARNINGS_DISABLED  -I/usr/local/include   -fpic  -g -O2  -c extract_mixture_data.cpp -o extract_mixture_data.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -I. -I../inst/include -IBmath -Imath/cephes -DADD_ -DR_NO_REMAP -DEIGEN_WARNINGS_DISABLED  -I/usr/local/include   -fpic  -g -O2  -c seed_rng_from_R.cpp -o seed_rng_from_R.o
...
../inst/include/Eigen/src/SVD/JacobiSVD.h:548:7:   required from ‘Eigen::JacobiSVD<MatrixType, QRPreconditioner>::JacobiSVD(const MatrixType&, unsigned int) [with _MatrixType = Eigen::Matrix<double, -1, -1>; int QRPreconditioner = 2; Eigen::JacobiSVD<MatrixType, QRPreconditioner>::MatrixType = Eigen::Matrix<double, -1, -1>]’
LinAlg/Matrix.cpp:759:67:   required from here
../inst/include/Eigen/src/Core/CoreEvaluators.h:960:8: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__vector(2) double’} [-Wignored-attributes]
Models/Glm/PosteriorSamplers/fill_poisson_mixture_approximation_table_2.cpp:1046:1: fatal error: error writing to /tmp/ccF3Ifmn.s: Cannot allocate memory
 1046 | }  // namespace BOOM
      | ^
compilation terminated.
make: *** [/opt/R/4.0.3/lib/R/etc/Makeconf:181: Models/Glm/PosteriorSamplers/fill_poisson_mixture_approximation_table_2.o] Error 1
ERROR: compilation failed for package ‘Boom’
* removing ‘/tmp/workdir/Boom/new/Boom.Rcheck/Boom’


```
### CRAN

```
* installing *source* package ‘Boom’ ...
** package ‘Boom’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -I. -I../inst/include -IBmath -Imath/cephes -DADD_ -DR_NO_REMAP -DEIGEN_WARNINGS_DISABLED  -I/usr/local/include   -fpic  -g -O2  -c boom_r_tools.cpp -o boom_r_tools.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -I. -I../inst/include -IBmath -Imath/cephes -DADD_ -DR_NO_REMAP -DEIGEN_WARNINGS_DISABLED  -I/usr/local/include   -fpic  -g -O2  -c create_poisson_process.cpp -o create_poisson_process.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -I. -I../inst/include -IBmath -Imath/cephes -DADD_ -DR_NO_REMAP -DEIGEN_WARNINGS_DISABLED  -I/usr/local/include   -fpic  -g -O2  -c create_mixture_component.cpp -o create_mixture_component.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -I. -I../inst/include -IBmath -Imath/cephes -DADD_ -DR_NO_REMAP -DEIGEN_WARNINGS_DISABLED  -I/usr/local/include   -fpic  -g -O2  -c parse_model_formula.cpp -o parse_model_formula.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -I. -I../inst/include -IBmath -Imath/cephes -DADD_ -DR_NO_REMAP -DEIGEN_WARNINGS_DISABLED  -I/usr/local/include   -fpic  -g -O2  -c extract_mixture_data.cpp -o extract_mixture_data.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -I. -I../inst/include -IBmath -Imath/cephes -DADD_ -DR_NO_REMAP -DEIGEN_WARNINGS_DISABLED  -I/usr/local/include   -fpic  -g -O2  -c seed_rng_from_R.cpp -o seed_rng_from_R.o
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
# brranching

<details>

* Version: 0.7.0
* GitHub: https://github.com/ropensci/brranching
* Source code: https://github.com/cran/brranching
* Date/Publication: 2021-05-11 05:22:14 UTC
* Number of recursive dependencies: 143

Run `cloud_details(, "brranching")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/brranching/new/brranching.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘brranching/DESCRIPTION’ ... OK
* this is package ‘brranching’ version ‘0.7.0’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘phytools’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/brranching/old/brranching.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘brranching/DESCRIPTION’ ... OK
* this is package ‘brranching’ version ‘0.7.0’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘phytools’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# bsts

<details>

* Version: 0.9.7
* GitHub: NA
* Source code: https://github.com/cran/bsts
* Date/Publication: 2021-07-02 04:30:07 UTC
* Number of recursive dependencies: 37

Run `cloud_details(, "bsts")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/bsts/new/bsts.Rcheck’
* using R version 4.0.3 (2020-10-10)
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
### CRAN

```
* using log directory ‘/tmp/workdir/bsts/old/bsts.Rcheck’
* using R version 4.0.3 (2020-10-10)
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
# CausalImpact

<details>

* Version: 1.2.7
* GitHub: NA
* Source code: https://github.com/cran/CausalImpact
* Date/Publication: 2021-06-07 06:40:02 UTC
* Number of recursive dependencies: 68

Run `cloud_details(, "CausalImpact")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/CausalImpact/new/CausalImpact.Rcheck’
* using R version 4.0.3 (2020-10-10)
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
* using R version 4.0.3 (2020-10-10)
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
# cbar

<details>

* Version: 0.1.3
* GitHub: https://github.com/zedoul/cbar
* Source code: https://github.com/cran/cbar
* Date/Publication: 2017-10-24 13:20:22 UTC
* Number of recursive dependencies: 61

Run `cloud_details(, "cbar")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/cbar/new/cbar.Rcheck’
* using R version 4.0.3 (2020-10-10)
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
### CRAN

```
* using log directory ‘/tmp/workdir/cbar/old/cbar.Rcheck’
* using R version 4.0.3 (2020-10-10)
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
# Claddis

<details>

* Version: 0.6.3
* GitHub: NA
* Source code: https://github.com/cran/Claddis
* Date/Publication: 2020-09-26 04:30:23 UTC
* Number of recursive dependencies: 66

Run `cloud_details(, "Claddis")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/Claddis/new/Claddis.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘Claddis/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘Claddis’ version ‘0.6.3’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘phytools’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/Claddis/old/Claddis.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘Claddis/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘Claddis’ version ‘0.6.3’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘phytools’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# conos

<details>

* Version: 1.4.4
* GitHub: https://github.com/kharchenkolab/conos
* Source code: https://github.com/cran/conos
* Date/Publication: 2021-11-08 22:40:09 UTC
* Number of recursive dependencies: 237

Run `cloud_details(, "conos")` for more info

</details>

## In both

*   checking whether package ‘conos’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/conos/new/conos.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘conos’ ...
** package ‘conos’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppArmadillo/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppEigen/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppProgress/include' -I/usr/local/include  -I"./include" -fopenmp  -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
In file included from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/Core:397,
                 from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/Dense:1,
                 from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/RcppEigenForward.h:30,
                 from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/RcppEigen.h:25,
                 from RcppExports.cpp:6:
...
Warning messages:
1: package ‘Matrix’ was built under R version 4.0.5 
2: package ‘igraph’ was built under R version 4.0.5 
Error in dyn.load(file, DLLpath = DLLpath, ...) : 
  unable to load shared object '/opt/R/4.0.3/lib/R/site-library/leidenAlg/libs/leidenAlg.so':
  /rspm_builder/tmp/tmp.g3oetWvR4T/igraph/libs/igraph.so: cannot open shared object file: No such file or directory
Calls: <Anonymous> ... namespaceImport -> loadNamespace -> library.dynam -> dyn.load
Execution halted
ERROR: lazy loading failed for package ‘conos’
* removing ‘/tmp/workdir/conos/new/conos.Rcheck/conos’


```
### CRAN

```
* installing *source* package ‘conos’ ...
** package ‘conos’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppArmadillo/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppEigen/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppProgress/include' -I/usr/local/include  -I"./include" -fopenmp  -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
In file included from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/Core:397,
                 from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/Dense:1,
                 from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/RcppEigenForward.h:30,
                 from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/RcppEigen.h:25,
                 from RcppExports.cpp:6:
...
Warning messages:
1: package ‘Matrix’ was built under R version 4.0.5 
2: package ‘igraph’ was built under R version 4.0.5 
Error in dyn.load(file, DLLpath = DLLpath, ...) : 
  unable to load shared object '/opt/R/4.0.3/lib/R/site-library/leidenAlg/libs/leidenAlg.so':
  /rspm_builder/tmp/tmp.g3oetWvR4T/igraph/libs/igraph.so: cannot open shared object file: No such file or directory
Calls: <Anonymous> ... namespaceImport -> loadNamespace -> library.dynam -> dyn.load
Execution halted
ERROR: lazy loading failed for package ‘conos’
* removing ‘/tmp/workdir/conos/old/conos.Rcheck/conos’


```
# corHMM

<details>

* Version: 2.7
* GitHub: NA
* Source code: https://github.com/cran/corHMM
* Date/Publication: 2021-05-14 21:12:11 UTC
* Number of recursive dependencies: 83

Run `cloud_details(, "corHMM")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/corHMM/new/corHMM.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘corHMM/DESCRIPTION’ ... OK
* this is package ‘corHMM’ version ‘2.7’
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'phangorn', 'phytools'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/corHMM/old/corHMM.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘corHMM/DESCRIPTION’ ... OK
* this is package ‘corHMM’ version ‘2.7’
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'phangorn', 'phytools'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# ctsem

<details>

* Version: 3.5.4
* GitHub: https://github.com/cdriveraus/ctsem
* Source code: https://github.com/cran/ctsem
* Date/Publication: 2021-07-23 16:40:02 UTC
* Number of recursive dependencies: 125

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
 2348 |     T__ log_prob(std::vector<T__>& params_r__,
      |         ^~~~~~~~
stan_files/ctsm.hpp: In member function ‘T__ model_ctsm_namespace::model_ctsm::log_prob(std::vector<T_l>&, std::vector<int>&, std::ostream*) const [with bool propto__ = false; bool jacobian__ = false; T__ = double]’:
stan_files/ctsm.hpp:2348:9: note: variable tracking size limit exceeded with ‘-fvar-tracking-assignments’, retrying without
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
 2348 |     T__ log_prob(std::vector<T__>& params_r__,
      |         ^~~~~~~~
stan_files/ctsm.hpp: In member function ‘T__ model_ctsm_namespace::model_ctsm::log_prob(std::vector<T_l>&, std::vector<int>&, std::ostream*) const [with bool propto__ = false; bool jacobian__ = false; T__ = double]’:
stan_files/ctsm.hpp:2348:9: note: variable tracking size limit exceeded with ‘-fvar-tracking-assignments’, retrying without
g++: fatal error: Killed signal terminated program cc1plus
compilation terminated.
make: *** [/opt/R/4.0.3/lib/R/etc/Makeconf:179: stan_files/ctsm.o] Error 1
rm stan_files/ctsm.cc
ERROR: compilation failed for package ‘ctsem’
* removing ‘/tmp/workdir/ctsem/old/ctsem.Rcheck/ctsem’


```
# DAISIE

<details>

* Version: 3.0.1
* GitHub: NA
* Source code: https://github.com/cran/DAISIE
* Date/Publication: 2020-08-26 10:00:07 UTC
* Number of recursive dependencies: 112

Run `cloud_details(, "DAISIE")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/DAISIE/new/DAISIE.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘DAISIE/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘DAISIE’ version ‘3.0.1’
* package encoding: UTF-8
* checking package namespace information ... OK
...
  Running ‘testthat.R’
* checking for unstated dependencies in vignettes ... OK
* checking package vignettes in ‘inst/doc’ ... OK
* checking running R code from vignettes ... NONE
  ‘demo_CSvsIW.Rmd’ using ‘UTF-8’... OK
  ‘demo_optimize.Rmd’ using ‘UTF-8’... OK
  ‘demo_sim.Rmd’ using ‘UTF-8’... OK
* checking re-building of vignette outputs ... OK
* DONE
Status: 1 NOTE





```
### CRAN

```
* using log directory ‘/tmp/workdir/DAISIE/old/DAISIE.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘DAISIE/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘DAISIE’ version ‘3.0.1’
* package encoding: UTF-8
* checking package namespace information ... OK
...
  Running ‘testthat.R’
* checking for unstated dependencies in vignettes ... OK
* checking package vignettes in ‘inst/doc’ ... OK
* checking running R code from vignettes ... NONE
  ‘demo_CSvsIW.Rmd’ using ‘UTF-8’... OK
  ‘demo_optimize.Rmd’ using ‘UTF-8’... OK
  ‘demo_sim.Rmd’ using ‘UTF-8’... OK
* checking re-building of vignette outputs ... OK
* DONE
Status: 1 NOTE





```
# DAMOCLES

<details>

* Version: 2.3
* GitHub: NA
* Source code: https://github.com/cran/DAMOCLES
* Date/Publication: 2020-08-12 14:22:11 UTC
* Number of recursive dependencies: 100

Run `cloud_details(, "DAMOCLES")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/DAMOCLES/new/DAMOCLES.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘DAMOCLES/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘DAMOCLES’ version ‘2.3’
* package encoding: UTF-8
* checking package namespace information ... OK
...
* checking for unstated dependencies in examples ... OK
* checking contents of ‘data’ directory ... OK
* checking data for non-ASCII characters ... OK
* checking data for ASCII and uncompressed saves ... OK
* checking examples ... OK
* checking for unstated dependencies in ‘tests’ ... OK
* checking tests ... OK
  Running ‘testthat.R’
* DONE
Status: OK





```
### CRAN

```
* using log directory ‘/tmp/workdir/DAMOCLES/old/DAMOCLES.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘DAMOCLES/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘DAMOCLES’ version ‘2.3’
* package encoding: UTF-8
* checking package namespace information ... OK
...
* checking for unstated dependencies in examples ... OK
* checking contents of ‘data’ directory ... OK
* checking data for non-ASCII characters ... OK
* checking data for ASCII and uncompressed saves ... OK
* checking examples ... OK
* checking for unstated dependencies in ‘tests’ ... OK
* checking tests ... OK
  Running ‘testthat.R’
* DONE
Status: OK





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
# DDD

<details>

* Version: 5.0
* GitHub: NA
* Source code: https://github.com/cran/DDD
* Date/Publication: 2021-07-19 08:30:06 UTC
* Number of recursive dependencies: 57

Run `cloud_details(, "DDD")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/DDD/new/DDD.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘DDD/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘DDD’ version ‘5.0’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘phytools’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/DDD/old/DDD.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘DDD/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘DDD’ version ‘5.0’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘phytools’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# deeptime

<details>

* Version: 0.2.1
* GitHub: https://github.com/willgearty/deeptime
* Source code: https://github.com/cran/deeptime
* Date/Publication: 2022-01-10 23:42:46 UTC
* Number of recursive dependencies: 173

Run `cloud_details(, "deeptime")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/deeptime/new/deeptime.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘deeptime/DESCRIPTION’ ... OK
* this is package ‘deeptime’ version ‘0.2.1’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... NOTE
...
  3: package 'ggplot2' was built under R version 4.0.5 
  4: package 'tibble' was built under R version 4.0.5 
  5: package 'tidyr' was built under R version 4.0.5 
  6: package 'readr' was built under R version 4.0.5 
  7: package 'purrr' was built under R version 4.0.5 
  8: package 'dplyr' was built under R version 4.0.5 
  9: package 'ape' was built under R version 4.0.5 
  Execution halted
* DONE
Status: 1 ERROR, 1 NOTE





```
### CRAN

```
* using log directory ‘/tmp/workdir/deeptime/old/deeptime.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘deeptime/DESCRIPTION’ ... OK
* this is package ‘deeptime’ version ‘0.2.1’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... NOTE
...
  3: package 'ggplot2' was built under R version 4.0.5 
  4: package 'tibble' was built under R version 4.0.5 
  5: package 'tidyr' was built under R version 4.0.5 
  6: package 'readr' was built under R version 4.0.5 
  7: package 'purrr' was built under R version 4.0.5 
  8: package 'dplyr' was built under R version 4.0.5 
  9: package 'ape' was built under R version 4.0.5 
  Execution halted
* DONE
Status: 1 ERROR, 1 NOTE





```
# dispRity

<details>

* Version: 1.6.0
* GitHub: https://github.com/TGuillerme/dispRity
* Source code: https://github.com/cran/dispRity
* Date/Publication: 2021-04-17 14:10:02 UTC
* Number of recursive dependencies: 92

Run `cloud_details(, "dispRity")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/dispRity/new/dispRity.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘dispRity/DESCRIPTION’ ... OK
* this is package ‘dispRity’ version ‘1.6.0’
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘phangorn’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/dispRity/old/dispRity.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘dispRity/DESCRIPTION’ ... OK
* this is package ‘dispRity’ version ‘1.6.0’
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘phangorn’

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
# fishtree

<details>

* Version: 0.3.4
* GitHub: https://github.com/jonchang/fishtree
* Source code: https://github.com/cran/fishtree
* Date/Publication: 2021-01-31 00:50:06 UTC
* Number of recursive dependencies: 136

Run `cloud_details(, "fishtree")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/fishtree/new/fishtree.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘fishtree/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘fishtree’ version ‘0.3.4’
* package encoding: UTF-8
* checking package namespace information ... OK
...
  Running ‘spelling.R’
  Running ‘testthat.R’
* checking for unstated dependencies in vignettes ... OK
* checking package vignettes in ‘inst/doc’ ... OK
* checking running R code from vignettes ... NONE
  ‘community-analysis.Rmd’ using ‘UTF-8’... OK
  ‘comparative-analysis.Rmd’ using ‘UTF-8’... OK
* checking re-building of vignette outputs ... OK
* DONE
Status: 2 NOTEs





```
### CRAN

```
* using log directory ‘/tmp/workdir/fishtree/old/fishtree.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘fishtree/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘fishtree’ version ‘0.3.4’
* package encoding: UTF-8
* checking package namespace information ... OK
...
  Running ‘spelling.R’
  Running ‘testthat.R’
* checking for unstated dependencies in vignettes ... OK
* checking package vignettes in ‘inst/doc’ ... OK
* checking running R code from vignettes ... NONE
  ‘community-analysis.Rmd’ using ‘UTF-8’... OK
  ‘comparative-analysis.Rmd’ using ‘UTF-8’... OK
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
# geocmeans

<details>

* Version: 0.2.0
* GitHub: https://github.com/JeremyGelb/geocmeans
* Source code: https://github.com/cran/geocmeans
* Date/Publication: 2021-08-23 07:11:35 UTC
* Number of recursive dependencies: 217

Run `cloud_details(, "geocmeans")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/geocmeans/new/geocmeans.Rcheck’
* using R version 4.0.3 (2020-10-10)
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
### CRAN

```
* using log directory ‘/tmp/workdir/geocmeans/old/geocmeans.Rcheck’
* using R version 4.0.3 (2020-10-10)
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
# hillR

<details>

* Version: 0.5.1
* GitHub: https://github.com/daijiang/hillR
* Source code: https://github.com/cran/hillR
* Date/Publication: 2021-03-02 08:30:02 UTC
* Number of recursive dependencies: 92

Run `cloud_details(, "hillR")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/hillR/new/hillR.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘hillR/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘hillR’ version ‘0.5.1’
* package encoding: UTF-8
* checking package namespace information ... OK
...
   12.                   └─base::loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]])
   13.                     └─base::withRestarts(stop(cond), retry_loadNamespace = function() NULL)
   14.                       └─base:::withOneRestart(expr, restarts[[1L]])
   15.                         └─base:::doWithOneRestart(return(expr), restart)
  
  [ FAIL 6 | WARN 0 | SKIP 9 | PASS 31 ]
  Error: Test failures
  Execution halted
* DONE
Status: 2 ERRORs





```
### CRAN

```
* using log directory ‘/tmp/workdir/hillR/old/hillR.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘hillR/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘hillR’ version ‘0.5.1’
* package encoding: UTF-8
* checking package namespace information ... OK
...
   12.                   └─base::loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]])
   13.                     └─base::withRestarts(stop(cond), retry_loadNamespace = function() NULL)
   14.                       └─base:::withOneRestart(expr, restarts[[1L]])
   15.                         └─base:::doWithOneRestart(return(expr), restart)
  
  [ FAIL 6 | WARN 0 | SKIP 9 | PASS 31 ]
  Error: Test failures
  Execution halted
* DONE
Status: 2 ERRORs





```
# hisse

<details>

* Version: 2.1.6
* GitHub: NA
* Source code: https://github.com/cran/hisse
* Date/Publication: 2021-11-16 08:20:02 UTC
* Number of recursive dependencies: 98

Run `cloud_details(, "hisse")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/hisse/new/hisse.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘hisse/DESCRIPTION’ ... OK
* this is package ‘hisse’ version ‘2.1.6’
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'phytools', 'phangorn'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/hisse/old/hisse.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘hisse/DESCRIPTION’ ... OK
* this is package ‘hisse’ version ‘2.1.6’
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'phytools', 'phangorn'

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
# kdensity

<details>

* Version: 1.1.0
* GitHub: https://github.com/JonasMoss/kdensity
* Source code: https://github.com/cran/kdensity
* Date/Publication: 2020-09-30 09:00:05 UTC
* Number of recursive dependencies: 76

Run `cloud_details(, "kdensity")` for more info

</details>

## In both

*   checking whether package ‘kdensity’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/kdensity/new/kdensity.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘kdensity’ ...
** package ‘kdensity’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘actuar’
Error: unable to load R code in package ‘kdensity’
Execution halted
ERROR: lazy loading failed for package ‘kdensity’
* removing ‘/tmp/workdir/kdensity/new/kdensity.Rcheck/kdensity’


```
### CRAN

```
* installing *source* package ‘kdensity’ ...
** package ‘kdensity’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(name) : there is no package called ‘actuar’
Error: unable to load R code in package ‘kdensity’
Execution halted
ERROR: lazy loading failed for package ‘kdensity’
* removing ‘/tmp/workdir/kdensity/old/kdensity.Rcheck/kdensity’


```
# lidaRtRee

<details>

* Version: 3.1.2
* GitHub: NA
* Source code: https://github.com/cran/lidaRtRee
* Date/Publication: 2021-12-09 13:30:02 UTC
* Number of recursive dependencies: 159

Run `cloud_details(, "lidaRtRee")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/lidaRtRee/new/lidaRtRee.Rcheck’
* using R version 4.0.3 (2020-10-10)
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
### CRAN

```
* using log directory ‘/tmp/workdir/lidaRtRee/old/lidaRtRee.Rcheck’
* using R version 4.0.3 (2020-10-10)
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
# loon.ggplot

<details>

* Version: 1.3.0
* GitHub: https://github.com/great-northern-diver/loon.ggplot
* Source code: https://github.com/cran/loon.ggplot
* Date/Publication: 2021-09-28 14:00:05 UTC
* Number of recursive dependencies: 99

Run `cloud_details(, "loon.ggplot")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/loon.ggplot/new/loon.ggplot.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘loon.ggplot/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘loon.ggplot’ version ‘1.3.0’
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
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘loon.ggplot/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘loon.ggplot’ version ‘1.3.0’
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

* Version: 1.0.1
* GitHub: NA
* Source code: https://github.com/cran/loon.shiny
* Date/Publication: 2021-09-27 19:40:02 UTC
* Number of recursive dependencies: 131

Run `cloud_details(, "loon.shiny")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/loon.shiny/new/loon.shiny.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘loon.shiny/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘loon.shiny’ version ‘1.0.1’
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
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘loon.shiny/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘loon.shiny’ version ‘1.0.1’
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
* Number of recursive dependencies: 118

Run `cloud_details(, "loon.tourr")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/loon.tourr/new/loon.tourr.Rcheck’
* using R version 4.0.3 (2020-10-10)
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
* using R version 4.0.3 (2020-10-10)
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
# MonoPhy

<details>

* Version: 1.3
* GitHub: NA
* Source code: https://github.com/cran/MonoPhy
* Date/Publication: 2021-02-17 20:10:03 UTC
* Number of recursive dependencies: 148

Run `cloud_details(, "MonoPhy")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/MonoPhy/new/MonoPhy.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘MonoPhy/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘MonoPhy’ version ‘1.3’
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'phytools', 'phangorn'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/MonoPhy/old/MonoPhy.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘MonoPhy/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘MonoPhy’ version ‘1.3’
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'phytools', 'phangorn'

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
# nLTT

<details>

* Version: 1.4.3
* GitHub: https://github.com/thijsjanzen/nLTT
* Source code: https://github.com/cran/nLTT
* Date/Publication: 2020-01-13 08:20:07 UTC
* Number of recursive dependencies: 106

Run `cloud_details(, "nLTT")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/nLTT/new/nLTT.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘nLTT/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘nLTT’ version ‘1.4.3’
* package encoding: UTF-8
* checking package namespace information ... OK
...
--- failed re-building ‘walkthrough.Rmd’

SUMMARY: processing the following file failed:
  ‘walkthrough.Rmd’

Error: Vignette re-building failed.
Execution halted

* DONE
Status: 1 ERROR, 1 WARNING, 1 NOTE





```
### CRAN

```
* using log directory ‘/tmp/workdir/nLTT/old/nLTT.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘nLTT/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘nLTT’ version ‘1.4.3’
* package encoding: UTF-8
* checking package namespace information ... OK
...
--- failed re-building ‘walkthrough.Rmd’

SUMMARY: processing the following file failed:
  ‘walkthrough.Rmd’

Error: Vignette re-building failed.
Execution halted

* DONE
Status: 1 ERROR, 1 WARNING, 1 NOTE





```
# nodeSub

<details>

* Version: 1.2.2
* GitHub: https://github.com/thijsjanzen/nodeSub
* Source code: https://github.com/cran/nodeSub
* Date/Publication: 2022-01-11 10:22:42 UTC
* Number of recursive dependencies: 238

Run `cloud_details(, "nodeSub")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/nodeSub/new/nodeSub.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘nodeSub/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘nodeSub’ version ‘1.2.2’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'RPANDA', 'phangorn'

Package suggested but not available for checking: ‘phytools’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/nodeSub/old/nodeSub.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘nodeSub/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘nodeSub’ version ‘1.2.2’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'RPANDA', 'phangorn'

Package suggested but not available for checking: ‘phytools’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# OUwie

<details>

* Version: 2.6
* GitHub: NA
* Source code: https://github.com/cran/OUwie
* Date/Publication: 2021-02-04 05:10:03 UTC
* Number of recursive dependencies: 88

Run `cloud_details(, "OUwie")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/OUwie/new/OUwie.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘OUwie/DESCRIPTION’ ... OK
* this is package ‘OUwie’ version ‘2.6’
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'phytools', 'phangorn'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/OUwie/old/OUwie.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘OUwie/DESCRIPTION’ ... OK
* this is package ‘OUwie’ version ‘2.6’
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'phytools', 'phangorn'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# ouxy

<details>

* Version: 2.1
* GitHub: https://github.com/djhwueng/ououcir
* Source code: https://github.com/cran/ouxy
* Date/Publication: 2020-05-28 05:00:02 UTC
* Number of recursive dependencies: 168

Run `cloud_details(, "ouxy")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/ouxy/new/ouxy.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘ouxy/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘ouxy’ version ‘2.1’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘phytools’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/ouxy/old/ouxy.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘ouxy/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘ouxy’ version ‘2.1’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘phytools’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# paleotree

<details>

* Version: 3.3.25
* GitHub: https://github.com/dwbapst/paleotree
* Source code: https://github.com/cran/paleotree
* Date/Publication: 2019-12-12 12:50:02 UTC
* Number of recursive dependencies: 65

Run `cloud_details(, "paleotree")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/paleotree/new/paleotree.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘paleotree/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘paleotree’ version ‘3.3.25’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'phangorn', 'phytools'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/paleotree/old/paleotree.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘paleotree/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘paleotree’ version ‘3.3.25’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'phangorn', 'phytools'

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
# PCMBase

<details>

* Version: 1.2.12
* GitHub: https://github.com/venelin/PCMBase
* Source code: https://github.com/cran/PCMBase
* Date/Publication: 2021-06-07 08:00:02 UTC
* Number of recursive dependencies: 113

Run `cloud_details(, "PCMBase")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/PCMBase/new/PCMBase.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘PCMBase/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘PCMBase’ version ‘1.2.12’
* package encoding: UTF-8
* checking package namespace information ... OK
...
--- failed re-building ‘PCMTracePruning.Rmd’

SUMMARY: processing the following files failed:
  ‘PCMBase.Rmd’ ‘PCMCreateModel.Rmd’ ‘PCMTracePruning.Rmd’

Error: Vignette re-building failed.
Execution halted

* DONE
Status: 1 WARNING, 1 NOTE





```
### CRAN

```
* using log directory ‘/tmp/workdir/PCMBase/old/PCMBase.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘PCMBase/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘PCMBase’ version ‘1.2.12’
* package encoding: UTF-8
* checking package namespace information ... OK
...
--- failed re-building ‘PCMTracePruning.Rmd’

SUMMARY: processing the following files failed:
  ‘PCMBase.Rmd’ ‘PCMCreateModel.Rmd’ ‘PCMTracePruning.Rmd’

Error: Vignette re-building failed.
Execution halted

* DONE
Status: 1 WARNING, 1 NOTE





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
# PhylogeneticEM

<details>

* Version: 1.5.0
* GitHub: https://github.com/pbastide/PhylogeneticEM
* Source code: https://github.com/cran/PhylogeneticEM
* Date/Publication: 2021-09-16 13:30:05 UTC
* Number of recursive dependencies: 91

Run `cloud_details(, "PhylogeneticEM")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/PhylogeneticEM/new/PhylogeneticEM.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘PhylogeneticEM/DESCRIPTION’ ... OK
* this is package ‘PhylogeneticEM’ version ‘1.5.0’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... NOTE
...
  Running ‘testthat_upward.R’
  Running ‘testthat_utilities.R’
* checking for unstated dependencies in vignettes ... OK
* checking package vignettes in ‘inst/doc’ ... OK
* checking running R code from vignettes ... NONE
  ‘monkeys.Rmd’ using ‘UTF-8’... OK
  ‘tutorial.Rmd’ using ‘UTF-8’... OK
* checking re-building of vignette outputs ... OK
* DONE
Status: 1 WARNING, 2 NOTEs





```
### CRAN

```
* using log directory ‘/tmp/workdir/PhylogeneticEM/old/PhylogeneticEM.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘PhylogeneticEM/DESCRIPTION’ ... OK
* this is package ‘PhylogeneticEM’ version ‘1.5.0’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... NOTE
...
  Running ‘testthat_upward.R’
  Running ‘testthat_utilities.R’
* checking for unstated dependencies in vignettes ... OK
* checking package vignettes in ‘inst/doc’ ... OK
* checking running R code from vignettes ... NONE
  ‘monkeys.Rmd’ using ‘UTF-8’... OK
  ‘tutorial.Rmd’ using ‘UTF-8’... OK
* checking re-building of vignette outputs ... OK
* DONE
Status: 1 WARNING, 2 NOTEs





```
# phyr

<details>

* Version: 1.1.0
* GitHub: https://github.com/daijiang/phyr
* Source code: https://github.com/cran/phyr
* Date/Publication: 2020-12-18 07:30:05 UTC
* Number of recursive dependencies: 188

Run `cloud_details(, "phyr")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/phyr/new/phyr.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘phyr/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘phyr’ version ‘1.1.0’
* package encoding: UTF-8
* checking package namespace information ... OK
...
  Running ‘testthat.R’
* checking for unstated dependencies in vignettes ... OK
* checking package vignettes in ‘inst/doc’ ... OK
* checking running R code from vignettes ... NONE
  ‘benchmarks.Rmd’ using ‘UTF-8’... OK
  ‘pglmm.Rmd’ using ‘UTF-8’... OK
  ‘plot-re.Rmd’ using ‘UTF-8’... OK
* checking re-building of vignette outputs ... OK
* DONE
Status: 1 NOTE





```
### CRAN

```
* using log directory ‘/tmp/workdir/phyr/old/phyr.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘phyr/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘phyr’ version ‘1.1.0’
* package encoding: UTF-8
* checking package namespace information ... OK
...
  Running ‘testthat.R’
* checking for unstated dependencies in vignettes ... OK
* checking package vignettes in ‘inst/doc’ ... OK
* checking running R code from vignettes ... NONE
  ‘benchmarks.Rmd’ using ‘UTF-8’... OK
  ‘pglmm.Rmd’ using ‘UTF-8’... OK
  ‘plot-re.Rmd’ using ‘UTF-8’... OK
* checking re-building of vignette outputs ... OK
* DONE
Status: 1 NOTE





```
# Platypus

<details>

* Version: 3.2.3
* GitHub: NA
* Source code: https://github.com/cran/Platypus
* Date/Publication: 2021-10-19 07:00:02 UTC
* Number of recursive dependencies: 243

Run `cloud_details(, "Platypus")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/Platypus/new/Platypus.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘Platypus/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘Platypus’ version ‘3.2.3’
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
Status: 2 NOTEs





```
### CRAN

```
* using log directory ‘/tmp/workdir/Platypus/old/Platypus.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘Platypus/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘Platypus’ version ‘3.2.3’
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
Status: 2 NOTEs





```
# pmc

<details>

* Version: 1.0.4
* GitHub: https://github.com/cboettig/pmc
* Source code: https://github.com/cran/pmc
* Date/Publication: 2021-01-07 18:10:12 UTC
* Number of recursive dependencies: 97

Run `cloud_details(, "pmc")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/pmc/new/pmc.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘pmc/DESCRIPTION’ ... OK
* this is package ‘pmc’ version ‘1.0.4’
* checking package namespace information ... OK
* checking package dependencies ... OK
* checking if this is a source package ... OK
...
* checking if there is a namespace ... OK
* checking for executable files ... OK
* checking for hidden files and directories ... OK
* checking for portable file names ... OK
* checking for sufficient/correct file permissions ... OK
* checking whether package ‘pmc’ can be installed ... ERROR
Installation failed.
See ‘/tmp/workdir/pmc/new/pmc.Rcheck/00install.out’ for details.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/pmc/old/pmc.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘pmc/DESCRIPTION’ ... OK
* this is package ‘pmc’ version ‘1.0.4’
* checking package namespace information ... OK
* checking package dependencies ... OK
* checking if this is a source package ... OK
...
* checking if there is a namespace ... OK
* checking for executable files ... OK
* checking for hidden files and directories ... OK
* checking for portable file names ... OK
* checking for sufficient/correct file permissions ... OK
* checking whether package ‘pmc’ can be installed ... ERROR
Installation failed.
See ‘/tmp/workdir/pmc/old/pmc.Rcheck/00install.out’ for details.
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
# quickcheck

<details>

* Version: 0.0.1
* GitHub: https://github.com/armcn/quickcheck
* Source code: https://github.com/cran/quickcheck
* Date/Publication: 2022-01-12 20:12:42 UTC
* Number of recursive dependencies: 58

Run `cloud_details(, "quickcheck")` for more info

</details>

## In both

*   checking whether package ‘quickcheck’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/quickcheck/new/quickcheck.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘quickcheck’ ...
** package ‘quickcheck’ successfully unpacked and MD5 sums checked
** using staged installation
** R
Error in parse(outFile) : 
  /tmp/workdir/quickcheck/new/quickcheck.Rcheck/00_pkg_src/quickcheck/R/any.R:15:10: unexpected input
14: any_atomic <- function(len = 1L, frac_na = 0) {
15:   qc_gen(\
             ^
ERROR: unable to collate and parse R files for package ‘quickcheck’
* removing ‘/tmp/workdir/quickcheck/new/quickcheck.Rcheck/quickcheck’


```
### CRAN

```
* installing *source* package ‘quickcheck’ ...
** package ‘quickcheck’ successfully unpacked and MD5 sums checked
** using staged installation
** R
Error in parse(outFile) : 
  /tmp/workdir/quickcheck/old/quickcheck.Rcheck/00_pkg_src/quickcheck/R/any.R:15:10: unexpected input
14: any_atomic <- function(len = 1L, frac_na = 0) {
15:   qc_gen(\
             ^
ERROR: unable to collate and parse R files for package ‘quickcheck’
* removing ‘/tmp/workdir/quickcheck/old/quickcheck.Rcheck/quickcheck’


```
# RAM

<details>

* Version: 1.2.1.7
* GitHub: NA
* Source code: https://github.com/cran/RAM
* Date/Publication: 2018-05-15 15:38:34 UTC
* Number of recursive dependencies: 115

Run `cloud_details(, "RAM")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/RAM/new/RAM.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘RAM/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘RAM’ version ‘1.2.1.7’
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'phangorn', 'phytools'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/RAM/old/RAM.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘RAM/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘RAM’ version ‘1.2.1.7’
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'phangorn', 'phytools'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# rbcb

<details>

* Version: 0.1.7
* GitHub: https://github.com/wilsonfreitas/rbcb
* Source code: https://github.com/cran/rbcb
* Date/Publication: 2022-01-10 08:42:42 UTC
* Number of recursive dependencies: 60

Run `cloud_details(, "rbcb")` for more info

</details>

## In both

*   checking whether package ‘rbcb’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/rbcb/new/rbcb.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘rbcb’ ...
** package ‘rbcb’ successfully unpacked and MD5 sums checked
** using staged installation
** R
Error in parse(outFile) : 
  /tmp/workdir/rbcb/new/rbcb.Rcheck/00_pkg_src/rbcb/R/rbcb_addin.R:113:34: unexpected '>'
112:       res <- GET(url)
113:       content(res, as = "text") |>
                                      ^
ERROR: unable to collate and parse R files for package ‘rbcb’
* removing ‘/tmp/workdir/rbcb/new/rbcb.Rcheck/rbcb’


```
### CRAN

```
* installing *source* package ‘rbcb’ ...
** package ‘rbcb’ successfully unpacked and MD5 sums checked
** using staged installation
** R
Error in parse(outFile) : 
  /tmp/workdir/rbcb/old/rbcb.Rcheck/00_pkg_src/rbcb/R/rbcb_addin.R:113:34: unexpected '>'
112:       res <- GET(url)
113:       content(res, as = "text") |>
                                      ^
ERROR: unable to collate and parse R files for package ‘rbcb’
* removing ‘/tmp/workdir/rbcb/old/rbcb.Rcheck/rbcb’


```
# RCLabels

<details>

* Version: 0.1.0
* GitHub: NA
* Source code: https://github.com/cran/RCLabels
* Date/Publication: 2022-01-04 10:20:08 UTC
* Number of recursive dependencies: 85

Run `cloud_details(, "RCLabels")` for more info

</details>

## In both

*   checking whether package ‘RCLabels’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/RCLabels/new/RCLabels.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘RCLabels’ ...
** package ‘RCLabels’ successfully unpacked and MD5 sums checked
** using staged installation
** R
Error in parse(outFile) : 
  /tmp/workdir/RCLabels/new/RCLabels.Rcheck/00_pkg_src/RCLabels/R/extractors.R:25:63: unexpected '>'
24:   }
25:   get_pref_suff(labels, which = "pref", notation = notation) |>
                                                                  ^
ERROR: unable to collate and parse R files for package ‘RCLabels’
* removing ‘/tmp/workdir/RCLabels/new/RCLabels.Rcheck/RCLabels’


```
### CRAN

```
* installing *source* package ‘RCLabels’ ...
** package ‘RCLabels’ successfully unpacked and MD5 sums checked
** using staged installation
** R
Error in parse(outFile) : 
  /tmp/workdir/RCLabels/old/RCLabels.Rcheck/00_pkg_src/RCLabels/R/extractors.R:25:63: unexpected '>'
24:   }
25:   get_pref_suff(labels, which = "pref", notation = notation) |>
                                                                  ^
ERROR: unable to collate and parse R files for package ‘RCLabels’
* removing ‘/tmp/workdir/RCLabels/old/RCLabels.Rcheck/RCLabels’


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
# RevGadgets

<details>

* Version: 1.0.0
* GitHub: https://github.com/cmt2/RevGadgets
* Source code: https://github.com/cran/RevGadgets
* Date/Publication: 2021-09-13 11:40:04 UTC
* Number of recursive dependencies: 113

Run `cloud_details(, "RevGadgets")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/RevGadgets/new/RevGadgets.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘RevGadgets/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘RevGadgets’ version ‘1.0.0’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'phytools', 'ggtree'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/RevGadgets/old/RevGadgets.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘RevGadgets/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘RevGadgets’ version ‘1.0.0’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'phytools', 'ggtree'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# Revticulate

<details>

* Version: 0.3.0
* GitHub: NA
* Source code: https://github.com/cran/Revticulate
* Date/Publication: 2021-09-06 04:10:07 UTC
* Number of recursive dependencies: 110

Run `cloud_details(, "Revticulate")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/Revticulate/new/Revticulate.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘Revticulate/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘Revticulate’ version ‘0.3.0’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘phytools’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/Revticulate/old/Revticulate.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘Revticulate/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘Revticulate’ version ‘0.3.0’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘phytools’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# rhierbaps

<details>

* Version: 1.1.3
* GitHub: https://github.com/gtonkinhill/rhierbaps
* Source code: https://github.com/cran/rhierbaps
* Date/Publication: 2019-12-11 14:20:05 UTC
* Number of recursive dependencies: 93

Run `cloud_details(, "rhierbaps")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/rhierbaps/new/rhierbaps.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘rhierbaps/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘rhierbaps’ version ‘1.1.3’
* package encoding: UTF-8
* checking package namespace information ... OK
...
--- failed re-building ‘introduction.Rmd’

SUMMARY: processing the following file failed:
  ‘introduction.Rmd’

Error: Vignette re-building failed.
Execution halted

* DONE
Status: 1 WARNING, 1 NOTE





```
### CRAN

```
* using log directory ‘/tmp/workdir/rhierbaps/old/rhierbaps.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘rhierbaps/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘rhierbaps’ version ‘1.1.3’
* package encoding: UTF-8
* checking package namespace information ... OK
...
--- failed re-building ‘introduction.Rmd’

SUMMARY: processing the following file failed:
  ‘introduction.Rmd’

Error: Vignette re-building failed.
Execution halted

* DONE
Status: 1 WARNING, 1 NOTE





```
# RNeXML

<details>

* Version: 2.4.5
* GitHub: https://github.com/ropensci/RNeXML
* Source code: https://github.com/cran/RNeXML
* Date/Publication: 2020-06-18 18:40:02 UTC
* Number of recursive dependencies: 141

Run `cloud_details(, "RNeXML")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/RNeXML/new/RNeXML.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘RNeXML/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘RNeXML’ version ‘2.4.5’
* package encoding: UTF-8
* checking package namespace information ... OK
...
* checking package vignettes in ‘inst/doc’ ... OK
* checking running R code from vignettes ... NONE
  ‘S4.Rmd’ using ‘UTF-8’... OK
  ‘intro.Rmd’ using ‘UTF-8’... OK
  ‘metadata.Rmd’ using ‘UTF-8’... OK
  ‘simmap.Rmd’ using ‘UTF-8’... OK
  ‘sparql.Rmd’ using ‘UTF-8’... OK
* checking re-building of vignette outputs ... OK
* DONE
Status: 1 ERROR, 1 WARNING, 1 NOTE





```
### CRAN

```
* using log directory ‘/tmp/workdir/RNeXML/old/RNeXML.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘RNeXML/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘RNeXML’ version ‘2.4.5’
* package encoding: UTF-8
* checking package namespace information ... OK
...
* checking package vignettes in ‘inst/doc’ ... OK
* checking running R code from vignettes ... NONE
  ‘S4.Rmd’ using ‘UTF-8’... OK
  ‘intro.Rmd’ using ‘UTF-8’... OK
  ‘metadata.Rmd’ using ‘UTF-8’... OK
  ‘simmap.Rmd’ using ‘UTF-8’... OK
  ‘sparql.Rmd’ using ‘UTF-8’... OK
* checking re-building of vignette outputs ... OK
* DONE
Status: 1 ERROR, 1 WARNING, 1 NOTE





```
# Rogue

<details>

* Version: 2.0.0
* GitHub: https://github.com/ms609/Rogue
* Source code: https://github.com/cran/Rogue
* Date/Publication: 2021-09-13 15:30:21 UTC
* Number of recursive dependencies: 76

Run `cloud_details(, "Rogue")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/Rogue/new/Rogue.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘Rogue/DESCRIPTION’ ... OK
* this is package ‘Rogue’ version ‘2.0.0’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘TreeDist’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/Rogue/old/Rogue.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘Rogue/DESCRIPTION’ ... OK
* this is package ‘Rogue’ version ‘2.0.0’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘TreeDist’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# RPANDA

<details>

* Version: 2.0
* GitHub: https://github.com/hmorlon/PANDA
* Source code: https://github.com/cran/RPANDA
* Date/Publication: 2021-11-10 08:10:08 UTC
* Number of recursive dependencies: 101

Run `cloud_details(, "RPANDA")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/RPANDA/new/RPANDA.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘RPANDA/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘RPANDA’ version ‘2.0’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘phytools’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/RPANDA/old/RPANDA.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘RPANDA/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘RPANDA’ version ‘2.0’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘phytools’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# SADISA

<details>

* Version: 1.2
* GitHub: NA
* Source code: https://github.com/cran/SADISA
* Date/Publication: 2019-10-23 12:10:02 UTC
* Number of recursive dependencies: 70

Run `cloud_details(, "SADISA")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/SADISA/new/SADISA.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘SADISA/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘SADISA’ version ‘1.2’
* package encoding: UTF-8
* checking package namespace information ... OK
...
* checking installed files from ‘inst/doc’ ... OK
* checking files in ‘vignettes’ ... OK
* checking examples ... OK
* checking for unstated dependencies in vignettes ... OK
* checking package vignettes in ‘inst/doc’ ... OK
* checking running R code from vignettes ... NONE
  ‘demo.Rmd’ using ‘UTF-8’... OK
* checking re-building of vignette outputs ... OK
* DONE
Status: OK





```
### CRAN

```
* using log directory ‘/tmp/workdir/SADISA/old/SADISA.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘SADISA/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘SADISA’ version ‘1.2’
* package encoding: UTF-8
* checking package namespace information ... OK
...
* checking installed files from ‘inst/doc’ ... OK
* checking files in ‘vignettes’ ... OK
* checking examples ... OK
* checking for unstated dependencies in vignettes ... OK
* checking package vignettes in ‘inst/doc’ ... OK
* checking running R code from vignettes ... NONE
  ‘demo.Rmd’ using ‘UTF-8’... OK
* checking re-building of vignette outputs ... OK
* DONE
Status: OK





```
# secsse

<details>

* Version: 2.1.7
* GitHub: NA
* Source code: https://github.com/cran/secsse
* Date/Publication: 2021-07-16 07:30:05 UTC
* Number of recursive dependencies: 149

Run `cloud_details(, "secsse")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/secsse/new/secsse.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘secsse/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘secsse’ version ‘2.1.7’
* package encoding: UTF-8
* checking package namespace information ... OK
...
--- failed re-building ‘Using_secsse.Rmd’

SUMMARY: processing the following file failed:
  ‘Using_secsse.Rmd’

Error: Vignette re-building failed.
Execution halted

* DONE
Status: 1 ERROR, 1 WARNING, 1 NOTE





```
### CRAN

```
* using log directory ‘/tmp/workdir/secsse/old/secsse.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘secsse/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘secsse’ version ‘2.1.7’
* package encoding: UTF-8
* checking package namespace information ... OK
...
--- failed re-building ‘Using_secsse.Rmd’

SUMMARY: processing the following file failed:
  ‘Using_secsse.Rmd’

Error: Vignette re-building failed.
Execution halted

* DONE
Status: 1 ERROR, 1 WARNING, 1 NOTE





```
# simMetric

<details>

* Version: 0.1.0
* GitHub: NA
* Source code: https://github.com/cran/simMetric
* Date/Publication: 2022-01-04 15:30:02 UTC
* Number of recursive dependencies: 36

Run `cloud_details(, "simMetric")` for more info

</details>

## In both

*   checking whether package ‘simMetric’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/simMetric/new/simMetric.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘simMetric’ ...
** package ‘simMetric’ successfully unpacked and MD5 sums checked
** using staged installation
** R
Error in parse(outFile) : 
  /tmp/workdir/simMetric/new/simMetric.Rcheck/00_pkg_src/simMetric/R/utils.R:74:85: unexpected '>'
73: 
74:   df_grouped <- dplyr::group_by(.data=data, dplyr::across(dplyr::all_of(id_cols))) |>
                                                                                        ^
ERROR: unable to collate and parse R files for package ‘simMetric’
* removing ‘/tmp/workdir/simMetric/new/simMetric.Rcheck/simMetric’


```
### CRAN

```
* installing *source* package ‘simMetric’ ...
** package ‘simMetric’ successfully unpacked and MD5 sums checked
** using staged installation
** R
Error in parse(outFile) : 
  /tmp/workdir/simMetric/old/simMetric.Rcheck/00_pkg_src/simMetric/R/utils.R:74:85: unexpected '>'
73: 
74:   df_grouped <- dplyr::group_by(.data=data, dplyr::across(dplyr::all_of(id_cols))) |>
                                                                                        ^
ERROR: unable to collate and parse R files for package ‘simMetric’
* removing ‘/tmp/workdir/simMetric/old/simMetric.Rcheck/simMetric’


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
# spatialprobit

<details>

* Version: 0.9-11
* GitHub: NA
* Source code: https://github.com/cran/spatialprobit
* Date/Publication: 2015-09-17 14:49:32
* Number of recursive dependencies: 58

Run `cloud_details(, "spatialprobit")` for more info

</details>

## In both

*   checking whether package ‘spatialprobit’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/spatialprobit/new/spatialprobit.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘spatialprobit’ ...
** package ‘spatialprobit’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Warning messages:
1: package ‘spdep’ was built under R version 4.0.5 
2: package ‘sp’ was built under R version 4.0.5 
...
Warning: package ‘spData’ was built under R version 4.0.5
Warning: package ‘sf’ was built under R version 4.0.5
Warning: package ‘mvtnorm’ was built under R version 4.0.5
Warning: package ‘sandwich’ was built under R version 4.0.5
Error: package or namespace load failed for ‘spatialprobit’:
 object 'impacts' not found whilst loading namespace 'spatialprobit'
Error: loading failed
Execution halted
ERROR: loading failed
* removing ‘/tmp/workdir/spatialprobit/new/spatialprobit.Rcheck/spatialprobit’


```
### CRAN

```
* installing *source* package ‘spatialprobit’ ...
** package ‘spatialprobit’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Warning messages:
1: package ‘spdep’ was built under R version 4.0.5 
2: package ‘sp’ was built under R version 4.0.5 
...
Warning: package ‘spData’ was built under R version 4.0.5
Warning: package ‘sf’ was built under R version 4.0.5
Warning: package ‘mvtnorm’ was built under R version 4.0.5
Warning: package ‘sandwich’ was built under R version 4.0.5
Error: package or namespace load failed for ‘spatialprobit’:
 object 'impacts' not found whilst loading namespace 'spatialprobit'
Error: loading failed
Execution halted
ERROR: loading failed
* removing ‘/tmp/workdir/spatialprobit/old/spatialprobit.Rcheck/spatialprobit’


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
# TBRDist

<details>

* Version: 1.0.2
* GitHub: https://github.com/ms609/TBRDist
* Source code: https://github.com/cran/TBRDist
* Date/Publication: 2020-09-17 10:10:12 UTC
* Number of recursive dependencies: 80

Run `cloud_details(, "TBRDist")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/TBRDist/new/TBRDist.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘TBRDist/DESCRIPTION’ ... OK
* this is package ‘TBRDist’ version ‘1.0.2’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘TreeDist’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/TBRDist/old/TBRDist.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘TBRDist/DESCRIPTION’ ... OK
* this is package ‘TBRDist’ version ‘1.0.2’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘TreeDist’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# treedata.table

<details>

* Version: 0.1.0
* GitHub: https://github.com/ropensci/treedata.table
* Source code: https://github.com/cran/treedata.table
* Date/Publication: 2020-09-30 08:30:02 UTC
* Number of recursive dependencies: 72

Run `cloud_details(, "treedata.table")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/treedata.table/new/treedata.table.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘treedata.table/DESCRIPTION’ ... OK
* this is package ‘treedata.table’ version ‘0.1.0’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... OK
...
* checking if there is a namespace ... OK
* checking for executable files ... OK
* checking for hidden files and directories ... OK
* checking for portable file names ... OK
* checking for sufficient/correct file permissions ... OK
* checking whether package ‘treedata.table’ can be installed ... ERROR
Installation failed.
See ‘/tmp/workdir/treedata.table/new/treedata.table.Rcheck/00install.out’ for details.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/treedata.table/old/treedata.table.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘treedata.table/DESCRIPTION’ ... OK
* this is package ‘treedata.table’ version ‘0.1.0’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... OK
...
* checking if there is a namespace ... OK
* checking for executable files ... OK
* checking for hidden files and directories ... OK
* checking for portable file names ... OK
* checking for sufficient/correct file permissions ... OK
* checking whether package ‘treedata.table’ can be installed ... ERROR
Installation failed.
See ‘/tmp/workdir/treedata.table/old/treedata.table.Rcheck/00install.out’ for details.
* DONE
Status: 1 ERROR





```
# TreeSearch

<details>

* Version: 1.0.1
* GitHub: https://github.com/ms609/TreeSearch
* Source code: https://github.com/cran/TreeSearch
* Date/Publication: 2021-09-27 14:10:10 UTC
* Number of recursive dependencies: 98

Run `cloud_details(, "TreeSearch")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/TreeSearch/new/TreeSearch.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘TreeSearch/DESCRIPTION’ ... OK
* this is package ‘TreeSearch’ version ‘1.0.1’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'phangorn', 'TreeDist'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/TreeSearch/old/TreeSearch.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘TreeSearch/DESCRIPTION’ ... OK
* this is package ‘TreeSearch’ version ‘1.0.1’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'phangorn', 'TreeDist'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# treespace

<details>

* Version: 1.1.4.1
* GitHub: https://github.com/thibautjombart/treespace
* Source code: https://github.com/cran/treespace
* Date/Publication: 2021-03-25 13:30:03 UTC
* Number of recursive dependencies: 170

Run `cloud_details(, "treespace")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/treespace/new/treespace.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘treespace/DESCRIPTION’ ... OK
* this is package ‘treespace’ version ‘1.1.4.1’
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'phangorn', 'phytools'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/treespace/old/treespace.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘treespace/DESCRIPTION’ ... OK
* this is package ‘treespace’ version ‘1.1.4.1’
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'phangorn', 'phytools'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# treestartr

<details>

* Version: 0.1.0
* GitHub: https://github.com/ropensci/treeStartR
* Source code: https://github.com/cran/treestartr
* Date/Publication: 2019-01-09 15:10:03 UTC
* Number of recursive dependencies: 73

Run `cloud_details(, "treestartr")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/treestartr/new/treestartr.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘treestartr/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘treestartr’ version ‘0.1.0’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘phytools’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/treestartr/old/treestartr.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘treestartr/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘treestartr’ version ‘0.1.0’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘phytools’

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
# vivid

<details>

* Version: 0.2.3
* GitHub: NA
* Source code: https://github.com/cran/vivid
* Date/Publication: 2021-11-20 01:30:02 UTC
* Number of recursive dependencies: 202

Run `cloud_details(, "vivid")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/vivid/new/vivid.Rcheck’
* using R version 4.0.3 (2020-10-10)
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
* using R version 4.0.3 (2020-10-10)
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
