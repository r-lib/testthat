# ActivePathways

<details>

* Version: 1.0.2
* GitHub: https://github.com/reimandlab/ActivePathways
* Source code: https://github.com/cran/ActivePathways
* Date/Publication: 2020-07-09 17:20:02 UTC
* Number of recursive dependencies: 92

Run `cloud_details(, "ActivePathways")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/ActivePathways/new/ActivePathways.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘ActivePathways/DESCRIPTION’ ... OK
* this is package ‘ActivePathways’ version ‘1.0.2’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... NOTE
...
  [ FAIL 1 | WARN 0 | SKIP 0 | PASS 70 ]
  Error: Test failures
  Execution halted
* checking for unstated dependencies in vignettes ... OK
* checking package vignettes in ‘inst/doc’ ... OK
* checking running R code from vignettes ... NONE
  ‘ActivePathways-vignette.Rmd’ using ‘UTF-8’... OK
* checking re-building of vignette outputs ... SKIPPED
* DONE
Status: 1 ERROR, 1 NOTE





```
### CRAN

```
* using log directory ‘/tmp/workdir/ActivePathways/old/ActivePathways.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘ActivePathways/DESCRIPTION’ ... OK
* this is package ‘ActivePathways’ version ‘1.0.2’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... NOTE
...
  [ FAIL 1 | WARN 0 | SKIP 0 | PASS 70 ]
  Error: Test failures
  Execution halted
* checking for unstated dependencies in vignettes ... OK
* checking package vignettes in ‘inst/doc’ ... OK
* checking running R code from vignettes ... NONE
  ‘ActivePathways-vignette.Rmd’ using ‘UTF-8’... OK
* checking re-building of vignette outputs ... SKIPPED
* DONE
Status: 1 ERROR, 1 NOTE





```
# backShift

<details>

* Version: 0.1.4.3
* GitHub: https://github.com/christinaheinze/backShift
* Source code: https://github.com/cran/backShift
* Date/Publication: 2020-05-06 11:30:03 UTC
* Number of recursive dependencies: 90

Run `cloud_details(, "backShift")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/backShift/new/backShift.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘backShift/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘backShift’ version ‘0.1.4.3’
* checking package namespace information ... OK
* checking package dependencies ... NOTE
...
* checking for unstated dependencies in ‘tests’ ... OK
* checking tests ... OK
  Running ‘testthat.R’
* checking for unstated dependencies in vignettes ... OK
* checking package vignettes in ‘inst/doc’ ... OK
* checking running R code from vignettes ... NONE
  ‘exampleBackShift.Rmd’ using ‘UTF-8’... OK
* checking re-building of vignette outputs ... SKIPPED
* DONE
Status: 2 NOTEs





```
### CRAN

```
* using log directory ‘/tmp/workdir/backShift/old/backShift.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘backShift/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘backShift’ version ‘0.1.4.3’
* checking package namespace information ... OK
* checking package dependencies ... NOTE
...
* checking for unstated dependencies in ‘tests’ ... OK
* checking tests ... OK
  Running ‘testthat.R’
* checking for unstated dependencies in vignettes ... OK
* checking package vignettes in ‘inst/doc’ ... OK
* checking running R code from vignettes ... NONE
  ‘exampleBackShift.Rmd’ using ‘UTF-8’... OK
* checking re-building of vignette outputs ... SKIPPED
* DONE
Status: 2 NOTEs





```
# Boom

<details>

* Version: 0.9.6
* GitHub: NA
* Source code: https://github.com/cran/Boom
* Date/Publication: 2020-04-30 13:10:15 UTC
* Number of recursive dependencies: 35

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
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -I. -I../inst/include -IBmath -Imath/cephes -DADD_ -DR_NO_REMAP -DEIGEN_WARNINGS_DISABLED  -I/usr/local/include   -fpic  -g -O2  -c create_point_process.cpp -o create_point_process.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -I. -I../inst/include -IBmath -Imath/cephes -DADD_ -DR_NO_REMAP -DEIGEN_WARNINGS_DISABLED  -I/usr/local/include   -fpic  -g -O2  -c create_mixture_component.cpp -o create_mixture_component.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -I. -I../inst/include -IBmath -Imath/cephes -DADD_ -DR_NO_REMAP -DEIGEN_WARNINGS_DISABLED  -I/usr/local/include   -fpic  -g -O2  -c parse_model_formula.cpp -o parse_model_formula.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -I. -I../inst/include -IBmath -Imath/cephes -DADD_ -DR_NO_REMAP -DEIGEN_WARNINGS_DISABLED  -I/usr/local/include   -fpic  -g -O2  -c extract_mixture_data.cpp -o extract_mixture_data.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -I. -I../inst/include -IBmath -Imath/cephes -DADD_ -DR_NO_REMAP -DEIGEN_WARNINGS_DISABLED  -I/usr/local/include   -fpic  -g -O2  -c seed_rng_from_R.cpp -o seed_rng_from_R.o
...
../inst/include/Eigen/src/Core/Matrix.h:296:31:   required from ‘Eigen::Matrix<_Scalar, _Rows, _Cols, _Options, _MaxRows, _MaxCols>::Matrix(const T&) [with T = Eigen::Product<Eigen::Transpose<const Eigen::Map<const Eigen::Matrix<double, -1, -1>, 0, Eigen::Stride<0, 0> > >, Eigen::Map<const Eigen::Matrix<double, -1, -1>, 0, Eigen::Stride<0, 0> >, 0>; _Scalar = double; int _Rows = -1; int _Cols = -1; int _Options = 0; int _MaxRows = -1; int _MaxCols = -1]’
../inst/include/Eigen/src/Core/AssignEvaluator.h:796:41:   required from ‘void Eigen::internal::call_assignment(Dst&, const Src&, const Func&, typename Eigen::internal::enable_if<Eigen::internal::evaluator_assume_aliasing<Src>::value, void*>::type) [with Dst = Eigen::Map<Eigen::Matrix<double, -1, -1> >; Src = Eigen::Product<Eigen::Transpose<const Eigen::Map<const Eigen::Matrix<double, -1, -1>, 0, Eigen::Stride<0, 0> > >, Eigen::Map<const Eigen::Matrix<double, -1, -1>, 0, Eigen::Stride<0, 0> >, 0>; Func = Eigen::internal::assign_op<double, double>; typename Eigen::internal::enable_if<Eigen::internal::evaluator_assume_aliasing<Src>::value, void*>::type = void*]’
../inst/include/Eigen/src/Core/AssignEvaluator.h:782:18:   required from ‘void Eigen::internal::call_assignment(Dst&, const Src&) [with Dst = Eigen::Map<Eigen::Matrix<double, -1, -1> >; Src = Eigen::Product<Eigen::Transpose<const Eigen::Map<const Eigen::Matrix<double, -1, -1>, 0, Eigen::Stride<0, 0> > >, Eigen::Map<const Eigen::Matrix<double, -1, -1>, 0, Eigen::Stride<0, 0> >, 0>]’
../inst/include/Eigen/src/Core/Assign.h:66:28:   required from ‘Derived& Eigen::MatrixBase<Derived>::operator=(const Eigen::DenseBase<OtherDerived>&) [with OtherDerived = Eigen::Product<Eigen::Transpose<const Eigen::Map<const Eigen::Matrix<double, -1, -1>, 0, Eigen::Stride<0, 0> > >, Eigen::Map<const Eigen::Matrix<double, -1, -1>, 0, Eigen::Stride<0, 0> >, 0>; Derived = Eigen::Map<Eigen::Matrix<double, -1, -1> >]’
LinAlg/Matrix.cpp:668:65:   required from here
../inst/include/Eigen/src/Core/DenseCoeffsBase.h:650:34: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__vector(2) double’} [-Wignored-attributes]
  650 |   return internal::first_aligned<int(unpacket_traits<DefaultPacketType>::alignment),Derived>(m);
      |                                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
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
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -I. -I../inst/include -IBmath -Imath/cephes -DADD_ -DR_NO_REMAP -DEIGEN_WARNINGS_DISABLED  -I/usr/local/include   -fpic  -g -O2  -c create_point_process.cpp -o create_point_process.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -I. -I../inst/include -IBmath -Imath/cephes -DADD_ -DR_NO_REMAP -DEIGEN_WARNINGS_DISABLED  -I/usr/local/include   -fpic  -g -O2  -c create_mixture_component.cpp -o create_mixture_component.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -I. -I../inst/include -IBmath -Imath/cephes -DADD_ -DR_NO_REMAP -DEIGEN_WARNINGS_DISABLED  -I/usr/local/include   -fpic  -g -O2  -c parse_model_formula.cpp -o parse_model_formula.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -I. -I../inst/include -IBmath -Imath/cephes -DADD_ -DR_NO_REMAP -DEIGEN_WARNINGS_DISABLED  -I/usr/local/include   -fpic  -g -O2  -c extract_mixture_data.cpp -o extract_mixture_data.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -I. -I../inst/include -IBmath -Imath/cephes -DADD_ -DR_NO_REMAP -DEIGEN_WARNINGS_DISABLED  -I/usr/local/include   -fpic  -g -O2  -c seed_rng_from_R.cpp -o seed_rng_from_R.o
...
../inst/include/Eigen/src/Core/Matrix.h:296:31:   required from ‘Eigen::Matrix<_Scalar, _Rows, _Cols, _Options, _MaxRows, _MaxCols>::Matrix(const T&) [with T = Eigen::Product<Eigen::Transpose<const Eigen::Map<const Eigen::Matrix<double, -1, -1>, 0, Eigen::Stride<0, 0> > >, Eigen::Map<const Eigen::Matrix<double, -1, -1>, 0, Eigen::Stride<0, 0> >, 0>; _Scalar = double; int _Rows = -1; int _Cols = -1; int _Options = 0; int _MaxRows = -1; int _MaxCols = -1]’
../inst/include/Eigen/src/Core/AssignEvaluator.h:796:41:   required from ‘void Eigen::internal::call_assignment(Dst&, const Src&, const Func&, typename Eigen::internal::enable_if<Eigen::internal::evaluator_assume_aliasing<Src>::value, void*>::type) [with Dst = Eigen::Map<Eigen::Matrix<double, -1, -1> >; Src = Eigen::Product<Eigen::Transpose<const Eigen::Map<const Eigen::Matrix<double, -1, -1>, 0, Eigen::Stride<0, 0> > >, Eigen::Map<const Eigen::Matrix<double, -1, -1>, 0, Eigen::Stride<0, 0> >, 0>; Func = Eigen::internal::assign_op<double, double>; typename Eigen::internal::enable_if<Eigen::internal::evaluator_assume_aliasing<Src>::value, void*>::type = void*]’
../inst/include/Eigen/src/Core/AssignEvaluator.h:782:18:   required from ‘void Eigen::internal::call_assignment(Dst&, const Src&) [with Dst = Eigen::Map<Eigen::Matrix<double, -1, -1> >; Src = Eigen::Product<Eigen::Transpose<const Eigen::Map<const Eigen::Matrix<double, -1, -1>, 0, Eigen::Stride<0, 0> > >, Eigen::Map<const Eigen::Matrix<double, -1, -1>, 0, Eigen::Stride<0, 0> >, 0>]’
../inst/include/Eigen/src/Core/Assign.h:66:28:   required from ‘Derived& Eigen::MatrixBase<Derived>::operator=(const Eigen::DenseBase<OtherDerived>&) [with OtherDerived = Eigen::Product<Eigen::Transpose<const Eigen::Map<const Eigen::Matrix<double, -1, -1>, 0, Eigen::Stride<0, 0> > >, Eigen::Map<const Eigen::Matrix<double, -1, -1>, 0, Eigen::Stride<0, 0> >, 0>; Derived = Eigen::Map<Eigen::Matrix<double, -1, -1> >]’
LinAlg/Matrix.cpp:668:65:   required from here
../inst/include/Eigen/src/Core/DenseCoeffsBase.h:650:34: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__vector(2) double’} [-Wignored-attributes]
  650 |   return internal::first_aligned<int(unpacket_traits<DefaultPacketType>::alignment),Derived>(m);
      |                                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
ERROR: compilation failed for package ‘Boom’
* removing ‘/tmp/workdir/Boom/old/Boom.Rcheck/Boom’


```
# bsts

<details>

* Version: 0.9.5
* GitHub: NA
* Source code: https://github.com/cran/bsts
* Date/Publication: 2020-05-02 15:00:02 UTC
* Number of recursive dependencies: 40

Run `cloud_details(, "bsts")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/bsts/new/bsts.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘bsts/DESCRIPTION’ ... OK
* this is package ‘bsts’ version ‘0.9.5’
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
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘bsts/DESCRIPTION’ ... OK
* this is package ‘bsts’ version ‘0.9.5’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'BoomSpikeSlab', 'Boom'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# butcher

<details>

* Version: 0.1.2
* GitHub: https://github.com/tidymodels/butcher
* Source code: https://github.com/cran/butcher
* Date/Publication: 2020-01-23 22:40:02 UTC
* Number of recursive dependencies: 188

Run `cloud_details(, "butcher")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/butcher/new/butcher.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘butcher/DESCRIPTION’ ... OK
* this is package ‘butcher’ version ‘0.1.2’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... NOTE
...
  Running ‘testthat.R’
* checking for unstated dependencies in vignettes ... OK
* checking package vignettes in ‘inst/doc’ ... OK
* checking running R code from vignettes ... NONE
  ‘adding-models-to-butcher.Rmd’ using ‘UTF-8’... OK
  ‘available-axe-methods.Rmd’ using ‘UTF-8’... OK
  ‘butcher.Rmd’ using ‘UTF-8’... OK
* checking re-building of vignette outputs ... SKIPPED
* DONE
Status: 2 NOTEs





```
### CRAN

```
* using log directory ‘/tmp/workdir/butcher/old/butcher.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘butcher/DESCRIPTION’ ... OK
* this is package ‘butcher’ version ‘0.1.2’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... NOTE
...
  Running ‘testthat.R’
* checking for unstated dependencies in vignettes ... OK
* checking package vignettes in ‘inst/doc’ ... OK
* checking running R code from vignettes ... NONE
  ‘adding-models-to-butcher.Rmd’ using ‘UTF-8’... OK
  ‘available-axe-methods.Rmd’ using ‘UTF-8’... OK
  ‘butcher.Rmd’ using ‘UTF-8’... OK
* checking re-building of vignette outputs ... SKIPPED
* DONE
Status: 2 NOTEs





```
# CausalImpact

<details>

* Version: 1.2.4
* GitHub: NA
* Source code: https://github.com/cran/CausalImpact
* Date/Publication: 2020-01-08 23:02:47 UTC
* Number of recursive dependencies: 66

Run `cloud_details(, "CausalImpact")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/CausalImpact/new/CausalImpact.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘CausalImpact/DESCRIPTION’ ... OK
* this is package ‘CausalImpact’ version ‘1.2.4’
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
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘CausalImpact/DESCRIPTION’ ... OK
* this is package ‘CausalImpact’ version ‘1.2.4’
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'bsts', 'Boom'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# CB2

<details>

* Version: 1.3.4
* GitHub: NA
* Source code: https://github.com/cran/CB2
* Date/Publication: 2020-07-24 09:42:24 UTC
* Number of recursive dependencies: 104

Run `cloud_details(, "CB2")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/CB2/new/CB2.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘CB2/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘CB2’ version ‘1.3.4’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘metap’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/CB2/old/CB2.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘CB2/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘CB2’ version ‘1.3.4’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘metap’

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
* Number of recursive dependencies: 66

Run `cloud_details(, "cbar")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/cbar/new/cbar.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
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
* using options ‘--no-manual --no-build-vignettes’
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
# CompareCausalNetworks

<details>

* Version: 0.2.6.2
* GitHub: https://github.com/christinaheinze/CompareCausalNetworks
* Source code: https://github.com/cran/CompareCausalNetworks
* Date/Publication: 2020-02-17 19:00:42 UTC
* Number of recursive dependencies: 101

Run `cloud_details(, "CompareCausalNetworks")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/CompareCausalNetworks/new/CompareCausalNetworks.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘CompareCausalNetworks/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘CompareCausalNetworks’ version ‘0.2.6.2’
* checking package namespace information ... OK
* checking package dependencies ... NOTE
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
Status: 1 NOTE





```
### CRAN

```
* using log directory ‘/tmp/workdir/CompareCausalNetworks/old/CompareCausalNetworks.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘CompareCausalNetworks/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘CompareCausalNetworks’ version ‘0.2.6.2’
* checking package namespace information ... OK
* checking package dependencies ... NOTE
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
Status: 1 NOTE





```
# crossmap

<details>

* Version: 0.2.0
* GitHub: https://github.com/rossellhayes/crossmap
* Source code: https://github.com/cran/crossmap
* Date/Publication: 2020-09-24 07:30:02 UTC
* Number of recursive dependencies: 60

Run `cloud_details(, "crossmap")` for more info

</details>

## Error before installation

### Devel

```






```
### CRAN

```
* using log directory ‘/tmp/workdir/crossmap/old/crossmap.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘crossmap/DESCRIPTION’ ... OK
* this is package ‘crossmap’ version ‘0.2.0’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... OK
...
* checking Rd metadata ... OK
* checking Rd cross-references ... OK
* checking for missing documentation entries ... OK
* checking for code/documentation mismatches ... OK
* checking Rd \usage sections ... OK
* checking Rd contents ... OK
* checking for unstated dependencies in examples ... OK
* checking examples ... OK
* checking for unstated dependencies in ‘tests’ ... OK
* checking tests ...





```
# dabestr

<details>

* Version: 0.3.0
* GitHub: https://github.com/ACCLAB/dabestr
* Source code: https://github.com/cran/dabestr
* Date/Publication: 2020-07-13 06:50:03 UTC
* Number of recursive dependencies: 130

Run `cloud_details(, "dabestr")` for more info

</details>

## Error before installation

### Devel

```






```
### CRAN

```
* using log directory ‘/tmp/workdir/dabestr/old/dabestr.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘dabestr/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘dabestr’ version ‘0.3.0’
* package encoding: UTF-8
* checking package namespace information ... OK
...
Errors in running code in vignettes:
when running code in ‘using-dabestr.Rmd’
  ...

... incomplete output.  Crash?

  ‘using-dabestr.Rmd’ using ‘UTF-8’... failed to complete the test
* checking re-building of vignette outputs ... SKIPPED
* DONE
Status: 2 ERRORs, 2 NOTEs





```
# diceR

<details>

* Version: 1.0.0
* GitHub: https://github.com/AlineTalhouk/diceR
* Source code: https://github.com/cran/diceR
* Date/Publication: 2020-07-07 22:30:02 UTC
* Number of recursive dependencies: 143

Run `cloud_details(, "diceR")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/diceR/new/diceR.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘diceR/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘diceR’ version ‘1.0.0’
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
* using log directory ‘/tmp/workdir/diceR/old/diceR.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘diceR/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘diceR’ version ‘1.0.0’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘NMF’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# dimRed

<details>

* Version: 0.2.3
* GitHub: https://github.com/gdkrmr/dimRed
* Source code: https://github.com/cran/dimRed
* Date/Publication: 2019-05-08 08:10:07 UTC
* Number of recursive dependencies: 140

Run `cloud_details(, "dimRed")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/dimRed/new/dimRed.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘dimRed/DESCRIPTION’ ... OK
* this is package ‘dimRed’ version ‘0.2.3’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... NOTE
...
  
  Error: Test failures
  Execution halted
* checking for unstated dependencies in vignettes ... OK
* checking package vignettes in ‘inst/doc’ ... OK
* checking running R code from vignettes ... NONE
  ‘dimensionality-reduction.Rnw’ using ‘UTF-8’... OK
* checking re-building of vignette outputs ... SKIPPED
* DONE
Status: 2 ERRORs, 2 NOTEs





```
### CRAN

```
* using log directory ‘/tmp/workdir/dimRed/old/dimRed.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘dimRed/DESCRIPTION’ ... OK
* this is package ‘dimRed’ version ‘0.2.3’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... NOTE
...
  
  Error: Test failures
  Execution halted
* checking for unstated dependencies in vignettes ... OK
* checking package vignettes in ‘inst/doc’ ... OK
* checking running R code from vignettes ... NONE
  ‘dimensionality-reduction.Rnw’ using ‘UTF-8’... OK
* checking re-building of vignette outputs ... SKIPPED
* DONE
Status: 2 ERRORs, 2 NOTEs





```
# duckdb

<details>

* Version: 0.2.3
* GitHub: https://github.com/cwida/duckdb
* Source code: https://github.com/cran/duckdb
* Date/Publication: 2020-12-12 15:50:03 UTC
* Number of recursive dependencies: 46

Run `cloud_details(, "duckdb")` for more info

</details>

## In both

*   checking whether package ‘duckdb’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/duckdb/new/duckdb.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘duckdb’ ...
** package ‘duckdb’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -I. -DDUCKDB_DISABLE_PRINT -Iduckdb/src/include -Iduckdb/third_party/fmt/include -Iduckdb/third_party/re2 -Iduckdb/third_party/miniz -Iduckdb/third_party/utf8proc/include -Iduckdb/third_party/utf8proc -Iduckdb/third_party/libpg_query/include -Iduckdb/third_party/libpg_query -Iduckdb/third_party/concurrentqueue -Iduckdb/extension/parquet/include -Iduckdb/third_party/parquet -Iduckdb/third_party/snappy -Iduckdb/third_party/thrift -Iduckdb/third_party/zstd -Iduckdb  -I/usr/local/include   -fpic  -g -O2  -c duckdbr.cpp -o duckdbr.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -I. -DDUCKDB_DISABLE_PRINT -Iduckdb/src/include -Iduckdb/third_party/fmt/include -Iduckdb/third_party/re2 -Iduckdb/third_party/miniz -Iduckdb/third_party/utf8proc/include -Iduckdb/third_party/utf8proc -Iduckdb/third_party/libpg_query/include -Iduckdb/third_party/libpg_query -Iduckdb/third_party/concurrentqueue -Iduckdb/extension/parquet/include -Iduckdb/third_party/parquet -Iduckdb/third_party/snappy -Iduckdb/third_party/thrift -Iduckdb/third_party/zstd -Iduckdb  -I/usr/local/include   -fpic  -g -O2  -c duckdb/extension/parquet/parquet-extension.cpp -o duckdb/extension/parquet/parquet-extension.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -I. -DDUCKDB_DISABLE_PRINT -Iduckdb/src/include -Iduckdb/third_party/fmt/include -Iduckdb/third_party/re2 -Iduckdb/third_party/miniz -Iduckdb/third_party/utf8proc/include -Iduckdb/third_party/utf8proc -Iduckdb/third_party/libpg_query/include -Iduckdb/third_party/libpg_query -Iduckdb/third_party/concurrentqueue -Iduckdb/extension/parquet/include -Iduckdb/third_party/parquet -Iduckdb/third_party/snappy -Iduckdb/third_party/thrift -Iduckdb/third_party/zstd -Iduckdb  -I/usr/local/include   -fpic  -g -O2  -c duckdb/extension/parquet/parquet_reader.cpp -o duckdb/extension/parquet/parquet_reader.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -I. -DDUCKDB_DISABLE_PRINT -Iduckdb/src/include -Iduckdb/third_party/fmt/include -Iduckdb/third_party/re2 -Iduckdb/third_party/miniz -Iduckdb/third_party/utf8proc/include -Iduckdb/third_party/utf8proc -Iduckdb/third_party/libpg_query/include -Iduckdb/third_party/libpg_query -Iduckdb/third_party/concurrentqueue -Iduckdb/extension/parquet/include -Iduckdb/third_party/parquet -Iduckdb/third_party/snappy -Iduckdb/third_party/thrift -Iduckdb/third_party/zstd -Iduckdb  -I/usr/local/include   -fpic  -g -O2  -c duckdb/extension/parquet/parquet_timestamp.cpp -o duckdb/extension/parquet/parquet_timestamp.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -I. -DDUCKDB_DISABLE_PRINT -Iduckdb/src/include -Iduckdb/third_party/fmt/include -Iduckdb/third_party/re2 -Iduckdb/third_party/miniz -Iduckdb/third_party/utf8proc/include -Iduckdb/third_party/utf8proc -Iduckdb/third_party/libpg_query/include -Iduckdb/third_party/libpg_query -Iduckdb/third_party/concurrentqueue -Iduckdb/extension/parquet/include -Iduckdb/third_party/parquet -Iduckdb/third_party/snappy -Iduckdb/third_party/thrift -Iduckdb/third_party/zstd -Iduckdb  -I/usr/local/include   -fpic  -g -O2  -c duckdb/extension/parquet/parquet_writer.cpp -o duckdb/extension/parquet/parquet_writer.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -I. -DDUCKDB_DISABLE_PRINT -Iduckdb/src/include -Iduckdb/third_party/fmt/include -Iduckdb/third_party/re2 -Iduckdb/third_party/miniz -Iduckdb/third_party/utf8proc/include -Iduckdb/third_party/utf8proc -Iduckdb/third_party/libpg_query/include -Iduckdb/third_party/libpg_query -Iduckdb/third_party/concurrentqueue -Iduckdb/extension/parquet/include -Iduckdb/third_party/parquet -Iduckdb/third_party/snappy -Iduckdb/third_party/thrift -Iduckdb/third_party/zstd -Iduckdb  -I/usr/local/include   -fpic  -g -O2  -c duckdb/amalgamation-1.cpp -o duckdb/amalgamation-1.o
In file included from duckdb/amalgamation-1.cpp:173:
duckdb/src/execution/expression_executor/execute_fmake: *** [/opt/R/4.0.3/lib/R/etc/Makeconf:181: duckdb/amalgamation-1.o] Error 1
ERROR: compilation failed for package ‘duckdb’
* removing ‘/tmp/workdir/duckdb/new/duckdb.Rcheck/duckdb’


```
### CRAN

```
* installing *source* package ‘duckdb’ ...
** package ‘duckdb’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -I. -DDUCKDB_DISABLE_PRINT -Iduckdb/src/include -Iduckdb/third_party/fmt/include -Iduckdb/third_party/re2 -Iduckdb/third_party/miniz -Iduckdb/third_party/utf8proc/include -Iduckdb/third_party/utf8proc -Iduckdb/third_party/libpg_query/include -Iduckdb/third_party/libpg_query -Iduckdb/third_party/concurrentqueue -Iduckdb/extension/parquet/include -Iduckdb/third_party/parquet -Iduckdb/third_party/snappy -Iduckdb/third_party/thrift -Iduckdb/third_party/zstd -Iduckdb  -I/usr/local/include   -fpic  -g -O2  -c duckdbr.cpp -o duckdbr.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -I. -DDUCKDB_DISABLE_PRINT -Iduckdb/src/include -Iduckdb/third_party/fmt/include -Iduckdb/third_party/re2 -Iduckdb/third_party/miniz -Iduckdb/third_party/utf8proc/include -Iduckdb/third_party/utf8proc -Iduckdb/third_party/libpg_query/include -Iduckdb/third_party/libpg_query -Iduckdb/third_party/concurrentqueue -Iduckdb/extension/parquet/include -Iduckdb/third_party/parquet -Iduckdb/third_party/snappy -Iduckdb/third_party/thrift -Iduckdb/third_party/zstd -Iduckdb  -I/usr/local/include   -fpic  -g -O2  -c duckdb/extension/parquet/parquet-extension.cpp -o duckdb/extension/parquet/parquet-extension.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -I. -DDUCKDB_DISABLE_PRINT -Iduckdb/src/include -Iduckdb/third_party/fmt/include -Iduckdb/third_party/re2 -Iduckdb/third_party/miniz -Iduckdb/third_party/utf8proc/include -Iduckdb/third_party/utf8proc -Iduckdb/third_party/libpg_query/include -Iduckdb/third_party/libpg_query -Iduckdb/third_party/concurrentqueue -Iduckdb/extension/parquet/include -Iduckdb/third_party/parquet -Iduckdb/third_party/snappy -Iduckdb/third_party/thrift -Iduckdb/third_party/zstd -Iduckdb  -I/usr/local/include   -fpic  -g -O2  -c duckdb/extension/parquet/parquet_reader.cpp -o duckdb/extension/parquet/parquet_reader.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -I. -DDUCKDB_DISABLE_PRINT -Iduckdb/src/include -Iduckdb/third_party/fmt/include -Iduckdb/third_party/re2 -Iduckdb/third_party/miniz -Iduckdb/third_party/utf8proc/include -Iduckdb/third_party/utf8proc -Iduckdb/third_party/libpg_query/include -Iduckdb/third_party/libpg_query -Iduckdb/third_party/concurrentqueue -Iduckdb/extension/parquet/include -Iduckdb/third_party/parquet -Iduckdb/third_party/snappy -Iduckdb/third_party/thrift -Iduckdb/third_party/zstd -Iduckdb  -I/usr/local/include   -fpic  -g -O2  -c duckdb/extension/parquet/parquet_timestamp.cpp -o duckdb/extension/parquet/parquet_timestamp.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -I. -DDUCKDB_DISABLE_PRINT -Iduckdb/src/include -Iduckdb/third_party/fmt/include -Iduckdb/third_party/re2 -Iduckdb/third_party/miniz -Iduckdb/third_party/utf8proc/include -Iduckdb/third_party/utf8proc -Iduckdb/third_party/libpg_query/include -Iduckdb/third_party/libpg_query -Iduckdb/third_party/concurrentqueue -Iduckdb/extension/parquet/include -Iduckdb/third_party/parquet -Iduckdb/third_party/snappy -Iduckdb/third_party/thrift -Iduckdb/third_party/zstd -Iduckdb  -I/usr/local/include   -fpic  -g -O2  -c duckdb/extension/parquet/parquet_writer.cpp -o duckdb/extension/parquet/parquet_writer.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -I. -DDUCKDB_DISABLE_PRINT -Iduckdb/src/include -Iduckdb/third_party/fmt/include -Iduckdb/third_party/re2 -Iduckdb/third_party/miniz -Iduckdb/third_party/utf8proc/include -Iduckdb/third_party/utf8proc -Iduckdb/third_party/libpg_query/include -Iduckdb/third_party/libpg_query -Iduckdb/third_party/concurrentqueue -Iduckdb/extension/parquet/include -Iduckdb/third_party/parquet -Iduckdb/third_party/snappy -Iduckdb/third_party/thrift -Iduckdb/third_party/zstd -Iduckdb  -I/usr/local/include   -fpic  -g -O2  -c duckdb/amalgamation-1.cpp -o duckdb/amalgamation-1.o
...
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -I. -DDUCKDB_DISABLE_PRINT -Iduckdb/src/include -Iduckdb/third_party/fmt/include -Iduckdb/third_party/re2 -Iduckdb/third_party/miniz -Iduckdb/third_party/utf8proc/include -Iduckdb/third_party/utf8proc -Iduckdb/third_party/libpg_query/include -Iduckdb/third_party/libpg_query -Iduckdb/third_party/concurrentqueue -Iduckdb/extension/parquet/include -Iduckdb/third_party/parquet -Iduckdb/third_party/snappy -Iduckdb/third_party/thrift -Iduckdb/third_party/zstd -Iduckdb  -I/usr/local/include   -fpic  -g -O2  -c duckdb/amalgamation-8.cpp -o duckdb/amalgamation-8.o
g++ -std=gnu++11 -shared -L/opt/R/4.0.3/lib/R/lib -L/usr/local/lib -o duckdb.so duckdbr.o duckdb/extension/parquet/parquet-extension.o duckdb/extension/parquet/parquet_reader.o duckdb/extension/parquet/parquet_timestamp.o duckdb/extension/parquet/parquet_writer.o duckdb/amalgamation-1.o duckdb/amalgamation-2.o duckdb/amalgamation-3.o duckdb/amalgamation-4.o duckdb/amalgamation-5.o duckdb/amalgamation-6.o duckdb/amalgamation-7.o duckdb/third_party/fmt/format.o duckdb/third_party/libpg_query/pg_functions.o duckdb/third_party/libpg_query/postgres_parser.o duckdb/third_party/libpg_query/src_backend_nodes_list.o duckdb/third_party/libpg_query/src_backend_nodes_makefuncs.o duckdb/third_party/libpg_query/src_backend_nodes_value.o duckdb/third_party/libpg_query/src_backend_parser_gram.o duckdb/third_party/libpg_query/src_backend_parser_parser.o duckdb/third_party/libpg_query/src_backend_parser_scan.o duckdb/third_party/libpg_query/src_backend_parser_scansup.o duckdb/third_party/libpg_query/src_common_keywords.o duckdb/third_party/miniz/miniz.o duckdb/third_party/parquet/parquet_constants.o duckdb/third_party/parquet/parquet_types.o duckdb/third_party/re2/re2/bitstate.o duckdb/third_party/re2/re2/compile.o duckdb/third_party/re2/re2/dfa.o duckdb/third_party/re2/re2/filtered_re2.o duckdb/third_party/re2/re2/mimics_pcre.o duckdb/third_party/re2/re2/nfa.o duckdb/third_party/re2/re2/onepass.o duckdb/third_party/re2/re2/parse.o duckdb/third_party/re2/re2/perl_groups.o duckdb/third_party/re2/re2/prefilter.o duckdb/third_party/re2/re2/prefilter_tree.o duckdb/third_party/re2/re2/prog.o duckdb/third_party/re2/re2/re2.o duckdb/third_party/re2/re2/regexp.o duckdb/third_party/re2/re2/set.o duckdb/third_party/re2/re2/simplify.o duckdb/third_party/re2/re2/stringpiece.o duckdb/third_party/re2/re2/tostring.o duckdb/third_party/re2/re2/unicode_casefold.o duckdb/third_party/re2/re2/unicode_groups.o duckdb/third_party/re2/util/rune.o duckdb/third_party/re2/util/strutil.o duckdb/third_party/snappy/snappy-sinksource.o duckdb/third_party/snappy/snappy.o duckdb/third_party/thrift/thrift/protocol/TProtocol.o duckdb/third_party/thrift/thrift/transport/TBufferTransports.o duckdb/third_party/thrift/thrift/transport/TTransportException.o duckdb/third_party/utf8proc/utf8proc.o duckdb/third_party/utf8proc/utf8proc_wrapper.o duckdb/third_party/zstd/common/entropy_common.o duckdb/third_party/zstd/common/error_private.o duckdb/third_party/zstd/common/fse_decompress.o duckdb/third_party/zstd/common/xxhash.o duckdb/third_party/zstd/common/zstd_common.o duckdb/third_party/zstd/compress/fse_compress.o duckdb/third_party/zstd/compress/hist.o duckdb/third_party/zstd/compress/huf_compress.o duckdb/third_party/zstd/compress/zstd_compress.o duckdb/third_party/zstd/compress/zstd_compress_literals.o duckdb/third_party/zstd/compress/zstd_compress_sequences.o duckdb/third_party/zstd/compress/zstd_compress_superblock.o duckdb/third_party/zstd/compress/zstd_double_fast.o duckdb/third_party/zstd/compress/zstd_fast.o duckdb/third_party/zstd/compress/zstd_lazy.o duckdb/third_party/zstd/compress/zstd_ldm.o duckdb/third_party/zstd/compress/zstd_opt.o duckdb/third_party/zstd/decompress/huf_decompress.o duckdb/third_party/zstd/decompress/zstd_ddict.o duckdb/third_party/zstd/decompress/zstd_decompress.o duckdb/third_party/zstd/decompress/zstd_decompress_block.o duckdb/amalgamation-8.o -L/opt/R/4.0.3/lib/R/lib -lR
installing to /tmp/workdir/duckdb/old/duckdb.Rcheck/00LOCK-duckdb/00new/duckdb/libs
** R
Warning in dir.create(outCodeDir) :
  cannot create dir '/tmp/workdir/duckdb/old/duckdb.Rcheck/00LOCK-duckdb/00new/duckdb/R', reason 'No space left on device'
Error in .install_package_code_files(".", instdir) : 
  cannot open directory '/tmp/workdir/duckdb/old/duckdb.Rcheck/00LOCK-duckdb/00new/duckdb/R'
ERROR: unable to collate and parse R files for package ‘duckdb’
* removing ‘/tmp/workdir/duckdb/old/duckdb.Rcheck/duckdb’


```
# enviGCMS

<details>

* Version: 0.6.6
* GitHub: https://github.com/yufree/enviGCMS
* Source code: https://github.com/cran/enviGCMS
* Date/Publication: 2020-06-04 15:20:06 UTC
* Number of recursive dependencies: 145

Run `cloud_details(, "enviGCMS")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/enviGCMS/new/enviGCMS.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘enviGCMS/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘enviGCMS’ version ‘0.6.6’
* package encoding: UTF-8
* checking package namespace information ... OK
...
* checking tests ... OK
  Running ‘testthat.R’
* checking for unstated dependencies in vignettes ... OK
* checking package vignettes in ‘inst/doc’ ... OK
* checking running R code from vignettes ... NONE
  ‘GCMSDA.Rmd’ using ‘UTF-8’... OK
  ‘PooledQC.Rmd’ using ‘UTF-8’... OK
* checking re-building of vignette outputs ... SKIPPED
* DONE
Status: 1 NOTE





```
### CRAN

```
* using log directory ‘/tmp/workdir/enviGCMS/old/enviGCMS.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘enviGCMS/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘enviGCMS’ version ‘0.6.6’
* package encoding: UTF-8
* checking package namespace information ... OK
...
* checking tests ... OK
  Running ‘testthat.R’
* checking for unstated dependencies in vignettes ... OK
* checking package vignettes in ‘inst/doc’ ... OK
* checking running R code from vignettes ... NONE
  ‘GCMSDA.Rmd’ using ‘UTF-8’... OK
  ‘PooledQC.Rmd’ using ‘UTF-8’... OK
* checking re-building of vignette outputs ... SKIPPED
* DONE
Status: 1 NOTE





```
# fdapace

<details>

* Version: 0.5.5
* GitHub: https://github.com/functionaldata/tPACE
* Source code: https://github.com/cran/fdapace
* Date/Publication: 2020-07-29 05:10:20 UTC
* Number of recursive dependencies: 112

Run `cloud_details(, "fdapace")` for more info

</details>

## Newly broken

*   checking whether package ‘fdapace’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/fdapace/new/fdapace.Rcheck/00install.out’ for details.
    ```

## Newly fixed

*   checking installed package size ... NOTE
    ```
      installed size is 73.1Mb
      sub-directories of 1Mb or more:
        libs  71.5Mb
    ```

## Installation

### Devel

```
* installing *source* package ‘fdapace’ ...
** package ‘fdapace’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppEigen/include' -I/usr/local/include   -fpic  -g -O2  -c CPPlwls1d.cpp -o CPPlwls1d.o
In file included from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/Core:392,
                 from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/Dense:1,
                 from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/RcppEigenForward.h:30,
                 from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/RcppEigen.h:25,
                 from CPPlwls1d.cpp:1:
...
/opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/src/Core/ProductEvaluators.h:35:90:   required from ‘Eigen::internal::evaluator<Eigen::Product<Lhs, Rhs, Option> >::evaluator(const XprType&) [with Lhs = Eigen::Matrix<double, 1, 4>; Rhs = Eigen::Solve<Eigen::ColPivHouseholderQR<Eigen::Matrix<double, 4, 4> >, Eigen::Matrix<double, 4, 1> >; int Options = 0; Eigen::internal::evaluator<Eigen::Product<Lhs, Rhs, Option> >::XprType = Eigen::Product<Eigen::Matrix<double, 1, 4>, Eigen::Solve<Eigen::ColPivHouseholderQR<Eigen::Matrix<double, 4, 4> >, Eigen::Matrix<double, 4, 1> >, 0>]’
/opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/src/Core/Product.h:132:22:   required from ‘Eigen::internal::dense_product_base<Lhs, Rhs, Option, 6>::operator const Scalar() const [with Lhs = Eigen::Matrix<double, 1, 4>; Rhs = Eigen::Solve<Eigen::ColPivHouseholderQR<Eigen::Matrix<double, 4, 4> >, Eigen::Matrix<double, 4, 1> >; int Option = 0; Eigen::internal::dense_product_base<Lhs, Rhs, Option, 6>::Scalar = double]’
interp2lin.cpp:124:56:   required from here
/opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/src/Core/CoreEvaluators.h:960:8: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__vector(2) double’} [-Wignored-attributes]
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppEigen/include' -I/usr/local/include   -fpic  -g -O2  -c trapzRcpp.cpp -o trapzRcpp.o
g++ -std=gnu++11 -shared -L/opt/R/4.0.3/lib/R/lib -L/usr/local/lib -o fdapace.so CPPlwls1d.o GetIndCEScoresCPP.o GetIndCEScoresCPPnewInd.o RCPPmean.o RCPPvar.o RcppExports.o RcppPseudoApprox.o Rcppsort.o Rmullwlsk.o RmullwlskCC.o RmullwlskCCsort2.o RmullwlskUniversal.o RmullwlskUniversalDeriv.o RrotatedMullwlsk.o cumtrapzRcpp.o dropZeroElementsXYWin.o interp2lin.o trapzRcpp.o -L/opt/R/4.0.3/lib/R/lib -lR
collect2: error: ld returned 1 exit status
make: *** [/opt/R/4.0.3/lib/R/share/make/shlib.mk:10: fdapace.so] Error 1
ERROR: compilation failed for package ‘fdapace’
* removing ‘/tmp/workdir/fdapace/new/fdapace.Rcheck/fdapace’


```
### CRAN

```
* installing *source* package ‘fdapace’ ...
** package ‘fdapace’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppEigen/include' -I/usr/local/include   -fpic  -g -O2  -c CPPlwls1d.cpp -o CPPlwls1d.o
In file included from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/Core:392,
                 from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/Dense:1,
                 from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/RcppEigenForward.h:30,
                 from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/RcppEigen.h:25,
                 from CPPlwls1d.cpp:1:
...
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
** checking absolute paths in shared objects and dynamic libraries
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (fdapace)


```
# finbif

<details>

* Version: 0.3.1
* GitHub: https://github.com/luomus/finbif
* Source code: https://github.com/cran/finbif
* Date/Publication: 2020-11-24 08:40:02 UTC
* Number of recursive dependencies: 117

Run `cloud_details(, "finbif")` for more info

</details>

## In both

*   checking whether package ‘finbif’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/finbif/new/finbif.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘finbif’ ...
** package ‘finbif’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
...
** installing vignettes
** testing if installed package can be loaded from temporary location
Error: package or namespace load failed for ‘finbif’:
 .onLoad failed in loadNamespace() for 'finbif', details:
  call: supported_langs[[l]]
  error: subscript out of bounds
Error: loading failed
Execution halted
ERROR: loading failed
* removing ‘/tmp/workdir/finbif/new/finbif.Rcheck/finbif’


```
### CRAN

```
* installing *source* package ‘finbif’ ...
** package ‘finbif’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
...
** installing vignettes
** testing if installed package can be loaded from temporary location
Error: package or namespace load failed for ‘finbif’:
 .onLoad failed in loadNamespace() for 'finbif', details:
  call: supported_langs[[l]]
  error: subscript out of bounds
Error: loading failed
Execution halted
ERROR: loading failed
* removing ‘/tmp/workdir/finbif/old/finbif.Rcheck/finbif’


```
# ggstatsplot

<details>

* Version: 0.6.6
* GitHub: https://github.com/IndrajeetPatil/ggstatsplot
* Source code: https://github.com/cran/ggstatsplot
* Date/Publication: 2020-12-03 10:40:02 UTC
* Number of recursive dependencies: 201

Run `cloud_details(, "ggstatsplot")` for more info

</details>

## In both

*   checking whether package ‘ggstatsplot’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/ggstatsplot/new/ggstatsplot.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘ggstatsplot’ ...
** package ‘ggstatsplot’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘metaBMA’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘ggstatsplot’
* removing ‘/tmp/workdir/ggstatsplot/new/ggstatsplot.Rcheck/ggstatsplot’


```
### CRAN

```
* installing *source* package ‘ggstatsplot’ ...
** package ‘ggstatsplot’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘metaBMA’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘ggstatsplot’
* removing ‘/tmp/workdir/ggstatsplot/old/ggstatsplot.Rcheck/ggstatsplot’


```
# glmmTMB

<details>

* Version: 1.0.2.1
* GitHub: https://github.com/glmmTMB/glmmTMB
* Source code: https://github.com/cran/glmmTMB
* Date/Publication: 2020-07-02 11:30:17 UTC
* Number of recursive dependencies: 159

Run `cloud_details(, "glmmTMB")` for more info

</details>

## Newly broken

*   checking whether package ‘glmmTMB’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/glmmTMB/new/glmmTMB.Rcheck/00install.out’ for details.
    ```

## Newly fixed

*   checking installed package size ... NOTE
    ```
      installed size is 64.6Mb
      sub-directories of 1Mb or more:
        doc         1.2Mb
        libs       60.9Mb
        test_data   1.2Mb
    ```

## Installation

### Devel

```
* installing *source* package ‘glmmTMB’ ...
** package ‘glmmTMB’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/TMB/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppEigen/include' -I/usr/local/include   -fpic  -g -O2  -c glmmTMB.cpp -o glmmTMB.o
In file included from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/Core:392,
                 from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/Dense:1,
                 from /opt/R/4.0.3/lib/R/site-library/TMB/include/TMB.hpp:53,
                 from glmmTMB.cpp:1:
/opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/src/Core/arch/SSE/PacketMath.h:60:39: warning: ignoring attributes on template argument ‘__m128’ {aka ‘__vector(4) float’} [-Wignored-attributes]
...
  259 |     while(size) ptr[--size].~T();
      |     ^~~~~
glmmTMB.cpp: At global scope:
glmmTMB.cpp:911:1: fatal error: error writing to /tmp/ccOA31m7.s: No space left on device
  911 | }
      | ^
compilation terminated.
make: *** [/opt/R/4.0.3/lib/R/etc/Makeconf:181: glmmTMB.o] Error 1
ERROR: compilation failed for package ‘glmmTMB’
* removing ‘/tmp/workdir/glmmTMB/new/glmmTMB.Rcheck/glmmTMB’


```
### CRAN

```
* installing *source* package ‘glmmTMB’ ...
** package ‘glmmTMB’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/TMB/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppEigen/include' -I/usr/local/include   -fpic  -g -O2  -c glmmTMB.cpp -o glmmTMB.o
In file included from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/Core:392,
                 from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/Dense:1,
                 from /opt/R/4.0.3/lib/R/site-library/TMB/include/TMB.hpp:53,
                 from glmmTMB.cpp:1:
/opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/src/Core/arch/SSE/PacketMath.h:60:39: warning: ignoring attributes on template argument ‘__m128’ {aka ‘__vector(4) float’} [-Wignored-attributes]
...
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
** checking absolute paths in shared objects and dynamic libraries
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (glmmTMB)


```
# GroupSeq

<details>

* Version: 1.3.5
* GitHub: https://github.com/rpahl/GroupSeq
* Source code: https://github.com/cran/GroupSeq
* Date/Publication: 2018-04-11 15:00:32 UTC
* Number of recursive dependencies: 34

Run `cloud_details(, "GroupSeq")` for more info

</details>

## Newly broken

*   checking whether package ‘GroupSeq’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/GroupSeq/new/GroupSeq.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘GroupSeq’ ...
** package ‘GroupSeq’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** byte-compile and prepare package for lazy loading
Warning in fun(libname, pkgname) : couldn't connect to display ":109"
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded from temporary location
...
Warning in fun(libname, pkgname) : couldn't connect to display ":109"
Error: package or namespace load failed for ‘GroupSeq’:
 .onAttach failed in attachNamespace() for 'GroupSeq', details:
  call: structure(.External(.C_dotTclObjv, objv), class = "tclObj")
  error: [tcl] invalid command name "toplevel".

Error: loading failed
Execution halted
ERROR: loading failed
* removing ‘/tmp/workdir/GroupSeq/new/GroupSeq.Rcheck/GroupSeq’


```
### CRAN

```
* installing *source* package ‘GroupSeq’ ...
** package ‘GroupSeq’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (GroupSeq)


```
# gWidgets2tcltk

<details>

* Version: 1.0-6
* GitHub: https://github.com/jverzani/gWidgets2tcltk
* Source code: https://github.com/cran/gWidgets2tcltk
* Date/Publication: 2018-09-25 13:20:02 UTC
* Number of recursive dependencies: 36

Run `cloud_details(, "gWidgets2tcltk")` for more info

</details>

## Newly broken

*   checking whether package ‘gWidgets2tcltk’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/gWidgets2tcltk/new/gWidgets2tcltk.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘gWidgets2tcltk’ ...
** package ‘gWidgets2tcltk’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** demo
** inst
** byte-compile and prepare package for lazy loading
Warning message:
In fun(libname, pkgname) : couldn't connect to display ":109"
Error in structure(.External(.C_dotTclObjv, objv), class = "tclObj") : 
  [tcl] invalid command name "font".

Error: unable to load R code in package ‘gWidgets2tcltk’
Execution halted
ERROR: lazy loading failed for package ‘gWidgets2tcltk’
* removing ‘/tmp/workdir/gWidgets2tcltk/new/gWidgets2tcltk.Rcheck/gWidgets2tcltk’


```
### CRAN

```
* installing *source* package ‘gWidgets2tcltk’ ...
** package ‘gWidgets2tcltk’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** demo
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (gWidgets2tcltk)


```
# hNMF

<details>

* Version: 1.0
* GitHub: NA
* Source code: https://github.com/cran/hNMF
* Date/Publication: 2020-11-20 13:30:02 UTC
* Number of recursive dependencies: 75

Run `cloud_details(, "hNMF")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/hNMF/new/hNMF.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘hNMF/DESCRIPTION’ ... OK
* this is package ‘hNMF’ version ‘1.0’
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
* using log directory ‘/tmp/workdir/hNMF/old/hNMF.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘hNMF/DESCRIPTION’ ... OK
* this is package ‘hNMF’ version ‘1.0’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘NMF’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# ipc

<details>

* Version: 0.1.3
* GitHub: https://github.com/fellstat/ipc
* Source code: https://github.com/cran/ipc
* Date/Publication: 2019-06-23 06:00:03 UTC
* Number of recursive dependencies: 67

Run `cloud_details(, "ipc")` for more info

</details>

## Error before installation

### Devel

```






```
### CRAN

```
* using log directory ‘/tmp/workdir/ipc/old/ipc.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘ipc/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘ipc’ version ‘0.1.3’
* package encoding: UTF-8
* checking package namespace information ... OK
...
* checking for missing documentation entries ... OK
* checking for code/documentation mismatches ... OK
* checking Rd \usage sections ... OK
* checking Rd contents ... OK
* checking for unstated dependencies in examples ... OK
* checking installed files from ‘inst/doc’ ... OK
* checking files in ‘vignettes’ ... OK
* checking examples ... OK
* checking for unstated dependencies in ‘tests’ ... OK
* checking tests ...





```
# kmcudaR

<details>

* Version: 1.1.0
* GitHub: NA
* Source code: https://github.com/cran/kmcudaR
* Date/Publication: 2019-03-22 10:00:07 UTC
* Number of recursive dependencies: 38

Run `cloud_details(, "kmcudaR")` for more info

</details>

## In both

*   checking whether package ‘kmcudaR’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/kmcudaR/new/kmcudaR.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘kmcudaR’ ...
** package ‘kmcudaR’ successfully unpacked and MD5 sums checked
** using staged installation
checking for g++... g++
checking whether the C++ compiler works... yes
checking for C++ compiler default output file name... a.out
checking for suffix of executables... 
checking whether we are cross compiling... no
checking for suffix of object files... o
checking whether we are using the GNU C++ compiler... yes
...
checking whether g++ accepts -g... yes
checking how to run the C++ preprocessor... g++ -E
Checking for C++ Compiler
checking whether we are using the GNU C++ compiler... (cached) yes
checking whether g++ accepts -g... (cached) yes
checking "Checking environment variable CUDA_HOME"... "CUDA_HOME not set; using highest version found "
checking for /bin/nvcc... no
configure: error: "NVCC not found; check CUDA install"
ERROR: configuration failed for package ‘kmcudaR’
* removing ‘/tmp/workdir/kmcudaR/new/kmcudaR.Rcheck/kmcudaR’


```
### CRAN

```
* installing *source* package ‘kmcudaR’ ...
** package ‘kmcudaR’ successfully unpacked and MD5 sums checked
** using staged installation
checking for g++... g++
checking whether the C++ compiler works... yes
checking for C++ compiler default output file name... a.out
checking for suffix of executables... 
checking whether we are cross compiling... no
checking for suffix of object files... o
checking whether we are using the GNU C++ compiler... yes
...
checking whether g++ accepts -g... yes
checking how to run the C++ preprocessor... g++ -E
Checking for C++ Compiler
checking whether we are using the GNU C++ compiler... (cached) yes
checking whether g++ accepts -g... (cached) yes
checking "Checking environment variable CUDA_HOME"... "CUDA_HOME not set; using highest version found "
checking for /bin/nvcc... no
configure: error: "NVCC not found; check CUDA install"
ERROR: configuration failed for package ‘kmcudaR’
* removing ‘/tmp/workdir/kmcudaR/old/kmcudaR.Rcheck/kmcudaR’


```
# loon

<details>

* Version: 1.3.1
* GitHub: https://github.com/great-northern-diver/loon
* Source code: https://github.com/cran/loon
* Date/Publication: 2020-06-17 05:40:03 UTC
* Number of recursive dependencies: 106

Run `cloud_details(, "loon")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/loon/new/loon.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘loon/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘loon’ version ‘1.3.1’
* package encoding: UTF-8
* checking package namespace information ... OK
...
* checking examples ... OK
* checking for unstated dependencies in vignettes ... OK
* checking package vignettes in ‘inst/doc’ ... OK
* checking running R code from vignettes ... NONE
  ‘introduction.Rmd’ using ‘UTF-8’... OK
  ‘savingLoonPlots.Rmd’ using ‘UTF-8’... OK
  ‘teaching-example-smoothing.Rmd’ using ‘UTF-8’... OK
* checking re-building of vignette outputs ... SKIPPED
* DONE
Status: 1 NOTE





```
### CRAN

```
* using log directory ‘/tmp/workdir/loon/old/loon.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘loon/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘loon’ version ‘1.3.1’
* package encoding: UTF-8
* checking package namespace information ... OK
...
* checking if there is a namespace ... OK
* checking for executable files ... OK
* checking for hidden files and directories ... OK
* checking for portable file names ... OK
* checking for sufficient/correct file permissions ... OK
* checking whether package ‘loon’ can be installed ... ERROR
Installation failed.
See ‘/tmp/workdir/loon/old/loon.Rcheck/00install.out’ for details.
* DONE
Status: 1 ERROR, 1 NOTE





```
# mapdeck

<details>

* Version: 0.3.4
* GitHub: https://github.com/SymbolixAU/mapdeck
* Source code: https://github.com/cran/mapdeck
* Date/Publication: 2020-09-04 05:22:10 UTC
* Number of recursive dependencies: 83

Run `cloud_details(, "mapdeck")` for more info

</details>

## Newly broken

*   checking whether package ‘mapdeck’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/mapdeck/new/mapdeck.Rcheck/00install.out’ for details.
    ```

## Newly fixed

*   checking installed package size ... NOTE
    ```
      installed size is 76.1Mb
      sub-directories of 1Mb or more:
        data          1.3Mb
        doc           1.6Mb
        htmlwidgets   2.3Mb
        libs         70.5Mb
    ```

## Installation

### Devel

```
* installing *source* package ‘mapdeck’ ...
** package ‘mapdeck’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -DSTRICT_R_HEADERS -DBOOST_NO_AUTO_PTR -I'/opt/R/4.0.3/lib/R/site-library/BH/include' -I'/opt/R/4.0.3/lib/R/site-library/colourvalues/include' -I'/opt/R/4.0.3/lib/R/site-library/geojsonsf/include' -I'/opt/R/4.0.3/lib/R/site-library/geometries/include' -I'/opt/R/4.0.3/lib/R/site-library/jsonify/include' -I'/opt/R/4.0.3/lib/R/site-library/rapidjsonr/include' -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/sfheaders/include' -I'/opt/R/4.0.3/lib/R/site-library/spatialwidget/include' -I/usr/local/include  -I../inst/include -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -DSTRICT_R_HEADERS -DBOOST_NO_AUTO_PTR -I'/opt/R/4.0.3/lib/R/site-library/BH/include' -I'/opt/R/4.0.3/lib/R/site-library/colourvalues/include' -I'/opt/R/4.0.3/lib/R/site-library/geojsonsf/include' -I'/opt/R/4.0.3/lib/R/site-library/geometries/include' -I'/opt/R/4.0.3/lib/R/site-library/jsonify/include' -I'/opt/R/4.0.3/lib/R/site-library/rapidjsonr/include' -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/sfheaders/include' -I'/opt/R/4.0.3/lib/R/site-library/spatialwidget/include' -I/usr/local/include  -I../inst/include -fpic  -g -O2  -c aggregate.cpp -o aggregate.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -DSTRICT_R_HEADERS -DBOOST_NO_AUTO_PTR -I'/opt/R/4.0.3/lib/R/site-library/BH/include' -I'/opt/R/4.0.3/lib/R/site-library/colourvalues/include' -I'/opt/R/4.0.3/lib/R/site-library/geojsonsf/include' -I'/opt/R/4.0.3/lib/R/site-library/geometries/include' -I'/opt/R/4.0.3/lib/R/site-library/jsonify/include' -I'/opt/R/4.0.3/lib/R/site-library/rapidjsonr/include' -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/sfheaders/include' -I'/opt/R/4.0.3/lib/R/site-library/spatialwidget/include' -I/usr/local/include  -I../inst/include -fpic  -g -O2  -c geojson.cpp -o geojson.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -DSTRICT_R_HEADERS -DBOOST_NO_AUTO_PTR -I'/opt/R/4.0.3/lib/R/site-library/BH/include' -I'/opt/R/4.0.3/lib/R/site-library/colourvalues/include' -I'/opt/R/4.0.3/lib/R/site-library/geojsonsf/include' -I'/opt/R/4.0.3/lib/R/site-library/geometries/include' -I'/opt/R/4.0.3/lib/R/site-library/jsonify/include' -I'/opt/R/4.0.3/lib/R/site-library/rapidjsonr/include' -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/sfheaders/include' -I'/opt/R/4.0.3/lib/R/site-library/spatialwidget/include' -I/usr/local/include  -I../inst/include -fpic  -g -O2  -c mesh.cpp -o mesh.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -DSTRICT_R_HEADERS -DBOOST_NO_AUTO_PTR -I'/opt/R/4.0.3/lib/R/site-library/BH/include' -I'/opt/R/4.0.3/lib/R/site-library/colourvalues/include' -I'/opt/R/4.0.3/lib/R/site-library/geojsonsf/include' -I'/opt/R/4.0.3/lib/R/site-library/geometries/include' -I'/opt/R/4.0.3/lib/R/site-library/jsonify/include' -I'/opt/R/4.0.3/lib/R/site-library/rapidjsonr/include' -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/sfheaders/include' -I'/opt/R/4.0.3/lib/R/site-library/spatialwidget/include' -I/usr/local/include  -I../inst/include -fpic  -g -O2  -c od.cpp -o od.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -DSTRICT_R_HEADERS -DBOOST_NO_AUTO_PTR -I'/opt/R/4.0.3/lib/R/site-library/BH/include' -I'/opt/R/4.0.3/lib/R/site-library/colourvalues/include' -I'/opt/R/4.0.3/lib/R/site-library/geojsonsf/include' -I'/opt/R/4.0.3/lib/R/site-library/geometries/include' -I'/opt/R/4.0.3/lib/R/site-library/jsonify/include' -I'/opt/R/4.0.3/lib/R/site-library/rapidjsonr/include' -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/sfheaders/include' -I'/opt/R/4.0.3/lib/R/site-library/spatialwidget/include' -I/usr/local/include  -I../inst/include -fpic  -g -O2  -c path.cpp -o path.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -DSTRICT_R_HEADERS -DBOOST_NO_AUTO_PTR -I'/opt/R/4.0.3/lib/R/site-library/BH/include' -I'/opt/R/4.0.3/lib/R/site-library/colourvalues/include' -I'/opt/R/4.0.3/lib/R/site-library/geojsonsf/include' -I'/opt/R/4.0.3/lib/R/site-library/geometries/include' -I'/opt/R/4.0.3/lib/R/site-library/jsonify/include' -I'/opt/R/4.0.3/lib/R/site-library/rapidjsonr/include' -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/sfheaders/include' -I'/opt/R/4.0.3/lib/R/site-library/spatialwidget/include' -I/usr/local/include  -I../inst/include -fpic  -g -O2  -c point.cpp -o point.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -DSTRICT_R_HEADERS -DBOOST_NO_AUTO_PTR -I'/opt/R/4.0.3/lib/R/site-library/BH/include' -I'/opt/R/4.0.3/lib/R/site-library/colourvalues/include' -I'/opt/R/4.0.3/lib/R/site-library/geojsonsf/include' -I'/opt/R/4.0.3/lib/R/site-library/geometries/include' -I'/opt/R/4.0.3/lib/R/site-library/jsonify/include' -I'/opt/R/4.0.3/lib/R/site-library/rapidjsonr/include' -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/sfheaders/include' -I'/opt/R/4.0.3/lib/R/site-library/spatialwidget/include' -I/usr/local/include  -I../inst/include -fpic  -g -O2  -c polygon.cpp -o polygon.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -DSTRICT_R_HEADERS -DBOOST_NO_AUTO_PTR -I'/opt/R/4.0.3/lib/R/site-library/BH/include' -I'/opt/R/4.0.3/lib/R/site-library/colourvalues/include' -I'/opt/R/4.0.3/lib/R/site-library/geojsonsf/include' -I'/opt/R/4.0.3/lib/R/site-library/geometries/include' -I'/opt/R/4.0.3/lib/R/site-library/jsonify/include' -I'/opt/R/4.0.3/lib/R/site-library/rapidjsonr/include' -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/sfheaders/include' -I'/opt/R/4.0.3/lib/R/site-library/spatialwidget/include' -I/usr/local/include  -I../inst/include -fpic  -g -O2  -c text.cpp -o text.o
/tmp/ccF55lQ2.s: Assembler messages:
/tmp/ccF55lQ2.s: Fatal error: can't close text.o: No space left on device
make: *** [/opt/R/4.0.3/lib/R/etc/Makeconf:181: text.o] Error 1
ERROR: compilation failed for package ‘mapdeck’
* removing ‘/tmp/workdir/mapdeck/new/mapdeck.Rcheck/mapdeck’


```
### CRAN

```
* installing *source* package ‘mapdeck’ ...
** package ‘mapdeck’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -DSTRICT_R_HEADERS -DBOOST_NO_AUTO_PTR -I'/opt/R/4.0.3/lib/R/site-library/BH/include' -I'/opt/R/4.0.3/lib/R/site-library/colourvalues/include' -I'/opt/R/4.0.3/lib/R/site-library/geojsonsf/include' -I'/opt/R/4.0.3/lib/R/site-library/geometries/include' -I'/opt/R/4.0.3/lib/R/site-library/jsonify/include' -I'/opt/R/4.0.3/lib/R/site-library/rapidjsonr/include' -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/sfheaders/include' -I'/opt/R/4.0.3/lib/R/site-library/spatialwidget/include' -I/usr/local/include  -I../inst/include -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -DSTRICT_R_HEADERS -DBOOST_NO_AUTO_PTR -I'/opt/R/4.0.3/lib/R/site-library/BH/include' -I'/opt/R/4.0.3/lib/R/site-library/colourvalues/include' -I'/opt/R/4.0.3/lib/R/site-library/geojsonsf/include' -I'/opt/R/4.0.3/lib/R/site-library/geometries/include' -I'/opt/R/4.0.3/lib/R/site-library/jsonify/include' -I'/opt/R/4.0.3/lib/R/site-library/rapidjsonr/include' -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/sfheaders/include' -I'/opt/R/4.0.3/lib/R/site-library/spatialwidget/include' -I/usr/local/include  -I../inst/include -fpic  -g -O2  -c aggregate.cpp -o aggregate.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -DSTRICT_R_HEADERS -DBOOST_NO_AUTO_PTR -I'/opt/R/4.0.3/lib/R/site-library/BH/include' -I'/opt/R/4.0.3/lib/R/site-library/colourvalues/include' -I'/opt/R/4.0.3/lib/R/site-library/geojsonsf/include' -I'/opt/R/4.0.3/lib/R/site-library/geometries/include' -I'/opt/R/4.0.3/lib/R/site-library/jsonify/include' -I'/opt/R/4.0.3/lib/R/site-library/rapidjsonr/include' -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/sfheaders/include' -I'/opt/R/4.0.3/lib/R/site-library/spatialwidget/include' -I/usr/local/include  -I../inst/include -fpic  -g -O2  -c geojson.cpp -o geojson.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -DSTRICT_R_HEADERS -DBOOST_NO_AUTO_PTR -I'/opt/R/4.0.3/lib/R/site-library/BH/include' -I'/opt/R/4.0.3/lib/R/site-library/colourvalues/include' -I'/opt/R/4.0.3/lib/R/site-library/geojsonsf/include' -I'/opt/R/4.0.3/lib/R/site-library/geometries/include' -I'/opt/R/4.0.3/lib/R/site-library/jsonify/include' -I'/opt/R/4.0.3/lib/R/site-library/rapidjsonr/include' -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/sfheaders/include' -I'/opt/R/4.0.3/lib/R/site-library/spatialwidget/include' -I/usr/local/include  -I../inst/include -fpic  -g -O2  -c mesh.cpp -o mesh.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -DSTRICT_R_HEADERS -DBOOST_NO_AUTO_PTR -I'/opt/R/4.0.3/lib/R/site-library/BH/include' -I'/opt/R/4.0.3/lib/R/site-library/colourvalues/include' -I'/opt/R/4.0.3/lib/R/site-library/geojsonsf/include' -I'/opt/R/4.0.3/lib/R/site-library/geometries/include' -I'/opt/R/4.0.3/lib/R/site-library/jsonify/include' -I'/opt/R/4.0.3/lib/R/site-library/rapidjsonr/include' -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/sfheaders/include' -I'/opt/R/4.0.3/lib/R/site-library/spatialwidget/include' -I/usr/local/include  -I../inst/include -fpic  -g -O2  -c od.cpp -o od.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -DSTRICT_R_HEADERS -DBOOST_NO_AUTO_PTR -I'/opt/R/4.0.3/lib/R/site-library/BH/include' -I'/opt/R/4.0.3/lib/R/site-library/colourvalues/include' -I'/opt/R/4.0.3/lib/R/site-library/geojsonsf/include' -I'/opt/R/4.0.3/lib/R/site-library/geometries/include' -I'/opt/R/4.0.3/lib/R/site-library/jsonify/include' -I'/opt/R/4.0.3/lib/R/site-library/rapidjsonr/include' -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/sfheaders/include' -I'/opt/R/4.0.3/lib/R/site-library/spatialwidget/include' -I/usr/local/include  -I../inst/include -fpic  -g -O2  -c path.cpp -o path.o
...
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
** checking absolute paths in shared objects and dynamic libraries
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (mapdeck)


```
# metagam

<details>

* Version: 0.2.0
* GitHub: https://github.com/Lifebrain/metagam
* Source code: https://github.com/cran/metagam
* Date/Publication: 2020-11-12 08:10:02 UTC
* Number of recursive dependencies: 151

Run `cloud_details(, "metagam")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/metagam/new/metagam.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘metagam/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘metagam’ version ‘0.2.0’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘metap’

Package suggested but not available for checking: ‘multtest’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/metagam/old/metagam.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘metagam/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘metagam’ version ‘0.2.0’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘metap’

Package suggested but not available for checking: ‘multtest’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# mlr3pipelines

<details>

* Version: 0.3.1
* GitHub: https://github.com/mlr-org/mlr3pipelines
* Source code: https://github.com/cran/mlr3pipelines
* Date/Publication: 2020-11-16 07:50:02 UTC
* Number of recursive dependencies: 176

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
* this is package ‘mlr3pipelines’ version ‘0.3.1’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... NOTE
...
149: virginica          5.4         2.3          6.2         3.4
150: virginica          5.1         1.8          5.9         3.0
> pop$train(list(task))[[1]]$data()
Error: The following packages could not be loaded: NMF
Execution halted
* checking for unstated dependencies in ‘tests’ ... OK
* checking tests ... OK
  Running ‘testthat.R’
* DONE
Status: 1 ERROR, 2 NOTEs





```
### CRAN

```
* using log directory ‘/tmp/workdir/mlr3pipelines/old/mlr3pipelines.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘mlr3pipelines/DESCRIPTION’ ... OK
* this is package ‘mlr3pipelines’ version ‘0.3.1’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... NOTE
...
149: virginica          5.4         2.3          6.2         3.4
150: virginica          5.1         1.8          5.9         3.0
> pop$train(list(task))[[1]]$data()
Error: The following packages could not be loaded: NMF
Execution halted
* checking for unstated dependencies in ‘tests’ ... OK
* checking tests ... OK
  Running ‘testthat.R’
* DONE
Status: 1 ERROR, 2 NOTEs





```
# MoMPCA

<details>

* Version: 1.0.0
* GitHub: NA
* Source code: https://github.com/cran/MoMPCA
* Date/Publication: 2020-07-01 09:40:07 UTC
* Number of recursive dependencies: 85

Run `cloud_details(, "MoMPCA")` for more info

</details>

## Error before installation

### Devel

```






```
### CRAN

```
* using log directory ‘/tmp/workdir/MoMPCA/old/MoMPCA.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘MoMPCA/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘MoMPCA’ version ‘1.0.0’
* package encoding: UTF-8
* checking package namespace information ... OK
...
* checking for unstated dependencies in examples ... OK
* checking contents of ‘data’ directory ... OK
* checking data for non-ASCII characters ... NOTE
  Note: found 16 marked UTF-8 strings
* checking data for ASCII and uncompressed saves ... OK
* checking installed files from ‘inst/doc’ ... OK
* checking files in ‘vignettes’ ... OK
* checking examples ... OK
* checking for unstated dependencies in ‘tests’ ... OK
* checking tests ...





```
# OpenMx

<details>

* Version: 2.18.1
* GitHub: https://github.com/OpenMx/OpenMx
* Source code: https://github.com/cran/OpenMx
* Date/Publication: 2020-08-28 07:50:12 UTC
* Number of recursive dependencies: 75

Run `cloud_details(, "OpenMx")` for more info

</details>

## In both

*   checking whether package ‘OpenMx’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/OpenMx/new/OpenMx.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘OpenMx’ ...
** package ‘OpenMx’ successfully unpacked and MD5 sums checked
** using staged installation
NOTE: ./configure is not an autoconf generated script.
Change default C/C++ compiler and default compile flags by editing ~/.R/Makevars
** libs
g++ -std=gnu++14 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppEigen/include' -I'/opt/R/4.0.3/lib/R/site-library/StanHeaders/include' -I'/opt/R/4.0.3/lib/R/site-library/BH/include' -I'/opt/R/4.0.3/lib/R/site-library/rpf/include' -I/usr/local/include  -fopenmp       -fpic  -g -O2  -c Compute.cpp -o Compute.o
In file included from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/Core:392,
                 from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/Dense:1,
                 from /opt/R/4.0.3/lib/R/site-library/StanHeaders/include/stan/math/prim/mat/fun/Eigen.hpp:13,
...
      |                                 ^~~~~~
/opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/src/Core/products/GeneralBlockPanelKernel.h:1846:33: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__vector(2) double’} [-Wignored-attributes]
Compute.cpp: At global scope:
Compute.cpp:5501:1: fatal error: error writing to /tmp/cc4Zlq0x.s: No space left on device
 5501 | }
      | ^
compilation terminated.
make: *** [/opt/R/4.0.3/lib/R/etc/Makeconf:181: Compute.o] Error 1
ERROR: compilation failed for package ‘OpenMx’
* removing ‘/tmp/workdir/OpenMx/new/OpenMx.Rcheck/OpenMx’


```
### CRAN

```
* installing *source* package ‘OpenMx’ ...
** package ‘OpenMx’ successfully unpacked and MD5 sums checked
** using staged installation
NOTE: ./configure is not an autoconf generated script.
Change default C/C++ compiler and default compile flags by editing ~/.R/Makevars
** libs
g++ -std=gnu++14 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppEigen/include' -I'/opt/R/4.0.3/lib/R/site-library/StanHeaders/include' -I'/opt/R/4.0.3/lib/R/site-library/BH/include' -I'/opt/R/4.0.3/lib/R/site-library/rpf/include' -I/usr/local/include  -fopenmp       -fpic  -g -O2  -c Compute.cpp -o Compute.o
In file included from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/Core:392,
                 from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/Dense:1,
                 from /opt/R/4.0.3/lib/R/site-library/StanHeaders/include/stan/math/prim/mat/fun/Eigen.hpp:13,
...
/opt/R/4.0.3/lib/R/site-library/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp:531:8:   required from here
/opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:650:34: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__vector(2) double’} [-Wignored-attributes]
  650 |   return internal::first_aligned<int(unpacket_traits<DefaultPacketType>::alignment),Derived>(m);
      |                                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/tmp/ccBBDyqg.s: Assembler messages:
/tmp/ccBBDyqg.s: Fatal error: can't write 3887 bytes to section .debug_str of omxMLFitFunction.o: 'No space left on device'
/tmp/ccBBDyqg.s: Fatal error: can't close omxMLFitFunction.o: No space left on device
make: *** [/opt/R/4.0.3/lib/R/etc/Makeconf:181: omxMLFitFunction.o] Error 1
ERROR: compilation failed for package ‘OpenMx’
* removing ‘/tmp/workdir/OpenMx/old/OpenMx.Rcheck/OpenMx’


```
# osmplotr

<details>

* Version: 0.3.2
* GitHub: https://github.com/ropensci/osmplotr
* Source code: https://github.com/cran/osmplotr
* Date/Publication: 2018-12-19 13:40:03 UTC
* Number of recursive dependencies: 123

Run `cloud_details(, "osmplotr")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/osmplotr/new/osmplotr.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘osmplotr/DESCRIPTION’ ... OK
* this is package ‘osmplotr’ version ‘0.3.2’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘ggm’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/osmplotr/old/osmplotr.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘osmplotr/DESCRIPTION’ ... OK
* this is package ‘osmplotr’ version ‘0.3.2’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘ggm’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# penaltyLearning

<details>

* Version: 2020.5.13
* GitHub: https://github.com/tdhock/penaltyLearning
* Source code: https://github.com/cran/penaltyLearning
* Date/Publication: 2020-05-14 16:20:02 UTC
* Number of recursive dependencies: 63

Run `cloud_details(, "penaltyLearning")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/penaltyLearning/new/penaltyLearning.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘penaltyLearning/DESCRIPTION’ ... OK
* this is package ‘penaltyLearning’ version ‘2020.5.13’
* checking package namespace information ... OK
* checking package dependencies ... NOTE
Package suggested but not available for checking: ‘jointseg’
...
* checking for GNU extensions in Makefiles ... OK
* checking for portable use of $(BLAS_LIBS) and $(LAPACK_LIBS) ... OK
* checking use of PKG_*FLAGS in Makefiles ... OK
* checking compiled code ... OK
* checking examples ... OK
* checking for unstated dependencies in ‘tests’ ... OK
* checking tests ... OK
  Running ‘testthat.R’
* DONE
Status: 1 NOTE





```
### CRAN

```
* using log directory ‘/tmp/workdir/penaltyLearning/old/penaltyLearning.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘penaltyLearning/DESCRIPTION’ ... OK
* this is package ‘penaltyLearning’ version ‘2020.5.13’
* checking package namespace information ... OK
* checking package dependencies ... NOTE
Package suggested but not available for checking: ‘jointseg’
...
* checking for GNU extensions in Makefiles ... OK
* checking for portable use of $(BLAS_LIBS) and $(LAPACK_LIBS) ... OK
* checking use of PKG_*FLAGS in Makefiles ... OK
* checking compiled code ... OK
* checking examples ... OK
* checking for unstated dependencies in ‘tests’ ... OK
* checking tests ... OK
  Running ‘testthat.R’
* DONE
Status: 1 NOTE





```
# phylopath

<details>

* Version: 1.1.2
* GitHub: https://github.com/Ax3man/phylopath
* Source code: https://github.com/cran/phylopath
* Date/Publication: 2019-12-07 01:10:07 UTC
* Number of recursive dependencies: 93

Run `cloud_details(, "phylopath")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/phylopath/new/phylopath.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘phylopath/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘phylopath’ version ‘1.1.2’
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘ggm’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/phylopath/old/phylopath.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘phylopath/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘phylopath’ version ‘1.1.2’
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘ggm’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# precautionary

<details>

* Version: 0.1-5
* GitHub: NA
* Source code: https://github.com/cran/precautionary
* Date/Publication: 2020-11-03 06:30:02 UTC
* Number of recursive dependencies: 141

Run `cloud_details(, "precautionary")` for more info

</details>

## In both

*   checking whether package ‘precautionary’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/precautionary/new/precautionary.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘precautionary’ ...
** package ‘precautionary’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** demo
** exec
** inst
** byte-compile and prepare package for lazy loading
Error: package or namespace load failed for ‘escalation’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘trialr’
Error: package ‘escalation’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘precautionary’
* removing ‘/tmp/workdir/precautionary/new/precautionary.Rcheck/precautionary’


```
### CRAN

```
* installing *source* package ‘precautionary’ ...
** package ‘precautionary’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** demo
** exec
** inst
** byte-compile and prepare package for lazy loading
Error: package or namespace load failed for ‘escalation’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘trialr’
Error: package ‘escalation’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘precautionary’
* removing ‘/tmp/workdir/precautionary/old/precautionary.Rcheck/precautionary’


```
# qtl2

<details>

* Version: 0.22-11
* GitHub: https://github.com/rqtl/qtl2
* Source code: https://github.com/cran/qtl2
* Date/Publication: 2020-07-10 15:50:02 UTC
* Number of recursive dependencies: 106

Run `cloud_details(, "qtl2")` for more info

</details>

## Newly broken

*   checking whether package ‘qtl2’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/qtl2/new/qtl2.Rcheck/00install.out’ for details.
    ```

## Newly fixed

*   checking installed package size ... NOTE
    ```
      installed size is 88.2Mb
      sub-directories of 1Mb or more:
        extdata   3.3Mb
        libs     83.6Mb
    ```

## Installation

### Devel

```
* installing *source* package ‘qtl2’ ...
** package ‘qtl2’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppEigen/include' -I/usr/local/include   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
In file included from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/Core:392,
                 from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/Dense:1,
                 from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/RcppEigenForward.h:30,
                 from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/RcppEigen.h:25,
                 from RcppExports.cpp:4:
...
/opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/src/Householder/HouseholderSequence.h:333:46:   required from ‘void Eigen::HouseholderSequence<VectorsType, CoeffsType, Side>::applyThisOnTheLeft(Dest&, Workspace&) const [with Dest = Eigen::Matrix<double, -1, 1>; Workspace = Eigen::Matrix<double, 1, 1, 1, 1, 1>; VectorsType = Eigen::Matrix<double, -1, -1>; CoeffsType = Eigen::Matrix<double, -1, 1>; int Side = 1]’
/opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/src/Householder/HouseholderSequence.h:308:7:   required from ‘void Eigen::HouseholderSequence<VectorsType, CoeffsType, Side>::applyThisOnTheLeft(Dest&) const [with Dest = Eigen::Matrix<double, -1, 1>; VectorsType = Eigen::Matrix<double, -1, -1>; CoeffsType = Eigen::Matrix<double, -1, 1>; int Side = 1]’
/opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/src/Householder/HouseholderSequence.h:360:7:   required from ‘typename Eigen::internal::matrix_type_times_scalar_type<typename Eigen::internal::traits<Eigen::HouseholderSequence<VectorsType, CoeffsType, Side> >::Scalar, OtherDerived>::Type Eigen::HouseholderSequence<VectorsType, CoeffsType, Side>::operator*(const Eigen::MatrixBase<OtherDerived>&) const [with OtherDerived = Eigen::Matrix<double, -1, 1>; VectorsType = Eigen::Matrix<double, -1, -1>; CoeffsType = Eigen::Matrix<double, -1, 1>; int Side = 1; typename Eigen::internal::matrix_type_times_scalar_type<typename Eigen::internal::traits<Eigen::HouseholderSequence<VectorsType, CoeffsType, Side> >::Scalar, OtherDerived>::Type = Eigen::Matrix<double, -1, 1>]’
linreg_eigen.cpp:192:58:   required from here
/opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/src/Core/CoreEvaluators.h:960:8: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__vector(2) double’} [-Wignored-attributes]
/tmp/ccRtft5Z.s: Assembler messages:
/tmp/ccRtft5Z.s: Fatal error: can't close linreg_eigen.o: No space left on device
make: *** [/opt/R/4.0.3/lib/R/etc/Makeconf:181: linreg_eigen.o] Error 1
ERROR: compilation failed for package ‘qtl2’
* removing ‘/tmp/workdir/qtl2/new/qtl2.Rcheck/qtl2’


```
### CRAN

```
* installing *source* package ‘qtl2’ ...
** package ‘qtl2’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppEigen/include' -I/usr/local/include   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
In file included from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/Core:392,
                 from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/Dense:1,
                 from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/RcppEigenForward.h:30,
                 from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/RcppEigen.h:25,
                 from RcppExports.cpp:4:
...
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded from temporary location
** checking absolute paths in shared objects and dynamic libraries
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (qtl2)


```
# ReIns

<details>

* Version: 1.0.10
* GitHub: https://github.com/TReynkens/ReIns
* Source code: https://github.com/cran/ReIns
* Date/Publication: 2020-05-17 00:00:02 UTC
* Number of recursive dependencies: 58

Run `cloud_details(, "ReIns")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/ReIns/new/ReIns.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘ReIns/DESCRIPTION’ ... OK
* this is package ‘ReIns’ version ‘1.0.10’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... NOTE
...
* checking for unstated dependencies in ‘tests’ ... OK
* checking tests ... OK
  Running ‘testthat.R’
* checking for unstated dependencies in vignettes ... OK
* checking package vignettes in ‘inst/doc’ ... OK
* checking running R code from vignettes ... NONE
  ‘ReIns.Rmd’ using ‘UTF-8’... OK
* checking re-building of vignette outputs ... SKIPPED
* DONE
Status: 3 NOTEs





```
### CRAN

```
* using log directory ‘/tmp/workdir/ReIns/old/ReIns.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘ReIns/DESCRIPTION’ ... OK
* this is package ‘ReIns’ version ‘1.0.10’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... NOTE
...
* checking for unstated dependencies in ‘tests’ ... OK
* checking tests ... OK
  Running ‘testthat.R’
* checking for unstated dependencies in vignettes ... OK
* checking package vignettes in ‘inst/doc’ ... OK
* checking running R code from vignettes ... NONE
  ‘ReIns.Rmd’ using ‘UTF-8’... OK
* checking re-building of vignette outputs ... SKIPPED
* DONE
Status: 3 NOTEs





```
# RNiftyReg

<details>

* Version: 2.7.0
* GitHub: https://github.com/jonclayden/RNiftyReg
* Source code: https://github.com/cran/RNiftyReg
* Date/Publication: 2020-09-12 05:51:01 UTC
* Number of recursive dependencies: 53

Run `cloud_details(, "RNiftyReg")` for more info

</details>

## Newly broken

*   checking whether package ‘RNiftyReg’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/RNiftyReg/new/RNiftyReg.Rcheck/00install.out’ for details.
    ```

## Newly fixed

*   checking installed package size ... NOTE
    ```
      installed size is 124.2Mb
      sub-directories of 1Mb or more:
        extdata    2.0Mb
        libs     122.1Mb
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
/tmp/cchQRek2.s: Assembler messages:
/tmp/cchQRek2.s: Fatal error: can't close reg-lib/cpu/_reg_maths_eigen.o: No space left on device
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
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded from temporary location
** checking absolute paths in shared objects and dynamic libraries
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (RNiftyReg)


```
# sarsop

<details>

* Version: 0.6.6
* GitHub: https://github.com/boettiger-lab/sarsop
* Source code: https://github.com/cran/sarsop
* Date/Publication: 2020-12-12 06:30:03 UTC
* Number of recursive dependencies: 105

Run `cloud_details(, "sarsop")` for more info

</details>

## Newly broken

*   checking whether package ‘sarsop’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/sarsop/new/sarsop.Rcheck/00install.out’ for details.
    ```

## Newly fixed

*   checking installed package size ... NOTE
    ```
      installed size is 76.9Mb
      sub-directories of 1Mb or more:
        bin  76.0Mb
    ```

## Installation

### Devel

```
* installing *source* package ‘sarsop’ ...
** package ‘sarsop’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -Iappl-0.96 -Iappl-0.96/MathLib -Iappl-0.96/Algorithms -Iappl-0.96/Algorithms/HSVI -Iappl-0.96/Algorithms/SARSOP -Iappl-0.96/Models/MOMDP -Iappl-0.96/Models/MOMDP/CoLoc -Iappl-0.96/OfflineSolver -Iappl-0.96/Bounds -Iappl-0.96/Core -Iappl-0.96/Parser/Cassandra -Iappl-0.96/Parser/Cassandra/include -Iappl-0.96/Parser -Iappl-0.96/Parser/POMDPX -Iappl-0.96/Utils -Iappl-0.96/Simulator -Iappl-0.96/Evaluator -Iappl-0.96/Controller -I'/opt/R/4.0.3/lib/R/site-library/BH/include' -I/usr/local/include   -fpic  -g -O2  -c readme.cpp -o readme.o
gcc -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -Iappl-0.96 -Iappl-0.96/MathLib -Iappl-0.96/Algorithms -Iappl-0.96/Algorithms/HSVI -Iappl-0.96/Algorithms/SARSOP -Iappl-0.96/Models/MOMDP -Iappl-0.96/Models/MOMDP/CoLoc -Iappl-0.96/OfflineSolver -Iappl-0.96/Bounds -Iappl-0.96/Core -Iappl-0.96/Parser/Cassandra -Iappl-0.96/Parser/Cassandra/include -Iappl-0.96/Parser -Iappl-0.96/Parser/POMDPX -Iappl-0.96/Utils -Iappl-0.96/Simulator -Iappl-0.96/Evaluator -Iappl-0.96/Controller -I'/opt/R/4.0.3/lib/R/site-library/BH/include' -I/usr/local/include   -fpic  -g -O2  -c zzz.c -o zzz.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -Iappl-0.96 -Iappl-0.96/MathLib -Iappl-0.96/Algorithms -Iappl-0.96/Algorithms/HSVI -Iappl-0.96/Algorithms/SARSOP -Iappl-0.96/Models/MOMDP -Iappl-0.96/Models/MOMDP/CoLoc -Iappl-0.96/OfflineSolver -Iappl-0.96/Bounds -Iappl-0.96/Core -Iappl-0.96/Parser/Cassandra -Iappl-0.96/Parser/Cassandra/include -Iappl-0.96/Parser -Iappl-0.96/Parser/POMDPX -Iappl-0.96/Utils -Iappl-0.96/Simulator -Iappl-0.96/Evaluator -Iappl-0.96/Controller -I'/opt/R/4.0.3/lib/R/site-library/BH/include' -I/usr/local/include   -fpic  -g -O2  -c appl-0.96/Models/MOMDP/BeliefTransitionMOMDP.cpp -o appl-0.96/Models/MOMDP/BeliefTransitionMOMDP.o
In file included from /opt/R/4.0.3/lib/R/site-library/BH/include/boost/smart_ptr/shared_ptr.hpp:28,
                 from appl-0.96/Core/MObject.h:7,
                 from appl-0.96/Models/MOMDP/IVariableValue.h:7,
...
Warning in file.append(to[okay], from[okay]) :
  write error during file append
Warning in file.append(to[okay], from[okay]) :
  write error during file append
Warning in file.append(to[okay], from[okay]) :
  write error during file append
** byte-compile and prepare package for lazy loading
Fatal error: cannot create 'R_TempDir'
ERROR: lazy loading failed for package ‘sarsop’
* removing ‘/tmp/workdir/sarsop/new/sarsop.Rcheck/sarsop’


```
### CRAN

```
* installing *source* package ‘sarsop’ ...
** package ‘sarsop’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -Iappl-0.96 -Iappl-0.96/MathLib -Iappl-0.96/Algorithms -Iappl-0.96/Algorithms/HSVI -Iappl-0.96/Algorithms/SARSOP -Iappl-0.96/Models/MOMDP -Iappl-0.96/Models/MOMDP/CoLoc -Iappl-0.96/OfflineSolver -Iappl-0.96/Bounds -Iappl-0.96/Core -Iappl-0.96/Parser/Cassandra -Iappl-0.96/Parser/Cassandra/include -Iappl-0.96/Parser -Iappl-0.96/Parser/POMDPX -Iappl-0.96/Utils -Iappl-0.96/Simulator -Iappl-0.96/Evaluator -Iappl-0.96/Controller -I'/opt/R/4.0.3/lib/R/site-library/BH/include' -I/usr/local/include   -fpic  -g -O2  -c readme.cpp -o readme.o
gcc -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -Iappl-0.96 -Iappl-0.96/MathLib -Iappl-0.96/Algorithms -Iappl-0.96/Algorithms/HSVI -Iappl-0.96/Algorithms/SARSOP -Iappl-0.96/Models/MOMDP -Iappl-0.96/Models/MOMDP/CoLoc -Iappl-0.96/OfflineSolver -Iappl-0.96/Bounds -Iappl-0.96/Core -Iappl-0.96/Parser/Cassandra -Iappl-0.96/Parser/Cassandra/include -Iappl-0.96/Parser -Iappl-0.96/Parser/POMDPX -Iappl-0.96/Utils -Iappl-0.96/Simulator -Iappl-0.96/Evaluator -Iappl-0.96/Controller -I'/opt/R/4.0.3/lib/R/site-library/BH/include' -I/usr/local/include   -fpic  -g -O2  -c zzz.c -o zzz.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -Iappl-0.96 -Iappl-0.96/MathLib -Iappl-0.96/Algorithms -Iappl-0.96/Algorithms/HSVI -Iappl-0.96/Algorithms/SARSOP -Iappl-0.96/Models/MOMDP -Iappl-0.96/Models/MOMDP/CoLoc -Iappl-0.96/OfflineSolver -Iappl-0.96/Bounds -Iappl-0.96/Core -Iappl-0.96/Parser/Cassandra -Iappl-0.96/Parser/Cassandra/include -Iappl-0.96/Parser -Iappl-0.96/Parser/POMDPX -Iappl-0.96/Utils -Iappl-0.96/Simulator -Iappl-0.96/Evaluator -Iappl-0.96/Controller -I'/opt/R/4.0.3/lib/R/site-library/BH/include' -I/usr/local/include   -fpic  -g -O2  -c appl-0.96/Models/MOMDP/BeliefTransitionMOMDP.cpp -o appl-0.96/Models/MOMDP/BeliefTransitionMOMDP.o
In file included from /opt/R/4.0.3/lib/R/site-library/BH/include/boost/smart_ptr/shared_ptr.hpp:28,
                 from appl-0.96/Core/MObject.h:7,
                 from appl-0.96/Models/MOMDP/IVariableValue.h:7,
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
* DONE (sarsop)


```
# seqgendiff

<details>

* Version: 1.2.2
* GitHub: https://github.com/dcgerard/seqgendiff
* Source code: https://github.com/cran/seqgendiff
* Date/Publication: 2020-05-24 19:20:05 UTC
* Number of recursive dependencies: 132

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
# Seurat

<details>

* Version: 3.2.2
* GitHub: https://github.com/satijalab/seurat
* Source code: https://github.com/cran/Seurat
* Date/Publication: 2020-09-26 04:30:12 UTC
* Number of recursive dependencies: 228

Run `cloud_details(, "Seurat")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/Seurat/new/Seurat.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘Seurat/DESCRIPTION’ ... OK
* this is package ‘Seurat’ version ‘3.2.2’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... NOTE
...
* checking for GNU extensions in Makefiles ... OK
* checking for portable use of $(BLAS_LIBS) and $(LAPACK_LIBS) ... OK
* checking use of PKG_*FLAGS in Makefiles ... OK
* checking compiled code ... OK
* checking examples ... OK
* checking for unstated dependencies in ‘tests’ ... OK
* checking tests ... OK
  Running ‘testthat.R’
* DONE
Status: 2 NOTEs





```
### CRAN

```
* using log directory ‘/tmp/workdir/Seurat/old/Seurat.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘Seurat/DESCRIPTION’ ... OK
* this is package ‘Seurat’ version ‘3.2.2’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... NOTE
...
* checking for GNU extensions in Makefiles ... OK
* checking for portable use of $(BLAS_LIBS) and $(LAPACK_LIBS) ... OK
* checking use of PKG_*FLAGS in Makefiles ... OK
* checking compiled code ... OK
* checking examples ... OK
* checking for unstated dependencies in ‘tests’ ... OK
* checking tests ... OK
  Running ‘testthat.R’
* DONE
Status: 2 NOTEs





```
# smartdata

<details>

* Version: 1.0.3
* GitHub: https://github.com/ncordon/smartdata
* Source code: https://github.com/cran/smartdata
* Date/Publication: 2019-12-18 17:40:02 UTC
* Number of recursive dependencies: 282

Run `cloud_details(, "smartdata")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/smartdata/new/smartdata.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘smartdata/DESCRIPTION’ ... OK
* this is package ‘smartdata’ version ‘1.0.3’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'adaptiveGPCA', 'imbalance', 'missMDA'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/smartdata/old/smartdata.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘smartdata/DESCRIPTION’ ... OK
* this is package ‘smartdata’ version ‘1.0.3’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'adaptiveGPCA', 'imbalance', 'missMDA'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# SMITIDvisu

<details>

* Version: 0.0.8
* GitHub: NA
* Source code: https://github.com/cran/SMITIDvisu
* Date/Publication: 2020-11-05 11:10:02 UTC
* Number of recursive dependencies: 84

Run `cloud_details(, "SMITIDvisu")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/SMITIDvisu/new/SMITIDvisu.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘SMITIDvisu/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘SMITIDvisu’ version ‘0.0.8’
* package encoding: UTF-8
* checking package namespace information ... OK
...
* checking data for non-ASCII characters ... OK
* checking data for ASCII and uncompressed saves ... OK
* checking line endings in C/C++/Fortran sources/headers ... OK
* checking compiled code ... OK
* checking examples ... OK
* checking for unstated dependencies in ‘tests’ ... OK
* checking tests ... OK
  Running ‘testthat.R’
* DONE
Status: 1 NOTE





```
### CRAN

```
* using log directory ‘/tmp/workdir/SMITIDvisu/old/SMITIDvisu.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘SMITIDvisu/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘SMITIDvisu’ version ‘0.0.8’
* package encoding: UTF-8
* checking package namespace information ... OK
...
* checking data for non-ASCII characters ... OK
* checking data for ASCII and uncompressed saves ... OK
* checking line endings in C/C++/Fortran sources/headers ... OK
* checking compiled code ... OK
* checking examples ... OK
* checking for unstated dependencies in ‘tests’ ... OK
* checking tests ... OK
  Running ‘testthat.R’
* DONE
Status: 1 NOTE





```
# spectralAnalysis

<details>

* Version: 3.12.0
* GitHub: NA
* Source code: https://github.com/cran/spectralAnalysis
* Date/Publication: 2018-06-12 14:30:39 UTC
* Number of recursive dependencies: 108

Run `cloud_details(, "spectralAnalysis")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/spectralAnalysis/new/spectralAnalysis.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘spectralAnalysis/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘spectralAnalysis’ version ‘3.12.0’
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'BiocGenerics', 'NMF', 'hNMF'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/spectralAnalysis/old/spectralAnalysis.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘spectralAnalysis/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘spectralAnalysis’ version ‘3.12.0’
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'BiocGenerics', 'NMF', 'hNMF'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# spsurvey

<details>

* Version: 4.1.4
* GitHub: NA
* Source code: https://github.com/cran/spsurvey
* Date/Publication: 2020-09-18 08:20:03 UTC
* Number of recursive dependencies: 93

Run `cloud_details(, "spsurvey")` for more info

</details>

## Error before installation

### Devel

```






```
### CRAN

```
* using log directory ‘/tmp/workdir/spsurvey/old/spsurvey.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘spsurvey/DESCRIPTION’ ... OK
* this is package ‘spsurvey’ version ‘4.1.4’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... OK
...
  ‘CDF_Deconvolution.Rmd’ using ‘UTF-8’... OK
  ‘Change_Analysis.Rmd’ using ‘UTF-8’... OK
  ‘Finite_Analysis.Rmd’ using ‘UTF-8’... OK
  ‘Finite_Design.Rmd’ using ‘UTF-8’... OK
  ‘Linear_Analysis.Rmd’ using ‘UTF-8’... OK
  ‘Linear_Design.Rmd’ using ‘UTF-8’... OK
  ‘Risk_Analysis.Rmd’ using ‘UTF-8’... OK
* checking re-building of vignette outputs ... SKIPPED
* DONE
Status: 1 ERROR





```
# statsExpressions

<details>

* Version: 0.6.2
* GitHub: https://github.com/IndrajeetPatil/statsExpressions
* Source code: https://github.com/cran/statsExpressions
* Date/Publication: 2020-12-08 10:30:03 UTC
* Number of recursive dependencies: 174

Run `cloud_details(, "statsExpressions")` for more info

</details>

## In both

*   checking whether package ‘statsExpressions’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/statsExpressions/new/statsExpressions.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘statsExpressions’ ...
** package ‘statsExpressions’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘metaBMA’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘statsExpressions’
* removing ‘/tmp/workdir/statsExpressions/new/statsExpressions.Rcheck/statsExpressions’


```
### CRAN

```
* installing *source* package ‘statsExpressions’ ...
** package ‘statsExpressions’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘metaBMA’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘statsExpressions’
* removing ‘/tmp/workdir/statsExpressions/old/statsExpressions.Rcheck/statsExpressions’


```
# symengine

<details>

* Version: 0.1.5
* GitHub: https://github.com/symengine/symengine.R
* Source code: https://github.com/cran/symengine
* Date/Publication: 2020-07-06 12:00:02 UTC
* Number of recursive dependencies: 50

Run `cloud_details(, "symengine")` for more info

</details>

## Newly broken

*   checking whether package ‘symengine’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/symengine/new/symengine.Rcheck/00install.out’ for details.
    ```

## Newly fixed

*   checking installed package size ... NOTE
    ```
      installed size is 60.2Mb
      sub-directories of 1Mb or more:
        libs  59.3Mb
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

## Installation

### Devel

```
* installing *source* package ‘symengine’ ...
** package ‘symengine’ successfully unpacked and MD5 sums checked
** using staged installation
====== configuring symengine R package ======
== current working directory
/tmp/workdir/symengine/new/symengine.Rcheck/00_pkg_src/symengine
==
== cmake:
/usr/bin/cmake
cmake version 3.16.3
...
make[3]: *** [symengine/CMakeFiles/symengine.dir/build.make:925: symengine/libsymengine.a] Error 1
make[3]: *** Deleting file 'symengine/libsymengine.a'
make[3]: Leaving directory '/tmp/workdir/symengine/new/symengine.Rcheck/00_pkg_src/symengine/src/upstream'
make[2]: *** [CMakeFiles/Makefile2:114: symengine/CMakeFiles/symengine.dir/all] Error 2
make[2]: Leaving directory '/tmp/workdir/symengine/new/symengine.Rcheck/00_pkg_src/symengine/src/upstream'
make[1]: *** [Makefile:141: all] Error 2
make[1]: Leaving directory '/tmp/workdir/symengine/new/symengine.Rcheck/00_pkg_src/symengine/src/upstream'
make: *** [Makevars:15: do_upstream] Error 2
ERROR: compilation failed for package ‘symengine’
* removing ‘/tmp/workdir/symengine/new/symengine.Rcheck/symengine’


```
### CRAN

```
* installing *source* package ‘symengine’ ...
** package ‘symengine’ successfully unpacked and MD5 sums checked
** using staged installation
====== configuring symengine R package ======
== current working directory
/tmp/workdir/symengine/old/symengine.Rcheck/00_pkg_src/symengine
==
== cmake:
/usr/bin/cmake
cmake version 3.16.3
...
Creating a generic function for ‘rep.int’ from package ‘base’ in package ‘symengine’
** help
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
** checking absolute paths in shared objects and dynamic libraries
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (symengine)


```
# torch

<details>

* Version: 0.1.1
* GitHub: https://github.com/mlverse/torch
* Source code: https://github.com/cran/torch
* Date/Publication: 2020-10-20 21:10:02 UTC
* Number of recursive dependencies: 58

Run `cloud_details(, "torch")` for more info

</details>

## Newly broken

*   checking whether package ‘torch’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/torch/new/torch.Rcheck/00install.out’ for details.
    ```

## Newly fixed

*   checking installed package size ... NOTE
    ```
      installed size is 157.8Mb
      sub-directories of 1Mb or more:
        R       3.1Mb
        help    2.8Mb
        libs  151.4Mb
    ```

## Installation

### Devel

```
* installing *source* package ‘torch’ ...
** package ‘torch’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c autograd.cpp -o autograd.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c contrib.cpp -o contrib.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c cuda.cpp -o cuda.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c device.cpp -o device.o
In file included from device.cpp:2:
...
Renaming torch lib to torchpkg
"/opt/R/4.0.3/lib/R/bin/Rscript" "../tools/renamelib.R"
installing to /tmp/workdir/torch/new/torch.Rcheck/00LOCK-torch/00new/torch/libs
** R
Warning in dir.create(outCodeDir) :
  cannot create dir '/tmp/workdir/torch/new/torch.Rcheck/00LOCK-torch/00new/torch/R', reason 'No space left on device'
Error in .install_package_code_files(".", instdir) : 
  cannot open directory '/tmp/workdir/torch/new/torch.Rcheck/00LOCK-torch/00new/torch/R'
ERROR: unable to collate and parse R files for package ‘torch’
* removing ‘/tmp/workdir/torch/new/torch.Rcheck/torch’


```
### CRAN

```
* installing *source* package ‘torch’ ...
** package ‘torch’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c autograd.cpp -o autograd.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c contrib.cpp -o contrib.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c cuda.cpp -o cuda.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c device.cpp -o device.o
In file included from device.cpp:2:
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
* DONE (torch)


```
# volesti

<details>

* Version: 1.1.2
* GitHub: https://github.com/GeomScale/volume_approximation
* Source code: https://github.com/cran/volesti
* Date/Publication: 2020-10-19 09:20:03 UTC
* Number of recursive dependencies: 39

Run `cloud_details(, "volesti")` for more info

</details>

## Newly broken

*   checking whether package ‘volesti’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/volesti/new/volesti.Rcheck/00install.out’ for details.
    ```

## Newly fixed

*   checking installed package size ... NOTE
    ```
      installed size is 139.6Mb
      sub-directories of 1Mb or more:
        libs  139.2Mb
    ```

## Installation

### Devel

```
* installing *source* package ‘volesti’ ...
** package ‘volesti’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -Iexternal -Iexternal/lpsolve/headers/run_headers -Iexternal/minimum_ellipsoid -Iinclude -Iinclude/convex_bodies/spectrahedra -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppEigen/include' -I'/opt/R/4.0.3/lib/R/site-library/BH/include' -I/usr/local/include  -DBOOST_NO_AUTO_PTR -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
In file included from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/Core:392,
                 from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/Dense:1,
                 from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/RcppEigenForward.h:30,
                 from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/RcppEigen.h:25,
                 from RcppExports.cpp:4:
...
include/convex_bodies/zpolytope.h:192:9:   required from ‘void Zonotope<Point>::init(unsigned int, const MT&, const VT&) [with Point = point<Cartesian<double> >; Zonotope<Point>::MT = Eigen::Matrix<double, -1, -1>; typename Point::FT = double; Zonotope<Point>::VT = Eigen::Matrix<double, -1, 1>; typename K::FT = double]’
exact_vol.cpp:111:59:   required from here
/opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/src/Core/CoreEvaluators.h:960:8: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__vector(2) double’} [-Wignored-attributes]
exact_vol.cpp:119:1: fatal error: error writing to /tmp/ccXakZWD.s: No space left on device
  119 | }
      | ^
compilation terminated.
make: *** [/opt/R/4.0.3/lib/R/etc/Makeconf:181: exact_vol.o] Error 1
ERROR: compilation failed for package ‘volesti’
* removing ‘/tmp/workdir/volesti/new/volesti.Rcheck/volesti’


```
### CRAN

```
* installing *source* package ‘volesti’ ...
** package ‘volesti’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -Iexternal -Iexternal/lpsolve/headers/run_headers -Iexternal/minimum_ellipsoid -Iinclude -Iinclude/convex_bodies/spectrahedra -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppEigen/include' -I'/opt/R/4.0.3/lib/R/site-library/BH/include' -I/usr/local/include  -DBOOST_NO_AUTO_PTR -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
In file included from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/Core:392,
                 from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/Dense:1,
                 from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/RcppEigenForward.h:30,
                 from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/RcppEigen.h:25,
                 from RcppExports.cpp:4:
...
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded from temporary location
** checking absolute paths in shared objects and dynamic libraries
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (volesti)


```
# wrswoR

<details>

* Version: 1.1.1
* GitHub: https://github.com/krlmlr/wrswoR
* Source code: https://github.com/cran/wrswoR
* Date/Publication: 2020-07-26 18:20:02 UTC
* Number of recursive dependencies: 129

Run `cloud_details(, "wrswoR")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/wrswoR/new/wrswoR.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘wrswoR/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘wrswoR’ version ‘1.1.1’
* package encoding: UTF-8
* checking package namespace information ... OK
...
* checking for GNU extensions in Makefiles ... OK
* checking for portable use of $(BLAS_LIBS) and $(LAPACK_LIBS) ... OK
* checking use of PKG_*FLAGS in Makefiles ... OK
* checking compiled code ... OK
* checking examples ... OK
* checking for unstated dependencies in ‘tests’ ... OK
* checking tests ... OK
  Running ‘testthat.R’
* DONE
Status: 1 NOTE





```
### CRAN

```
* using log directory ‘/tmp/workdir/wrswoR/old/wrswoR.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘wrswoR/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘wrswoR’ version ‘1.1.1’
* package encoding: UTF-8
* checking package namespace information ... OK
...
* checking for GNU extensions in Makefiles ... OK
* checking for portable use of $(BLAS_LIBS) and $(LAPACK_LIBS) ... OK
* checking use of PKG_*FLAGS in Makefiles ... OK
* checking compiled code ... OK
* checking examples ... OK
* checking for unstated dependencies in ‘tests’ ... OK
* checking tests ... OK
  Running ‘testthat.R’
* DONE
Status: 1 NOTE





```
