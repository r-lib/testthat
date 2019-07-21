# AnnotationBustR

<details>

* Version: 1.2
* Source code: https://github.com/cran/AnnotationBustR
* URL: https://github.com/sborstein/AnnotationBustR, https://www.ncbi.nlm.nih.gov/nuccore, https://en.wikipedia.org/wiki/FASTA_format
* BugReports: https://github.com/sborstein/AnnotationBustR/issues
* Date/Publication: 2018-04-09 22:16:03 UTC
* Number of recursive dependencies: 33

Run `revdep_details(,"AnnotationBustR")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    Running examples in ‘AnnotationBustR-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: FindLongestSeq
    > ### Title: Find the longest sequence for each species from a list of
    > ###   GenBank accession numbers.
    > ### Aliases: FindLongestSeq
    > 
    > ### ** Examples
    > 
    > #a vector of 4 genbank accessions, there are two for each species.
    > genbank.accessions<-c("KP978059.1","KP978060.1","JX516105.1","JX516111.1")
    > #returns the longest sequence respectively for the two species.
    > long.seq.result<-FindLongestSeq(genbank.accessions)
    Warning in file(file, "r") :
      cannot open URL 'https://eutils.ncbi.nlm.nih.gov/entrez/eutils/efetch.fcgi?db=nucleotide&id=KP978059,KP978060,JX516105,JX516111&rettype=gb&retmode=text': HTTP status was '429 Unknown Error'
    Error in file(file, "r") : 
      cannot open the connection to 'https://eutils.ncbi.nlm.nih.gov/entrez/eutils/efetch.fcgi?db=nucleotide&id=KP978059,KP978060,JX516105,JX516111&rettype=gb&retmode=text'
    Calls: FindLongestSeq -> <Anonymous> -> scan -> file
    Execution halted
    ```

# eggCounts

<details>

* Version: 2.2
* Source code: https://github.com/cran/eggCounts
* URL: https://www.math.uzh.ch/pages/eggcount/
* Date/Publication: 2019-06-27 07:40:03 UTC
* Number of recursive dependencies: 65

Run `revdep_details(,"eggCounts")` for more info

</details>

## Newly broken

*   checking whether package ‘eggCounts’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/max/github/forks/testthat/revdep/checks.noindex/eggCounts/new/eggCounts.Rcheck/00install.out’ for details.
    ```

## Newly fixed

*   checking installed package size ... NOTE
    ```
      installed size is  8.1Mb
      sub-directories of 1Mb or more:
        libs   7.5Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘methods’
      All declared Imports should be used.
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘eggCountsExtra’
    ```

## Installation

### Devel

```
* installing *source* package ‘eggCounts’ ...
** package ‘eggCounts’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
"/Library/Frameworks/R.framework/Resources/bin/Rscript" -e "source(file.path('..', 'tools', 'make_cc.R')); make_cc(commandArgs(TRUE))" stan_files/indefficacy.stan
"/Library/Frameworks/R.framework/Resources/bin/Rscript" -e "source(file.path('..', 'tools', 'make_cc.R')); make_cc(commandArgs(TRUE))" stan_files/nb.stan
"/Library/Frameworks/R.framework/Resources/bin/Rscript" -e "source(file.path('..', 'tools', 'make_cc.R')); make_cc(commandArgs(TRUE))" stan_files/paired.stan
"/Library/Frameworks/R.framework/Resources/bin/Rscript" -e "source(file.path('..', 'tools', 'make_cc.R')); make_cc(commandArgs(TRUE))" stan_files/simple.stan
Wrote C++ file "stan_files/indefficacy.cc"
Wrote C++ file "stan_files/nb.cc"
Wrote C++ file "stan_files/simple.cc"
Wrote C++ file "stan_files/paired.cc"
"/Library/Frameworks/R.framework/Resources/bin/Rscript" -e "source(file.path('..', 'tools', 'make_cc.R')); make_cc(commandArgs(TRUE))" stan_files/unpaired.stan
"/Library/Frameworks/R.framework/Resources/bin/Rscript" -e "source(file.path('..', 'tools', 'make_cc.R')); make_cc(commandArgs(TRUE))" stan_files/zinb.stan
"/Library/Frameworks/R.framework/Resources/bin/Rscript" -e "source(file.path('..', 'tools', 'make_cc.R')); make_cc(commandArgs(TRUE))" stan_files/zipaired.stan
"/Library/Frameworks/R.framework/Resources/bin/Rscript" -e "source(file.path('..', 'tools', 'make_cc.R')); make_cc(commandArgs(TRUE))" stan_files/ziunpaired.stan


Wrote C++ file "stan_files/zinb.cc"
Wrote C++ file "stan_files/zipaired.cc"
Wrote C++ file "stan_files/unpaired.cc"
Wrote C++ file "stan_files/ziunpaired.cc"
Error in readRDS("/var/folders/lb/xhxqmcrd7gv302_b1pdfykh80000gn/T//Rtmpja69kx/file17d8252d7488f") : 
  error reading from connection
Calls: .Last -> readRDS
Execution halted
/usr/local/clang6/bin/clang++ -std=gnu++14 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I"../inst/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/src" -DBOOST_DISABLE_ASSERTS -DEIGEN_NO_DEBUG -DBOOST_MATH_OVERFLOW_ERROR_POLICY=errno_on_error -I"/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/Rcpp/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/BH/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c init.cpp -o init.o
make: *** [stan_files/unpaired.cc] Error 1
make: *** Waiting for unfinished jobs....
rm stan_files/ziunpaired.cc stan_files/unpaired.cc stan_files/indefficacy.cc stan_files/paired.cc stan_files/simple.cc stan_files/zinb.cc stan_files/zipaired.cc stan_files/nb.cc
ERROR: compilation failed for package ‘eggCounts’
* removing ‘/Users/max/github/forks/testthat/revdep/checks.noindex/eggCounts/new/eggCounts.Rcheck/eggCounts’

```
### CRAN

```
* installing *source* package ‘eggCounts’ ...
** package ‘eggCounts’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
"/Library/Frameworks/R.framework/Resources/bin/Rscript" -e "source(file.path('..', 'tools', 'make_cc.R')); make_cc(commandArgs(TRUE))" stan_files/indefficacy.stan
"/Library/Frameworks/R.framework/Resources/bin/Rscript" -e "source(file.path('..', 'tools', 'make_cc.R')); make_cc(commandArgs(TRUE))" stan_files/nb.stan
"/Library/Frameworks/R.framework/Resources/bin/Rscript" -e "source(file.path('..', 'tools', 'make_cc.R')); make_cc(commandArgs(TRUE))" stan_files/paired.stan
"/Library/Frameworks/R.framework/Resources/bin/Rscript" -e "source(file.path('..', 'tools', 'make_cc.R')); make_cc(commandArgs(TRUE))" stan_files/simple.stan
Wrote C++ file "stan_files/nb.cc"
Wrote C++ file "stan_files/simple.cc"
Wrote C++ file "stan_files/paired.cc"
Wrote C++ file "stan_files/indefficacy.cc"
"/Library/Frameworks/R.framework/Resources/bin/Rscript" -e "source(file.path('..', 'tools', 'make_cc.R')); make_cc(commandArgs(TRUE))" stan_files/unpaired.stan
"/Library/Frameworks/R.framework/Resources/bin/Rscript" -e "source(file.path('..', 'tools', 'make_cc.R')); make_cc(commandArgs(TRUE))" stan_files/zinb.stan
"/Library/Frameworks/R.framework/Resources/bin/Rscript" -e "source(file.path('..', 'tools', 'make_cc.R')); make_cc(commandArgs(TRUE))" stan_files/zipaired.stan
"/Library/Frameworks/R.framework/Resources/bin/Rscript" -e "source(file.path('..', 'tools', 'make_cc.R')); make_cc(commandArgs(TRUE))" stan_files/ziunpaired.stan


Wrote C++ file "stan_files/zinb.cc"
Wrote C++ file "stan_files/unpaired.cc"
Wrote C++ file "stan_files/zipaired.cc"
Wrote C++ file "stan_files/ziunpaired.cc"
/usr/local/clang6/bin/clang++ -std=gnu++14 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I"../inst/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/src" -DBOOST_DISABLE_ASSERTS -DEIGEN_NO_DEBUG -DBOOST_MATH_OVERFLOW_ERROR_POLICY=errno_on_error -I"/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/Rcpp/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/BH/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c init.cpp -o init.o


/usr/local/clang6/bin/clang++ -std=gnu++14 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I"../inst/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/src" -DBOOST_DISABLE_ASSERTS -DEIGEN_NO_DEBUG -DBOOST_MATH_OVERFLOW_ERROR_POLICY=errno_on_error -I"/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/Rcpp/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/BH/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c stan_files/indefficacy.cc -o stan_files/indefficacy.o


/usr/local/clang6/bin/clang++ -std=gnu++14 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I"../inst/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/src" -DBOOST_DISABLE_ASSERTS -DEIGEN_NO_DEBUG -DBOOST_MATH_OVERFLOW_ERROR_POLICY=errno_on_error -I"/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/Rcpp/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/BH/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c stan_files/nb.cc -o stan_files/nb.o


/usr/local/clang6/bin/clang++ -std=gnu++14 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I"../inst/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/src" -DBOOST_DISABLE_ASSERTS -DEIGEN_NO_DEBUG -DBOOST_MATH_OVERFLOW_ERROR_POLICY=errno_on_error -I"/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/Rcpp/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/BH/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c stan_files/paired.cc -o stan_files/paired.o


/usr/local/clang6/bin/clang++ -std=gnu++14 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I"../inst/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/src" -DBOOST_DISABLE_ASSERTS -DEIGEN_NO_DEBUG -DBOOST_MATH_OVERFLOW_ERROR_POLICY=errno_on_error -I"/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/Rcpp/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/BH/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c stan_files/simple.cc -o stan_files/simple.o


In file included from stan_files/indefficacy.cc:3:
In file included from stan_files/indefficacy.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:15:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/BH/include/boost/random/additive_combine.hpp:27:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/BH/include/boost/random/linear_congruential.hpp:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/BH/include/boost/random/detail/const_mod.hpp:23:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/BH/include/boost/random/detail/large_arithmetic.hpp:19:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/BH/include/boost/random/detail/integer_log2.hpp:19:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/BH/include/boost/pending/integer_log2.hpp:7:1: warning: This header is deprecated. Use <boost/integer/integer_log2.hpp> instead. [-W#pragma-messages]
BOOST_HEADER_DEPRECATED("<boost/integer/integer_log2.hpp>");
^
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/BH/include/boost/config/header_deprecated.hpp:23:37: note: expanded from macro 'BOOST_HEADER_DEPRECATED'
# define BOOST_HEADER_DEPRECATED(a) BOOST_PRAGMA_MESSAGE("This header is deprecated. Use " a " instead.")
                                    ^
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/BH/include/boost/config/pragma_message.hpp:24:34: note: expanded from macro 'BOOST_PRAGMA_MESSAGE'
# define BOOST_PRAGMA_MESSAGE(x) _Pragma(BOOST_STRINGIZE(message(x)))
                                 ^
<scratch space>:73:2: note: expanded from here
 message("This header is deprecated. Use " "<boost/integer/integer_log2.hpp>" " instead.")
 ^
In file included from stan_files/nb.cc:3:
In file included from stan_files/nb.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:15:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/BH/include/boost/random/additive_combine.hpp:27:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/BH/include/boost/random/linear_congruential.hpp:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/BH/include/boost/random/detail/const_mod.hpp:23:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/BH/include/boost/random/detail/large_arithmetic.hpp:19:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/BH/include/boost/random/detail/integer_log2.hpp:19:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/BH/include/boost/pending/integer_log2.hpp:7:1: warning: This header is deprecated. Use <boost/integer/integer_log2.hpp> instead. [-W#pragma-messages]
BOOST_HEADER_DEPRECATED("<boost/integer/integer_log2.hpp>");
^
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/BH/include/boost/config/header_deprecated.hpp:23:37: note: expanded from macro 'BOOST_HEADER_DEPRECATED'
# define BOOST_HEADER_DEPRECATED(a) BOOST_PRAGMA_MESSAGE("This header is deprecated. Use " a " instead.")
                                    ^
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/BH/include/boost/config/pragma_message.hpp:24:34: note: expanded from macro 'BOOST_PRAGMA_MESSAGE'
# define BOOST_PRAGMA_MESSAGE(x) _Pragma(BOOST_STRINGIZE(message(x)))
                                 ^
<scratch space>:73:2: note: expanded from here
 message("This header is deprecated. Use " "<boost/integer/integer_log2.hpp>" " instead.")
 ^
In file included from stan_files/paired.cc:3:
In file included from stan_files/paired.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:15:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/BH/include/boost/random/additive_combine.hpp:27:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/BH/include/boost/random/linear_congruential.hpp:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/BH/include/boost/random/detail/const_mod.hpp:23:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/BH/include/boost/random/detail/large_arithmetic.hpp:19:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/BH/include/boost/random/detail/integer_log2.hpp:19:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/BH/include/boost/pending/integer_log2.hpp:7:1: warning: This header is deprecated. Use <boost/integer/integer_log2.hpp> instead. [-W#pragma-messages]
BOOST_HEADER_DEPRECATED("<boost/integer/integer_log2.hpp>");
^
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/BH/include/boost/config/header_deprecated.hpp:23:37: note: expanded from macro 'BOOST_HEADER_DEPRECATED'
# define BOOST_HEADER_DEPRECATED(a) BOOST_PRAGMA_MESSAGE("This header is deprecated. Use " a " instead.")
                                    ^
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/BH/include/boost/config/pragma_message.hpp:24:34: note: expanded from macro 'BOOST_PRAGMA_MESSAGE'
# define BOOST_PRAGMA_MESSAGE(x) _Pragma(BOOST_STRINGIZE(message(x)))
                                 ^
<scratch space>:73:2: note: expanded from here
 message("This header is deprecated. Use " "<boost/integer/integer_log2.hpp>" " instead.")
 ^
In file included from stan_files/indefficacy.cc:3:
In file included from stan_files/indefficacy.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Dense:1:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Core:535:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/indefficacy.cc:3:
In file included from stan_files/indefficacy.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Dense:2:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/LU:47:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/indefficacy.cc:3:
In file included from stan_files/indefficacy.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Cholesky:12:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Jacobi:29:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/indefficacy.cc:3:
In file included from stan_files/indefficacy.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Cholesky:43:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/indefficacy.cc:3:
In file included from stan_files/indefficacy.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Dense:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/QR:17:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Householder:27:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/indefficacy.cc:3:
In file included from stan_files/indefficacy.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Dense:5:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/SVD:48:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/simple.cc:3:
In file included from stan_files/simple.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:15:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/BH/include/boost/random/additive_combine.hpp:27:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/BH/include/boost/random/linear_congruential.hpp:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/BH/include/boost/random/detail/const_mod.hpp:23:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/BH/include/boost/random/detail/large_arithmetic.hpp:19:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/BH/include/boost/random/detail/integer_log2.hpp:19:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/BH/include/boost/pending/integer_log2.hpp:7:1: warning: This header is deprecated. Use <boost/integer/integer_log2.hpp> instead. [-W#pragma-messages]
BOOST_HEADER_DEPRECATED("<boost/integer/integer_log2.hpp>");
^
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/BH/include/boost/config/header_deprecated.hpp:23:37: note: expanded from macro 'BOOST_HEADER_DEPRECATED'
# define BOOST_HEADER_DEPRECATED(a) BOOST_PRAGMA_MESSAGE("This header is deprecated. Use " a " instead.")
                                    ^
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/BH/include/boost/config/pragma_message.hpp:24:34: note: expanded from macro 'BOOST_PRAGMA_MESSAGE'
# define BOOST_PRAGMA_MESSAGE(x) _Pragma(BOOST_STRINGIZE(message(x)))
                                 ^
<scratch space>:73:2: note: expanded from here
 message("This header is deprecated. Use " "<boost/integer/integer_log2.hpp>" " instead.")
 ^
In file included from stan_files/indefficacy.cc:3:
In file included from stan_files/indefficacy.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Dense:6:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Geometry:58:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/indefficacy.cc:3:
In file included from stan_files/indefficacy.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Dense:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Eigenvalues:58:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/nb.cc:3:
In file included from stan_files/nb.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Dense:1:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Core:535:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/nb.cc:3:
In file included from stan_files/nb.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Dense:2:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/LU:47:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/nb.cc:3:
In file included from stan_files/nb.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Cholesky:12:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Jacobi:29:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/nb.cc:3:
In file included from stan_files/nb.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Cholesky:43:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/nb.cc:3:
In file included from stan_files/nb.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Dense:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/QR:17:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Householder:27:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/indefficacy.cc:3:
In file included from stan_files/indefficacy.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Sparse:26:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/SparseCore:66:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/indefficacy.cc:3:
In file included from stan_files/indefficacy.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Sparse:27:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/OrderingMethods:71:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/indefficacy.cc:3:
In file included from stan_files/indefficacy.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Sparse:29:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/SparseCholesky:43:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/nb.cc:3:
In file included from stan_files/nb.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Dense:5:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/SVD:48:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/indefficacy.cc:3:
In file included from stan_files/indefficacy.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Sparse:32:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/SparseQR:35:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/indefficacy.cc:3:
In file included from stan_files/indefficacy.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Sparse:33:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/IterativeLinearSolvers:46:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/indefficacy.cc:3:
In file included from stan_files/indefficacy.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:32:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/CholmodSupport:45:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/nb.cc:3:
In file included from stan_files/nb.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Dense:6:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Geometry:58:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/indefficacy.cc:3:
In file included from stan_files/indefficacy.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:35:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/unsupported/Eigen/KroneckerProduct:34:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/nb.cc:3:
In file included from stan_files/nb.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Dense:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Eigenvalues:58:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/indefficacy.cc:3:
In file included from stan_files/indefficacy.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:39:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/unsupported/Eigen/Polynomials:135:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/indefficacy.cc:3:
In file included from stan_files/indefficacy.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:40:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/unsupported/Eigen/SparseExtra:51:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/nb.cc:3:
In file included from stan_files/nb.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Sparse:26:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/SparseCore:66:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/nb.cc:3:
In file included from stan_files/nb.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Sparse:27:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/OrderingMethods:71:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/nb.cc:3:
In file included from stan_files/nb.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Sparse:29:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/SparseCholesky:43:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/nb.cc:3:
In file included from stan_files/nb.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Sparse:32:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/SparseQR:35:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/nb.cc:3:
In file included from stan_files/nb.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Sparse:33:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/IterativeLinearSolvers:46:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/nb.cc:3:
In file included from stan_files/nb.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:32:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/CholmodSupport:45:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/paired.cc:3:
In file included from stan_files/paired.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Dense:1:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Core:535:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/paired.cc:3:
In file included from stan_files/paired.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Dense:2:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/LU:47:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/paired.cc:3:
In file included from stan_files/paired.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Cholesky:12:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Jacobi:29:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/nb.cc:3:
In file included from stan_files/nb.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:35:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/unsupported/Eigen/KroneckerProduct:34:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/paired.cc:3:
In file included from stan_files/paired.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Cholesky:43:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/paired.cc:3:
In file included from stan_files/paired.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Dense:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/QR:17:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Householder:27:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/nb.cc:3:
In file included from stan_files/nb.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:39:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/unsupported/Eigen/Polynomials:135:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/paired.cc:3:
In file included from stan_files/paired.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Dense:5:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/SVD:48:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/nb.cc:3:
In file included from stan_files/nb.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:40:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/unsupported/Eigen/SparseExtra:51:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/paired.cc:3:
In file included from stan_files/paired.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Dense:6:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Geometry:58:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/paired.cc:3:
In file included from stan_files/paired.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Dense:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Eigenvalues:58:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/simple.cc:3:
In file included from stan_files/simple.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Dense:1:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Core:535:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/simple.cc:3:
In file included from stan_files/simple.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Dense:2:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/LU:47:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/paired.cc:3:
In file included from stan_files/paired.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hppIn file included from stan_files/simple.cc::22:
In file included from 3:
In file included from stan_files/simple.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Sparse:26:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/SparseCore:66:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10::25:
30: warning: In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Cholesky:12:
In file included from pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Jacobi:29:
    #pragma clang diagnostic pop
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10                             ^
:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/paired.cc:3:
In file included from stan_files/paired.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Sparse:27:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/OrderingMethods:71:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/simple.cc:3:
In file included from stan_files/simple.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Cholesky:43:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/paired.cc:3:
In file included from stan_files/paired.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Sparse:29:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/SparseCholesky:43:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/simple.cc:3:
In file included from stan_files/simple.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Dense:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/QR:17:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Householder:27:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/paired.cc:3:
In file included from stan_files/paired.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Sparse:32:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/SparseQR:35:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/paired.cc:3:
In file included from stan_files/paired.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Sparse:33:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/IterativeLinearSolvers:46:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/paired.cc:3:
In file included from stan_files/paired.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:32:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/CholmodSupport:45:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/simple.cc:3:
In file included from stan_files/simple.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Dense:5:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/SVD:48:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/paired.cc:3:
In file included from stan_files/paired.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:35:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/unsupported/Eigen/KroneckerProduct:34:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/simple.cc:3:
In file included from stan_files/simple.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Dense:6:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Geometry:58:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/simple.cc:3:
In file included from stan_files/simple.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Dense:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Eigenvalues:58:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/paired.cc:3:
In file included from stan_files/paired.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:39:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/unsupported/Eigen/Polynomials:135:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/paired.cc:3:
In file included from stan_files/paired.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:40:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/unsupported/Eigen/SparseExtra:51:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/simple.cc:3:
In file included from stan_files/simple.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Sparse:26:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/SparseCore:66:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/simple.cc:3:
In file included from stan_files/simple.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Sparse:27:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/OrderingMethods:71:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/simple.cc:3:
In file included from stan_files/simple.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Sparse:29:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/SparseCholesky:43:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/simple.cc:3:
In file included from stan_files/simple.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Sparse:32:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/SparseQR:35:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/simple.cc:3:
In file included from stan_files/simple.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Sparse:33:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/IterativeLinearSolvers:46:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/simple.cc:3:
In file included from stan_files/simple.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:32:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/CholmodSupport:45:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/simple.cc:3:
In file included from stan_files/simple.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:35:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/unsupported/Eigen/KroneckerProduct:34:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/simple.cc:3:
In file included from stan_files/simple.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:39:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/unsupported/Eigen/Polynomials:135:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/simple.cc:3:
In file included from stan_files/simple.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:40:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/unsupported/Eigen/SparseExtra:51:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/indefficacy.cc:3:
In file included from stan_files/indefficacy.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:35:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/stan/math/rev/mat.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/stan/math/rev/core.hpp:45:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/stan/math/rev/core/set_zero_all_adjoints.hpp:14:13: warning: unused function 'set_zero_all_adjoints' [-Wunused-function]
static void set_zero_all_adjoints() {
            ^
In file included from stan_files/indefficacy.cc:3:
In file included from stan_files/indefficacy.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:35:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/stan/math/rev/mat.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/stan/math/rev/core.hpp:46:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/stan/math/rev/core/set_zero_all_adjoints_nested.hpp:17:13: warning: 'static' function 'set_zero_all_adjoints_nested' declared in header file should be declared 'static inline' [-Wunneeded-internal-declaration]
static void set_zero_all_adjoints_nested() {
            ^
In file included from stan_files/indefficacy.cc:3:
In file included from stan_files/indefficacy.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:35:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/stan/math/rev/mat.hpp:12:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/stan/math/prim/mat.hpp:336:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/stan/math/prim/mat/prob/poisson_log_glm_log.hpp:5:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/stan/math/prim/mat/prob/poisson_log_glm_lpmf.hpp:64:59: warning: unused typedef 'T_alpha_val' [-Wunused-local-typedef]
      typename partials_return_type<T_alpha>::type>::type T_alpha_val;
                                                          ^
In file included from stan_files/indefficacy.cc:3:
stan_files/indefficacy.hpp:178:24: warning: unused typedef 'local_scalar_t__' [-Wunused-local-typedef]
        typedef double local_scalar_t__;
                       ^
In file included from stan_files/nb.cc:3:
In file included from stan_files/nb.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:35:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/stan/math/rev/mat.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/stan/math/rev/core.hpp:45:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/stan/math/rev/core/set_zero_all_adjoints.hpp:14:13: warning: unused function 'set_zero_all_adjoints' [-Wunused-function]
static void set_zero_all_adjoints() {
            ^
In file included from stan_files/nb.cc:3:
In file included from stan_files/nb.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:35:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/stan/math/rev/mat.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/stan/math/rev/core.hpp:46:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/stan/math/rev/core/set_zero_all_adjoints_nested.hpp:17:13: warning: 'static' function 'set_zero_all_adjoints_nested' declared in header file should be declared 'static inline' [-Wunneeded-internal-declaration]
static void set_zero_all_adjoints_nested() {
            ^
In file included from stan_files/nb.cc:3:
In file included from stan_files/nb.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:35:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/stan/math/rev/mat.hpp:12:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/stan/math/prim/mat.hpp:336:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/stan/math/prim/mat/prob/poisson_log_glm_log.hpp:5:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/stan/math/prim/mat/prob/poisson_log_glm_lpmf.hpp:64:59: warning: unused typedef 'T_alpha_val' [-Wunused-local-typedef]
      typename partials_return_type<T_alpha>::type>::type T_alpha_val;
                                                          ^
In file included from stan_files/nb.cc:3:
stan_files/nb.hpp:147:24: warning: unused typedef 'local_scalar_t__' [-Wunused-local-typedef]
        typedef double local_scalar_t__;
                       ^
In file included from stan_files/paired.cc:3:
In file included from stan_files/paired.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:35:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/stan/math/rev/mat.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/stan/math/rev/core.hpp:45:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/stan/math/rev/core/set_zero_all_adjoints.hpp:14:13: warning: unused function 'set_zero_all_adjoints' [-Wunused-function]
static void set_zero_all_adjoints() {
            ^
In file included from stan_files/paired.cc:3:
In file included from stan_files/paired.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:35:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/stan/math/rev/mat.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/stan/math/rev/core.hpp:46:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/stan/math/rev/core/set_zero_all_adjoints_nested.hpp:17:13: warning: 'static' function 'set_zero_all_adjoints_nested' declared in header file should be declared 'static inline' [-Wunneeded-internal-declaration]
static void set_zero_all_adjoints_nested() {
            ^
In file included from stan_files/paired.cc:3:
In file included from stan_files/paired.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:35:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/stan/math/rev/mat.hpp:12:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/stan/math/prim/mat.hpp:336:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/stan/math/prim/mat/prob/poisson_log_glm_log.hpp:5:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/stan/math/prim/mat/prob/poisson_log_glm_lpmf.hpp:64:59: warning: unused typedef 'T_alpha_val' [-Wunused-local-typedef]
      typename partials_return_type<T_alpha>::type>::type T_alpha_val;
                                                          ^
In file included from stan_files/paired.cc:3:
stan_files/paired.hpp:173:24: warning: unused typedef 'local_scalar_t__' [-Wunused-local-typedef]
        typedef double local_scalar_t__;
                       ^
In file included from stan_files/simple.cc:3:
In file included from stan_files/simple.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:35:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/stan/math/rev/mat.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/stan/math/rev/core.hpp:45:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/stan/math/rev/core/set_zero_all_adjoints.hpp:14:13: warning: unused function 'set_zero_all_adjoints' [-Wunused-function]
static void set_zero_all_adjoints() {
            ^
In file included from stan_files/simple.cc:3:
In file included from stan_files/simple.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:35:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/stan/math/rev/mat.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/stan/math/rev/core.hpp:46:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/stan/math/rev/core/set_zero_all_adjoints_nested.hpp:17:13: warning: 'static' function 'set_zero_all_adjoints_nested' declared in header file should be declared 'static inline' [-Wunneeded-internal-declaration]
static void set_zero_all_adjoints_nested() {
            ^
In file included from stan_files/simple.cc:3:
In file included from stan_files/simple.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:35:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/stan/math/rev/mat.hpp:12:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/stan/math/prim/mat.hpp:336:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/stan/math/prim/mat/prob/poisson_log_glm_log.hpp:5:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/stan/math/prim/mat/prob/poisson_log_glm_lpmf.hpp:64:59: warning: unused typedef 'T_alpha_val' [-Wunused-local-typedef]
      typename partials_return_type<T_alpha>::type>::type T_alpha_val;
                                                          ^
In file included from stan_files/simple.cc:3:
stan_files/simple.hpp:168:24: warning: unused typedef 'local_scalar_t__' [-Wunused-local-typedef]
        typedef double local_scalar_t__;
                       ^
22 warnings generated.
/usr/local/clang6/bin/clang++ -std=gnu++14 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I"../inst/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/src" -DBOOST_DISABLE_ASSERTS -DEIGEN_NO_DEBUG -DBOOST_MATH_OVERFLOW_ERROR_POLICY=errno_on_error -I"/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/Rcpp/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/BH/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c stan_files/unpaired.cc -o stan_files/unpaired.o


22 warnings generated.
/usr/local/clang6/bin/clang++ -std=gnu++14 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I"../inst/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/src" -DBOOST_DISABLE_ASSERTS -DEIGEN_NO_DEBUG -DBOOST_MATH_OVERFLOW_ERROR_POLICY=errno_on_error -I"/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/Rcpp/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/BH/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c stan_files/zinb.cc -o stan_files/zinb.o


22 warnings generated.
/usr/local/clang6/bin/clang++ -std=gnu++14 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I"../inst/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/src" -DBOOST_DISABLE_ASSERTS -DEIGEN_NO_DEBUG -DBOOST_MATH_OVERFLOW_ERROR_POLICY=errno_on_error -I"/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/Rcpp/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/BH/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c stan_files/zipaired.cc -o stan_files/zipaired.o
22 warnings generated.


/usr/local/clang6/bin/clang++ -std=gnu++14 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I"../inst/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/src" -DBOOST_DISABLE_ASSERTS -DEIGEN_NO_DEBUG -DBOOST_MATH_OVERFLOW_ERROR_POLICY=errno_on_error -I"/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/Rcpp/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/BH/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c stan_files/ziunpaired.cc -o stan_files/ziunpaired.o
In file included from stan_files/unpaired.cc:3:
In file included from stan_files/unpaired.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:15:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/BH/include/boost/random/additive_combine.hpp:27:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/BH/include/boost/random/linear_congruential.hpp:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/BH/include/boost/random/detail/const_mod.hpp:23:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/BH/include/boost/random/detail/large_arithmetic.hpp:19:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/BH/include/boost/random/detail/integer_log2.hpp:19:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/BH/include/boost/pending/integer_log2.hpp:7:1: warning: This header is deprecated. Use <boost/integer/integer_log2.hpp> instead. [-W#pragma-messages]
BOOST_HEADER_DEPRECATED("<boost/integer/integer_log2.hpp>");
^
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/BH/include/boost/config/header_deprecated.hpp:23:37: note: expanded from macro 'BOOST_HEADER_DEPRECATED'
# define BOOST_HEADER_DEPRECATED(a) BOOST_PRAGMA_MESSAGE("This header is deprecated. Use " a " instead.")
                                    ^
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/BH/include/boost/config/pragma_message.hpp:24:34: note: expanded from macro 'BOOST_PRAGMA_MESSAGE'
# define BOOST_PRAGMA_MESSAGE(x) _Pragma(BOOST_STRINGIZE(message(x)))
                                 ^
<scratch space>:73:2: note: expanded from here
 message("This header is deprecated. Use " "<boost/integer/integer_log2.hpp>" " instead.")
 ^
In file included from stan_files/zinb.cc:3:
In file included from stan_files/zinb.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:15:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/BH/include/boost/random/additive_combine.hpp:27:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/BH/include/boost/random/linear_congruential.hpp:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/BH/include/boost/random/detail/const_mod.hpp:23:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/BH/include/boost/random/detail/large_arithmetic.hpp:19:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/BH/include/boost/random/detail/integer_log2.hpp:19:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/BH/include/boost/pending/integer_log2.hpp:7:1: warning: This header is deprecated. Use <boost/integer/integer_log2.hpp> instead. [-W#pragma-messages]
BOOST_HEADER_DEPRECATED("<boost/integer/integer_log2.hpp>");
^
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/BH/include/boost/config/header_deprecated.hpp:23:37: note: expanded from macro 'BOOST_HEADER_DEPRECATED'
# define BOOST_HEADER_DEPRECATED(a) BOOST_PRAGMA_MESSAGE("This header is deprecated. Use " a " instead.")
                                    ^
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/BH/include/boost/config/pragma_message.hpp:24:34: note: expanded from macro 'BOOST_PRAGMA_MESSAGE'
# define BOOST_PRAGMA_MESSAGE(x) _Pragma(BOOST_STRINGIZE(message(x)))
                                 ^
<scratch space>:73:2: note: expanded from here
 message("This header is deprecated. Use " "<boost/integer/integer_log2.hpp>" " instead.")
 ^
In file included from stan_files/unpaired.cc:3:
In file included from stan_files/unpaired.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Dense:1:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Core:535:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/unpaired.cc:3:
In file included from stan_files/unpaired.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Dense:2:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/LU:47:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/unpaired.cc:3:
In file included from stan_files/unpaired.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Cholesky:12:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Jacobi:29:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/unpaired.cc:3:
In file included from stan_files/unpaired.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Cholesky:43:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/unpaired.cc:3:
In file included from stan_files/unpaired.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Dense:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/QR:17:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Householder:27:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/unpaired.cc:3:
In file included from stan_files/unpaired.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Dense:5:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/SVD:48:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/unpaired.cc:3:
In file included from stan_files/unpaired.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Dense:6:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Geometry:58:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/unpaired.cc:3:
In file included from stan_files/unpaired.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Dense:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Eigenvalues:58:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/unpaired.cc:3:
In file included from stan_files/unpaired.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Sparse:26:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/SparseCore:66:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/unpaired.cc:3:
In file included from stan_files/unpaired.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Sparse:27:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/OrderingMethods:71:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/zipaired.cc:3:
In file included from stan_files/zipaired.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:15:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/BH/include/boost/random/additive_combine.hpp:27:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/BH/include/boost/random/linear_congruential.hpp:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/BH/include/boost/random/detail/const_mod.hpp:23:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/BH/include/boost/random/detail/large_arithmetic.hpp:19:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/BH/include/boost/random/detail/integer_log2.hpp:19:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/BH/include/boost/pending/integer_log2.hpp:7:1: warning: This header is deprecated. Use <boost/integer/integer_log2.hpp> instead. [-W#pragma-messages]
BOOST_HEADER_DEPRECATED("<boost/integer/integer_log2.hpp>");
^
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/BH/include/boost/config/header_deprecated.hpp:23:37: note: expanded from macro 'BOOST_HEADER_DEPRECATED'
# define BOOST_HEADER_DEPRECATED(a) BOOST_PRAGMA_MESSAGE("This header is deprecated. Use " a " instead.")
                                    ^
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/BH/include/boost/config/pragma_message.hpp:24:34: note: expanded from macro 'BOOST_PRAGMA_MESSAGE'
# define BOOST_PRAGMA_MESSAGE(x) _Pragma(BOOST_STRINGIZE(message(x)))
                                 ^
<scratch space>:73:2: note: expanded from here
 message("This header is deprecated. Use " "<boost/integer/integer_log2.hpp>" " instead.")
 ^
In file included from stan_files/unpaired.cc:3:
In file included from stan_files/unpaired.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Sparse:29:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/SparseCholesky:43:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/unpaired.cc:3:
In file included from stan_files/unpaired.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Sparse:32:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/SparseQR:35:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/unpaired.cc:3:
In file included from stan_files/unpaired.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Sparse:33:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/IterativeLinearSolvers:46:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/unpaired.cc:3:
In file included from stan_files/unpaired.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:32:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/CholmodSupport:45:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/unpaired.cc:3:
In file included from stan_files/unpaired.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:35:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/unsupported/Eigen/KroneckerProduct:34:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/unpaired.cc:3:
In file included from stan_files/unpaired.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:39:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/unsupported/Eigen/Polynomials:135:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/unpaired.cc:3:
In file included from stan_files/unpaired.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:40:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/unsupported/Eigen/SparseExtra:51:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/ziunpaired.cc:3:
In file included from stan_files/ziunpaired.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:15:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/BH/include/boost/random/additive_combine.hpp:27:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/BH/include/boost/random/linear_congruential.hpp:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/BH/include/boost/random/detail/const_mod.hpp:23:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/BH/include/boost/random/detail/large_arithmetic.hpp:19:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/BH/include/boost/random/detail/integer_log2.hpp:19:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/BH/include/boost/pending/integer_log2.hpp:7:1: warning: This header is deprecated. Use <boost/integer/integer_log2.hpp> instead. [-W#pragma-messages]
BOOST_HEADER_DEPRECATED("<boost/integer/integer_log2.hpp>");
^
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/BH/include/boost/config/header_deprecated.hpp:23:37: note: expanded from macro 'BOOST_HEADER_DEPRECATED'
# define BOOST_HEADER_DEPRECATED(a) BOOST_PRAGMA_MESSAGE("This header is deprecated. Use " a " instead.")
                                    ^
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/BH/include/boost/config/pragma_message.hpp:24:34: note: expanded from macro 'BOOST_PRAGMA_MESSAGE'
# define BOOST_PRAGMA_MESSAGE(x) _Pragma(BOOST_STRINGIZE(message(x)))
                                 ^
<scratch space>:73:2: note: expanded from here
 message("This header is deprecated. Use " "<boost/integer/integer_log2.hpp>" " instead.")
 ^
In file included from stan_files/zinb.cc:3:
In file included from stan_files/zinb.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Dense:1:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Core:535:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/zinb.cc:3:
In file included from stan_files/zinb.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Dense:2:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/LU:47:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/zinb.cc:3:
In file included from stan_files/zinb.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Cholesky:12:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Jacobi:29:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/zinb.cc:3:
In file included from stan_files/zinb.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Cholesky:43:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/zinb.cc:3:
In file included from stan_files/zinb.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Dense:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/QR:17:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Householder:27:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/zinb.cc:3:
In file included from stan_files/zinb.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Dense:5:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/SVD:48:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/zinb.cc:3:
In file included from stan_files/zinb.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Dense:6:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Geometry:58:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/zinb.cc:3:
In file included from stan_files/zinb.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Dense:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Eigenvalues:58:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/zipaired.cc:3:
In file included from stan_files/zipaired.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Dense:1:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Core:535:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/zipaired.cc:3:
In file included from stan_files/zipaired.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Dense:2:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/LU:47:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/zipaired.cc:3:
In file included from stan_files/zipaired.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Cholesky:12:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Jacobi:29:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/zinb.cc:3:
In file included from stan_files/zinb.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Sparse:26:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/SparseCore:66:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/zipaired.cc:3:
In file included from stan_files/zipaired.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Cholesky:43:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/zinb.cc:3:
In file included from stan_files/zinb.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Sparse:27:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/OrderingMethods:71:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/zipaired.cc:3:
In file included from stan_files/zipaired.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Dense:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/QR:17:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Householder:27:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/zinb.cc:3:
In file included from stan_files/zinb.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Sparse:29:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/SparseCholesky:43:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/zinb.cc:3:
In file included from stan_files/zinb.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Sparse:32:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/SparseQR:35:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/zinb.cc:3:
In file included from stan_files/zinb.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Sparse:33:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/IterativeLinearSolvers:46:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/zinb.cc:3:
In file included from stan_files/zinb.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:32:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/CholmodSupport:45:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/zipaired.cc:3:
In file included from stan_files/zipaired.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Dense:5:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/SVD:48:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/zinb.cc:3:
In file included from stan_files/zinb.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:35:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/unsupported/Eigen/KroneckerProduct:34:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/zipaired.cc:3:
In file included from stan_files/zipaired.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Dense:6:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Geometry:58:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/zipaired.cc:3:
In file included from stan_files/zipaired.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Dense:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Eigenvalues:58:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/ziunpaired.cc:3:
In file included from stan_files/ziunpaired.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Dense:1:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Core:535:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/zinb.cc:3:
In file included from stan_files/zinb.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:39:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/unsupported/Eigen/Polynomials:135:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/ziunpaired.cc:3:
In file included from stan_files/ziunpaired.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Dense:2:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/LU:47:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/ziunpaired.cc:3:
In file included from stan_files/ziunpaired.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Cholesky:12:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Jacobi:29:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/zinb.cc:3:
In file included from stan_files/zinb.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:40:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/unsupported/Eigen/SparseExtra:51:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/ziunpaired.cc:3:
In file included from stan_files/ziunpaired.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Cholesky:43:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/ziunpaired.cc:3:
In file included from stan_files/ziunpaired.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Dense:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/QR:17:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Householder:27:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/zipaired.cc:3:
In file included from stan_files/zipaired.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Sparse:26:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/SparseCore:66:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/zipaired.cc:3:
In file included from stan_files/zipaired.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Sparse:27:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/OrderingMethods:71:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/zipaired.cc:3:
In file included from stan_files/zipaired.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Sparse:29:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/SparseCholesky:43:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/ziunpaired.cc:3:
In file included from stan_files/ziunpaired.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Dense:5:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/SVD:48:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/zipaired.cc:3:
In file included from stan_files/zipaired.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Sparse:32:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/SparseQR:35:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/zipaired.cc:3:
In file included from stan_files/zipaired.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Sparse:33:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/IterativeLinearSolvers:46:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/zipaired.cc:3:
In file included from stan_files/zipaired.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:32:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/CholmodSupport:45:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/ziunpaired.cc:3:
In file included from stan_files/ziunpaired.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Dense:6:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Geometry:58:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/ziunpaired.cc:3:
In file included from stan_files/ziunpaired.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Dense:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Eigenvalues:58:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/zipaired.cc:3:
In file included from stan_files/zipaired.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:35:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/unsupported/Eigen/KroneckerProduct:34:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/zipaired.cc:3:
In file included from stan_files/zipaired.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:39:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/unsupported/Eigen/Polynomials:135:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/ziunpaired.cc:3:
In file included from stan_files/ziunpaired.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Sparse:26:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/SparseCore:66:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/zipaired.cc:3:
In file included from stan_files/zipaired.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:40:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/unsupported/Eigen/SparseExtra:51:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/ziunpaired.cc:3:
In file included from stan_files/ziunpaired.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Sparse:27:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/OrderingMethods:71:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/ziunpaired.cc:3:
In file included from stan_files/ziunpaired.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Sparse:29:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/SparseCholesky:43:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/ziunpaired.cc:3:
In file included from stan_files/ziunpaired.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Sparse:32:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/SparseQR:35:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/ziunpaired.cc:3:
In file included from stan_files/ziunpaired.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/Sparse:33:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/IterativeLinearSolvers:46:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/ziunpaired.cc:3:
In file included from stan_files/ziunpaired.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:32:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/CholmodSupport:45:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/ziunpaired.cc:3:
In file included from stan_files/ziunpaired.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:35:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/unsupported/Eigen/KroneckerProduct:34:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/ziunpaired.cc:3:
In file included from stan_files/ziunpaired.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:39:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/unsupported/Eigen/Polynomials:135:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/ziunpaired.cc:3:
In file included from stan_files/ziunpaired.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/RcppEigenForward.h:40:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/unsupported/Eigen/SparseExtra:51:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/unpaired.cc:3:
In file included from stan_files/unpaired.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:35:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/stan/math/rev/mat.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/stan/math/rev/core.hpp:45:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/stan/math/rev/core/set_zero_all_adjoints.hpp:14:13: warning: unused function 'set_zero_all_adjoints' [-Wunused-function]
static void set_zero_all_adjoints() {
            ^
In file included from stan_files/unpaired.cc:3:
In file included from stan_files/unpaired.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:35:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/stan/math/rev/mat.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/stan/math/rev/core.hpp:46:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/stan/math/rev/core/set_zero_all_adjoints_nested.hpp:17:13: warning: 'static' function 'set_zero_all_adjoints_nested' declared in header file should be declared 'static inline' [-Wunneeded-internal-declaration]
static void set_zero_all_adjoints_nested() {
            ^
In file included from stan_files/unpaired.cc:3:
In file included from stan_files/unpaired.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:35:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/stan/math/rev/mat.hpp:12:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/stan/math/prim/mat.hpp:336:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/stan/math/prim/mat/prob/poisson_log_glm_log.hpp:5:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/stan/math/prim/mat/prob/poisson_log_glm_lpmf.hpp:64:59: warning: unused typedef 'T_alpha_val' [-Wunused-local-typedef]
      typename partials_return_type<T_alpha>::type>::type T_alpha_val;
                                                          ^
In file included from stan_files/unpaired.cc:3:
stan_files/unpaired.hpp:184:24: warning: unused typedef 'local_scalar_t__' [-Wunused-local-typedef]
        typedef double local_scalar_t__;
                       ^
In file included from stan_files/zinb.cc:3:
In file included from stan_files/zinb.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:35:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/stan/math/rev/mat.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/stan/math/rev/core.hpp:45:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/stan/math/rev/core/set_zero_all_adjoints.hpp:14:13: warning: unused function 'set_zero_all_adjoints' [-Wunused-function]
static void set_zero_all_adjoints() {
            ^
In file included from stan_files/zinb.cc:3:
In file included from stan_files/zinb.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:35:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/stan/math/rev/mat.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/stan/math/rev/core.hpp:46:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/stan/math/rev/core/set_zero_all_adjoints_nested.hpp:17:13: warning: 'static' function 'set_zero_all_adjoints_nested' declared in header file should be declared 'static inline' [-Wunneeded-internal-declaration]
static void set_zero_all_adjoints_nested() {
            ^
In file included from stan_files/zinb.cc:3:
In file included from stan_files/zinb.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:35:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/stan/math/rev/mat.hpp:12:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/stan/math/prim/mat.hpp:336:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/stan/math/prim/mat/prob/poisson_log_glm_log.hpp:5:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/stan/math/prim/mat/prob/poisson_log_glm_lpmf.hpp:64:59: warning: unused typedef 'T_alpha_val' [-Wunused-local-typedef]
      typename partials_return_type<T_alpha>::type>::type T_alpha_val;
                                                          ^
In file included from stan_files/zinb.cc:3:
stan_files/zinb.hpp:149:24: warning: unused typedef 'local_scalar_t__' [-Wunused-local-typedef]
        typedef double local_scalar_t__;
                       ^
In file included from stan_files/zipaired.cc:3:
In file included from stan_files/zipaired.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:35:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/stan/math/rev/mat.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/stan/math/rev/core.hpp:45:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/stan/math/rev/core/set_zero_all_adjoints.hpp:14:13: warning: unused function 'set_zero_all_adjoints' [-Wunused-function]
static void set_zero_all_adjoints() {
            ^
In file included from stan_files/zipaired.cc:3:
In file included from stan_files/zipaired.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:35:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/stan/math/rev/mat.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/stan/math/rev/core.hpp:46:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/stan/math/rev/core/set_zero_all_adjoints_nested.hpp:17:13: warning: 'static' function 'set_zero_all_adjoints_nested' declared in header file should be declared 'static inline' [-Wunneeded-internal-declaration]
static void set_zero_all_adjoints_nested() {
            ^
In file included from stan_files/zipaired.cc:3:
In file included from stan_files/zipaired.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:35:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/stan/math/rev/mat.hpp:12:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/stan/math/prim/mat.hpp:336:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/stan/math/prim/mat/prob/poisson_log_glm_log.hpp:5:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/stan/math/prim/mat/prob/poisson_log_glm_lpmf.hpp:64:59: warning: unused typedef 'T_alpha_val' [-Wunused-local-typedef]
      typename partials_return_type<T_alpha>::type>::type T_alpha_val;
                                                          ^
In file included from stan_files/zipaired.cc:3:
stan_files/zipaired.hpp:175:24: warning: unused typedef 'local_scalar_t__' [-Wunused-local-typedef]
        typedef double local_scalar_t__;
                       ^
In file included from stan_files/ziunpaired.cc:3:
In file included from stan_files/ziunpaired.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:35:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/stan/math/rev/mat.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/stan/math/rev/core.hpp:45:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/stan/math/rev/core/set_zero_all_adjoints.hpp:14:13: warning: unused function 'set_zero_all_adjoints' [-Wunused-function]
static void set_zero_all_adjoints() {
            ^
In file included from stan_files/ziunpaired.cc:3:
In file included from stan_files/ziunpaired.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:35:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/stan/math/rev/mat.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/stan/math/rev/core.hpp:46:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/stan/math/rev/core/set_zero_all_adjoints_nested.hpp:17:13: warning: 'static' function 'set_zero_all_adjoints_nested' declared in header file should be declared 'static inline' [-Wunneeded-internal-declaration]
static void set_zero_all_adjoints_nested() {
            ^
In file included from stan_files/ziunpaired.cc:3:
In file included from stan_files/ziunpaired.hpp:21:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/rstan/include/rstan/stan_fit.hpp:35:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/stan/math/rev/mat.hpp:12:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/stan/math/prim/mat.hpp:336:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/stan/math/prim/mat/prob/poisson_log_glm_log.hpp:5:
/Users/max/github/forks/testthat/revdep/library.noindex/eggCounts/StanHeaders/include/stan/math/prim/mat/prob/poisson_log_glm_lpmf.hpp:64:59: warning: unused typedef 'T_alpha_val' [-Wunused-local-typedef]
      typename partials_return_type<T_alpha>::type>::type T_alpha_val;
                                                          ^
In file included from stan_files/ziunpaired.cc:3:
stan_files/ziunpaired.hpp:186:24: warning: unused typedef 'local_scalar_t__' [-Wunused-local-typedef]
        typedef double local_scalar_t__;
                       ^
22 warnings generated.
22 warnings generated.
22 warnings generated.
22 warnings generated.
/usr/local/clang6/bin/clang++ -std=gnu++14 -dynamiclib -Wl,-headerpad_max_install_names -undefined dynamic_lookup -single_module -multiply_defined suppress -L/Library/Frameworks/R.framework/Resources/lib -L/usr/local/lib -o eggCounts.so stan_files/indefficacy.o stan_files/nb.o stan_files/paired.o stan_files/simple.o stan_files/unpaired.o stan_files/zinb.o stan_files/zipaired.o stan_files/ziunpaired.o init.o -F/Library/Frameworks/R.framework/.. -framework R -Wl,-framework -Wl,CoreFoundation
ld: warning: text-based stub file /System/Library/Frameworks//CoreFoundation.framework/CoreFoundation.tbd and library file /System/Library/Frameworks//CoreFoundation.framework/CoreFoundation are out of sync. Falling back to library file for linking.
rm stan_files/ziunpaired.cc stan_files/unpaired.cc stan_files/indefficacy.cc stan_files/paired.cc stan_files/simple.cc stan_files/zinb.cc stan_files/zipaired.cc stan_files/nb.cc
installing to /Users/max/github/forks/testthat/revdep/checks.noindex/eggCounts/old/eggCounts.Rcheck/00LOCK-eggCounts/00new/eggCounts/libs
** R
** data
** demo
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
** checking absolute paths in shared objects and dynamic libraries
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (eggCounts)

```
# FLightR

<details>

* Version: 0.4.9
* Source code: https://github.com/cran/FLightR
* URL: https://CRAN.R-project.org/package=FLightR
* BugReports: http://github.com/eldarrak/FLightR/issues
* Date/Publication: 2019-06-14 16:30:24 UTC
* Number of recursive dependencies: 98

Run `revdep_details(,"FLightR")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    ...
     checking dusk 13
     checking dusk 14
     checking dusk 15
    
    
    calibration method used: parametric.slope 
    > 
    > Grid<-make.grid(left=0, bottom=50, right=10, top=56,
    +   distance.from.land.allowed.to.use=c(-Inf, Inf),
    +   distance.from.land.allowed.to.stay=c(-Inf, Inf))
    > 
    > all.in<-make.prerun.object(Proc.data, Grid, start=c(5.43, 52.93),
    +                              Calibration=Calibration, threads=2)
    likelihood correction turned off as no correction found in the calibration
    making cluster
    Warning in socketConnection("localhost", port = port, server = TRUE, blocking = TRUE,  :
      port 11835 cannot be opened
    Error in socketConnection("localhost", port = port, server = TRUE, blocking = TRUE,  : 
      cannot open the connection
    Calls: make.prerun.object ... makePSOCKcluster -> newPSOCKnode -> socketConnection
    Execution halted
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘rgdal’
      All declared Imports should be used.
    ```

# ipc

<details>

* Version: 0.1.3
* Source code: https://github.com/cran/ipc
* URL: https://github.com/fellstat/ipc
* BugReports: https://github.com/fellstat/ipc/issues
* Date/Publication: 2019-06-23 06:00:03 UTC
* Number of recursive dependencies: 43

Run `revdep_details(,"ipc")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    ...
    > 
    > ### ** Examples
    > 
    > library(future)
    > strategy <- "future::multisession"
    > plan(strategy)
    Warning in socketConnection("localhost", port = port, server = TRUE, blocking = TRUE,  :
      port 11678 cannot be opened
    Error in socketConnection("localhost", port = port, server = TRUE, blocking = TRUE,  : 
      Failed to launch and connect to R worker on local machine ‘localhost’ from local machine ‘imp.atlanticbb.net’.
     * The error produced by socketConnection() was: ‘cannot open the connection’
     * In addition, socketConnection() produced 1 warning(s):
       - Warning #1: ‘port 11678 cannot be opened’ (which suggests that this port is either already occupied by another process or blocked by the firewall on your local machine)
     * The localhost socket connection that failed to connect to the R worker used port 11678 using a communication timeout of 120 seconds and a connection timeout of 120 seconds.
     * Worker launch call: '/Library/Frameworks/R.framework/Resources/bin/Rscript' --default-packages=datasets,utils,grDevices,graphics,stats,methods -e '#label=UNKNOWN:12559:imp.atlanticbb.net:max' -e 'try(cat(Sys.getpid(),file="/var/folders/lb/xhxqmcrd7gv302_b1pdfykh80000gn/T//RtmpKaJ36o/future.parent=12559.310f2d4baa5f.pid"), silent = TRUE)' -e 'parallel:::.slaveRSOCK()' MASTER=localhost PORT=11678 OUT=/dev/null TIMEOUT=120 XDR=TRUE.
     * Worker (PID 12675) was successfully killed: TRUE
     * Troubleshooting suggestions:
       - Suggestion #1: Set 'verbose=TRUE' to see more details.
       - Suggestion #2: Set 'outfile=NULL' to see output from worker.
    Calls: plan ... tryCatchList -> tryCatchOne -> <Anonymous> -> <Anonymous>
    Execution halted
    ```

# lme4

<details>

* Version: 1.1-21
* Source code: https://github.com/cran/lme4
* URL: https://github.com/lme4/lme4/
* BugReports: https://github.com/lme4/lme4/issues
* Date/Publication: 2019-03-05 22:40:10 UTC
* Number of recursive dependencies: 90

Run `revdep_details(,"lme4")` for more info

</details>

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/bootMer.R’ failed.
    Last 13 lines of output:
      +         boo01P <- bootMer(fm1, mySumm, nsim = 10, parallel="multicore", ncpus=2)
      +     }
      + 
      +     ## works in Solaris from an interactive console but not ???
      +     ##   via R CMD BATCH
      +     if (Sys.info()["sysname"] != "SunOS")
      +         boo01P.snow <- bootMer(fm1, mySumm, nsim = 10, parallel="snow", ncpus=2)
      + }
      Error in socketConnection("localhost", port = port, server = TRUE, blocking = TRUE,  : 
        cannot open the connection
      Calls: bootMer -> <Anonymous> -> newPSOCKnode -> socketConnection
      In addition: Warning message:
      In socketConnection("localhost", port = port, server = TRUE, blocking = TRUE,  :
        port 11482 cannot be opened
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.0Mb
      sub-directories of 1Mb or more:
        R          1.4Mb
        doc        2.4Mb
        testdata   1.6Mb
    ```

# metaBMA

<details>

* Version: 0.6.1
* Source code: https://github.com/cran/metaBMA
* URL: https://github.com/danheck/metaBMA
* Date/Publication: 2019-07-10 07:50:03 UTC
* Number of recursive dependencies: 69

Run `revdep_details(,"metaBMA")` for more info

</details>

## Newly broken

*   checking installed package size ... NOTE
    ```
      installed size is  8.3Mb
      sub-directories of 1Mb or more:
        libs   7.9Mb
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

## Newly fixed

*   checking whether package ‘metaBMA’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/max/github/forks/testthat/revdep/checks.noindex/metaBMA/old/metaBMA.Rcheck/00install.out’ for details.
    ```

# MetaStan

<details>

* Version: 0.1.0
* Source code: https://github.com/cran/MetaStan
* URL: http://github.com/gunhanb/MetaStan
* BugReports: http://github.com/gunhanb/MetaStan/issues
* Date/Publication: 2019-05-12 04:30:03 UTC
* Number of recursive dependencies: 68

Run `revdep_details(,"MetaStan")` for more info

</details>

## Newly broken

*   checking whether package ‘MetaStan’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/max/github/forks/testthat/revdep/checks.noindex/MetaStan/new/MetaStan.Rcheck/00install.out’ for details.
    ```

## Newly fixed

*   checking installed package size ... NOTE
    ```
      installed size is  5.7Mb
      sub-directories of 1Mb or more:
        libs   5.5Mb
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

## Installation

### Devel

```
* installing *source* package ‘MetaStan’ ...
** package ‘MetaStan’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
"/Library/Frameworks/R.framework/Resources/bin/Rscript" -e "source(file.path('..', 'tools', 'make_cc.R')); make_cc(commandArgs(TRUE))" stan_files/AB_Emax.stan
"/Library/Frameworks/R.framework/Resources/bin/Rscript" -e "source(file.path('..', 'tools', 'make_cc.R')); make_cc(commandArgs(TRUE))" stan_files/BNHM_Higgins.stan
"/Library/Frameworks/R.framework/Resources/bin/Rscript" -e "source(file.path('..', 'tools', 'make_cc.R')); make_cc(commandArgs(TRUE))" stan_files/BNHM_Smith.stan
"/Library/Frameworks/R.framework/Resources/bin/Rscript" -e "source(file.path('..', 'tools', 'make_cc.R')); make_cc(commandArgs(TRUE))" stan_files/Beta_binomial.stan
Wrote C++ file "stan_files/Beta_binomial.cc"
Wrote C++ file "stan_files/BNHM_Smith.cc"
Wrote C++ file "stan_files/BNHM_Higgins.cc"
Wrote C++ file "stan_files/AB_Emax.cc"
Error in readRDS("/var/folders/lb/xhxqmcrd7gv302_b1pdfykh80000gn/T//Rtmpja69kx/file17d823ecb405c") : 
  error reading from connection
Calls: .Last -> readRDS
Execution halted
make: *** [stan_files/BNHM_Smith.cc] Error 1
make: *** Waiting for unfinished jobs....
rm stan_files/AB_Emax.cc stan_files/BNHM_Higgins.cc stan_files/Beta_binomial.cc stan_files/BNHM_Smith.cc
ERROR: compilation failed for package ‘MetaStan’
* removing ‘/Users/max/github/forks/testthat/revdep/checks.noindex/MetaStan/new/MetaStan.Rcheck/MetaStan’

```
### CRAN

```
* installing *source* package ‘MetaStan’ ...
** package ‘MetaStan’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
"/Library/Frameworks/R.framework/Resources/bin/Rscript" -e "source(file.path('..', 'tools', 'make_cc.R')); make_cc(commandArgs(TRUE))" stan_files/AB_Emax.stan
"/Library/Frameworks/R.framework/Resources/bin/Rscript" -e "source(file.path('..', 'tools', 'make_cc.R')); make_cc(commandArgs(TRUE))" stan_files/BNHM_Higgins.stan
"/Library/Frameworks/R.framework/Resources/bin/Rscript" -e "source(file.path('..', 'tools', 'make_cc.R')); make_cc(commandArgs(TRUE))" stan_files/BNHM_Smith.stan
"/Library/Frameworks/R.framework/Resources/bin/Rscript" -e "source(file.path('..', 'tools', 'make_cc.R')); make_cc(commandArgs(TRUE))" stan_files/Beta_binomial.stan
Wrote C++ file "stan_files/BNHM_Smith.cc"
Wrote C++ file "stan_files/Beta_binomial.cc"
Wrote C++ file "stan_files/BNHM_Higgins.cc"
Wrote C++ file "stan_files/AB_Emax.cc"
"/Library/Frameworks/R.framework/Resources/bin/Rscript" -e "source(file.path('..', 'tools', 'make_cc.R')); make_cc(commandArgs(TRUE))" stan_files/Fix_Eff.stan


/usr/local/clang6/bin/clang++ -std=gnu++14 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I"../inst/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/src" -DBOOST_DISABLE_ASSERTS -DEIGEN_NO_DEBUG -DBOOST_MATH_OVERFLOW_ERROR_POLICY=errno_on_error -I"/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/BH/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/Rcpp/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c init.cpp -o init.o


/usr/local/clang6/bin/clang++ -std=gnu++14 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I"../inst/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/src" -DBOOST_DISABLE_ASSERTS -DEIGEN_NO_DEBUG -DBOOST_MATH_OVERFLOW_ERROR_POLICY=errno_on_error -I"/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/BH/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/Rcpp/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c stan_files/AB_Emax.cc -o stan_files/AB_Emax.o


/usr/local/clang6/bin/clang++ -std=gnu++14 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I"../inst/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/src" -DBOOST_DISABLE_ASSERTS -DEIGEN_NO_DEBUG -DBOOST_MATH_OVERFLOW_ERROR_POLICY=errno_on_error -I"/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/BH/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/Rcpp/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c stan_files/BNHM_Higgins.cc -o stan_files/BNHM_Higgins.o
Wrote C++ file "stan_files/Fix_Eff.cc"


/usr/local/clang6/bin/clang++ -std=gnu++14 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I"../inst/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/src" -DBOOST_DISABLE_ASSERTS -DEIGEN_NO_DEBUG -DBOOST_MATH_OVERFLOW_ERROR_POLICY=errno_on_error -I"/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/BH/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/Rcpp/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c stan_files/BNHM_Smith.cc -o stan_files/BNHM_Smith.o


/usr/local/clang6/bin/clang++ -std=gnu++14 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I"../inst/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/src" -DBOOST_DISABLE_ASSERTS -DEIGEN_NO_DEBUG -DBOOST_MATH_OVERFLOW_ERROR_POLICY=errno_on_error -I"/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/BH/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/Rcpp/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c stan_files/Beta_binomial.cc -o stan_files/Beta_binomial.o


In file included from stan_files/AB_Emax.cc:3:
In file included from stan_files/AB_Emax.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:15:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/BH/include/boost/random/additive_combine.hpp:27:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/BH/include/boost/random/linear_congruential.hpp:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/BH/include/boost/random/detail/const_mod.hpp:23:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/BH/include/boost/random/detail/large_arithmetic.hpp:19:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/BH/include/boost/random/detail/integer_log2.hpp:19:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/BH/include/boost/pending/integer_log2.hpp:7:1: warning: This header is deprecated. Use <boost/integer/integer_log2.hpp> instead. [-W#pragma-messages]
BOOST_HEADER_DEPRECATED("<boost/integer/integer_log2.hpp>");
^
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/BH/include/boost/config/header_deprecated.hpp:23:37: note: expanded from macro 'BOOST_HEADER_DEPRECATED'
# define BOOST_HEADER_DEPRECATED(a) BOOST_PRAGMA_MESSAGE("This header is deprecated. Use " a " instead.")
                                    ^
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/BH/include/boost/config/pragma_message.hpp:24:34: note: expanded from macro 'BOOST_PRAGMA_MESSAGE'
# define BOOST_PRAGMA_MESSAGE(x) _Pragma(BOOST_STRINGIZE(message(x)))
                                 ^
<scratch space>:73:2: note: expanded from here
 message("This header is deprecated. Use " "<boost/integer/integer_log2.hpp>" " instead.")
 ^
In file included from stan_files/BNHM_Higgins.cc:3:
In file included from stan_files/BNHM_Higgins.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:15:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/BH/include/boost/random/additive_combine.hpp:27:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/BH/include/boost/random/linear_congruential.hpp:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/BH/include/boost/random/detail/const_mod.hpp:23:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/BH/include/boost/random/detail/large_arithmetic.hpp:19:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/BH/include/boost/random/detail/integer_log2.hpp:19:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/BH/include/boost/pending/integer_log2.hpp:7:1: warning: This header is deprecated. Use <boost/integer/integer_log2.hpp> instead. [-W#pragma-messages]
BOOST_HEADER_DEPRECATED("<boost/integer/integer_log2.hpp>");
^
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/BH/include/boost/config/header_deprecated.hpp:23:37: note: expanded from macro 'BOOST_HEADER_DEPRECATED'
# define BOOST_HEADER_DEPRECATED(a) BOOST_PRAGMA_MESSAGE("This header is deprecated. Use " a " instead.")
                                    ^
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/BH/include/boost/config/pragma_message.hpp:24:34: note: expanded from macro 'BOOST_PRAGMA_MESSAGE'
# define BOOST_PRAGMA_MESSAGE(x) _Pragma(BOOST_STRINGIZE(message(x)))
                                 ^
<scratch space>:73:2: note: expanded from here
 message("This header is deprecated. Use " "<boost/integer/integer_log2.hpp>" " instead.")
 ^
In file included from stan_files/BNHM_Smith.cc:3:
In file included from stan_files/BNHM_Smith.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:15:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/BH/include/boost/random/additive_combine.hpp:27:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/BH/include/boost/random/linear_congruential.hpp:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/BH/include/boost/random/detail/const_mod.hpp:23:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/BH/include/boost/random/detail/large_arithmetic.hpp:19:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/BH/include/boost/random/detail/integer_log2.hpp:19:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/BH/include/boost/pending/integer_log2.hpp:7:1: warning: This header is deprecated. Use <boost/integer/integer_log2.hpp> instead. [-W#pragma-messages]
BOOST_HEADER_DEPRECATED("<boost/integer/integer_log2.hpp>");
^
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/BH/include/boost/config/header_deprecated.hpp:23:37: note: expanded from macro 'BOOST_HEADER_DEPRECATED'
# define BOOST_HEADER_DEPRECATED(a) BOOST_PRAGMA_MESSAGE("This header is deprecated. Use " a " instead.")
                                    ^
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/BH/include/boost/config/pragma_message.hpp:24:34: note: expanded from macro 'BOOST_PRAGMA_MESSAGE'
# define BOOST_PRAGMA_MESSAGE(x) _Pragma(BOOST_STRINGIZE(message(x)))
                                 ^
<scratch space>:73:2: note: expanded from here
 message("This header is deprecated. Use " "<boost/integer/integer_log2.hpp>" " instead.")
 ^
In file included from stan_files/AB_Emax.cc:3:
In file included from stan_files/AB_Emax.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Dense:1:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Core:535:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/AB_Emax.cc:3:
In file included from stan_files/AB_Emax.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Dense:2:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/LU:47:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/AB_Emax.cc:3:
In file included from stan_files/AB_Emax.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Cholesky:12:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Jacobi:29:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/AB_Emax.cc:3:
In file included from stan_files/AB_Emax.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Cholesky:43:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/AB_Emax.cc:3:
In file included from stan_files/AB_Emax.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Dense:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/QR:17:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Householder:27:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/AB_Emax.cc:3:
In file included from stan_files/AB_Emax.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Dense:5:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/SVD:48:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/Beta_binomial.cc:3:
In file included from stan_files/Beta_binomial.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:15:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/BH/include/boost/random/additive_combine.hpp:27:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/BH/include/boost/random/linear_congruential.hpp:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/BH/include/boost/random/detail/const_mod.hpp:23:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/BH/include/boost/random/detail/large_arithmetic.hpp:19:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/BH/include/boost/random/detail/integer_log2.hpp:19:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/BH/include/boost/pending/integer_log2.hpp:7:1: warning: This header is deprecated. Use <boost/integer/integer_log2.hpp> instead. [-W#pragma-messages]
BOOST_HEADER_DEPRECATED("<boost/integer/integer_log2.hpp>");
^
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/BH/include/boost/config/header_deprecated.hpp:23:37: note: expanded from macro 'BOOST_HEADER_DEPRECATED'
# define BOOST_HEADER_DEPRECATED(a) BOOST_PRAGMA_MESSAGE("This header is deprecated. Use " a " instead.")
                                    ^
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/BH/include/boost/config/pragma_message.hpp:24:34: note: expanded from macro 'BOOST_PRAGMA_MESSAGE'
# define BOOST_PRAGMA_MESSAGE(x) _Pragma(BOOST_STRINGIZE(message(x)))
                                 ^
<scratch space>:73:2: note: expanded from here
 message("This header is deprecated. Use " "<boost/integer/integer_log2.hpp>" " instead.")
 ^
In file included from stan_files/AB_Emax.cc:3:
In file included from stan_files/AB_Emax.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Dense:6:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Geometry:58:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/AB_Emax.cc:3:
In file included from stan_files/AB_Emax.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Dense:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Eigenvalues:58:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/AB_Emax.cc:3:
In file included from stan_files/AB_Emax.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Sparse:26:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/SparseCore:66:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
In file included from     #pragma clang diagnostic pop
                             ^
stan_files/BNHM_Higgins.cc:3:
In file included from stan_files/BNHM_Higgins.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Dense:1:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Core:535:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/AB_Emax.cc:3:
In file included from stan_files/AB_Emax.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Sparse:27:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/OrderingMethods:71:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/AB_Emax.cc:3:
In file included from stan_files/AB_Emax.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Sparse:29:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/SparseCholesky:43:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/BNHM_Higgins.cc:3:
In file included from stan_files/BNHM_Higgins.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Dense:2:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/LU:47:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/BNHM_Higgins.cc:3:
In file included from stan_files/BNHM_Higgins.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Cholesky:12:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Jacobi:29:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/BNHM_Higgins.cc:3:
In file included from stan_files/BNHM_Higgins.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Cholesky:43:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/BNHM_Higgins.cc:3:
In file included from stan_files/BNHM_Higgins.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Dense:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/QR:17:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Householder:27:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/AB_Emax.cc:3:
In file included from stan_files/AB_Emax.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Sparse:32:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/SparseQR:35:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/AB_Emax.cc:3:
In file included from stan_files/AB_Emax.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Sparse:33:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/IterativeLinearSolvers:46:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/AB_Emax.cc:3:
In file included from stan_files/AB_Emax.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigenForward.h:32:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/CholmodSupport:45:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/BNHM_Higgins.cc:3:
In file included from stan_files/BNHM_Higgins.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Dense:5:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/SVD:48:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/AB_Emax.cc:3:
In file included from stan_files/AB_Emax.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigenForward.h:35:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/unsupported/Eigen/KroneckerProduct:34:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/BNHM_Higgins.cc:3:
In file included from stan_files/BNHM_Higgins.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Dense:6:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Geometry:58:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/AB_Emax.cc:3:
In file included from stan_files/AB_Emax.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigenForward.h:39:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/unsupported/Eigen/Polynomials:135:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/BNHM_Higgins.cc:3:
In file included from stan_files/BNHM_Higgins.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Dense:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Eigenvalues:58:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/AB_Emax.cc:3:
In file included from stan_files/AB_Emax.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigenForward.h:40:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/unsupported/Eigen/SparseExtra:51:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/BNHM_Higgins.cc:3:
In file included from stan_files/BNHM_Higgins.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Sparse:26:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/SparseCore:66:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/BNHM_Smith.cc:3:
In file included from stan_files/BNHM_Smith.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Dense:1:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Core:535:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/BNHM_Higgins.cc:3:
In file included from stan_files/BNHM_Higgins.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Sparse:27:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/OrderingMethods:71:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/BNHM_Higgins.cc:3:
In file included from stan_files/BNHM_Higgins.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Sparse:29:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/SparseCholesky:43:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/BNHM_Smith.cc:3:
In file included from stan_files/BNHM_Smith.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Dense:2:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/LU:47:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/BNHM_Smith.cc:3:
In file included from stan_files/BNHM_Smith.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Cholesky:12:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Jacobi:29:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/BNHM_Smith.cc:3:
In file included from stan_files/BNHM_Smith.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Cholesky:43:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/BNHM_Smith.cc:3:
In file included from stan_files/BNHM_Smith.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Dense:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/QR:17:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Householder:27:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/BNHM_Higgins.cc:3:
In file included from stan_files/BNHM_Higgins.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Sparse:32:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/SparseQR:35:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/BNHM_Higgins.cc:3:
In file included from stan_files/BNHM_Higgins.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Sparse:33:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/IterativeLinearSolvers:46:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/BNHM_Higgins.cc:3:
In file included from stan_files/BNHM_Higgins.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigenForward.h:32:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/CholmodSupport:45:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/BNHM_Smith.cc:3:
In file included from stan_files/BNHM_Smith.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Dense:5:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/SVD:48:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/BNHM_Higgins.cc:3:
In file included from stan_files/BNHM_Higgins.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigenForward.h:35:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/unsupported/Eigen/KroneckerProduct:34:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/BNHM_Smith.cc:3:
In file included from stan_files/BNHM_Smith.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Dense:6:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Geometry:58:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/BNHM_Smith.cc:3:
In file included from stan_files/BNHM_Smith.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Dense:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Eigenvalues:58:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/BNHM_Higgins.cc:3:
In file included from stan_files/BNHM_Higgins.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigenForward.h:39:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/unsupported/Eigen/Polynomials:135:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/BNHM_Higgins.cc:3:
In file included from stan_files/BNHM_Higgins.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigenForward.h:40:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/unsupported/Eigen/SparseExtra:51:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/BNHM_Smith.cc:3:
In file included from stan_files/BNHM_Smith.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Sparse:26:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/SparseCore:66:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/BNHM_Smith.cc:3:
In file included from stan_files/BNHM_Smith.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Sparse:27:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/OrderingMethods:71:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/BNHM_Smith.cc:3:
In file included from stan_files/BNHM_Smith.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Sparse:29:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/SparseCholesky:43:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/Beta_binomial.cc:3:
In file included from stan_files/Beta_binomial.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Dense:1:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Core:535:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/BNHM_Smith.cc:3:
In file included from stan_files/BNHM_Smith.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Sparse:32:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/SparseQR:35:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/BNHM_Smith.cc:3:
In file included from stan_files/BNHM_Smith.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Sparse:33:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/IterativeLinearSolvers:46:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/Beta_binomial.cc:3:
In file included from stan_files/Beta_binomial.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Dense:2:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/LU:47:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/BNHM_Smith.cc:3:
In file included from stan_files/BNHM_Smith.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigenForward.h:32:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/CholmodSupport:45:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/Beta_binomial.cc:3:
In file included from stan_files/Beta_binomial.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Cholesky:12:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Jacobi:29:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/Beta_binomial.cc:3:
In file included from stan_files/Beta_binomial.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Cholesky:43:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/Beta_binomial.cc:3:
In file included from stan_files/Beta_binomial.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Dense:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/QR:17:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Householder:27:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/BNHM_Smith.cc:3:
In file included from stan_files/BNHM_Smith.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigenForward.h:35:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/unsupported/Eigen/KroneckerProduct:34:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/Beta_binomial.cc:3:
In file included from stan_files/Beta_binomial.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Dense:5:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/SVD:48:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/BNHM_Smith.cc:3:
In file included from stan_files/BNHM_Smith.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigenForward.h:39:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/unsupported/Eigen/Polynomials:135:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/Beta_binomial.cc:3:
In file included from stan_files/Beta_binomial.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigenForward.h:30:
In file included from In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Densestan_files/BNHM_Smith.cc:6:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Geometry:58:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
:3:
In file included from stan_files/BNHM_Smith.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigenForward.h:40:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/unsupported/Eigen/SparseExtra:51:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
    #pragma clang diagnostic pop
                             ^
                             ^
In file included from stan_files/Beta_binomial.cc:3:
In file included from stan_files/Beta_binomial.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Dense:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Eigenvalues:58:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/Beta_binomial.cc:3:
In file included from stan_files/Beta_binomial.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Sparse:26:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/SparseCore:66:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/Beta_binomial.cc:3:
In file included from stan_files/Beta_binomial.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Sparse:27:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/OrderingMethods:71:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/Beta_binomial.cc:3:
In file included from stan_files/Beta_binomial.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Sparse:29:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/SparseCholesky:43:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/Beta_binomial.cc:3:
In file included from stan_files/Beta_binomial.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Sparse:32:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/SparseQR:35:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/Beta_binomial.cc:3:
In file included from stan_files/Beta_binomial.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Sparse:33:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/IterativeLinearSolvers:46:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/Beta_binomial.cc:3:
In file included from stan_files/Beta_binomial.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigenForward.h:32:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/CholmodSupport:45:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/Beta_binomial.cc:3:
In file included from stan_files/Beta_binomial.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigenForward.h:35:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/unsupported/Eigen/KroneckerProduct:34:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/Beta_binomial.cc:3:
In file included from stan_files/Beta_binomial.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigenForward.h:39:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/unsupported/Eigen/Polynomials:135:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/Beta_binomial.cc:3:
In file included from stan_files/Beta_binomial.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigenForward.h:40:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/unsupported/Eigen/SparseExtra:51:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/BNHM_Higgins.cc:3:
In file included from stan_files/BNHM_Higgins.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:35:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/stan/math/rev/mat.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/stan/math/rev/core.hpp:45:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/stan/math/rev/core/set_zero_all_adjoints.hpp:14:13: warning: unused function 'set_zero_all_adjoints' [-Wunused-function]
static void set_zero_all_adjoints() {
            ^
In file included from stan_files/BNHM_Higgins.cc:3:
In file included from stan_files/BNHM_Higgins.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:35:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/stan/math/rev/mat.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/stan/math/rev/core.hpp:46:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/stan/math/rev/core/set_zero_all_adjoints_nested.hpp:17:13: warning: 'static' function 'set_zero_all_adjoints_nested' declared in header file should be declared 'static inline' [-Wunneeded-internal-declaration]
static void set_zero_all_adjoints_nested() {
            ^
In file included from stan_files/BNHM_Higgins.cc:3:
In file included from stan_files/BNHM_Higgins.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:35:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/stan/math/rev/mat.hpp:12:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/stan/math/prim/mat.hpp:336:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/stan/math/prim/mat/prob/poisson_log_glm_log.hpp:5:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/stan/math/prim/mat/prob/poisson_log_glm_lpmf.hpp:64:59: warning: unused typedef 'T_alpha_val' [-Wunused-local-typedef]
      typename partials_return_type<T_alpha>::type>::type T_alpha_val;
                                                          ^
In file included from stan_files/BNHM_Higgins.cc:3:
stan_files/BNHM_Higgins.hpp:228:24: warning: unused typedef 'local_scalar_t__' [-Wunused-local-typedef]
        typedef double local_scalar_t__;
                       ^
In file included from stan_files/AB_Emax.cc:3:
In file included from stan_files/AB_Emax.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:35:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/stan/math/rev/mat.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/stan/math/rev/core.hpp:45:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/stan/math/rev/core/set_zero_all_adjoints.hpp:14:13: warning: unused function 'set_zero_all_adjoints' [-Wunused-function]
static void set_zero_all_adjoints() {
            ^
In file included from stan_files/AB_Emax.cc:3:
In file included from stan_files/AB_Emax.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:35:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/stan/math/rev/mat.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/stan/math/rev/core.hpp:46:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/stan/math/rev/core/set_zero_all_adjoints_nested.hpp:17:13: warning: 'static' function 'set_zero_all_adjoints_nested' declared in header file should be declared 'static inline' [-Wunneeded-internal-declaration]
static void set_zero_all_adjoints_nested() {
            ^
In file included from stan_files/AB_Emax.cc:3:
In file included from stan_files/AB_Emax.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:35:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/stan/math/rev/mat.hpp:12:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/stan/math/prim/mat.hpp:336:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/stan/math/prim/mat/prob/poisson_log_glm_log.hpp:5:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/stan/math/prim/mat/prob/poisson_log_glm_lpmf.hpp:64:59: warning: unused typedef 'T_alpha_val' [-Wunused-local-typedef]
      typename partials_return_type<T_alpha>::type>::type T_alpha_val;
                                                          ^
In file included from stan_files/AB_Emax.cc:3:
stan_files/AB_Emax.hpp:219:24: warning: unused typedef 'local_scalar_t__' [-Wunused-local-typedef]
        typedef double local_scalar_t__;
                       ^
In file included from stan_files/BNHM_Smith.cc:3:
In file included from stan_files/BNHM_Smith.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:35:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/stan/math/rev/mat.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/stan/math/rev/core.hpp:45:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/stan/math/rev/core/set_zero_all_adjoints.hpp:14:13: warning: unused function 'set_zero_all_adjoints' [-Wunused-function]
static void set_zero_all_adjoints() {
            ^
In file included from stan_files/BNHM_Smith.cc:3:
In file included from stan_files/BNHM_Smith.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:35:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/stan/math/rev/mat.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/stan/math/rev/core.hpp:46:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/stan/math/rev/core/set_zero_all_adjoints_nested.hpp:17:13: warning: 'static' function 'set_zero_all_adjoints_nested' declared in header file should be declared 'static inline' [-Wunneeded-internal-declaration]
static void set_zero_all_adjoints_nested() {
            ^
In file included from stan_files/BNHM_Smith.cc:3:
In file included from stan_files/BNHM_Smith.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:35:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/stan/math/rev/mat.hpp:12:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/stan/math/prim/mat.hpp:336:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/stan/math/prim/mat/prob/poisson_log_glm_log.hpp:5:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/stan/math/prim/mat/prob/poisson_log_glm_lpmf.hpp:64:59: warning: unused typedef 'T_alpha_val' [-Wunused-local-typedef]
      typename partials_return_type<T_alpha>::type>::type T_alpha_val;
                                                          ^
In file included from stan_files/BNHM_Smith.cc:3:
stan_files/BNHM_Smith.hpp:228:24: warning: unused typedef 'local_scalar_t__' [-Wunused-local-typedef]
        typedef double local_scalar_t__;
                       ^
In file included from stan_files/Beta_binomial.cc:3:
In file included from stan_files/Beta_binomial.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:35:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/stan/math/rev/mat.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/stan/math/rev/core.hpp:45:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/stan/math/rev/core/set_zero_all_adjoints.hpp:14:13: warning: unused function 'set_zero_all_adjoints' [-Wunused-function]
static void set_zero_all_adjoints() {
            ^
In file included from stan_files/Beta_binomial.cc:3:
In file included from stan_files/Beta_binomial.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:35:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/stan/math/rev/mat.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/stan/math/rev/core.hpp:46:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/stan/math/rev/core/set_zero_all_adjoints_nested.hpp:17:13: warning: 'static' function 'set_zero_all_adjoints_nested' declared in header file should be declared 'static inline' [-Wunneeded-internal-declaration]
static void set_zero_all_adjoints_nested() {
            ^
In file included from stan_files/Beta_binomial.cc:3:
In file included from stan_files/Beta_binomial.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:35:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/stan/math/rev/mat.hpp:12:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/stan/math/prim/mat.hpp:336:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/stan/math/prim/mat/prob/poisson_log_glm_log.hpp:5:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/stan/math/prim/mat/prob/poisson_log_glm_lpmf.hpp:64:59: warning: unused typedef 'T_alpha_val' [-Wunused-local-typedef]
      typename partials_return_type<T_alpha>::type>::type T_alpha_val;
                                                          ^
In file included from stan_files/Beta_binomial.cc:3:
stan_files/Beta_binomial.hpp:190:24: warning: unused typedef 'local_scalar_t__' [-Wunused-local-typedef]
        typedef double local_scalar_t__;
                       ^
22 warnings generated.
/usr/local/clang6/bin/clang++ -std=gnu++14 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I"../inst/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/src" -DBOOST_DISABLE_ASSERTS -DEIGEN_NO_DEBUG -DBOOST_MATH_OVERFLOW_ERROR_POLICY=errno_on_error -I"/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/BH/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/Rcpp/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c stan_files/Fix_Eff.cc -o stan_files/Fix_Eff.o
22 warnings generated.
22 warnings generated.
In file included from stan_files/Fix_Eff.cc:3:
In file included from stan_files/Fix_Eff.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:15:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/BH/include/boost/random/additive_combine.hpp:27:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/BH/include/boost/random/linear_congruential.hpp:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/BH/include/boost/random/detail/const_mod.hpp:23:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/BH/include/boost/random/detail/large_arithmetic.hpp:19:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/BH/include/boost/random/detail/integer_log2.hpp:19:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/BH/include/boost/pending/integer_log2.hpp:7:1: warning: This header is deprecated. Use <boost/integer/integer_log2.hpp> instead. [-W#pragma-messages]
BOOST_HEADER_DEPRECATED("<boost/integer/integer_log2.hpp>");
^
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/BH/include/boost/config/header_deprecated.hpp:23:37: note: expanded from macro 'BOOST_HEADER_DEPRECATED'
# define BOOST_HEADER_DEPRECATED(a) BOOST_PRAGMA_MESSAGE("This header is deprecated. Use " a " instead.")
                                    ^
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/BH/include/boost/config/pragma_message.hpp:24:34: note: expanded from macro 'BOOST_PRAGMA_MESSAGE'
# define BOOST_PRAGMA_MESSAGE(x) _Pragma(BOOST_STRINGIZE(message(x)))
                                 ^
<scratch space>:73:2: note: expanded from here
 message("This header is deprecated. Use " "<boost/integer/integer_log2.hpp>" " instead.")
 ^
In file included from stan_files/Fix_Eff.cc:3:
In file included from stan_files/Fix_Eff.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Dense:1:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Core:535:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/Fix_Eff.cc:3:
In file included from stan_files/Fix_Eff.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Dense:2:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/LU:47:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/Fix_Eff.cc:3:
In file included from stan_files/Fix_Eff.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Cholesky:12:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Jacobi:29:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/Fix_Eff.cc:3:
In file included from stan_files/Fix_Eff.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Cholesky:43:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/Fix_Eff.cc:3:
In file included from stan_files/Fix_Eff.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Dense:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/QR:17:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Householder:27:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/Fix_Eff.cc:3:
In file included from stan_files/Fix_Eff.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Dense:5:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/SVD:48:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/Fix_Eff.cc:3:
In file included from stan_files/Fix_Eff.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Dense:6:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Geometry:58:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/Fix_Eff.cc:3:
In file included from stan_files/Fix_Eff.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Dense:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Eigenvalues:58:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/Fix_Eff.cc:3:
In file included from stan_files/Fix_Eff.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Sparse:26:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/SparseCore:66:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/Fix_Eff.cc:3:
In file included from stan_files/Fix_Eff.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Sparse:27:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/OrderingMethods:71:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/Fix_Eff.cc:3:
In file included from stan_files/Fix_Eff.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Sparse:29:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/SparseCholesky:43:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/Fix_Eff.cc:3:
In file included from stan_files/Fix_Eff.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Sparse:32:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/SparseQR:35:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/Fix_Eff.cc:3:
In file included from stan_files/Fix_Eff.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/Sparse:33:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/IterativeLinearSolvers:46:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/Fix_Eff.cc:3:
In file included from stan_files/Fix_Eff.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigenForward.h:32:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/CholmodSupport:45:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/Fix_Eff.cc:3:
In file included from stan_files/Fix_Eff.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigenForward.h:35:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/unsupported/Eigen/KroneckerProduct:34:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/Fix_Eff.cc:3:
In file included from stan_files/Fix_Eff.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigenForward.h:39:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/unsupported/Eigen/Polynomials:135:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/Fix_Eff.cc:3:
In file included from stan_files/Fix_Eff.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/RcppEigenForward.h:40:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/unsupported/Eigen/SparseExtra:51:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
22 warnings generated.
In file included from stan_files/Fix_Eff.cc:3:
In file included from stan_files/Fix_Eff.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:35:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/stan/math/rev/mat.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/stan/math/rev/core.hpp:45:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/stan/math/rev/core/set_zero_all_adjoints.hpp:14:13: warning: unused function 'set_zero_all_adjoints' [-Wunused-function]
static void set_zero_all_adjoints() {
            ^
In file included from stan_files/Fix_Eff.cc:3:
In file included from stan_files/Fix_Eff.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:35:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/stan/math/rev/mat.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/stan/math/rev/core.hpp:46:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/stan/math/rev/core/set_zero_all_adjoints_nested.hpp:17:13: warning: 'static' function 'set_zero_all_adjoints_nested' declared in header file should be declared 'static inline' [-Wunneeded-internal-declaration]
static void set_zero_all_adjoints_nested() {
            ^
In file included from stan_files/Fix_Eff.cc:3:
In file included from stan_files/Fix_Eff.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/rstan/include/rstan/stan_fit.hpp:35:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/stan/math/rev/mat.hpp:12:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/stan/math/prim/mat.hpp:336:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/stan/math/prim/mat/prob/poisson_log_glm_log.hpp:5:
/Users/max/github/forks/testthat/revdep/library.noindex/MetaStan/StanHeaders/include/stan/math/prim/mat/prob/poisson_log_glm_lpmf.hpp:64:59: warning: unused typedef 'T_alpha_val' [-Wunused-local-typedef]
      typename partials_return_type<T_alpha>::type>::type T_alpha_val;
                                                          ^
In file included from stan_files/Fix_Eff.cc:3:
stan_files/Fix_Eff.hpp:207:24: warning: unused typedef 'local_scalar_t__' [-Wunused-local-typedef]
        typedef double local_scalar_t__;
                       ^
22 warnings generated.
/usr/local/clang6/bin/clang++ -std=gnu++14 -dynamiclib -Wl,-headerpad_max_install_names -undefined dynamic_lookup -single_module -multiply_defined suppress -L/Library/Frameworks/R.framework/Resources/lib -L/usr/local/lib -o MetaStan.so stan_files/AB_Emax.o stan_files/BNHM_Higgins.o stan_files/BNHM_Smith.o stan_files/Beta_binomial.o stan_files/Fix_Eff.o init.o -F/Library/Frameworks/R.framework/.. -framework R -Wl,-framework -Wl,CoreFoundation
ld: warning: text-based stub file /System/Library/Frameworks//CoreFoundation.framework/CoreFoundation.tbd and library file /System/Library/Frameworks//CoreFoundation.framework/CoreFoundation are out of sync. Falling back to library file for linking.
rm stan_files/AB_Emax.cc stan_files/BNHM_Higgins.cc stan_files/Fix_Eff.cc stan_files/Beta_binomial.cc stan_files/BNHM_Smith.cc
installing to /Users/max/github/forks/testthat/revdep/checks.noindex/MetaStan/old/MetaStan.Rcheck/00LOCK-MetaStan/00new/MetaStan/libs
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
** checking absolute paths in shared objects and dynamic libraries
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (MetaStan)

```
# ODEsensitivity

<details>

* Version: 1.1.2
* Source code: https://github.com/cran/ODEsensitivity
* URL: https://github.com/surmann/ODEsensitivity
* BugReports: https://github.com/surmann/ODEsensitivity/issues
* Date/Publication: 2019-01-09 09:10:04 UTC
* Number of recursive dependencies: 63

Run `revdep_details(,"ODEsensitivity")` for more info

</details>

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      3: morris(model = model_fit, factors = pars, r = r, design = design, binf = binf, bsup = bsup, 
             scale = scale)
      4: response(x, other_types_allowed = TRUE, ...)
      5: x$model(x$X, ...)
      6: parallel::makePSOCKcluster(names = parallel_eval_ncores)
      7: newPSOCKnode(names[[i]], options = options, rank = i)
      8: socketConnection("localhost", port = port, server = TRUE, blocking = TRUE, open = "a+b", 
             timeout = timeout)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      [ OK: 231 | SKIPPED: 0 | WARNINGS: 1 | FAILED: 1 ]
      1. Error: (unknown) (@test_ODEmorris.ODEnetwork.R#65) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# quantspec

<details>

* Version: 1.2-1
* Source code: https://github.com/cran/quantspec
* URL: http://github.com/tobiaskley/quantspec
* BugReports: http://github.com/tobiaskley/quantspec/issues
* Date/Publication: 2016-03-28 00:27:55
* Number of recursive dependencies: 20

Run `revdep_details(,"quantspec")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    ...
    > # Compute without using snowfall capabilities
    > system.time(
    +   qRegEst1 <- qRegEstimator(Y, levels=seq(0.25,0.75,0.25), method="fn", parallel=FALSE)
    + )
       user  system elapsed 
      0.100   0.001   0.103 
    > 
    > # Set up snowfall
    > sfInit(parallel=TRUE, cpus=2, type="SOCK")
    Warning in searchCommandline(parallel, cpus = cpus, type = type, socketHosts = socketHosts,  :
      Unknown option on commandline: --encoding
    Warning in socketConnection(port = port, server = TRUE, blocking = TRUE,  :
      port 11863 cannot be opened
    Error in socketConnection(port = port, server = TRUE, blocking = TRUE,  : 
      cannot open the connection
    Error in sfInit(parallel = TRUE, cpus = 2, type = "SOCK") : 
      Starting of snow cluster failed! Error in socketConnection(port = port, server = TRUE, blocking = TRUE,  : 
      cannot open the connection
     Error in socketConnection(port = port, server = TRUE, blocking = TRUE,  : 
      cannot open the connection
    Execution halted
    ```

# rdefra

<details>

* Version: 0.3.6
* Source code: https://github.com/cran/rdefra
* URL: https://github.com/ropensci/rdefra
* BugReports: https://github.com/ropensci/rdefra/issues
* Date/Publication: 2019-03-18 20:00:11 UTC
* Number of recursive dependencies: 106

Run `revdep_details(,"rdefra")` for more info

</details>

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > library("testthat")
      > library("rdefra")
      > 
      > test_check("rdefra")
      ── 1. Failure: DEFRA server should be running (@test-metadata.R#29)  ───────────
      `x` not equal to `expected`.
      1 element mismatch
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      [ OK: 20 | SKIPPED: 1 | WARNINGS: 0 | FAILED: 1 ]
      1. Failure: DEFRA server should be running (@test-metadata.R#29) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# rstap

<details>

* Version: 1.0.3
* Source code: https://github.com/cran/rstap
* URL: https://biostatistics4socialimpact.github.io/rstap
* BugReports: https://github.com/biostatistics4socialimpact/rstap/issues
* Date/Publication: 2019-02-06 20:30:03 UTC
* Number of recursive dependencies: 105

Run `revdep_details(,"rstap")` for more info

</details>

## Newly broken

*   checking whether package ‘rstap’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/max/github/forks/testthat/revdep/checks.noindex/rstap/new/rstap.Rcheck/00install.out’ for details.
    ```

## Newly fixed

*   checking installed package size ... NOTE
    ```
      installed size is  8.3Mb
      sub-directories of 1Mb or more:
        libs   7.0Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘loo’
      All declared Imports should be used.
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

## Installation

### Devel

```
* installing *source* package ‘rstap’ ...
** package ‘rstap’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
"/Library/Frameworks/R.framework/Resources/bin/Rscript" -e "source(file.path('..', 'tools', 'make_cc.R')); make_cc(commandArgs(TRUE))" stan_files/stap_bernoulli.stan
"/Library/Frameworks/R.framework/Resources/bin/Rscript" -e "source(file.path('..', 'tools', 'make_cc.R')); make_cc(commandArgs(TRUE))" stan_files/stap_binomial.stan
"/Library/Frameworks/R.framework/Resources/bin/Rscript" -e "source(file.path('..', 'tools', 'make_cc.R')); make_cc(commandArgs(TRUE))" stan_files/stap_continuous.stan
"/Library/Frameworks/R.framework/Resources/bin/Rscript" -e "source(file.path('..', 'tools', 'make_cc.R')); make_cc(commandArgs(TRUE))" stan_files/stap_count.stan
Wrote C++ file "stan_files/stap_binomial.cc"
Wrote C++ file "stan_files/stap_count.cc"
Wrote C++ file "stan_files/stap_bernoulli.cc"
Wrote C++ file "stan_files/stap_continuous.cc"
Error in readRDS("/var/folders/lb/xhxqmcrd7gv302_b1pdfykh80000gn/T//Rtmpja69kx/file17d82a79a234") : 
  error reading from connection
Calls: .Last -> readRDS
Execution halted
make: *** [stan_files/stap_count.cc] Error 1
make: *** Waiting for unfinished jobs....
rm stan_files/stap_continuous.cc stan_files/stap_bernoulli.cc stan_files/stap_count.cc stan_files/stap_binomial.cc
ERROR: compilation failed for package ‘rstap’
* removing ‘/Users/max/github/forks/testthat/revdep/checks.noindex/rstap/new/rstap.Rcheck/rstap’

```
### CRAN

```
* installing *source* package ‘rstap’ ...
** package ‘rstap’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
"/Library/Frameworks/R.framework/Resources/bin/Rscript" -e "source(file.path('..', 'tools', 'make_cc.R')); make_cc(commandArgs(TRUE))" stan_files/stap_bernoulli.stan
"/Library/Frameworks/R.framework/Resources/bin/Rscript" -e "source(file.path('..', 'tools', 'make_cc.R')); make_cc(commandArgs(TRUE))" stan_files/stap_binomial.stan
"/Library/Frameworks/R.framework/Resources/bin/Rscript" -e "source(file.path('..', 'tools', 'make_cc.R')); make_cc(commandArgs(TRUE))" stan_files/stap_continuous.stan
"/Library/Frameworks/R.framework/Resources/bin/Rscript" -e "source(file.path('..', 'tools', 'make_cc.R')); make_cc(commandArgs(TRUE))" stan_files/stap_count.stan
Wrote C++ file "stan_files/stap_binomial.cc"
Wrote C++ file "stan_files/stap_bernoulli.cc"
Wrote C++ file "stan_files/stap_count.cc"
Wrote C++ file "stan_files/stap_continuous.cc"
/usr/local/clang6/bin/clang++ -std=gnu++14 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I"../inst/include" -I"`"/Library/Frameworks/R.framework/Resources/bin/Rscript" --vanilla -e "cat(system.file('include', 'src', package = 'StanHeaders'))"`" -DBOOST_RESULT_OF_USE_TR1 -DBOOST_NO_DECLTYPE -DBOOST_DISABLE_ASSERTS -DEIGEN_NO_DEBUG -DBOOST_MATH_OVERFLOW_ERROR_POLICY=errno_on_error  -I"/Users/max/github/forks/testthat/revdep/library.noindex/rstap/StanHeaders/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/rstap/BH/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/rstap/Rcpp/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c init.cpp -o init.o
/usr/local/clang6/bin/clang++ -std=gnu++14 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I"../inst/include" -I"`"/Library/Frameworks/R.framework/Resources/bin/Rscript" --vanilla -e "cat(system.file('include', 'src', package = 'StanHeaders'))"`" -DBOOST_RESULT_OF_USE_TR1 -DBOOST_NO_DECLTYPE -DBOOST_DISABLE_ASSERTS -DEIGEN_NO_DEBUG -DBOOST_MATH_OVERFLOW_ERROR_POLICY=errno_on_error  -I"/Users/max/github/forks/testthat/revdep/library.noindex/rstap/StanHeaders/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/rstap/BH/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/rstap/Rcpp/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c stan_files/stap_binomial.cc -o stan_files/stap_binomial.o
/usr/local/clang6/bin/clang++ -std=gnu++14 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I"../inst/include" -I"`"/Library/Frameworks/R.framework/Resources/bin/Rscript" --vanilla -e "cat(system.file('include', 'src', package = 'StanHeaders'))"`" -DBOOST_RESULT_OF_USE_TR1 -DBOOST_NO_DECLTYPE -DBOOST_DISABLE_ASSERTS -DEIGEN_NO_DEBUG -DBOOST_MATH_OVERFLOW_ERROR_POLICY=errno_on_error  -I"/Users/max/github/forks/testthat/revdep/library.noindex/rstap/StanHeaders/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/rstap/BH/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/rstap/Rcpp/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c stan_files/stap_count.cc -o stan_files/stap_count.o
/usr/local/clang6/bin/clang++ -std=gnu++14 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I"../inst/include" -I"`"/Library/Frameworks/R.framework/Resources/bin/Rscript" --vanilla -e "cat(system.file('include', 'src', package = 'StanHeaders'))"`" -DBOOST_RESULT_OF_USE_TR1 -DBOOST_NO_DECLTYPE -DBOOST_DISABLE_ASSERTS -DEIGEN_NO_DEBUG -DBOOST_MATH_OVERFLOW_ERROR_POLICY=errno_on_error  -I"/Users/max/github/forks/testthat/revdep/library.noindex/rstap/StanHeaders/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/rstap/BH/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/rstap/Rcpp/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c stan_files/stap_bernoulli.cc -o stan_files/stap_bernoulli.o
/usr/local/clang6/bin/clang++ -std=gnu++14 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I"../inst/include" -I"`"/Library/Frameworks/R.framework/Resources/bin/Rscript" --vanilla -e "cat(system.file('include', 'src', package = 'StanHeaders'))"`" -DBOOST_RESULT_OF_USE_TR1 -DBOOST_NO_DECLTYPE -DBOOST_DISABLE_ASSERTS -DEIGEN_NO_DEBUG -DBOOST_MATH_OVERFLOW_ERROR_POLICY=errno_on_error  -I"/Users/max/github/forks/testthat/revdep/library.noindex/rstap/StanHeaders/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/rstap/BH/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/rstap/Rcpp/include" -I"/Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c stan_files/stap_continuous.cc -o stan_files/stap_continuous.o
In file included from stan_files/stap_binomial.cc:3:
In file included from stan_files/stap_binomial.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/stan_fit.hpp:15:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/BH/include/boost/random/additive_combine.hpp:27:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/BH/include/boost/random/linear_congruential.hpp:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/BH/include/boost/random/detail/const_mod.hpp:23:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/BH/include/boost/random/detail/large_arithmetic.hpp:19:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/BH/include/boost/random/detail/integer_log2.hpp:19:
/Users/max/github/forks/testthat/revdep/library.noindex/rstap/BH/include/boost/pending/integer_log2.hpp:7:1: warning: This header is deprecated. Use <boost/integer/integer_log2.hpp> instead. [-W#pragma-messages]
BOOST_HEADER_DEPRECATED("<boost/integer/integer_log2.hpp>");
^
/Users/max/github/forks/testthat/revdep/library.noindex/rstap/BH/include/boost/config/header_deprecated.hpp:23:37: note: expanded from macro 'BOOST_HEADER_DEPRECATED'
# define BOOST_HEADER_DEPRECATED(a) BOOST_PRAGMA_MESSAGE("This header is deprecated. Use " a " instead.")
                                    ^
/Users/max/github/forks/testthat/revdep/library.noindex/rstap/BH/include/boost/config/pragma_message.hpp:24:34: note: expanded from macro 'BOOST_PRAGMA_MESSAGE'
# define BOOST_PRAGMA_MESSAGE(x) _Pragma(BOOST_STRINGIZE(message(x)))
                                 ^
<scratch space>:73:2: note: expanded from here
 message("This header is deprecated. Use " "<boost/integer/integer_log2.hpp>" " instead.")
 ^
In file included from stan_files/stap_count.cc:3:
In file included from stan_files/stap_count.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/stan_fit.hpp:15:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/BH/include/boost/random/additive_combine.hpp:27:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/BH/include/boost/random/linear_congruential.hpp:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/BH/include/boost/random/detail/const_mod.hpp:23:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/BH/include/boost/random/detail/large_arithmetic.hpp:19:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/BH/include/boost/random/detail/integer_log2.hpp:19:
/Users/max/github/forks/testthat/revdep/library.noindex/rstap/BH/include/boost/pending/integer_log2.hpp:7:1: warning: This header is deprecated. Use <boost/integer/integer_log2.hpp> instead. [-W#pragma-messages]
BOOST_HEADER_DEPRECATED("<boost/integer/integer_log2.hpp>");
^
/Users/max/github/forks/testthat/revdep/library.noindex/rstap/BH/include/boost/config/header_deprecated.hpp:23:37: note: expanded from macro 'BOOST_HEADER_DEPRECATED'
# define BOOST_HEADER_DEPRECATED(a) BOOST_PRAGMA_MESSAGE("This header is deprecated. Use " a " instead.")
                                    ^
/Users/max/github/forks/testthat/revdep/library.noindex/rstap/BH/include/boost/config/pragma_message.hpp:24:34: note: expanded from macro 'BOOST_PRAGMA_MESSAGE'
# define BOOST_PRAGMA_MESSAGE(x) _Pragma(BOOST_STRINGIZE(message(x)))
                                 ^
<scratch space>:73:2: note: expanded from here
 message("This header is deprecated. Use " "<boost/integer/integer_log2.hpp>" " instead.")
 ^
In file included from stan_files/stap_bernoulli.cc:3:
In file included from stan_files/stap_bernoulli.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/stan_fit.hpp:15:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/BH/include/boost/random/additive_combine.hpp:27:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/BH/include/boost/random/linear_congruential.hpp:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/BH/include/boost/random/detail/const_mod.hpp:23:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/BH/include/boost/random/detail/large_arithmetic.hpp:19:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/BH/include/boost/random/detail/integer_log2.hpp:19:
/Users/max/github/forks/testthat/revdep/library.noindex/rstap/BH/include/boost/pending/integer_log2.hpp:7:1: warning: This header is deprecated. Use <boost/integer/integer_log2.hpp> instead. [-W#pragma-messages]
BOOST_HEADER_DEPRECATED("<boost/integer/integer_log2.hpp>");
^
/Users/max/github/forks/testthat/revdep/library.noindex/rstap/BH/include/boost/config/header_deprecated.hpp:23:37: note: expanded from macro 'BOOST_HEADER_DEPRECATED'
# define BOOST_HEADER_DEPRECATED(a) BOOST_PRAGMA_MESSAGE("This header is deprecated. Use " a " instead.")
                                    ^
/Users/max/github/forks/testthat/revdep/library.noindex/rstap/BH/include/boost/config/pragma_message.hpp:24:34: note: expanded from macro 'BOOST_PRAGMA_MESSAGE'
# define BOOST_PRAGMA_MESSAGE(x) _Pragma(BOOST_STRINGIZE(message(x)))
                                 ^
<scratch space>:73:2: note: expanded from here
 message("This header is deprecated. Use " "<boost/integer/integer_log2.hpp>" " instead.")
 ^
In file included from stan_files/stap_continuous.cc:3:
In file included from stan_files/stap_continuous.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/stan_fit.hpp:15:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/BH/include/boost/random/additive_combine.hpp:27:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/BH/include/boost/random/linear_congruential.hpp:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/BH/include/boost/random/detail/const_mod.hpp:23:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/BH/include/boost/random/detail/large_arithmetic.hpp:19:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/BH/include/boost/random/detail/integer_log2.hpp:19:
/Users/max/github/forks/testthat/revdep/library.noindex/rstap/BH/include/boost/pending/integer_log2.hpp:7:1: warning: This header is deprecated. Use <boost/integer/integer_log2.hpp> instead. [-W#pragma-messages]
BOOST_HEADER_DEPRECATED("<boost/integer/integer_log2.hpp>");
^
/Users/max/github/forks/testthat/revdep/library.noindex/rstap/BH/include/boost/config/header_deprecated.hpp:23:37: note: expanded from macro 'BOOST_HEADER_DEPRECATED'
# define BOOST_HEADER_DEPRECATED(a) BOOST_PRAGMA_MESSAGE("This header is deprecated. Use " a " instead.")
                                    ^
/Users/max/github/forks/testthat/revdep/library.noindex/rstap/BH/include/boost/config/pragma_message.hpp:24:34: note: expanded from macro 'BOOST_PRAGMA_MESSAGE'
# define BOOST_PRAGMA_MESSAGE(x) _Pragma(BOOST_STRINGIZE(message(x)))
                                 ^
<scratch space>:73:2: note: expanded from here
 message("This header is deprecated. Use " "<boost/integer/integer_log2.hpp>" " instead.")
 ^
In file included from stan_files/stap_binomial.cc:3:
In file included from stan_files/stap_binomial.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/Dense:1:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/Core:535:
/Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/stap_count.cc:3:
In file included from stan_files/stap_count.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/Dense:1:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/Core:535:
/Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/stap_bernoulli.cc:3:
In file included from stan_files/stap_bernoulli.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/Dense:1:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/Core:535:
/Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/stap_binomial.cc:3:
In file included from stan_files/stap_binomial.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/Dense:2:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/LU:47:
/Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/stap_count.cc:3:
In file included from stan_files/stap_count.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/Dense:2:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/LU:47:
/Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/stap_binomial.cc:3:
In file included from stan_files/stap_binomial.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/Cholesky:12:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/Jacobi:29:
/Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/stap_count.cc:3:
In file included from stan_files/stap_count.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/Cholesky:12:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/Jacobi:29:
/Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/stap_bernoulli.cc:3:
In file included from stan_files/stap_bernoulli.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/Dense:2:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/LU:47:
/Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/stap_binomial.cc:3:
In file included from stan_files/stap_binomial.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/Cholesky:43:
/Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/stap_binomial.cc:3:
In file included from stan_files/stap_binomial.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/Dense:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/QR:17:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/Householder:27:
/Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/stap_count.cc:3:
In file included from stan_files/stap_count.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/Cholesky:43:
/Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/stap_bernoulli.cc:3:
In file included from stan_files/stap_bernoulli.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/Cholesky:12:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/Jacobi:29:
/Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/stap_count.cc:3:
In file included from stan_files/stap_count.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/Dense:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/QR:17:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/Householder:27:
/Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/stap_bernoulli.cc:3:
In file included from stan_files/stap_bernoulli.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/Cholesky:43:
/Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/stap_bernoulli.cc:3:
In file included from stan_files/stap_bernoulli.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/Dense:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/QR:17:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/Householder:27:
/Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/stap_binomial.cc:3:
In file included from stan_files/stap_binomial.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/Dense:5:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/SVD:48:
/Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/stap_count.cc:3:
In file included from stan_files/stap_count.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/Dense:5:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/SVD:48:
/Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/stap_bernoulli.cc:3:
In file included from stan_files/stap_bernoulli.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/Dense:5:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/SVD:48:
/Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/stap_binomial.cc:3:
In file included from stan_files/stap_binomial.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/Dense:6:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/Geometry:58:
/Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/stap_count.cc:3:
In file included from stan_files/stap_count.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/Dense:6:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/Geometry:58:
/Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/stap_continuous.cc:3:
In file included from stan_files/stap_continuous.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/Dense:1:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/Core:535:
/Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/stap_bernoulli.cc:3:
In file included from stan_files/stap_bernoulli.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/Dense:6:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/Geometry:58:
/Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/stap_count.cc:3:
In file included from stan_files/stap_count.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/Dense:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/Eigenvalues:58:
/Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/stap_binomial.cc:3:
In file included from stan_files/stap_binomial.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/Dense:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/Eigenvalues:58:
/Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/stap_continuous.cc:3:
In file included from stan_files/stap_continuous.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/Dense:2:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/LU:47:
/Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/stap_continuous.cc:3:
In file included from stan_files/stap_continuous.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/Cholesky:12:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/Jacobi:29:
/Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/stap_bernoulli.cc:3:
In file included from stan_files/stap_bernoulli.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/Dense:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/Eigenvalues:58:
/Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/stap_continuous.cc:3:
In file included from stan_files/stap_continuous.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/Cholesky:43:
/Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/stap_continuous.cc:3:
In file included from stan_files/stap_continuous.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/Dense:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/QR:17:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/Householder:27:
/Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/stap_count.cc:3:
In file included from stan_files/stap_count.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/Sparse:26:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/SparseCore:66:
/Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/stap_continuous.cc:3:
In file included from stan_files/stap_continuous.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/Dense:5:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/SVD:48:
/Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/stap_binomial.cc:3:
In file included from stan_files/stap_binomial.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/Sparse:26:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/SparseCore:66:
/Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/stap_count.cc:3:
In file included from stan_files/stap_count.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/Sparse:27:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/OrderingMethods:71:
/Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/stap_bernoulli.cc:3:
In file included from stan_files/stap_bernoulli.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/Sparse:26:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/SparseCore:66:
/Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/stap_count.cc:3:
In file included from stan_files/stap_count.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/Sparse:29:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/SparseCholesky:43:
/Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/stap_binomial.cc:3:
In file included from stan_files/stap_binomial.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/Sparse:27:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/OrderingMethods:71:
/Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/stap_binomial.cc:3:
In file included from stan_files/stap_binomial.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/Sparse:29:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/SparseCholesky:43:
/Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/stap_bernoulli.cc:3:
In file included from stan_files/stap_bernoulli.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/Sparse:27:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/OrderingMethods:71:
/Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/stap_bernoulli.cc:3:
In file included from stan_files/stap_bernoulli.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/Sparse:29:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/SparseCholesky:43:
/Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/stap_count.cc:3:
In file included from stan_files/stap_count.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/Sparse:32:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/SparseQR:35:
/Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/stap_binomial.cc:3:
In file included from stan_files/stap_binomial.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/Sparse:32:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/SparseQR:35:
/Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/stap_count.cc:3:
In file included from stan_files/stap_count.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/Sparse:33:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/IterativeLinearSolvers:46:
/Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/stap_bernoulli.cc:3:
In file included from stan_files/stap_bernoulli.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/Sparse:32:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/SparseQR:35:
/Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/stap_binomial.cc:3:
In file included from stan_files/stap_binomial.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/Sparse:33:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/IterativeLinearSolvers:46:
/Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/stap_count.cc:3:
In file included from stan_files/stap_count.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigenForward.h:32:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/CholmodSupport:45:
/Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/stap_binomial.cc:3:
In file included from stan_files/stap_binomial.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigenForward.h:32:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/CholmodSupport:45:
/Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/stap_continuous.cc:3:
In file included from stan_files/stap_continuous.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/Dense:6:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/Geometry:58:
/Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/stap_bernoulli.cc:3:
In file included from stan_files/stap_bernoulli.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/Sparse:33:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/IterativeLinearSolvers:46:
/Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/stap_bernoulli.cc:3:
In file included from stan_files/stap_bernoulli.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigenForward.h:32:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/CholmodSupport:45:
/Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/stap_continuous.cc:3:
In file included from stan_files/stap_continuous.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/Dense:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/Eigenvalues:58:
/Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/stap_count.cc:3:
In file included from stan_files/stap_count.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigenForward.h:35:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/unsupported/Eigen/KroneckerProduct:34:
/Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/stap_binomial.cc:3:
In file included from stan_files/stap_binomial.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigenForward.h:35:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/unsupported/Eigen/KroneckerProduct:34:
/Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/stap_bernoulli.cc:3:
In file included from stan_files/stap_bernoulli.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigenForward.h:35:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/unsupported/Eigen/KroneckerProduct:34:
/Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/stap_continuous.cc:3:
In file included from stan_files/stap_continuous.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/Sparse:26:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/SparseCore:66:
/Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/stap_continuous.cc:3:
In file included from stan_files/stap_continuous.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/Sparse:27:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/OrderingMethods:71:
/Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/stap_continuous.cc:3:
In file included from stan_files/stap_continuous.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/Sparse:29:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/SparseCholesky:43:
/Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
In file included from stan_files/stap_count.cc:3:
In file included from stan_files/stap_count.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigenForward.h:39:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/unsupported/Eigen/Polynomials:135:
/Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/stap_binomial.cc:3:
In file included from stan_files/stap_binomial.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigenForward.h:39:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/unsupported/Eigen/Polynomials:135:
/Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/stap_count.cc:3:
In file included from stan_files/stap_count.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigenForward.h:40:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/unsupported/Eigen/SparseExtra:51:
/Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/stap_bernoulli.cc:3:
In file included from stan_files/stap_bernoulli.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigenForward.h:39:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/unsupported/Eigen/Polynomials:135:
/Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/stap_binomial.cc:3:
In file included from stan_files/stap_binomial.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigenForward.h:40:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/unsupported/Eigen/SparseExtra:51:
/Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/stap_continuous.cc:3:
In file included from stan_files/stap_continuous.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/Sparse:32:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/SparseQR:35:
/Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/stap_bernoulli.cc:3:
In file included from stan_files/stap_bernoulli.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigenForward.h:40:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/unsupported/Eigen/SparseExtra:51:
/Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/stap_continuous.cc:3:
In file included from stan_files/stap_continuous.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/Sparse:33:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/IterativeLinearSolvers:46:
/Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/stap_continuous.cc:3:
In file included from stan_files/stap_continuous.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigenForward.h:32:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/CholmodSupport:45:
/Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/stap_continuous.cc:3:
In file included from stan_files/stap_continuous.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigenForward.h:35:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/unsupported/Eigen/KroneckerProduct:34:
/Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/stap_continuous.cc:3:
In file included from stan_files/stap_continuous.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigenForward.h:39:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/unsupported/Eigen/Polynomials:135:
/Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/stap_continuous.cc:3:
In file included from stan_files/stap_continuous.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/stan_fit.hpp:22:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/RcppEigenForward.h:40:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/unsupported/Eigen/SparseExtra:51:
/Users/max/github/forks/testthat/revdep/library.noindex/rstap/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stan_files/stap_binomial.cc:3:
In file included from stan_files/stap_binomial.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/stan_fit.hpp:35:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/StanHeaders/include/stan/math/rev/mat.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/StanHeaders/include/stan/math/rev/core.hpp:45:
/Users/max/github/forks/testthat/revdep/library.noindex/rstap/StanHeaders/include/stan/math/rev/core/set_zero_all_adjoints.hpp:14:13: warning: unused function 'set_zero_all_adjoints' [-Wunused-function]
static void set_zero_all_adjoints() {
            ^
In file included from stan_files/stap_binomial.cc:3:
In file included from stan_files/stap_binomial.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/stan_fit.hpp:35:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/StanHeaders/include/stan/math/rev/mat.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/StanHeaders/include/stan/math/rev/core.hpp:46:
/Users/max/github/forks/testthat/revdep/library.noindex/rstap/StanHeaders/include/stan/math/rev/core/set_zero_all_adjoints_nested.hpp:17:13: warning: 'static' function 'set_zero_all_adjoints_nested' declared in header file should be declared 'static inline' [-Wunneeded-internal-declaration]
static void set_zero_all_adjoints_nested() {
            ^
In file included from stan_files/stap_binomial.cc:3:
In file included from stan_files/stap_binomial.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/stan_fit.hpp:35:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/StanHeaders/include/stan/math/rev/mat.hpp:12:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/StanHeaders/include/stan/math/prim/mat.hpp:336:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/StanHeaders/include/stan/math/prim/mat/prob/poisson_log_glm_log.hpp:5:
/Users/max/github/forks/testthat/revdep/library.noindex/rstap/StanHeaders/include/stan/math/prim/mat/prob/poisson_log_glm_lpmf.hpp:64:59: warning: unused typedef 'T_alpha_val' [-Wunused-local-typedef]
      typename partials_return_type<T_alpha>::type>::type T_alpha_val;
                                                          ^
In file included from stan_files/stap_binomial.cc:3:
stan_files/stap_binomial.hpp:639:30: warning: unused typedef 'fun_return_scalar_t__' [-Wunused-local-typedef]
    typedef local_scalar_t__ fun_return_scalar_t__;
                             ^
stan_files/stap_binomial.hpp:2709:24: warning: unused typedef 'local_scalar_t__' [-Wunused-local-typedef]
        typedef double local_scalar_t__;
                       ^
In file included from stan_files/stap_count.cc:3:
In file included from stan_files/stap_count.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/stan_fit.hpp:35:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/StanHeaders/include/stan/math/rev/mat.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/StanHeaders/include/stan/math/rev/core.hpp:45:
/Users/max/github/forks/testthat/revdep/library.noindex/rstap/StanHeaders/include/stan/math/rev/core/set_zero_all_adjoints.hpp:14:13: warning: unused function 'set_zero_all_adjoints' [-Wunused-function]
static void set_zero_all_adjoints() {
            ^
In file included from stan_files/stap_count.cc:3:
In file included from stan_files/stap_count.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/stan_fit.hpp:35:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/StanHeaders/include/stan/math/rev/mat.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/StanHeaders/include/stan/math/rev/core.hpp:46:
/Users/max/github/forks/testthat/revdep/library.noindex/rstap/StanHeaders/include/stan/math/rev/core/set_zero_all_adjoints_nested.hpp:17:13: warning: 'static' function 'set_zero_all_adjoints_nested' declared in header file should be declared 'static inline' [-Wunneeded-internal-declaration]
static void set_zero_all_adjoints_nested() {
            ^
In file included from stan_files/stap_count.cc:3:
In file included from stan_files/stap_count.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/stan_fit.hpp:35:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/StanHeaders/include/stan/math/rev/mat.hpp:12:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/StanHeaders/include/stan/math/prim/mat.hpp:336:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/StanHeaders/include/stan/math/prim/mat/prob/poisson_log_glm_log.hpp:5:
/Users/max/github/forks/testthat/revdep/library.noindex/rstap/StanHeaders/include/stan/math/prim/mat/prob/poisson_log_glm_lpmf.hpp:64:59: warning: unused typedef 'T_alpha_val' [-Wunused-local-typedef]
      typename partials_return_type<T_alpha>::type>::type T_alpha_val;
                                                          ^
In file included from stan_files/stap_count.cc:3:
stan_files/stap_count.hpp:639:30: warning: unused typedef 'fun_return_scalar_t__' [-Wunused-local-typedef]
    typedef local_scalar_t__ fun_return_scalar_t__;
                             ^
stan_files/stap_count.hpp:2674:24: warning: unused typedef 'local_scalar_t__' [-Wunused-local-typedef]
        typedef double local_scalar_t__;
                       ^
In file included from stan_files/stap_bernoulli.cc:3:
In file included from stan_files/stap_bernoulli.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/stan_fit.hpp:35:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/StanHeaders/include/stan/math/rev/mat.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/StanHeaders/include/stan/math/rev/core.hpp:45:
/Users/max/github/forks/testthat/revdep/library.noindex/rstap/StanHeaders/include/stan/math/rev/core/set_zero_all_adjoints.hpp:14:13: warning: unused function 'set_zero_all_adjoints' [-Wunused-function]
static void set_zero_all_adjoints() {
            ^
In file included from stan_files/stap_bernoulli.cc:3:
In file included from stan_files/stap_bernoulli.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/stan_fit.hpp:35:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/StanHeaders/include/stan/math/rev/mat.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/StanHeaders/include/stan/math/rev/core.hpp:46:
/Users/max/github/forks/testthat/revdep/library.noindex/rstap/StanHeaders/include/stan/math/rev/core/set_zero_all_adjoints_nested.hpp:17:13: warning: 'static' function 'set_zero_all_adjoints_nested' declared in header file should be declared 'static inline' [-Wunneeded-internal-declaration]
static void set_zero_all_adjoints_nested() {
            ^
In file included from stan_files/stap_bernoulli.cc:3:
In file included from stan_files/stap_bernoulli.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/stan_fit.hpp:35:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/StanHeaders/include/stan/math/rev/mat.hpp:12:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/StanHeaders/include/stan/math/prim/mat.hpp:336:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/StanHeaders/include/stan/math/prim/mat/prob/poisson_log_glm_log.hpp:5:
/Users/max/github/forks/testthat/revdep/library.noindex/rstap/StanHeaders/include/stan/math/prim/mat/prob/poisson_log_glm_lpmf.hpp:64:59: warning: unused typedef 'T_alpha_val' [-Wunused-local-typedef]
      typename partials_return_type<T_alpha>::type>::type T_alpha_val;
                                                          ^
In file included from stan_files/stap_bernoulli.cc:3:
stan_files/stap_bernoulli.hpp:611:30: warning: unused typedef 'fun_return_scalar_t__' [-Wunused-local-typedef]
    typedef local_scalar_t__ fun_return_scalar_t__;
                             ^
stan_files/stap_bernoulli.hpp:2969:24: warning: unused typedef 'local_scalar_t__' [-Wunused-local-typedef]
        typedef double local_scalar_t__;
                       ^
In file included from stan_files/stap_continuous.cc:3:
In file included from stan_files/stap_continuous.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/stan_fit.hpp:35:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/StanHeaders/include/stan/math/rev/mat.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/StanHeaders/include/stan/math/rev/core.hpp:45:
/Users/max/github/forks/testthat/revdep/library.noindex/rstap/StanHeaders/include/stan/math/rev/core/set_zero_all_adjoints.hpp:14:13: warning: unused function 'set_zero_all_adjoints' [-Wunused-function]
static void set_zero_all_adjoints() {
            ^
In file included from stan_files/stap_continuous.cc:3:
In file included from stan_files/stap_continuous.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/stan_fit.hpp:35:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/StanHeaders/include/stan/math/rev/mat.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/StanHeaders/include/stan/math/rev/core.hpp:46:
/Users/max/github/forks/testthat/revdep/library.noindex/rstap/StanHeaders/include/stan/math/rev/core/set_zero_all_adjoints_nested.hpp:17:13: warning: 'static' function 'set_zero_all_adjoints_nested' declared in header file should be declared 'static inline' [-Wunneeded-internal-declaration]
static void set_zero_all_adjoints_nested() {
            ^
In file included from stan_files/stap_continuous.cc:3:
In file included from stan_files/stap_continuous.hpp:18:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/rstaninc.hpp:3:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/rstan/include/rstan/stan_fit.hpp:35:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/StanHeaders/include/src/stan/model/test_gradients.hpp:7:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/StanHeaders/include/stan/math/rev/mat.hpp:12:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/StanHeaders/include/stan/math/prim/mat.hpp:336:
In file included from /Users/max/github/forks/testthat/revdep/library.noindex/rstap/StanHeaders/include/stan/math/prim/mat/prob/poisson_log_glm_log.hpp:5:
/Users/max/github/forks/testthat/revdep/library.noindex/rstap/StanHeaders/include/stan/math/prim/mat/prob/poisson_log_glm_lpmf.hpp:64:59: warning: unused typedef 'T_alpha_val' [-Wunused-local-typedef]
      typename partials_return_type<T_alpha>::type>::type T_alpha_val;
                                                          ^
In file included from stan_files/stap_continuous.cc:3:
stan_files/stap_continuous.hpp:639:30: warning: unused typedef 'fun_return_scalar_t__' [-Wunused-local-typedef]
    typedef local_scalar_t__ fun_return_scalar_t__;
                             ^
stan_files/stap_continuous.hpp:3254:24: warning: unused typedef 'local_scalar_t__' [-Wunused-local-typedef]
        typedef double local_scalar_t__;
                       ^
23 warnings generated.
23 warnings generated.
23 warnings generated.
23 warnings generated.
/usr/local/clang6/bin/clang++ -std=gnu++14 -dynamiclib -Wl,-headerpad_max_install_names -undefined dynamic_lookup -single_module -multiply_defined suppress -L/Library/Frameworks/R.framework/Resources/lib -L/usr/local/lib -o rstap.so stan_files/stap_bernoulli.o stan_files/stap_binomial.o stan_files/stap_continuous.o stan_files/stap_count.o init.o -F/Library/Frameworks/R.framework/.. -framework R -Wl,-framework -Wl,CoreFoundation
ld: warning: text-based stub file /System/Library/Frameworks//CoreFoundation.framework/CoreFoundation.tbd and library file /System/Library/Frameworks//CoreFoundation.framework/CoreFoundation are out of sync. Falling back to library file for linking.
rm stan_files/stap_continuous.cc stan_files/stap_bernoulli.cc stan_files/stap_count.cc stan_files/stap_binomial.cc
installing to /Users/max/github/forks/testthat/revdep/checks.noindex/rstap/old/rstap.Rcheck/00LOCK-rstap/00new/rstap/libs
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
** checking absolute paths in shared objects and dynamic libraries
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (rstap)

```
# seminr

<details>

* Version: 0.7.0
* Source code: https://github.com/cran/seminr
* Date/Publication: 2019-05-07 08:50:02 UTC
* Number of recursive dependencies: 26

Run `revdep_details(,"seminr")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    ...
    > mobi_sm <- relationships(
    +   paths(to = "Satisfaction",
    +         from = c("Image", "Expectation", "Value",
    +                  "Image*Expectation", "Image*Value"))
    + )
    > 
    > seminr_model <- estimate_pls(data = mobi,
    +                              measurement_model = mobi_mm,
    +                              interactions = mobi_xm,
    +                              structural_model = mobi_sm)
    Generating the seminr model
    All 250 observations are valid.
    > 
    > # Load data, assemble model, and bootstrap
    > boot_seminr_model <- bootstrap_model(seminr_model = seminr_model,
    +                                      nboot = 50, cores = 2, seed = NULL)
    Bootstrapping model using seminr...
    Bootstrapping encountered this ERROR: 
    cannot open the connectionError in parallel::stopCluster(cl) : object 'cl' not found
    Calls: bootstrap_model ... tryCatchOne -> <Anonymous> -> <Anonymous> -> defaultCluster
    Execution halted
    ```

# surveillance

<details>

* Version: 1.17.0
* Source code: https://github.com/cran/surveillance
* URL: http://surveillance.R-Forge.R-project.org/
* Date/Publication: 2019-02-22 14:30:02 UTC
* Number of recursive dependencies: 127

Run `revdep_details(,"surveillance")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    ...
    length(x) = 10 
    length(x) = 7 
    length(x) = 4 
    > 
    > ## setting the seed for reproducibility of results involving the RNG
    > samp <- plapply(as.list(1:3), runif, .seed = 1)
    ...
    > 
    > ## parallel lapply()
    > res <- plapply(x, quantile, probs = 1:3/4, .parallel = 2)
    ...
    > 
    > ## using a predefined cluster
    > library("parallel")
    > cl <- makeCluster(getOption("cl.cores", 2))
    Warning in socketConnection("localhost", port = port, server = TRUE, blocking = TRUE,  :
      port 11953 cannot be opened
    Error in socketConnection("localhost", port = port, server = TRUE, blocking = TRUE,  : 
      cannot open the connection
    Calls: makeCluster ... makePSOCKcluster -> newPSOCKnode -> socketConnection
    Execution halted
    ```

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘INLA’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  7.2Mb
      sub-directories of 1Mb or more:
        R      2.0Mb
        doc    2.3Mb
        help   1.0Mb
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘scoringRules’
    ```

