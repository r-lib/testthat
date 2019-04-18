# banR

<details>

* Version: 0.2.0
* Source code: https://github.com/cran/banR
* URL: http://github.com/joelgombin/banR
* BugReports: http://github.com/joelgombin/banR/issues
* Date/Publication: 2017-08-03 14:33:11 UTC
* Number of recursive dependencies: 44

Run `revdep_details(,"banR")` for more info

</details>

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
             class = "tbl_df") at testthat/test_geocodetbl.R:60
      2: quasi_label(enquo(object), label, arg = "object")
      3: eval_bare(get_expr(quo), get_env(quo))
      4: reverse_geocode_tbl(tbl = table_reverse, longitude = x, latitude = y)
      5: stop("The API sent back an error ", httr::status_code(query_results))
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 2 SKIPPED: 0 WARNINGS: 0 FAILED: 4
      1. Error: Geocode tbl works  (@test_geocodetbl.R#12) 
      2. Error: Input and output DFs have a similar number of rows (@test_geocodetbl.R#31) 
      3. Error: Geocode_tbl works with a single-column input data.frame (@test_geocodetbl.R#48) 
      4. Error: Reverse geocode tbl works  (@test_geocodetbl.R#60) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘stringr’
      All declared Imports should be used.
    ```

# BgeeDB

<details>

* Version: 2.8.0
* Source code: https://github.com/cran/BgeeDB
* URL: https://github.com/BgeeDB/BgeeDB_R
* BugReports: https://github.com/BgeeDB/BgeeDB_R/issues
* Date/Publication: 2018-10-30
* Number of recursive dependencies: 61

Run `revdep_details(,"BgeeDB")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    ...
    
    Building URLs to retrieve organ names from Bgee.................
       URL successfully built (https://r.bgee.org/?page=r_package&action=get_anat_entities&display_type=tsv&species_list=7955&attr_list=ID&attr_list=NAME&api_key=86e89d67f57e2447f162d775d7e964d25ea5001fd6f583baf66e5659dd4f152f1bc1969e6123c1791f41701670947f635f96b14978018600617fa32a967f436d&source=BgeeDB_R_package&source_version=2.8.0)
       Submitting URL to Bgee webservice (can be long)
    trying URL 'https://r.bgee.org/?page=r_package&action=get_anat_entities&display_type=tsv&species_list=7955&attr_list=ID&attr_list=NAME&api_key=86e89d67f57e2447f162d775d7e964d25ea5001fd6f583baf66e5659dd4f152f1bc1969e6123c1791f41701670947f635f96b14978018600617fa32a967f436d&source=BgeeDB_R_package&source_version=2.8.0'
    downloaded 425 KB
    
       Got results from Bgee webservice. Files are written in "/Users/max/github/forks/testthat/revdep/checks.noindex/BgeeDB/new/BgeeDB.Rcheck/Danio_rerio_Bgee_14_0"
    
    Building URLs to retrieve mapping of gene to organs from Bgee...
       URL successfully built (https://r.bgee.org/?page=r_package&action=get_expression_calls&display_type=tsv&species_list=7955&attr_list=GENE_ID&attr_list=ANAT_ENTITY_ID&api_key=86e89d67f57e2447f162d775d7e964d25ea5001fd6f583baf66e5659dd4f152f1bc1969e6123c1791f41701670947f635f96b14978018600617fa32a967f436d&source=BgeeDB_R_package&source_version=2.8.0&data_qual=SILVER)
       Submitting URL to Bgee webservice (can be long)
    trying URL 'https://r.bgee.org/?page=r_package&action=get_expression_calls&display_type=tsv&species_list=7955&attr_list=GENE_ID&attr_list=ANAT_ENTITY_ID&api_key=86e89d67f57e2447f162d775d7e964d25ea5001fd6f583baf66e5659dd4f152f1bc1969e6123c1791f41701670947f635f96b14978018600617fa32a967f436d&source=BgeeDB_R_package&source_version=2.8.0&data_qual=SILVER'
    downloaded 2.1 MB
    
    Warning in download.file(myUrl, destfile = paste0(myBgeeObject$pathToData,  :
      URL 'https://bgee.org/?page=r_package&action=get_expression_calls&display_type=tsv&species_list=7955&attr_list=GENE_ID&attr_list=ANAT_ENTITY_ID&api_key=86e89d67f57e2447f162d775d7e964d25ea5001fd6f583baf66e5659dd4f152f1bc1969e6123c1791f41701670947f635f96b14978018600617fa32a967f436d&source=BgeeDB_R_package&source_version=2.8.0&data_qual=SILVER': status was 'Failure when receiving data from the peer'
    Error in download.file(myUrl, destfile = paste0(myBgeeObject$pathToData,  : 
      download from 'https://r.bgee.org/?page=r_package&action=get_expression_calls&display_type=tsv&species_list=7955&attr_list=GENE_ID&attr_list=ANAT_ENTITY_ID&api_key=86e89d67f57e2447f162d775d7e964d25ea5001fd6f583baf66e5659dd4f152f1bc1969e6123c1791f41701670947f635f96b14978018600617fa32a967f436d&source=BgeeDB_R_package&source_version=2.8.0&data_qual=SILVER' failed
    Calls: loadTopAnatData -> download.file
    Execution halted
    ```

*   R CMD check timed out
    

## In both

*   checking top-level files ... NOTE
    ```
    File
      LICENSE
    is not mentioned in the DESCRIPTION file.
    ```

# BMSC

<details>

* Version: 0.2.0
* Source code: https://github.com/cran/BMSC
* Date/Publication: 2019-04-16 15:25:42 UTC
* Number of recursive dependencies: 79

Run `revdep_details(,"BMSC")` for more info

</details>

## Newly broken

*   checking whether package ‘BMSC’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/max/github/forks/testthat/revdep/checks.noindex/BMSC/new/BMSC.Rcheck/00install.out’ for details.
    ```

## Newly fixed

*   checking installed package size ... NOTE
    ```
      installed size is  6.9Mb
      sub-directories of 1Mb or more:
        libs   6.5Mb
    ```

## Installation

### Devel

```
* installing *source* package ‘BMSC’ ...
** package ‘BMSC’ successfully unpacked and MD5 sums checked
** libs
"/Library/Frameworks/R.framework/Resources/bin/Rscript" -e "source(file.path('..', 'tools', 'make_cc.R')); make_cc(commandArgs(TRUE))" stan_files/linReg.stan
"/Library/Frameworks/R.framework/Resources/bin/Rscript" -e "source(file.path('..', 'tools', 'make_cc.R')); make_cc(commandArgs(TRUE))" stan_files/linRegHorseHoe.stan
"/Library/Frameworks/R.framework/Resources/bin/Rscript" -e "source(file.path('..', 'tools', 'make_cc.R')); make_cc(commandArgs(TRUE))" stan_files/linRegHorseHoeUnConstr.stan
"/Library/Frameworks/R.framework/Resources/bin/Rscript" -e "source(file.path('..', 'tools', 'make_cc.R')); make_cc(commandArgs(TRUE))" stan_files/linRegUnConstr.stan
Wrote C++ file "stan_files/linRegHorseHoeUnConstr.cc"
Wrote C++ file "stan_files/linRegHorseHoe.cc"
Wrote C++ file "stan_files/linReg.cc"
Wrote C++ file "stan_files/linRegUnConstr.cc"
Error in readRDS("/var/folders/lb/xhxqmcrd7gv302_b1pdfykh80000gn/T//Rtmpfpz96c/file184d6267ecd97") : 
  error reading from connection
Calls: .Last -> readRDS
Execution halted
"/Library/Frameworks/R.framework/Resources/bin/Rscript" -e "source(file.path('..', 'tools', 'make_cc.R')); make_cc(commandArgs(TRUE))" stan_files/linRegXU.stan
make: *** [stan_files/linRegHorseHoe.cc] Error 1
make: *** Waiting for unfinished jobs....
Wrote C++ file "stan_files/linRegXU.cc"
rm stan_files/linRegXU.cc stan_files/linRegUnConstr.cc stan_files/linRegHorseHoe.cc stan_files/linRegHorseHoeUnConstr.cc stan_files/linReg.cc
ERROR: compilation failed for package ‘BMSC’
* removing ‘/Users/max/github/forks/testthat/revdep/checks.noindex/BMSC/new/BMSC.Rcheck/BMSC’

```
### CRAN

```
* installing *source* package ‘BMSC’ ...
** package ‘BMSC’ successfully unpacked and MD5 sums checked
** libs
"/Library/Frameworks/R.framework/Resources/bin/Rscript" -e "source(file.path('..', 'tools', 'make_cc.R')); make_cc(commandArgs(TRUE))" stan_files/linReg.stan
"/Library/Frameworks/R.framework/Resources/bin/Rscript" -e "source(file.path('..', 'tools', 'make_cc.R')); make_cc(commandArgs(TRUE))" stan_files/linRegHorseHoe.stan
"/Library/Frameworks/R.framework/Resources/bin/Rscript" -e "source(file.path('..', 'tools', 'make_cc.R')); make_cc(commandArgs(TRUE))" stan_files/linRegHorseHoeUnConstr.stan
"/Library/Frameworks/R.framework/Resources/bin/Rscript" -e "source(file.path('..', 'tools', 'make_cc.R')); make_cc(commandArgs(TRUE))" stan_files/linRegUnConstr.stan
Wrote C++ file "stan_files/linRegUnConstr.cc"
Wrote C++ file "stan_files/linReg.cc"
Wrote C++ file "stan_files/linRegHorseHoe.cc"
Wrote C++ file "stan_files/linRegHorseHoeUnConstr.cc"
"/Library/Frameworks/R.framework/Resources/bin/Rscript" -e "source(file.path('..', 'tools', 'make_cc.R')); make_cc(commandArgs(TRUE))" stan_files/linRegXU.stan
"/Library/Frameworks/R.framework/Resources/bin/Rscript" -e "source(file.path('..', 'tools', 'make_cc.R')); make_cc(commandArgs(TRUE))" stan_files/linRegUnConstrXU.stan
/usr/local/clang6/bin/clang++ -std=gnu++14 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I"../inst/include" -I"`"/Library/Frameworks/R.framework/Resources/bin/Rscript" --vanilla -e "cat(system.file('include', 'src', package = 'StanHeaders'))"`" -DBOOST_RESULT_OF_USE_TR1 -DBOOST_NO_DECLTYPE -DBOOST_DISABLE_ASSERTS -DEIGEN_NO_DEBUG -DBOOST_MATH_OVERFLOW_ERROR_POLICY=errno_on_error -I"/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/BH/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/Rcpp/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include" -I/usr/local/include   -fPIC  -Wall -g -O2 -c init.cpp -o init.o
/usr/local/clang6/bin/clang++ -std=gnu++14 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I"../inst/include" -I"`"/Library/Frameworks/R.framework/Resources/bin/Rscript" --vanilla -e "cat(system.file('include', 'src', package = 'StanHeaders'))"`" -DBOOST_RESULT_OF_USE_TR1 -DBOOST_NO_DECLTYPE -DBOOST_DISABLE_ASSERTS -DEIGEN_NO_DEBUG -DBOOST_MATH_OVERFLOW_ERROR_POLICY=errno_on_error -I"/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/BH/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/Rcpp/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include" -I/usr/local/include   -fPIC  -Wall -g -O2 -c stan_files/linReg.cc -o stan_files/linReg.o
/usr/local/clang6/bin/clang++ -std=gnu++14 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I"../inst/include" -I"`"/Library/Frameworks/R.framework/Resources/bin/Rscript" --vanilla -e "cat(system.file('include', 'src', package = 'StanHeaders'))"`" -DBOOST_RESULT_OF_USE_TR1 -DBOOST_NO_DECLTYPE -DBOOST_DISABLE_ASSERTS -DEIGEN_NO_DEBUG -DBOOST_MATH_OVERFLOW_ERROR_POLICY=errno_on_error -I"/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/BH/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/Rcpp/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include" -I/usr/local/include   -fPIC  -Wall -g -O2 -c stan_files/linRegHorseHoe.cc -o stan_files/linRegHorseHoe.o
Wrote C++ file "stan_files/linRegXU.cc"
Wrote C++ file "stan_files/linRegUnConstrXU.cc"
/usr/local/clang6/bin/clang++ -std=gnu++14 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I"../inst/include" -I"`"/Library/Frameworks/R.framework/Resources/bin/Rscript" --vanilla -e "cat(system.file('include', 'src', package = 'StanHeaders'))"`" -DBOOST_RESULT_OF_USE_TR1 -DBOOST_NO_DECLTYPE -DBOOST_DISABLE_ASSERTS -DEIGEN_NO_DEBUG -DBOOST_MATH_OVERFLOW_ERROR_POLICY=errno_on_error -I"/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/BH/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/Rcpp/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include" -I/usr/local/include   -fPIC  -Wall -g -O2 -c stan_files/linRegHorseHoeUnConstr.cc -o stan_files/linRegHorseHoeUnConstr.o
/usr/local/clang6/bin/clang++ -std=gnu++14 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I"../inst/include" -I"`"/Library/Frameworks/R.framework/Resources/bin/Rscript" --vanilla -e "cat(system.file('include', 'src', package = 'StanHeaders'))"`" -DBOOST_RESULT_OF_USE_TR1 -DBOOST_NO_DECLTYPE -DBOOST_DISABLE_ASSERTS -DEIGEN_NO_DEBUG -DBOOST_MATH_OVERFLOW_ERROR_POLICY=errno_on_error -I"/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/BH/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/Rcpp/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include" -I/usr/local/include   -fPIC  -Wall -g -O2 -c stan_files/linRegUnConstr.cc -o stan_files/linRegUnConstr.o
In file included from stan_files/linReg.cc:3:
In file included from stan_files/linReg.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/stan_fit.hpp:15:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/BH/include/boost/random/additive_combine.hpp:27:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/BH/include/boost/random/linear_congruential.hpp:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/BH/include/boost/random/detail/const_mod.hpp:23:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/BH/include/boost/random/detail/large_arithmetic.hpp:19:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/BH/include/boost/random/detail/integer_log2.hpp:19:
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/BH/include/boost/pending/integer_log2.hpp:7:1: warning: This header is deprecated. Use <boost/integer/integer_log2.hpp> instead. [-W#pragma-messages]
BOOST_HEADER_DEPRECATED("<boost/integer/integer_log2.hpp>");
^
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/BH/include/boost/config/header_deprecated.hpp:23:37: note: expanded from macro 'BOOST_HEADER_DEPRECATED'
# define BOOST_HEADER_DEPRECATED(a) BOOST_PRAGMA_MESSAGE("This header is deprecated. Use " a " instead.")
                                    ^
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/BH/include/boost/config/pragma_message.hpp:24:34: note: expanded from macro 'BOOST_PRAGMA_MESSAGE'
# define BOOST_PRAGMA_MESSAGE(x) _Pragma(BOOST_STRINGIZE(message(x)))
                                 ^
<scratch space>:32:2: note: expanded from here
 message("This header is deprecated. Use " "<boost/integer/integer_log2.hpp>" " instead.")
 ^
In file included from stan_files/linRegHorseHoe.cc:3:
In file included from stan_files/linRegHorseHoe.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/stan_fit.hpp:15:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/BH/include/boost/random/additive_combine.hpp:27:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/BH/include/boost/random/linear_congruential.hpp:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/BH/include/boost/random/detail/const_mod.hpp:23:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/BH/include/boost/random/detail/large_arithmetic.hpp:19:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/BH/include/boost/random/detail/integer_log2.hpp:19:
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/BH/include/boost/pending/integer_log2.hpp:7:1: warning: This header is deprecated. Use <boost/integer/integer_log2.hpp> instead. [-W#pragma-messages]
BOOST_HEADER_DEPRECATED("<boost/integer/integer_log2.hpp>");
^
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/BH/include/boost/config/header_deprecated.hpp:23:37: note: expanded from macro 'BOOST_HEADER_DEPRECATED'
# define BOOST_HEADER_DEPRECATED(a) BOOST_PRAGMA_MESSAGE("This header is deprecated. Use " a " instead.")
                                    ^
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/BH/include/boost/config/pragma_message.hpp:24:34: note: expanded from macro 'BOOST_PRAGMA_MESSAGE'
# define BOOST_PRAGMA_MESSAGE(x) _Pragma(BOOST_STRINGIZE(message(x)))
                                 ^
<scratch space>:32:2: note: expanded from here
 message("This header is deprecated. Use " "<boost/integer/integer_log2.hpp>" " instead.")
 ^
In file included from stan_files/linReg.cc:3:
In file included from stan_files/linReg.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/stan_fit.hpp:34:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core.hpp:14:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core/matrix_vari.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat/fun/Eigen_NumTraits.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat/fun/Eigen.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Dense:1:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Core:535:
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/linReg.cc:3:
In file included from stan_files/linReg.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/stan_fit.hpp:34:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core.hpp:14:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core/matrix_vari.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat/fun/Eigen_NumTraits.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat/fun/Eigen.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Dense:2:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/LU:47:
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/linReg.cc:3:
In file included from stan_files/linReg.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/stan_fit.hpp:34:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core.hpp:14:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core/matrix_vari.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat/fun/Eigen_NumTraits.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat/fun/Eigen.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Cholesky:12:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Jacobi:29:
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/linReg.cc:3:
In file included from stan_files/linReg.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/stan_fit.hpp:34:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core.hpp:14:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core/matrix_vari.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat/fun/Eigen_NumTraits.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat/fun/Eigen.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Cholesky:43:
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/linReg.cc:3:
In file included from stan_files/linReg.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/stan_fit.hpp:34:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core.hpp:14:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core/matrix_vari.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat/fun/Eigen_NumTraits.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat/fun/Eigen.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Dense:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/QR:17:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Householder:27:
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/linReg.cc:3:
In file included from stan_files/linReg.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/stan_fit.hpp:34:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core.hpp:14:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core/matrix_vari.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat/fun/Eigen_NumTraits.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat/fun/Eigen.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Dense:5:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/SVD:48:
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/linReg.cc:3:
In file included from stan_files/linReg.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/stan_fit.hpp:34:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core.hpp:14:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core/matrix_vari.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat/fun/Eigen_NumTraits.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat/fun/Eigen.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Dense:6:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Geometry:58:
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/linRegHorseHoe.cc:3:
In file included from stan_files/linRegHorseHoe.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/stan_fit.hpp:34:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core.hpp:14:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core/matrix_vari.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat/fun/Eigen_NumTraits.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat/fun/Eigen.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Dense:1:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Core:535:
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/linReg.cc:3:
In file included from stan_files/linReg.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/stan_fit.hpp:34:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core.hpp:14:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core/matrix_vari.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat/fun/Eigen_NumTraits.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat/fun/Eigen.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Dense:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Eigenvalues:58:
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/linRegUnConstr.cc:3:
In file included from stan_files/linRegUnConstr.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/stan_fit.hpp:15:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/BH/include/boost/random/additive_combine.hpp:27:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/BH/include/boost/random/linear_congruential.hpp:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/BH/include/boost/random/detail/const_mod.hpp:23:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/BH/include/boost/random/detail/large_arithmetic.hpp:19:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/BH/include/boost/random/detail/integer_log2.hpp:19:
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/BH/include/boost/pending/integer_log2.hpp:7:1: warning: This header is deprecated. Use <boost/integer/integer_log2.hpp> instead. [-W#pragma-messages]
BOOST_HEADER_DEPRECATED("<boost/integer/integer_log2.hpp>");
^
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/BH/include/boost/config/header_deprecated.hpp:23:37: note: expanded from macro 'BOOST_HEADER_DEPRECATED'
# define BOOST_HEADER_DEPRECATED(a) BOOST_PRAGMA_MESSAGE("This header is deprecated. Use " a " instead.")
                                    ^
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/BH/include/boost/config/pragma_message.hpp:24:34: note: expanded from macro 'BOOST_PRAGMA_MESSAGE'
# define BOOST_PRAGMA_MESSAGE(x) _Pragma(BOOST_STRINGIZE(message(x)))
                                 ^
<scratch space>:32:2: note: expanded from here
 message("This header is deprecated. Use " "<boost/integer/integer_log2.hpp>" " instead.")
 ^
In file included from stan_files/linRegHorseHoe.cc:3:
In file included from stan_files/linRegHorseHoe.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/stan_fit.hpp:34:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core.hpp:14:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core/matrix_vari.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat/fun/Eigen_NumTraits.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat/fun/Eigen.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Dense:2:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/LU:47:
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/linRegHorseHoe.cc:3:
In file included from stan_files/linRegHorseHoe.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/stan_fit.hpp:34:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core.hpp:14:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core/matrix_vari.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat/fun/Eigen_NumTraits.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat/fun/Eigen.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Cholesky:12:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Jacobi:29:
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/linRegHorseHoe.cc:3:
In file included from stan_files/linRegHorseHoe.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/stan_fit.hpp:34:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core.hpp:14:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core/matrix_vari.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat/fun/Eigen_NumTraits.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat/fun/Eigen.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Cholesky:43:
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/linRegHorseHoe.cc:3:
In file included from stan_files/linRegHorseHoe.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/stan_fit.hpp:34:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core.hpp:14:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core/matrix_vari.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat/fun/Eigen_NumTraits.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat/fun/Eigen.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Dense:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/QR:17:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Householder:27:
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/linRegHorseHoeUnConstr.cc:3:
In file included from stan_files/linRegHorseHoeUnConstr.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/stan_fit.hpp:15:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/BH/include/boost/random/additive_combine.hpp:27:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/BH/include/boost/random/linear_congruential.hpp:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/BH/include/boost/random/detail/const_mod.hpp:23:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/BH/include/boost/random/detail/large_arithmetic.hpp:19:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/BH/include/boost/random/detail/integer_log2.hpp:19:
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/BH/include/boost/pending/integer_log2.hpp:7:1: warning: This header is deprecated. Use <boost/integer/integer_log2.hpp> instead. [-W#pragma-messages]
BOOST_HEADER_DEPRECATED("<boost/integer/integer_log2.hpp>");
^
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/BH/include/boost/config/header_deprecated.hpp:23:37: note: expanded from macro 'BOOST_HEADER_DEPRECATED'
# define BOOST_HEADER_DEPRECATED(a) BOOST_PRAGMA_MESSAGE("This header is deprecated. Use " a " instead.")
                                    ^
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/BH/include/boost/config/pragma_message.hpp:24:34: note: expanded from macro 'BOOST_PRAGMA_MESSAGE'
# define BOOST_PRAGMA_MESSAGE(x) _Pragma(BOOST_STRINGIZE(message(x)))
                                 ^
<scratch space>:32:2: note: expanded from here
 message("This header is deprecated. Use " "<boost/integer/integer_log2.hpp>" " instead.")
 ^
In file included from stan_files/linRegHorseHoe.cc:3:
In file included from stan_files/linRegHorseHoe.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/stan_fit.hpp:34:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core.hpp:14:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core/matrix_vari.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat/fun/Eigen_NumTraits.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat/fun/Eigen.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Dense:5:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/SVD:48:
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/linRegHorseHoe.cc:3:
In file included from stan_files/linRegHorseHoe.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/stan_fit.hpp:34:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core.hpp:14:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core/matrix_vari.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat/fun/Eigen_NumTraits.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat/fun/Eigen.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Dense:6:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Geometry:58:
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/linRegHorseHoe.cc:3:
In file included from stan_files/linRegHorseHoe.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/stan_fit.hpp:34:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core.hpp:14:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core/matrix_vari.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat/fun/Eigen_NumTraits.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat/fun/Eigen.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Dense:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Eigenvalues:58:
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/linRegUnConstr.cc:3:
In file included from stan_files/linRegUnConstr.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/stan_fit.hpp:34:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core.hpp:14:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core/matrix_vari.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat/fun/Eigen_NumTraits.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat/fun/Eigen.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Dense:1:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Core:535:
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/linRegUnConstr.cc:3:
In file included from stan_files/linRegUnConstr.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/stan_fit.hpp:34:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core.hpp:14:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core/matrix_vari.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat/fun/Eigen_NumTraits.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat/fun/Eigen.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Dense:2:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/LU:47:
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/linRegUnConstr.cc:3:
In file included from stan_files/linRegUnConstr.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/stan_fit.hpp:34:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core.hpp:14:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core/matrix_vari.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat/fun/Eigen_NumTraits.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat/fun/Eigen.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Cholesky:12:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Jacobi:29:
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/linRegUnConstr.cc:3:
In file included from stan_files/linRegUnConstr.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/stan_fit.hpp:34:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core.hpp:14:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core/matrix_vari.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat/fun/Eigen_NumTraits.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat/fun/Eigen.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Cholesky:43:
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/linRegUnConstr.cc:3:
In file included from stan_files/linRegUnConstr.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/stan_fit.hpp:34:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core.hpp:14:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core/matrix_vari.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat/fun/Eigen_NumTraits.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat/fun/Eigen.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Dense:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/QR:17:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Householder:27:
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/linRegHorseHoeUnConstr.cc:3:
In file included from stan_files/linRegHorseHoeUnConstr.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/stan_fit.hpp:34:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core.hpp:14:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core/matrix_vari.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat/fun/Eigen_NumTraits.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat/fun/Eigen.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Dense:1:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Core:535:
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/linRegHorseHoeUnConstr.cc:3:
In file included from stan_files/linRegHorseHoeUnConstr.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/stan_fit.hpp:34:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core.hpp:14:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core/matrix_vari.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat/fun/Eigen_NumTraits.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat/fun/Eigen.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Dense:2:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/LU:47:
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/linRegHorseHoeUnConstr.cc:3:
In file included from stan_files/linRegHorseHoeUnConstr.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/stan_fit.hpp:34:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core.hpp:14:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core/matrix_vari.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat/fun/Eigen_NumTraits.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat/fun/Eigen.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Cholesky:12:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Jacobi:29:
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/linRegHorseHoeUnConstr.cc:3:
In file included from stan_files/linRegHorseHoeUnConstr.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/stan_fit.hpp:34:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core.hpp:14:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core/matrix_vari.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat/fun/Eigen_NumTraits.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat/fun/Eigen.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Cholesky:43:
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/linRegUnConstr.cc:3:
In file included from stan_files/linRegUnConstr.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/stan_fit.hpp:34:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core.hpp:14:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core/matrix_vari.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat/fun/Eigen_NumTraits.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat/fun/Eigen.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Dense:5:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/SVD:48:
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/linRegHorseHoeUnConstr.cc:3:
In file included from stan_files/linRegHorseHoeUnConstr.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/stan_fit.hpp:34:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core.hpp:14:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core/matrix_vari.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat/fun/Eigen_NumTraits.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat/fun/Eigen.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Dense:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/QR:17:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Householder:27:
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/linRegHorseHoeUnConstr.cc:3:
In file included from stan_files/linRegHorseHoeUnConstr.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/stan_fit.hpp:34:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core.hpp:14:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core/matrix_vari.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat/fun/Eigen_NumTraits.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat/fun/Eigen.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Dense:5:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/SVD:48:
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/linRegUnConstr.cc:3:
In file included from stan_files/linRegUnConstr.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/stan_fit.hpp:34:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core.hpp:14:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core/matrix_vari.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat/fun/Eigen_NumTraits.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat/fun/Eigen.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Dense:6:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Geometry:58:
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/linRegUnConstr.cc:3:
In file included from stan_files/linRegUnConstr.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/stan_fit.hpp:34:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core.hpp:14:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core/matrix_vari.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat/fun/Eigen_NumTraits.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat/fun/Eigen.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Dense:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Eigenvalues:58:
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/linReg.cc:3:
In file included from stan_files/linReg.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/stan_fit.hpp:34:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat.hpp:12:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat.hpp:96:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat/fun/csr_extract_u.hpp:6:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Sparse:26:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/SparseCore:66:
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/linReg.cc:3:
In file included from stan_files/linReg.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/stan_fit.hpp:34:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat.hpp:12:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat.hpp:96:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat/fun/csr_extract_u.hpp:6:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Sparse:27:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/OrderingMethods:71:
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/linRegHorseHoeUnConstr.cc:3:
In file included from stan_files/linRegHorseHoeUnConstr.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/stan_fit.hpp:34:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core.hpp:14:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core/matrix_vari.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat/fun/Eigen_NumTraits.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat/fun/Eigen.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Dense:6:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Geometry:58:
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/linReg.cc:3:
In file included from stan_files/linReg.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/stan_fit.hpp:34:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat.hpp:12:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat.hpp:96:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat/fun/csr_extract_u.hpp:6:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Sparse:29:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/SparseCholesky:43:
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/linRegHorseHoeUnConstr.cc:3:
In file included from stan_files/linRegHorseHoeUnConstr.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/stan_fit.hpp:34:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core.hpp:14:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core/matrix_vari.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat/fun/Eigen_NumTraits.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat/fun/Eigen.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Dense:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Eigenvalues:58:
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/linReg.cc:3:
In file included from stan_files/linReg.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/stan_fit.hpp:34:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat.hpp:12:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat.hpp:96:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat/fun/csr_extract_u.hpp:6:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Sparse:32:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/SparseQR:35:
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/linReg.cc:3:
In file included from stan_files/linReg.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/stan_fit.hpp:34:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat.hpp:12:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat.hpp:96:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat/fun/csr_extract_u.hpp:6:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Sparse:33:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/IterativeLinearSolvers:46:
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/linRegHorseHoe.cc:3:
In file included from stan_files/linRegHorseHoe.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/stan_fit.hpp:34:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat.hpp:12:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat.hpp:96:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat/fun/csr_extract_u.hpp:6:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Sparse:26:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/SparseCore:66:
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/linRegHorseHoe.cc:3:
In file included from stan_files/linRegHorseHoe.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/stan_fit.hpp:34:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat.hpp:12:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat.hpp:96:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat/fun/csr_extract_u.hpp:6:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Sparse:27:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/OrderingMethods:71:
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/linRegHorseHoe.cc:3:
In file included from stan_files/linRegHorseHoe.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/stan_fit.hpp:34:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat.hpp:12:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat.hpp:96:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat/fun/csr_extract_u.hpp:6:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Sparse:29:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/SparseCholesky:43:
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/linRegHorseHoe.cc:3:
In file included from stan_files/linRegHorseHoe.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/stan_fit.hpp:34:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat.hpp:12:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat.hpp:96:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat/fun/csr_extract_u.hpp:6:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Sparse:32:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/SparseQR:35:
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/linRegHorseHoe.cc:3:
In file included from stan_files/linRegHorseHoe.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/stan_fit.hpp:34:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat.hpp:12:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat.hpp:96:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat/fun/csr_extract_u.hpp:6:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Sparse:33:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/IterativeLinearSolvers:46:
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/linRegUnConstr.cc:3:
In file included from stan_files/linRegUnConstr.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/stan_fit.hpp:34:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat.hpp:12:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat.hpp:96:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat/fun/csr_extract_u.hpp:6:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Sparse:26:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/SparseCore:66:
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/linRegUnConstr.cc:3:
In file included from stan_files/linRegUnConstr.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/stan_fit.hpp:34:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat.hpp:12:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat.hpp:96:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat/fun/csr_extract_u.hpp:6:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Sparse:27:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/OrderingMethods:71:
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/linRegUnConstr.cc:3:
In file included from stan_files/linRegUnConstr.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/stan_fit.hpp:34:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat.hpp:12:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat.hpp:96:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat/fun/csr_extract_u.hpp:6:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Sparse:29:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/SparseCholesky:43:
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/linRegUnConstr.cc:3:
In file included from stan_files/linRegUnConstr.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/stan_fit.hpp:34:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat.hpp:12:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat.hpp:96:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat/fun/csr_extract_u.hpp:6:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Sparse:32:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/SparseQR:35:
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/linRegUnConstr.cc:3:
In file included from stan_files/linRegUnConstr.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/stan_fit.hpp:34:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat.hpp:12:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat.hpp:96:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat/fun/csr_extract_u.hpp:6:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Sparse:33:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/IterativeLinearSolvers:46:
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/linRegHorseHoeUnConstr.cc:3:
In file included from stan_files/linRegHorseHoeUnConstr.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/stan_fit.hpp:34:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat.hpp:12:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat.hpp:96:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat/fun/csr_extract_u.hpp:6:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Sparse:26:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/SparseCore:66:
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/linRegHorseHoeUnConstr.cc:3:
In file included from stan_files/linRegHorseHoeUnConstr.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/stan_fit.hpp:34:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat.hpp:12:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat.hpp:96:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat/fun/csr_extract_u.hpp:6:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Sparse:27:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/OrderingMethods:71:
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/linRegHorseHoeUnConstr.cc:3:
In file included from stan_files/linRegHorseHoeUnConstr.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/stan_fit.hpp:34:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat.hpp:12:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat.hpp:96:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat/fun/csr_extract_u.hpp:6:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Sparse:29:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/SparseCholesky:43:
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/linRegHorseHoeUnConstr.cc:3:
In file included from stan_files/linRegHorseHoeUnConstr.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/stan_fit.hpp:34:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat.hpp:12:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat.hpp:96:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat/fun/csr_extract_u.hpp:6:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Sparse:32:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/SparseQR:35:
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/linRegHorseHoeUnConstr.cc:3:
In file included from stan_files/linRegHorseHoeUnConstr.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/stan_fit.hpp:34:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat.hpp:12:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat.hpp:96:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat/fun/csr_extract_u.hpp:6:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Sparse:33:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/IterativeLinearSolvers:46:
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/linReg.cc:3:
In file included from stan_files/linReg.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/stan_fit.hpp:34:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core.hpp:44:
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core/set_zero_all_adjoints.hpp:14:13: warning: unused function 'set_zero_all_adjoints' [-Wunused-function]
static void set_zero_all_adjoints() {
            ^
In file included from stan_files/linReg.cc:3:
In file included from stan_files/linReg.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/stan_fit.hpp:34:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat.hpp:12:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat.hpp:70:
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat/fun/autocorrelation.hpp:18:8: warning: function 'fft_next_good_size' is not needed and will not be emitted [-Wunneeded-internal-declaration]
size_t fft_next_good_size(size_t N) {
       ^
In file included from stan_files/linRegHorseHoe.cc:3:
In file included from stan_files/linRegHorseHoe.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/stan_fit.hpp:34:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core.hpp:44:
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core/set_zero_all_adjoints.hpp:14:13: warning: unused function 'set_zero_all_adjoints' [-Wunused-function]
static void set_zero_all_adjoints() {
            ^
In file included from stan_files/linRegHorseHoe.cc:3:
In file included from stan_files/linRegHorseHoe.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/stan_fit.hpp:34:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat.hpp:12:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat.hpp:70:
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat/fun/autocorrelation.hpp:18:8: warning: function 'fft_next_good_size' is not needed and will not be emitted [-Wunneeded-internal-declaration]
size_t fft_next_good_size(size_t N) {
       ^
In file included from stan_files/linRegUnConstr.cc:3:
In file included from stan_files/linRegUnConstr.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/stan_fit.hpp:34:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core.hpp:44:
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core/set_zero_all_adjoints.hpp:14:13: warning: unused function 'set_zero_all_adjoints' [-Wunused-function]
static void set_zero_all_adjoints() {
            ^
In file included from stan_files/linRegUnConstr.cc:3:
In file included from stan_files/linRegUnConstr.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/stan_fit.hpp:34:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat.hpp:12:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat.hpp:70:
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat/fun/autocorrelation.hpp:18:8: warning: function 'fft_next_good_size' is not needed and will not be emitted [-Wunneeded-internal-declaration]
size_t fft_next_good_size(size_t N) {
       ^
In file included from stan_files/linRegHorseHoeUnConstr.cc:3:
In file included from stan_files/linRegHorseHoeUnConstr.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/stan_fit.hpp:34:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core.hpp:44:
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core/set_zero_all_adjoints.hpp:14:13: warning: unused function 'set_zero_all_adjoints' [-Wunused-function]
static void set_zero_all_adjoints() {
            ^
In file included from stan_files/linRegHorseHoeUnConstr.cc:3:
In file included from stan_files/linRegHorseHoeUnConstr.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/stan_fit.hpp:34:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat.hpp:12:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat.hpp:70:
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat/fun/autocorrelation.hpp:18:8: warning: function 'fft_next_good_size' is not needed and will not be emitted [-Wunneeded-internal-declaration]
size_t fft_next_good_size(size_t N) {
       ^
16 warnings generated.
/usr/local/clang6/bin/clang++ -std=gnu++14 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I"../inst/include" -I"`"/Library/Frameworks/R.framework/Resources/bin/Rscript" --vanilla -e "cat(system.file('include', 'src', package = 'StanHeaders'))"`" -DBOOST_RESULT_OF_USE_TR1 -DBOOST_NO_DECLTYPE -DBOOST_DISABLE_ASSERTS -DEIGEN_NO_DEBUG -DBOOST_MATH_OVERFLOW_ERROR_POLICY=errno_on_error -I"/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/BH/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/Rcpp/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include" -I/usr/local/include   -fPIC  -Wall -g -O2 -c stan_files/linRegXU.cc -o stan_files/linRegXU.o
16 warnings generated.
/usr/local/clang6/bin/clang++ -std=gnu++14 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I"../inst/include" -I"`"/Library/Frameworks/R.framework/Resources/bin/Rscript" --vanilla -e "cat(system.file('include', 'src', package = 'StanHeaders'))"`" -DBOOST_RESULT_OF_USE_TR1 -DBOOST_NO_DECLTYPE -DBOOST_DISABLE_ASSERTS -DEIGEN_NO_DEBUG -DBOOST_MATH_OVERFLOW_ERROR_POLICY=errno_on_error -I"/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/BH/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/Rcpp/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include" -I/usr/local/include   -fPIC  -Wall -g -O2 -c stan_files/linRegUnConstrXU.cc -o stan_files/linRegUnConstrXU.o
In file included from stan_files/linRegXU.cc:3:
In file included from stan_files/linRegXU.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/stan_fit.hpp:15:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/BH/include/boost/random/additive_combine.hpp:27:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/BH/include/boost/random/linear_congruential.hpp:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/BH/include/boost/random/detail/const_mod.hpp:23:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/BH/include/boost/random/detail/large_arithmetic.hpp:19:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/BH/include/boost/random/detail/integer_log2.hpp:19:
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/BH/include/boost/pending/integer_log2.hpp:7:1: warning: This header is deprecated. Use <boost/integer/integer_log2.hpp> instead. [-W#pragma-messages]
BOOST_HEADER_DEPRECATED("<boost/integer/integer_log2.hpp>");
^
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/BH/include/boost/config/header_deprecated.hpp:23:37: note: expanded from macro 'BOOST_HEADER_DEPRECATED'
# define BOOST_HEADER_DEPRECATED(a) BOOST_PRAGMA_MESSAGE("This header is deprecated. Use " a " instead.")
                                    ^
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/BH/include/boost/config/pragma_message.hpp:24:34: note: expanded from macro 'BOOST_PRAGMA_MESSAGE'
# define BOOST_PRAGMA_MESSAGE(x) _Pragma(BOOST_STRINGIZE(message(x)))
                                 ^
<scratch space>:32:2: note: expanded from here
 message("This header is deprecated. Use " "<boost/integer/integer_log2.hpp>" " instead.")
 ^
16 warnings generated.
In file included from stan_files/linRegUnConstrXU.cc:3:
In file included from stan_files/linRegUnConstrXU.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/stan_fit.hpp:15:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/BH/include/boost/random/additive_combine.hpp:27:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/BH/include/boost/random/linear_congruential.hpp:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/BH/include/boost/random/detail/const_mod.hpp:23:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/BH/include/boost/random/detail/large_arithmetic.hpp:19:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/BH/include/boost/random/detail/integer_log2.hpp:19:
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/BH/include/boost/pending/integer_log2.hpp:7:1: warning: This header is deprecated. Use <boost/integer/integer_log2.hpp> instead. [-W#pragma-messages]
BOOST_HEADER_DEPRECATED("<boost/integer/integer_log2.hpp>");
^
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/BH/include/boost/config/header_deprecated.hpp:23:37: note: expanded from macro 'BOOST_HEADER_DEPRECATED'
# define BOOST_HEADER_DEPRECATED(a) BOOST_PRAGMA_MESSAGE("This header is deprecated. Use " a " instead.")
                                    ^
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/BH/include/boost/config/pragma_message.hpp:24:34: note: expanded from macro 'BOOST_PRAGMA_MESSAGE'
# define BOOST_PRAGMA_MESSAGE(x) _Pragma(BOOST_STRINGIZE(message(x)))
                                 ^
<scratch space>:32:2: note: expanded from here
 message("This header is deprecated. Use " "<boost/integer/integer_log2.hpp>" " instead.")
 ^
In file included from stan_files/linRegXU.cc:3:
In file included from stan_files/linRegXU.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/stan_fit.hpp:34:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core.hpp:14:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core/matrix_vari.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat/fun/Eigen_NumTraits.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat/fun/Eigen.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Dense:1:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Core:535:
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/linRegXU.cc:3:
In file included from stan_files/linRegXU.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/stan_fit.hpp:34:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core.hpp:14:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core/matrix_vari.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat/fun/Eigen_NumTraits.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat/fun/Eigen.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Dense:2:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/LU:47:
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/linRegXU.cc:3:
In file included from stan_files/linRegXU.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/stan_fit.hpp:34:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core.hpp:14:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core/matrix_vari.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat/fun/Eigen_NumTraits.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat/fun/Eigen.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Cholesky:12:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Jacobi:29:
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/linRegXU.cc:3:
In file included from stan_files/linRegXU.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/stan_fit.hpp:34:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core.hpp:14:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core/matrix_vari.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat/fun/Eigen_NumTraits.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat/fun/Eigen.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Cholesky:43:
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/linRegXU.cc:3:
In file included from stan_files/linRegXU.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/stan_fit.hpp:34:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core.hpp:14:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core/matrix_vari.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat/fun/Eigen_NumTraits.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat/fun/Eigen.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Dense:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/QR:17:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Householder:27:
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/linRegXU.cc:3:
In file included from stan_files/linRegXU.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/stan_fit.hpp:34:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core.hpp:14:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core/matrix_vari.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat/fun/Eigen_NumTraits.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat/fun/Eigen.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Dense:5:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/SVD:48:
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
16 warnings generated.
In file included from stan_files/linRegXU.cc:3:
In file included from stan_files/linRegXU.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/stan_fit.hpp:34:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core.hpp:14:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core/matrix_vari.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat/fun/Eigen_NumTraits.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat/fun/Eigen.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Dense:6:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Geometry:58:
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/linRegXU.cc:3:
In file included from stan_files/linRegXU.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/stan_fit.hpp:34:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core.hpp:14:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core/matrix_vari.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat/fun/Eigen_NumTraits.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat/fun/Eigen.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Dense:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Eigenvalues:58:
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/linRegUnConstrXU.cc:3:
In file included from stan_files/linRegUnConstrXU.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/stan_fit.hpp:34:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core.hpp:14:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core/matrix_vari.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat/fun/Eigen_NumTraits.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat/fun/Eigen.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Dense:1:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Core:535:
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/linRegUnConstrXU.cc:3:
In file included from stan_files/linRegUnConstrXU.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/stan_fit.hpp:34:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core.hpp:14:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core/matrix_vari.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat/fun/Eigen_NumTraits.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat/fun/Eigen.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Dense:2:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/LU:47:
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/linRegUnConstrXU.cc:3:
In file included from stan_files/linRegUnConstrXU.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/stan_fit.hpp:34:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core.hpp:14:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core/matrix_vari.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat/fun/Eigen_NumTraits.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat/fun/Eigen.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Cholesky:12:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Jacobi:29:
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/linRegUnConstrXU.cc:3:
In file included from stan_files/linRegUnConstrXU.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/stan_fit.hpp:34:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core.hpp:14:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core/matrix_vari.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat/fun/Eigen_NumTraits.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat/fun/Eigen.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Cholesky:43:
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/linRegUnConstrXU.cc:3:
In file included from stan_files/linRegUnConstrXU.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/stan_fit.hpp:34:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core.hpp:14:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core/matrix_vari.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat/fun/Eigen_NumTraits.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat/fun/Eigen.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Dense:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/QR:17:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Householder:27:
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/linRegUnConstrXU.cc:3:
In file included from stan_files/linRegUnConstrXU.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/stan_fit.hpp:34:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core.hpp:14:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core/matrix_vari.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat/fun/Eigen_NumTraits.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat/fun/Eigen.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Dense:5:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/SVD:48:
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/linRegUnConstrXU.cc:3:
In file included from stan_files/linRegUnConstrXU.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/stan_fit.hpp:34:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core.hpp:14:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core/matrix_vari.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat/fun/Eigen_NumTraits.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat/fun/Eigen.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Dense:6:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Geometry:58:
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/linRegUnConstrXU.cc:3:
In file included from stan_files/linRegUnConstrXU.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/stan_fit.hpp:34:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core.hpp:14:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core/matrix_vari.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat/fun/Eigen_NumTraits.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat/fun/Eigen.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Dense:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Eigenvalues:58:
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/linRegXU.cc:3:
In file included from stan_files/linRegXU.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/stan_fit.hpp:34:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat.hpp:12:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat.hpp:96:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat/fun/csr_extract_u.hpp:6:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Sparse:26:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/SparseCore:66:
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/linRegXU.cc:3:
In file included from stan_files/linRegXU.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/stan_fit.hpp:34:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat.hpp:12:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat.hpp:96:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat/fun/csr_extract_u.hpp:6:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Sparse:27:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/OrderingMethods:71:
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/linRegXU.cc:3:
In file included from stan_files/linRegXU.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/stan_fit.hpp:34:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat.hpp:12:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat.hpp:96:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat/fun/csr_extract_u.hpp:6:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Sparse:29:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/SparseCholesky:43:
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/linRegXU.cc:3:
In file included from stan_files/linRegXU.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/stan_fit.hpp:34:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat.hpp:12:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat.hpp:96:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat/fun/csr_extract_u.hpp:6:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Sparse:32:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/SparseQR:35:
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/linRegXU.cc:3:
In file included from stan_files/linRegXU.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/stan_fit.hpp:34:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat.hpp:12:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat.hpp:96:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat/fun/csr_extract_u.hpp:6:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Sparse:33:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/IterativeLinearSolvers:46:
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/linRegUnConstrXU.cc:3:
In file included from stan_files/linRegUnConstrXU.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/stan_fit.hpp:34:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat.hpp:12:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat.hpp:96:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat/fun/csr_extract_u.hpp:6:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Sparse:26:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/SparseCore:66:
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/linRegUnConstrXU.cc:3:
In file included from stan_files/linRegUnConstrXU.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/stan_fit.hpp:34:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat.hpp:12:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat.hpp:96:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat/fun/csr_extract_u.hpp:6:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Sparse:27:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/OrderingMethods:71:
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/linRegUnConstrXU.cc:3:
In file included from stan_files/linRegUnConstrXU.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/stan_fit.hpp:34:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat.hpp:12:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat.hpp:96:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat/fun/csr_extract_u.hpp:6:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Sparse:29:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/SparseCholesky:43:
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/linRegUnConstrXU.cc:3:
In file included from stan_files/linRegUnConstrXU.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/stan_fit.hpp:34:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat.hpp:12:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat.hpp:96:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat/fun/csr_extract_u.hpp:6:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Sparse:32:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/SparseQR:35:
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/linRegUnConstrXU.cc:3:
In file included from stan_files/linRegUnConstrXU.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/stan_fit.hpp:34:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat.hpp:12:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat.hpp:96:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat/fun/csr_extract_u.hpp:6:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/Sparse:33:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/IterativeLinearSolvers:46:
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/linRegXU.cc:3:
In file included from stan_files/linRegXU.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/stan_fit.hpp:34:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core.hpp:44:
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core/set_zero_all_adjoints.hpp:14:13: warning: unused function 'set_zero_all_adjoints' [-Wunused-function]
static void set_zero_all_adjoints() {
            ^
In file included from stan_files/linRegXU.cc:3:
In file included from stan_files/linRegXU.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/stan_fit.hpp:34:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat.hpp:12:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat.hpp:70:
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat/fun/autocorrelation.hpp:18:8: warning: function 'fft_next_good_size' is not needed and will not be emitted [-Wunneeded-internal-declaration]
size_t fft_next_good_size(size_t N) {
       ^
In file included from stan_files/linRegUnConstrXU.cc:3:
In file included from stan_files/linRegUnConstrXU.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/stan_fit.hpp:34:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core.hpp:44:
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/core/set_zero_all_adjoints.hpp:14:13: warning: unused function 'set_zero_all_adjoints' [-Wunused-function]
static void set_zero_all_adjoints() {
            ^
In file included from stan_files/linRegUnConstrXU.cc:3:
In file included from stan_files/linRegUnConstrXU.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/rstan/include/rstan/stan_fit.hpp:34:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/rev/mat.hpp:12:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat.hpp:70:
/Users/max/github/forks/testthat/revdep/library.noindex/BMSC/StanHeaders/include/stan/math/prim/mat/fun/autocorrelation.hpp:18:8: warning: function 'fft_next_good_size' is not needed and will not be emitted [-Wunneeded-internal-declaration]
size_t fft_next_good_size(size_t N) {
       ^
16 warnings generated.
16 warnings generated.
/usr/local/clang6/bin/clang++ -std=gnu++14 -dynamiclib -Wl,-headerpad_max_install_names -undefined dynamic_lookup -single_module -multiply_defined suppress -L/Library/Frameworks/R.framework/Resources/lib -L/usr/local/lib -o BMSC.so stan_files/linReg.o stan_files/linRegHorseHoe.o stan_files/linRegHorseHoeUnConstr.o stan_files/linRegUnConstr.o stan_files/linRegXU.o stan_files/linRegUnConstrXU.o init.o -F/Library/Frameworks/R.framework/.. -framework R -Wl,-framework -Wl,CoreFoundation
ld: warning: text-based stub file /System/Library/Frameworks//CoreFoundation.framework/CoreFoundation.tbd and library file /System/Library/Frameworks//CoreFoundation.framework/CoreFoundation are out of sync. Falling back to library file for linking.
rm stan_files/linRegXU.cc stan_files/linRegUnConstr.cc stan_files/linRegHorseHoe.cc stan_files/linRegUnConstrXU.cc stan_files/linRegHorseHoeUnConstr.cc stan_files/linReg.cc
installing to /Users/max/github/forks/testthat/revdep/checks.noindex/BMSC/old/BMSC.Rcheck/BMSC/libs
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded
* DONE (BMSC)

```
# ClusterJudge

<details>

* Version: 1.4.0
* Source code: https://github.com/cran/ClusterJudge
* Date/Publication: 2018-11-06
* Number of recursive dependencies: 81

Run `revdep_details(,"ClusterJudge")` for more info

</details>

## Newly broken

*   checking installed package size ... NOTE
    ```
      installed size is  5.4Mb
      sub-directories of 1Mb or more:
        data   5.0Mb
    ```

# curl

<details>

* Version: 3.3
* Source code: https://github.com/cran/curl
* URL: https://github.com/jeroen/curl#readme (devel) https://curl.haxx.se/libcurl/ (upstream)
* BugReports: https://github.com/jeroen/curl/issues
* Date/Publication: 2019-01-10 12:50:03 UTC
* Number of recursive dependencies: 35

Run `revdep_details(,"curl")` for more info

</details>

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      createTcpServer: address already in use
      ── 1. Error: echo large data (@test-echo.R#7)  ─────────────────────────────────
      Failed to create server
      1: curl::curl_echo(handle = handle) at testthat/test-echo.R:7
      2: httpuv::startServer("0.0.0.0", port, list(call = echo_handler))
      3: WebServer$new(host, port, app)
      4: .subset2(public_bind_env, "initialize")(...)
      5: stop("Failed to create server")
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 198 SKIPPED: 1 WARNINGS: 0 FAILED: 1
      1. Error: echo large data (@test-echo.R#7) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

## In both

*   checking compiled code ... NOTE
    ```
    File ‘curl/libs/curl.so’:
      Found non-API call to R: ‘R_new_custom_connection’
    
    Compiled code should not call non-API entry points in R.
    
    See ‘Writing portable packages’ in the ‘Writing R Extensions’ manual.
    ```

# DeLorean

<details>

* Version: 1.5.0
* Source code: https://github.com/cran/DeLorean
* Date/Publication: 2018-10-17 22:30:16 UTC
* Number of recursive dependencies: 124

Run `revdep_details(,"DeLorean")` for more info

</details>

## Newly broken

*   checking installed package size ... NOTE
    ```
      installed size is  7.7Mb
      sub-directories of 1Mb or more:
        libs   5.1Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘lattice’
      All declared Imports should be used.
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

## Newly fixed

*   checking whether package ‘DeLorean’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/max/github/forks/testthat/revdep/checks.noindex/DeLorean/old/DeLorean.Rcheck/00install.out’ for details.
    ```

# drake

<details>

* Version: 7.1.0
* Source code: https://github.com/cran/drake
* URL: https://github.com/ropensci/drake
* BugReports: https://github.com/ropensci/drake/issues
* Date/Publication: 2019-04-07 15:23:01 UTC
* Number of recursive dependencies: 110

Run `revdep_details(,"drake")` for more info

</details>

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      3: run_native_backend(config)
      4: get(paste0("backend_", parallelism), envir = getNamespace("drake"))(config)
      5: loop_build(target = targets[i], config = config, downstream = targets[-seq_len(i)])
      6: conclude_build(build = build, config = config)
      7: handle_build_exceptions(target = target, meta = meta, config = config)
      8: drake_error("Target `", target, "` failed. Call `diagnose(", target, ")` for details. Error message:\n  ", 
             meta$error$message, config = config)
      9: stop(..., call. = FALSE)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 843 SKIPPED: 206 WARNINGS: 0 FAILED: 1
      1. Error: lock_envir works (@test-edge-cases.R#15) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# gastempt

<details>

* Version: 0.4.4
* Source code: https://github.com/cran/gastempt
* URL: http://github.com/dmenne/gastempt
* BugReports: http://github.com/dmenne/gastempt/issues
* Date/Publication: 2019-03-06 16:32:41 UTC
* Number of recursive dependencies: 82

Run `revdep_details(,"gastempt")` for more info

</details>

## Newly broken

*   checking installed package size ... NOTE
    ```
      installed size is  7.9Mb
      sub-directories of 1Mb or more:
        libs   7.5Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘methods’ ‘rstantools’
      All declared Imports should be used.
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

## Newly fixed

*   checking whether package ‘gastempt’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/max/github/forks/testthat/revdep/checks.noindex/gastempt/old/gastempt.Rcheck/00install.out’ for details.
    ```

# ggformula

<details>

* Version: 0.9.1
* Source code: https://github.com/cran/ggformula
* URL: https://github.com/ProjectMOSAIC/ggformula
* BugReports: https://github.com/ProjectMOSAIC/ggformula/issues
* Date/Publication: 2019-01-12 19:00:04 UTC
* Number of recursive dependencies: 160

Run `revdep_details(,"ggformula")` for more info

</details>

## Newly broken

*   checking installed package size ... NOTE
    ```
      installed size is  5.0Mb
      sub-directories of 1Mb or more:
        R     1.0Mb
        doc   2.7Mb
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘tidyr’
      All declared Imports should be used.
    ```

# lime

<details>

* Version: 0.4.1
* Source code: https://github.com/cran/lime
* URL: https://github.com/thomasp85/lime
* BugReports: https://github.com/thomasp85/lime/issues
* Date/Publication: 2018-11-21 12:50:02 UTC
* Number of recursive dependencies: 126

Run `revdep_details(,"lime")` for more info

</details>

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      1: h2o.importFile(path) at testthat/test-h2o.R:12
      2: h2o.importFolder(path, pattern = "", destination_frame = destination_frame, parse, 
             header, sep, col.names, col.types, na.strings = na.strings, decrypt_tool = decrypt_tool, 
             skipped_columns = skipped_columns)
      3: .h2o.__remoteSend(.h2o.__IMPORT, path = path, pattern = pattern)
      4: .h2o.doSafeREST(h2oRestApiVersion = h2oRestApiVersion, urlSuffix = page, parms = .params, 
             method = method)
      5: stop(msg)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 28 SKIPPED: 0 WARNINGS: 1 FAILED: 1
      1. Error: H2OBinomialClassification: lime explanation only produces one entry per case and feature (@test-h2o.R#12) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# markmyassignment

<details>

* Version: 0.8.1
* Source code: https://github.com/cran/markmyassignment
* Date/Publication: 2018-01-17 10:33:29 UTC
* Number of recursive dependencies: 35

Run `revdep_details(,"markmyassignment")` for more info

</details>

## Newly broken

*   checking whether package ‘markmyassignment’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: replacing previous import ‘checkmate::expect_vector’ by ‘testthat::expect_vector’ when loading ‘markmyassignment’
    See ‘/Users/max/github/forks/testthat/revdep/checks.noindex/markmyassignment/new/markmyassignment.Rcheck/00install.out’ for details.
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘lazyeval’
      All declared Imports should be used.
    ```

# mlrMBO

<details>

* Version: 1.1.2
* Source code: https://github.com/cran/mlrMBO
* URL: https://github.com/mlr-org/mlrMBO
* BugReports: https://github.com/mlr-org/mlrMBO/issues
* Date/Publication: 2018-06-21 16:52:29 UTC
* Number of recursive dependencies: 128

Run `revdep_details(,"mlrMBO")` for more info

</details>

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
             prop.points = infill.opt.fun(infill.crit.fun, models = models, control = control, 
                 par.set = par.set, opt.path = opt.path, designs = designs, iter = iter, progress = progress, 
                 ...)
         })
      9: force(expr)
      10: infill.opt.fun(infill.crit.fun, models = models, control = control, par.set = par.set, 
             opt.path = opt.path, designs = designs, iter = iter, progress = progress, ...)
      11: generateDesign(control$infill.opt.focussearch.points, ps.local, randomLHS)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 49 SKIPPED: 0 WARNINGS: 0 FAILED: 1
      1. Error: mbo works with rf (@test_mbo_rf.R#97) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# OUTRIDER

<details>

* Version: 1.0.4
* Source code: https://github.com/cran/OUTRIDER
* URL: https://github.com/gagneurlab/OUTRIDER
* Date/Publication: 2019-03-19
* Number of recursive dependencies: 151

Run `revdep_details(,"OUTRIDER")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    ...
    
    > ### Name: computePvalues
    > ### Title: Calculate P-values
    > ### Aliases: computePvalues computePvalues,OutriderDataSet-method
    > 
    > ### ** Examples
    > 
    > ods <- makeExampleOutriderDataSet()
    > ## Don't show: 
    >     ods <- ods[1:10,1:10]
    > ## End(Don't show)
    > ods <- estimateSizeFactors(ods)
    > ods <- fit(ods)
    > 
    > ods <- computePvalues(ods)
    Warning in socketConnection(host, port, TRUE, TRUE, "a+b", timeout = timeout) :
      port 11166 cannot be opened
    Error in socketConnection(host, port, TRUE, TRUE, "a+b", timeout = timeout) : 
      cannot open the connection
    Calls: computePvalues ... .local -> .bpfork -> .bpforkConnect -> socketConnection
    Execution halted
    ```

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      [1] "Wed Apr 17 20:27:57 2019: Iteration: 10 loss: 3.82142176454402"
      Time difference of 2.188955 secs
      [1] "10 Final nb-AE loss: 3.82142176454402"
      [1] "Evaluation loss: 0.47965280762602"
      [1] "Initial PCA loss: 6.46616282459584"
      [1] "Wed Apr 17 20:28:02 2019: Iteration: 1 loss: 4.81536028479294"
      [1] "Wed Apr 17 20:28:03 2019: Iteration: 2 loss: 4.78999714768799"
      Time difference of 0.8047001 secs
      [1] "2 Final nb-AE loss: 4.78999714768799"
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 82 SKIPPED: 0 WARNINGS: 24 FAILED: 1
      1. Error: Expression filtering (@test_filtering.R#4) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘TxDb.Hsapiens.UCSC.hg19.knownGene’
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Authors@R field gives more than one person with maintainer role:
      Felix Brechtmann <brechtma@in.tum.de> [aut, cre]
      Christian Mertes <mertes@in.tum.de> [aut, cre]
    ```

# parallelMap

<details>

* Version: 1.3
* Source code: https://github.com/cran/parallelMap
* URL: https://github.com/berndbischl/parallelMap
* BugReports: https://github.com/berndbischl/parallelMap/issues
* Date/Publication: 2015-06-10 00:58:31
* Number of recursive dependencies: 31

Run `revdep_details(,"parallelMap")` for more info

</details>

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      3: suppressMessages({
             reg = BatchJobs::makeRegistry(id = basename(fd), file.dir = fd, work.dir = wd)
         })
      4: withCallingHandlers(expr, message = function(c) invokeRestart("muffleMessage"))
      5: BatchJobs::makeRegistry(id = basename(fd), file.dir = fd, work.dir = wd)
      6: dbCreateJobStatusTable(reg)
      7: dbDoQuery(reg, query, flags = "rwc")
      8: stopf("Error in dbDoQuery. %s (%s)", res, query)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 62 SKIPPED: 0 WARNINGS: 288 FAILED: 1
      1. Error: warn on unregisterred level (@test_registerLevels.R#30) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

## In both

*   checking R code for possible problems ... NOTE
    ```
    parallelExport: no visible global function definition for ‘setNames’
    parallelGetOptions: no visible global function definition for
      ‘setNames’
    parallelStop: no visible global function definition for
      ‘getFromNamespace’
    stopWithJobErrorMessages: no visible global function definition for
      ‘head’
    Undefined global functions or variables:
      getFromNamespace head setNames
    Consider adding
      importFrom("stats", "setNames")
      importFrom("utils", "getFromNamespace", "head")
    to your NAMESPACE file.
    ```

# platetools

<details>

* Version: 0.1.1
* Source code: https://github.com/cran/platetools
* URL: https://github.com/swarchal/platetools
* BugReports: https://github.com/swarchal/platetools/issues
* Date/Publication: 2018-06-25 14:03:45 UTC
* Number of recursive dependencies: 42

Run `revdep_details(,"platetools")` for more info

</details>

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ── 1. Error: missing_wells errors when expected (@test-missing_wells.R#20)  ────
      'names' attribute [2] must be the same length as the vector [1]
      1: expect_error(missing_wells(as.list(full), well = full$well), expect_error(missing_wells(full, 
             well = missing$wel))) at testthat/test-missing_wells.R:20
      2: compare_condition(act$cap, act$lab, regexp = regexp, class = class, ...)
      3: sprintf("Expected match: %s\nActual message: %s", encodeString(regexp, quote = "\""), 
             encodeString(cond$message, quote = "\""))
      4: encodeString(regexp, quote = "\"")
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 178 SKIPPED: 4 WARNINGS: 5 FAILED: 1
      1. Error: missing_wells errors when expected (@test-missing_wells.R#20) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# pRoloc

<details>

* Version: 1.22.2
* Source code: https://github.com/cran/pRoloc
* URL: https://github.com/lgatto/pRoloc
* BugReports: https://github.com/lgatto/pRoloc/issues
* Date/Publication: 2019-03-16
* Number of recursive dependencies: 204

Run `revdep_details(,"pRoloc")` for more info

</details>

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
        ER membrane     0       0       0
        Golgi           0       0       0
        Mitochondrion   0       0       0
        PM              0       0       0
        Plastid         0       0       0
        Ribosome        0       0       0
        TGN            13       0       0
        unknown         0     428       0
        vacuole         0       0      21
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 143 SKIPPED: 0 WARNINGS: 3 FAILED: 1
      1. Error: subsetAsDataFrame preserves col/rownames (@test_utils.R#10) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 14.6Mb
      sub-directories of 1Mb or more:
        R     1.1Mb
        doc  12.0Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported objects imported by ':::' calls:
      ‘MLInterfaces:::.macroF1’ ‘MLInterfaces:::.precision’
      ‘MLInterfaces:::.recall’ ‘MLInterfaces:::es2df’
      ‘MSnbase:::.sameNbCol’ ‘MSnbase:::getVariableName’
      ‘MSnbase:::logging’ ‘MSnbase:::nologging’ ‘caret:::predict.plsda’
      See the note in ?`:::` about the use of this operator.
    ```

*   checking R code for possible problems ... NOTE
    ```
    Found the following possibly unsafe calls:
    File ‘pRoloc/R/annotation.R’:
      unlockBinding("params", .pRolocEnv)
    ```

# raustats

<details>

* Version: 0.1.0
* Source code: https://github.com/cran/raustats
* URL: https://github.com/mitcda/raustats
* Date/Publication: 2019-03-13 15:20:03 UTC
* Number of recursive dependencies: 69

Run `revdep_details(,"raustats")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    ...
    Running examples in ‘raustats-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: abs_search
    > ### Title: Search dataset information from the ABS.Stat API
    > ### Aliases: abs_search
    > 
    > ### ** Examples
    > 
    >  ## ABS dataset search
    >  x <- abs_search(pattern = "consumer price index")
    >  x <- abs_search(pattern = "census")
    >  x <- abs_search(pattern = "labour force")
    > 
    >  ## ABS indicator search
    >  x <- abs_search(pattern = "all groups", dataset="CPI")
    >  x <- abs_search(pattern = c("all groups", "capital cities"), dataset="CPI")
    Error in doc_parse_raw(x, encoding = encoding, base_url = base_url, as_html = as_html,  : 
      Entity 'nbsp' not defined [26]
    Calls: abs_search ... read_xml.connection -> read_xml.raw -> doc_parse_raw
    Execution halted
    ```

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 12 marked UTF-8 strings
    ```

# rcreds

<details>

* Version: 0.6.6
* Source code: https://github.com/cran/rcreds
* Date/Publication: 2017-10-27 16:35:21 UTC
* Number of recursive dependencies: 27

Run `revdep_details(,"rcreds")` for more info

</details>

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      Clearing default rcreds db folder, which was previously set to  '/var/folders/lb/xhxqmcrd7gv302_b1pdfykh80000gn/T//RtmpT6BVZD/.rcreds/db_credential_files' 
      Setting the default rcreds db folder to '/var/folders/lb/xhxqmcrd7gv302_b1pdfykh80000gn/T//RtmpT6BVZD/db/some/sub/folder'
      Setting the default rcreds db folder to '/var/folders/lb/xhxqmcrd7gv302_b1pdfykh80000gn/T//RtmpT6BVZD/db/some/sub/folder/with_slash/'
      Clearing default rcreds  folder, which was previously not set 
      Clearing default rcreds  folder, which was previously not set 
      Setting the default rcreds folder to '/var/folders/lb/xhxqmcrd7gv302_b1pdfykh80000gn/T//RtmpT6BVZD/credentials/some/sub/folder'
      Setting the default rcreds folder to '/var/folders/lb/xhxqmcrd7gv302_b1pdfykh80000gn/T//RtmpT6BVZD/credentials/some/sub/folder/with_slash/'
      Folder does not exist. Creating it. 
      Setting the default rcreds folder to '/var/folders/lb/xhxqmcrd7gv302_b1pdfykh80000gn/T//RtmpT6BVZD/testing/default'
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 121 SKIPPED: 0 WARNINGS: 1 FAILED: 1
      1. Failure: Checking Overwriting Abilities (@test-TODOs.R#54) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘stats’ ‘utils’
      All declared Imports should be used.
    ```

# recount

<details>

* Version: 1.8.2
* Source code: https://github.com/cran/recount
* URL: https://github.com/leekgroup/recount
* BugReports: https://support.bioconductor.org/t/recount/
* Date/Publication: 2019-02-16
* Number of recursive dependencies: 157

Run `revdep_details(,"recount")` for more info

</details>

## Newly broken

*   R CMD check timed out
    

## Newly fixed

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      downloaded 535 KB
      
      Loading objects:
        PredictedPhenotypes
      trying URL 'http://duffel.rail.bio/recount/v2/DRP000499/rse_gene.Rdata'
      Content type 'application/octet-stream' length 4636353 bytes (4.4 MB)
      ==================================================
      downloaded 4.4 MB
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 51 SKIPPED: 0 FAILED: 1
      1. Error: (unknown) (@test-annotation.R#8) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘recount-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: find_geo
    > ### Title: Find the GEO accession id for a given SRA run
    > ### Aliases: find_geo
    > 
    > ### ** Examples
    > 
    > ## Find the GEO accession id for for SRX110461
    > find_geo('SRX110461')
    Error: HTTP failure: 429
    {"error":"API rate limit exceeded","api-key":"208.103.64.29","count":"4","limit":"3"}
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘EnsDb.Hsapiens.v79’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 15.6Mb
      sub-directories of 1Mb or more:
        data  12.1Mb
        doc    3.3Mb
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 347 marked UTF-8 strings
    ```

# rentrez

<details>

* Version: 1.2.1
* Source code: https://github.com/cran/rentrez
* URL: http://github.com/ropensci/rentrez
* BugReports: https://github.com/ropensci/rentrez/issues
* Date/Publication: 2018-03-05 11:37:40 UTC
* Number of recursive dependencies: 32

Run `revdep_details(,"rentrez")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    Running examples in ‘rentrez-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: entrez_global_query
    > ### Title: Find the number of records that match a given term across all
    > ###   NCBI Entrez databases
    > ### Aliases: entrez_global_query
    > 
    > ### ** Examples
    > 
    > 
    > NCBI_data_on_best_butterflies_ever <- entrez_global_query(term="Heliconius")
    Error: HTTP failure: 429
    {"error":"API rate limit exceeded","api-key":"208.103.64.29","count":"4","limit":"3"}
    Execution halted
    ```

# scater

<details>

* Version: 1.10.1
* Source code: https://github.com/cran/scater
* URL: http://bioconductor.org/packages/scater/
* BugReports: https://support.bioconductor.org/
* Date/Publication: 2019-01-04
* Number of recursive dependencies: 214

Run `revdep_details(,"scater")` for more info

</details>

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
             switch(type, PSOCK = makePSOCKcluster(names = spec, ...), FORK = makeForkCluster(nnodes = spec, 
                 ...), SOCK = snow::makeSOCKcluster(names = spec, ...), MPI = snow::makeMPIcluster(count = spec, 
                 ...), NWS = snow::makeNWScluster(names = spec, ...), stop("unknown cluster type"))
         })(spec = 3, type = "SOCK", snowlib = "/Users/max/github/forks/testthat/revdep/library.noindex/scater/BiocParallel", 
             master = "localhost", port = 11772L)
      14: snow::makeSOCKcluster(names = spec, ...)
      15: newSOCKnode(names[[i]], options = options, rank = i)
      16: socketConnection(port = port, server = TRUE, blocking = TRUE, open = "a+b")
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 1145 SKIPPED: 0 WARNINGS: 45 FAILED: 1
      1. Error: calcAverage responds to other choices (@test-calc-ave.R#77) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

## In both

*   checking examples ... WARNING
    ```
    ...
    Found the following significant warnings:
    
      Warning: 'calcIsExprs' is deprecated.
      Warning: 'plotQC' is deprecated.
      Warning: 'add_ticks' is deprecated.
      Warning: 'add_ticks' is deprecated.
      Warning: 'add_ticks' is deprecated.
      Warning: 'add_ticks' is deprecated.
      Warning: 'add_ticks' is deprecated.
      Warning: 'add_ticks' is deprecated.
      Warning: 'add_ticks' is deprecated.
      Warning: 'add_ticks' is deprecated.
      Warning: 'add_ticks' is deprecated.
      Warning: 'add_ticks' is deprecated.
      Warning: 'add_ticks' is deprecated.
      Warning: 'readTxResults' is deprecated.
      Warning: 'summariseExprsAcrossFeatures' is deprecated.
      Warning: 'summariseExprsAcrossFeatures' is deprecated.
    Deprecated functions may be defunct as soon as of the next release of
    R.
    See ?Deprecated.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 10.6Mb
      sub-directories of 1Mb or more:
        doc    5.0Mb
        libs   4.9Mb
    ```

# Smisc

<details>

* Version: 0.3.9
* Source code: https://github.com/cran/Smisc
* URL: https://pnnl.github.io/Smisc
* Date/Publication: 2017-11-21 08:42:08 UTC
* Number of recursive dependencies: 16

Run `revdep_details(,"Smisc")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    ...
    $pList[[13]]
    [1] 1 3 4
    
    $pList[[14]]
    [1] 2 3 4
    
    $pList[[15]]
    [1] 1 2 3 4
    
    
    attr(,"class")
    [1] "combolist"
    > 
    > # A parallel job
    > y <- comboList(4, njobs = 2)
    Warning in socketConnection("localhost", port = port, server = TRUE, blocking = TRUE,  :
      port 11161 cannot be opened
    Error in socketConnection("localhost", port = port, server = TRUE, blocking = TRUE,  : 
      cannot open the connection
    Calls: comboList ... makePSOCKcluster -> newPSOCKnode -> socketConnection
    Execution halted
    ```

