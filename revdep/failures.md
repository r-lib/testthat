# ANN2

Version: 2.3.1

## In both

*   checking whether package ‘ANN2’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/ANN2/new/ANN2.Rcheck/00install.out’ for details.
    ```

# apollo

Version: 0.0.6

## In both

*   checking whether package ‘apollo’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/apollo/new/apollo.Rcheck/00install.out’ for details.
    ```

# av

Version: 0.2

## In both

*   checking whether package ‘av’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/av/new/av.Rcheck/00install.out’ for details.
    ```

# BASiCS

Version: 1.4.7

## In both

*   R CMD check timed out
    

*   checking installed package size ... NOTE
    ```
      installed size is  5.3Mb
      sub-directories of 1Mb or more:
        data   2.0Mb
        doc    1.3Mb
    ```

# bayesdfa

Version: 0.1.2

## In both

*   R CMD check timed out
    

*   checking installed package size ... NOTE
    ```
      installed size is  5.5Mb
      sub-directories of 1Mb or more:
        libs   4.7Mb
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# BayesRS

Version: 0.1.3

## In both

*   checking whether package ‘BayesRS’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/BayesRS/new/BayesRS.Rcheck/00install.out’ for details.
    ```

# beanz

Version: 2.4

## In both

*   R CMD check timed out
    

# BgeeDB

Version: 2.8.0

## In both

*   checking whether package ‘BgeeDB’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/BgeeDB/new/BgeeDB.Rcheck/00install.out’ for details.
    ```

# BIEN

Version: 1.2.3

## In both

*   R CMD check timed out
    

# biglasso

Version: 1.3-6

## In both

*   checking whether package ‘biglasso’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/biglasso/new/biglasso.Rcheck/00install.out’ for details.
    ```

# bioCancer

Version: 

## Error before installation

### Devel

```

  There are binary versions available but the source versions are later:
          binary   source needs_compilation
fs         1.2.6    1.2.7              TRUE
MASS    7.3-51.1 7.3-51.3              TRUE
Matrix    1.2-16   1.2-17              TRUE
mgcv      1.8-27   1.8-28              TRUE
openssl    1.2.2      1.3              TRUE
rlang      0.3.1    0.3.3              TRUE

  Binaries will be installed


installing the source packages ‘GO.db’, ‘org.Hs.eg.db’, ‘reactome.db’



```
### CRAN

```

  There are binary versions available but the source versions are later:
          binary   source needs_compilation
fs         1.2.6    1.2.7              TRUE
MASS    7.3-51.1 7.3-51.3              TRUE
Matrix    1.2-16   1.2-17              TRUE
mgcv      1.8-27   1.8-28              TRUE
openssl    1.2.2      1.3              TRUE
rlang      0.3.1    0.3.3              TRUE

  Binaries will be installed


installing the source packages ‘GO.db’, ‘org.Hs.eg.db’, ‘reactome.db’



```
# BioCor

Version: 

## Error before installation

### Devel

```

  There are binary versions available but the source versions are later:
                   binary      source needs_compilation
MASS             7.3-51.1    7.3-51.3              TRUE
Matrix             1.2-16      1.2-17              TRUE
mgcv               1.8-27      1.8-28              TRUE
RcppArmadillo 0.9.200.7.1 0.9.300.2.0              TRUE
rlang               0.3.1       0.3.3              TRUE
survival           2.43-3    2.44-1.1              TRUE

  Binaries will be installed


installing the source packages ‘airway’, ‘GO.db’, ‘org.Hs.eg.db’, ‘reactome.db’, ‘targetscan.Hs.eg.db’



```
### CRAN

```

  There are binary versions available but the source versions are later:
                   binary      source needs_compilation
MASS             7.3-51.1    7.3-51.3              TRUE
Matrix             1.2-16      1.2-17              TRUE
mgcv               1.8-27      1.8-28              TRUE
RcppArmadillo 0.9.200.7.1 0.9.300.2.0              TRUE
rlang               0.3.1       0.3.3              TRUE
survival           2.43-3    2.44-1.1              TRUE

  Binaries will be installed


installing the source packages ‘airway’, ‘GO.db’, ‘org.Hs.eg.db’, ‘reactome.db’, ‘targetscan.Hs.eg.db’



```
# BIOMASS

Version: 2.1

## In both

*   R CMD check timed out
    

# BPRMeth

Version: 1.8.1

## In both

*   checking whether package ‘BPRMeth’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/BPRMeth/new/BPRMeth.Rcheck/00install.out’ for details.
    ```

# bsseq

Version: 1.18.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      
      > test_check("bsseq")
      [31m──[39m [31m1. Error: Expected parallelisation backends work with in-memory realization backend (@test_BSmoot[39m
      BatchJobsParam() requires the 'BatchJobs' package
      1: BSmooth(bsseq_test, BPPARAM = BatchJobsParam(2, progressbar = FALSE)) at testthat/test_BSmooth.R:64
      2: is(BPPARAM, "SnowParam") at /Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/bsseq/new/bsseq.Rcheck/00_pkg_src/bsseq/R/BSmooth.R:260
      3: BatchJobsParam(2, progressbar = FALSE) at /Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/bsseq/new/bsseq.Rcheck/00_pkg_src/bsseq/R/BSmooth.R:260
      4: stop("BatchJobsParam() requires the 'BatchJobs' package")
      
      ══ testthat results  ═══════════════════════════════════════════════════════════════════════════════
      OK: 131 SKIPPED: 6 WARNINGS: 4 FAILED: 1
      1. Error: Expected parallelisation backends work with in-memory realization backend (@test_BSmooth.R#64) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   R CMD check timed out
    

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      ‘bsseqData’ ‘BSgenome.Hsapiens.UCSC.hg38’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 16.0Mb
      sub-directories of 1Mb or more:
        R      2.1Mb
        data   7.0Mb
        doc    1.9Mb
        libs   4.8Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported objects imported by ':::' calls:
      ‘BiocGenerics:::replaceSlots’ ‘DelayedArray:::.normarg_grid’
      ‘DelayedArray:::get_verbose_block_processing’
      ‘GenomicRanges:::.extract_groups_from_GenomicRanges’
      ‘GenomicRanges:::.get_circle_length’
      ‘GenomicRanges:::extraColumnSlotNames’ ‘HDF5Array:::.create_dir’
      ‘HDF5Array:::.shorten_h5_paths’
      ‘IRanges:::.shift_ranges_in_groups_to_first_circle’
      ‘S4Vectors:::make_zero_col_DataFrame’ ‘S4Vectors:::new_DataFrame’
      ‘S4Vectors:::normalize_names_replacement_value’
      ‘S4Vectors:::numeric2integer’ ‘S4Vectors:::sapply_isNULL’
      ‘data.table:::funique’
      See the note in ?`:::` about the use of this operator.
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘bsseqData’
    ```

# bssm

Version: 0.1.6-1

## In both

*   checking whether package ‘bssm’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/bssm/new/bssm.Rcheck/00install.out’ for details.
    ```

# CAMTHC

Version: 1.0.0

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > test_check("CAMTHC")
      [31m──[39m [31m1. Error: corners are detected correctly (@test_corner_sort.R#8) [39m [31m───────────────────────────────[39m
      'vec_is' is not an exported object from 'namespace:vctrs'
      1: expect_setequal(c(topconv$idx), c(3, 4, 5)) at testthat/test_corner_sort.R:8
      2: vctrs::vec_is at /private/tmp/RtmpsgTGOA/R.INSTALL166ff2286b6d1/testthat/R/expect-setequal.R:18
      3: getExportedValue(pkg, name)
      4: stop(gettextf("'%s' is not an exported object from 'namespace:%s'", name, getNamespaceName(ns)), call. = FALSE, 
             domain = NA)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════════════════════════
      OK: 4 SKIPPED: 0 WARNINGS: 0 FAILED: 1
      1. Error: corners are detected correctly (@test_corner_sort.R#8) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

## In both

*   R CMD check timed out
    

# canceR

Version: 1.16.01

## In both

*   R CMD check timed out
    

# catSurv

Version: 1.0.3

## In both

*   checking whether package ‘catSurv’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/catSurv/new/catSurv.Rcheck/00install.out’ for details.
    ```

# ChIPpeakAnno

Version: 

## Error before installation

### Devel

```

  There are binary versions available but the source versions are later:
           binary   source needs_compilation
MASS     7.3-51.1 7.3-51.3              TRUE
Matrix     1.2-16   1.2-17              TRUE
mgcv       1.8-27   1.8-28              TRUE
openssl     1.2.2      1.3              TRUE
rlang       0.3.1    0.3.3              TRUE
survival   2.43-3 2.44-1.1              TRUE

  Binaries will be installed


installing the source packages ‘BSgenome.Celegans.UCSC.ce10’, ‘BSgenome.Drerio.UCSC.danRer7’, ‘BSgenome.Ecoli.NCBI.20080805’, ‘BSgenome.Hsapiens.UCSC.hg19’, ‘EnsDb.Hsapiens.v75’, ‘EnsDb.Hsapiens.v79’, ‘GO.db’, ‘org.Ce.eg.db’, ‘org.Hs.eg.db’, ‘reactome.db’



```
### CRAN

```

  There are binary versions available but the source versions are later:
           binary   source needs_compilation
MASS     7.3-51.1 7.3-51.3              TRUE
Matrix     1.2-16   1.2-17              TRUE
mgcv       1.8-27   1.8-28              TRUE
openssl     1.2.2      1.3              TRUE
rlang       0.3.1    0.3.3              TRUE
survival   2.43-3 2.44-1.1              TRUE

  Binaries will be installed


installing the source packages ‘BSgenome.Celegans.UCSC.ce10’, ‘BSgenome.Drerio.UCSC.danRer7’, ‘BSgenome.Ecoli.NCBI.20080805’, ‘BSgenome.Hsapiens.UCSC.hg19’, ‘EnsDb.Hsapiens.v75’, ‘EnsDb.Hsapiens.v79’, ‘GO.db’, ‘org.Ce.eg.db’, ‘org.Hs.eg.db’, ‘reactome.db’



```
# ChIPseeker

Version: 

## Error before installation

### Devel

```

  There are binary versions available but the source versions are later:
          binary   source needs_compilation
MASS    7.3-51.1 7.3-51.3              TRUE
Matrix    1.2-16   1.2-17              TRUE
mgcv      1.8-27   1.8-28              TRUE
openssl    1.2.2      1.3              TRUE
rlang      0.3.1    0.3.3              TRUE

  Binaries will be installed


installing the source packages ‘GO.db’, ‘org.Hs.eg.db’, ‘reactome.db’



```
### CRAN

```

  There are binary versions available but the source versions are later:
          binary   source needs_compilation
MASS    7.3-51.1 7.3-51.3              TRUE
Matrix    1.2-16   1.2-17              TRUE
mgcv      1.8-27   1.8-28              TRUE
openssl    1.2.2      1.3              TRUE
rlang      0.3.1    0.3.3              TRUE

  Binaries will be installed


installing the source packages ‘GO.db’, ‘org.Hs.eg.db’, ‘reactome.db’



```
# chromVAR

Version: 1.4.1

## In both

*   checking whether package ‘chromVAR’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/chromVAR/new/chromVAR.Rcheck/00install.out’ for details.
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘BSgenome.Hsapiens.UCSC.hg19’
    ```

# cicero

Version: 1.0.15

## In both

*   R CMD check timed out
    

*   checking R code for possible problems ... NOTE
    ```
    aggregate_nearby_peaks: no visible binding for global variable 'val'
      (/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/cicero/new/cicero.Rcheck/00_pkg_src/cicero/R/aggregate.R:37)
    assemble_connections: no visible binding for global variable 'value'
      (/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/cicero/new/cicero.Rcheck/00_pkg_src/cicero/R/runCicero.R:640-641)
    find_overlapping_ccans: no visible binding for global variable 'CCAN'
      (/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/cicero/new/cicero.Rcheck/00_pkg_src/cicero/R/runCicero.R:919-922)
    generate_windows: no visible binding for global variable 'V1'
      (/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/cicero/new/cicero.Rcheck/00_pkg_src/cicero/R/runCicero.R:663-667)
    plot_accessibility_in_pseudotime: no visible binding for global
      variable 'f_id'
      (/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/cicero/new/cicero.Rcheck/00_pkg_src/cicero/R/plotting.R:676-695)
    Undefined global functions or variables:
      CCAN V1 f_id val value
    ```

# CINdex

Version: 

## Error before installation

### Devel

```

  There are binary versions available but the source versions are later:
           binary   source needs_compilation
MASS     7.3-51.1 7.3-51.3              TRUE
Matrix     1.2-16   1.2-17              TRUE
mgcv       1.8-27   1.8-28              TRUE
openssl     1.2.2      1.3              TRUE
rlang       0.3.1    0.3.3              TRUE
survival   2.43-3 2.44-1.1              TRUE

  Binaries will be installed


installing the source packages ‘GO.db’, ‘Homo.sapiens’, ‘org.Hs.eg.db’, ‘pd.genomewidesnp.6’, ‘reactome.db’, ‘TxDb.Hsapiens.UCSC.hg18.knownGene’



```
### CRAN

```

  There are binary versions available but the source versions are later:
           binary   source needs_compilation
MASS     7.3-51.1 7.3-51.3              TRUE
Matrix     1.2-16   1.2-17              TRUE
mgcv       1.8-27   1.8-28              TRUE
openssl     1.2.2      1.3              TRUE
rlang       0.3.1    0.3.3              TRUE
survival   2.43-3 2.44-1.1              TRUE

  Binaries will be installed


installing the source packages ‘GO.db’, ‘Homo.sapiens’, ‘org.Hs.eg.db’, ‘pd.genomewidesnp.6’, ‘reactome.db’, ‘TxDb.Hsapiens.UCSC.hg18.knownGene’



```
# circumplex

Version: 0.2.1

## In both

*   checking whether package ‘circumplex’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/circumplex/new/circumplex.Rcheck/00install.out’ for details.
    ```

# cliqueMS

Version: 0.3.0

## In both

*   checking whether package ‘cliqueMS’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/cliqueMS/new/cliqueMS.Rcheck/00install.out’ for details.
    ```

# clusterExperiment

Version: 2.2.0

## In both

*   R CMD check timed out
    

*   checking installed package size ... NOTE
    ```
      installed size is 15.9Mb
      sub-directories of 1Mb or more:
        R     3.1Mb
        doc  11.4Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    ':::' call which should be '::': ‘ape:::reorder.phylo’
      See the note in ?`:::` about the use of this operator.
    ```

*   checking foreign function calls ... NOTE
    ```
    Foreign function calls to a different package:
      .C(ape::node_depth, ...)
      .C(ape::node_depth_edgelength, ...)
      .C(ape::node_height, ...)
      .C(ape::node_height_clado, ...)
    See chapter ‘System and foreign language interfaces’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘ConsensusClusterPlus’
    ```

# clusterProfiler

Version: 

## Error before installation

### Devel

```

  There are binary versions available but the source versions are later:
          binary   source needs_compilation
MASS    7.3-51.1 7.3-51.3              TRUE
Matrix    1.2-16   1.2-17              TRUE
mgcv      1.8-27   1.8-28              TRUE
openssl    1.2.2      1.3              TRUE
rlang      0.3.1    0.3.3              TRUE

  Binaries will be installed


installing the source packages ‘GO.db’, ‘KEGG.db’, ‘org.Hs.eg.db’, ‘reactome.db’



```
### CRAN

```

  There are binary versions available but the source versions are later:
          binary   source needs_compilation
MASS    7.3-51.1 7.3-51.3              TRUE
Matrix    1.2-16   1.2-17              TRUE
mgcv      1.8-27   1.8-28              TRUE
openssl    1.2.2      1.3              TRUE
rlang      0.3.1    0.3.3              TRUE

  Binaries will be installed


installing the source packages ‘GO.db’, ‘KEGG.db’, ‘org.Hs.eg.db’, ‘reactome.db’



```
# ClusterR

Version: 1.1.8

## In both

*   checking whether package ‘ClusterR’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/ClusterR/new/ClusterR.Rcheck/00install.out’ for details.
    ```

# CNPBayes

Version: 1.12.0

## In both

*   R CMD check timed out
    

*   checking installed package size ... NOTE
    ```
      installed size is  7.1Mb
      sub-directories of 1Mb or more:
        R     2.0Mb
        doc   3.5Mb
    ```

# coga

Version: 1.0.0

## In both

*   checking whether package ‘coga’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/coga/new/coga.Rcheck/00install.out’ for details.
    ```

# CoGAPS

Version: 3.2.40

## Newly broken

*   R CMD check timed out
    

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 21.9Mb
      sub-directories of 1Mb or more:
        extdata  19.6Mb
    ```

*   checking compiled code ... NOTE
    ```
    ...
    File ‘CoGAPS/libs/CoGAPS.so’:
      Found ‘__ZNSt3__14coutE’, possibly from ‘std::cout’ (C++)
        Objects: ‘GapsResult.o’, ‘GapsRunner.o’, ‘file_parser/CsvParser.o’,
          ‘file_parser/FileParser.o’, ‘file_parser/GctParser.o’,
          ‘file_parser/TsvParser.o’, ‘file_parser/MtxParser.o’
      Found ‘___stdoutp’, possibly from ‘stdout’ (C)
        Object: ‘GapsRunner.o’
      Found ‘_printf’, possibly from ‘printf’ (C)
        Objects: ‘GapsParameters.o’, ‘GapsRunner.o’,
          ‘file_parser/CsvParser.o’, ‘file_parser/GctParser.o’,
          ‘file_parser/TsvParser.o’
      Found ‘_putchar’, possibly from ‘putchar’ (C)
        Object: ‘GapsParameters.o’
      Found ‘_puts’, possibly from ‘printf’ (C), ‘puts’ (C)
        Objects: ‘GapsParameters.o’, ‘GapsRunner.o’
    
    Compiled code should not call entry points which might terminate R nor
    write to stdout/stderr instead of to the console, nor use Fortran I/O
    nor system RNGs.
    
    See ‘Writing portable packages’ in the ‘Writing R Extensions’ manual.
    ```

# ctsem

Version: 2.8.2

## In both

*   R CMD check timed out
    

# DaMiRseq

Version: 1.6.2

## In both

*   R CMD check timed out
    

*   checking installed package size ... NOTE
    ```
      installed size is  7.1Mb
      sub-directories of 1Mb or more:
        data   6.0Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    DaMiR.EnsembleLearning2cl_Training: no visible global function
      definition for ‘colSds’
      (/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/DaMiRseq/new/DaMiRseq.Rcheck/00_pkg_src/DaMiRseq/R/Classif_2_Classes_Training.R:724-729)
    DaMiR.EnsembleLearning2cl_Training: no visible global function
      definition for ‘colSds’
      (/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/DaMiRseq/new/DaMiRseq.Rcheck/00_pkg_src/DaMiRseq/R/Classif_2_Classes_Training.R:730-735)
    DaMiR.EnsembleLearningNcl: no visible binding for global variable
      ‘Classifiers’
      (/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/DaMiRseq/new/DaMiRseq.Rcheck/00_pkg_src/DaMiRseq/R/Classif_3_Classes.R:478-489)
    DaMiR.EnsembleLearningNcl: no visible binding for global variable
      ‘Accuracy’
      (/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/DaMiRseq/new/DaMiRseq.Rcheck/00_pkg_src/DaMiRseq/R/Classif_3_Classes.R:478-489)
    DaMiR.EnsembleLearningNcl: no visible global function definition for
      ‘colSds’
      (/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/DaMiRseq/new/DaMiRseq.Rcheck/00_pkg_src/DaMiRseq/R/Classif_3_Classes.R:491-496)
    DaMiR.MDSplot: no visible binding for global variable ‘X1’
      (/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/DaMiRseq/new/DaMiRseq.Rcheck/00_pkg_src/DaMiRseq/R/plot.R:380-382)
    DaMiR.MDSplot: no visible binding for global variable ‘X2’
      (/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/DaMiRseq/new/DaMiRseq.Rcheck/00_pkg_src/DaMiRseq/R/plot.R:380-382)
    Undefined global functions or variables:
      Accuracy Classifiers MCC NPV PPV Sensitivity Specificity X1 X2 colSds
    ```

# dcurver

Version: 0.9.1

## In both

*   checking whether package ‘dcurver’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/dcurver/new/dcurver.Rcheck/00install.out’ for details.
    ```

# DelayedMatrixStats

Version: 1.4.0

## In both

*   R CMD check timed out
    

*   checking dependencies in R code ... NOTE
    ```
    Missing objects imported by ':::' calls:
      ‘DelayedArray:::.execute_delayed_ops’
      ‘DelayedArray:::get_Nindex_names_along’
    Unexported objects imported by ':::' calls:
      ‘DelayedArray:::.get_ans_type’
      ‘DelayedArray:::.reduce_array_dimensions’
      ‘DelayedArray:::RleArraySeed’ ‘DelayedArray:::colblock_APPLY’
      ‘DelayedArray:::get_Nindex_lengths’
      ‘DelayedArray:::get_verbose_block_processing’
      ‘DelayedArray:::set_dim’ ‘DelayedArray:::set_dimnames’
      ‘DelayedArray:::subset_by_Nindex’ ‘DelayedArray:::to_linear_index’
      See the note in ?`:::` about the use of this operator.
    ```

# DepthProc

Version: 2.0.4

## In both

*   checking whether package ‘DepthProc’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/DepthProc/new/DepthProc.Rcheck/00install.out’ for details.
    ```

# DEScan2

Version: 1.2.1

## In both

*   checking whether package ‘DEScan2’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/DEScan2/new/DEScan2.Rcheck/00install.out’ for details.
    ```

# dfConn

Version: 0.1.1

## In both

*   checking whether package ‘dfConn’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/dfConn/new/dfConn.Rcheck/00install.out’ for details.
    ```

# DGM

Version: 1.7.2

## In both

*   checking whether package ‘DGM’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/DGM/new/DGM.Rcheck/00install.out’ for details.
    ```

# DiffBind

Version: 2.10.0

## In both

*   checking whether package ‘DiffBind’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/DiffBind/new/DiffBind.Rcheck/00install.out’ for details.
    ```

*   checking package dependencies ... NOTE
    ```
    Packages which this enhances but not available for checking:
      ‘rgl’ ‘XLConnect’
    ```

# dina

Version: 2.0.0

## In both

*   checking whether package ‘dina’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/dina/new/dina.Rcheck/00install.out’ for details.
    ```

# dynamichazard

Version: 0.6.4

## In both

*   checking whether package ‘dynamichazard’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/dynamichazard/new/dynamichazard.Rcheck/00install.out’ for details.
    ```

# dynr

Version: 0.1.14-9

## In both

*   checking whether package ‘dynr’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/dynr/new/dynr.Rcheck/00install.out’ for details.
    ```

# eggCounts

Version: 2.1-2

## In both

*   R CMD check timed out
    

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘eggCountsExtra’
    ```

# ELMER

Version: 2.6.3

## In both

*   checking whether package ‘ELMER’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/ELMER/new/ELMER.Rcheck/00install.out’ for details.
    ```

# elmNNRcpp

Version: 1.0.1

## In both

*   checking whether package ‘elmNNRcpp’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/elmNNRcpp/new/elmNNRcpp.Rcheck/00install.out’ for details.
    ```

# esATAC

Version: 1.4.5

## In both

*   checking whether package ‘esATAC’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/esATAC/new/esATAC.Rcheck/00install.out’ for details.
    ```

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      ‘BSgenome.Hsapiens.UCSC.hg19’ ‘org.Hs.eg.db’
    ```

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .BBSoptions
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

# fgsea

Version: 

## Error before installation

### Devel

```

  There are binary versions available but the source versions are later:
          binary   source needs_compilation
MASS    7.3-51.1 7.3-51.3              TRUE
Matrix    1.2-16   1.2-17              TRUE
mgcv      1.8-27   1.8-28              TRUE
openssl    1.2.2      1.3              TRUE
rlang      0.3.1    0.3.3              TRUE

  Binaries will be installed


installing the source packages ‘org.Mm.eg.db’, ‘reactome.db’



```
### CRAN

```

  There are binary versions available but the source versions are later:
          binary   source needs_compilation
MASS    7.3-51.1 7.3-51.3              TRUE
Matrix    1.2-16   1.2-17              TRUE
mgcv      1.8-27   1.8-28              TRUE
openssl    1.2.2      1.3              TRUE
rlang      0.3.1    0.3.3              TRUE

  Binaries will be installed


installing the source packages ‘org.Mm.eg.db’, ‘reactome.db’



```
# FlowSorted.Blood.EPIC

Version: 

## Error before installation

### Devel

```

  There are binary versions available but the source versions are later:
           binary   source needs_compilation
MASS     7.3-51.1 7.3-51.3              TRUE
Matrix     1.2-16   1.2-17              TRUE
openssl     1.2.2      1.3              TRUE
rlang       0.3.1    0.3.3              TRUE
survival   2.43-3 2.44-1.1              TRUE

  Binaries will be installed


installing the source packages ‘FlowSorted.Blood.450k’, ‘FlowSorted.CordBlood.450k’, ‘FlowSorted.CordBloodNorway.450k’, ‘IlluminaHumanMethylation450kanno.ilmn12.hg19’, ‘IlluminaHumanMethylation450kmanifest’, ‘IlluminaHumanMethylationEPICanno.ilm10b2.hg19’, ‘IlluminaHumanMethylationEPICanno.ilm10b4.hg19’



```
### CRAN

```

  There are binary versions available but the source versions are later:
           binary   source needs_compilation
MASS     7.3-51.1 7.3-51.3              TRUE
Matrix     1.2-16   1.2-17              TRUE
openssl     1.2.2      1.3              TRUE
rlang       0.3.1    0.3.3              TRUE
survival   2.43-3 2.44-1.1              TRUE

  Binaries will be installed


installing the source packages ‘FlowSorted.Blood.450k’, ‘FlowSorted.CordBlood.450k’, ‘FlowSorted.CordBloodNorway.450k’, ‘IlluminaHumanMethylation450kanno.ilmn12.hg19’, ‘IlluminaHumanMethylation450kmanifest’, ‘IlluminaHumanMethylationEPICanno.ilm10b2.hg19’, ‘IlluminaHumanMethylationEPICanno.ilm10b4.hg19’



```
# FSelectorRcpp

Version: 0.3.0

## In both

*   checking whether package ‘FSelectorRcpp’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/FSelectorRcpp/new/FSelectorRcpp.Rcheck/00install.out’ for details.
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘RTCGA.rnaseq’
    ```

# fst

Version: 0.8.10

## In both

*   checking whether package ‘fst’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/fst/new/fst.Rcheck/00install.out’ for details.
    ```

# gastempt

Version: 0.4.4

## In both

*   R CMD check timed out
    

# genie

Version: 1.0.4

## In both

*   checking whether package ‘genie’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/genie/new/genie.Rcheck/00install.out’ for details.
    ```

# geojsonR

Version: 1.0.6

## In both

*   checking whether package ‘geojsonR’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/geojsonR/new/geojsonR.Rcheck/00install.out’ for details.
    ```

# geometa

Version: 0.4-0

## In both

*   R CMD check timed out
    

*   checking installed package size ... NOTE
    ```
      installed size is 10.0Mb
      sub-directories of 1Mb or more:
        R         8.0Mb
        extdata   1.3Mb
    ```

# glmmsr

Version: 0.2.3

## In both

*   R CMD check timed out
    

# gpuR

Version: 2.0.0

## In both

*   R CMD check timed out
    

# graphite

Version: 1.28.2

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘graphite-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: convertIdentifiers
    > ### Title: Convert the node identifiers of a pathway.
    > ### Aliases: convertIdentifiers
    > 
    > ### ** Examples
    > 
    >   r <- pathways("hsapiens", "reactome")
    >   convertIdentifiers(r$`mTOR signalling`, "symbol")
    Warning in library(package, lib.loc = lib.loc, character.only = TRUE, logical.return = TRUE,  :
      there is no package called ‘org.Hs.eg.db’
    Error: package "org.Hs.eg.db" is missing
    Execution halted
    ```

*   R CMD check timed out
    

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      ‘hgu133plus2.db’ ‘hgu95av2.db’ ‘org.Hs.eg.db’
    ```

# gWidgets2tcltk

Version: 1.0-6

## In both

*   checking whether package ‘gWidgets2tcltk’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/gWidgets2tcltk/new/gWidgets2tcltk.Rcheck/00install.out’ for details.
    ```

# heatwaveR

Version: 0.3.6

## In both

*   checking whether package ‘heatwaveR’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/heatwaveR/new/heatwaveR.Rcheck/00install.out’ for details.
    ```

# hipathia

Version: 1.4.1

## In both

*   R CMD check timed out
    

*   checking installed package size ... NOTE
    ```
      installed size is 10.6Mb
      sub-directories of 1Mb or more:
        data      3.8Mb
        doc       1.7Mb
        extdata   4.3Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    There are ::: calls to the package's namespace in its code. A package
      almost never needs to use ::: for its own objects:
      ‘load_entrez_hgnc’
    ```

*   checking R code for possible problems ... NOTE
    ```
    heatmap_plot: no visible binding for global variable ‘var’
      (/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/hipathia/new/hipathia.Rcheck/00_pkg_src/hipathia/R/chart.R:115)
    Undefined global functions or variables:
      var
    Consider adding
      importFrom("stats", "var")
    to your NAMESPACE file.
    ```

# hogsvdR

Version: 0.1

## In both

*   checking whether package ‘hogsvdR’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/hogsvdR/new/hogsvdR.Rcheck/00install.out’ for details.
    ```

# HTSSIP

Version: 1.4.0

## In both

*   R CMD check timed out
    

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘igraph’
      All declared Imports should be used.
    ```

# iccbeta

Version: 1.2.0

## In both

*   checking whether package ‘iccbeta’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/iccbeta/new/iccbeta.Rcheck/00install.out’ for details.
    ```

# imager

Version: 0.41.2

## In both

*   R CMD check timed out
    

*   checking installed package size ... NOTE
    ```
      installed size is 14.8Mb
      sub-directories of 1Mb or more:
        data      1.4Mb
        doc       5.3Mb
        include   2.8Mb
        libs      3.1Mb
    ```

# irregulAR1

Version: 1.0.0

## In both

*   checking whether package ‘irregulAR1’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/irregulAR1/new/irregulAR1.Rcheck/00install.out’ for details.
    ```

# island

Version: 0.2.3

## In both

*   checking whether package ‘island’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/island/new/island.Rcheck/00install.out’ for details.
    ```

# JointAI

Version: 0.5.0

## In both

*   checking whether package ‘JointAI’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/JointAI/new/JointAI.Rcheck/00install.out’ for details.
    ```

# jqr

Version: 1.1.0

## In both

*   checking whether package ‘jqr’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/jqr/new/jqr.Rcheck/00install.out’ for details.
    ```

# KernelKnn

Version: 1.0.8

## In both

*   checking whether package ‘KernelKnn’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/KernelKnn/new/KernelKnn.Rcheck/00install.out’ for details.
    ```

# kmcudaR

Version: 1.1.0

## In both

*   checking whether package ‘kmcudaR’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/kmcudaR/new/kmcudaR.Rcheck/00install.out’ for details.
    ```

# knockoff

Version: 0.3.2

## In both

*   R CMD check timed out
    

# KRIG

Version: 0.1.0

## In both

*   checking whether package ‘KRIG’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/KRIG/new/KRIG.Rcheck/00install.out’ for details.
    ```

# libstableR

Version: 1.0.2

## In both

*   checking whether package ‘libstableR’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/libstableR/new/libstableR.Rcheck/00install.out’ for details.
    ```

# lpirfs

Version: 0.1.4

## In both

*   checking whether package ‘lpirfs’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/lpirfs/new/lpirfs.Rcheck/00install.out’ for details.
    ```

# mcmcabn

Version: 0.1

## In both

*   checking whether package ‘mcmcabn’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/mcmcabn/new/mcmcabn.Rcheck/00install.out’ for details.
    ```

# MEAL

Version: 

## Error before installation

### Devel

```

  There are binary versions available but the source versions are later:
           binary   source needs_compilation
MASS     7.3-51.1 7.3-51.3              TRUE
Matrix     1.2-16   1.2-17              TRUE
mgcv       1.8-27   1.8-28              TRUE
openssl     1.2.2      1.3              TRUE
rlang       0.3.1    0.3.3              TRUE
survival   2.43-3 2.44-1.1              TRUE

  Binaries will be installed


installing the source packages ‘brgedata’, ‘DMRcatedata’, ‘FDb.InfiniumMethylation.hg19’, ‘GO.db’, ‘IlluminaHumanMethylation450kanno.ilmn12.hg19’, ‘IlluminaHumanMethylation450kmanifest’, ‘IlluminaHumanMethylationEPICanno.ilm10b2.hg19’, ‘IlluminaHumanMethylationEPICanno.ilm10b4.hg19’, ‘IlluminaHumanMethylationEPICmanifest’, ‘minfiData’, ‘org.Hs.eg.db’



```
### CRAN

```

  There are binary versions available but the source versions are later:
           binary   source needs_compilation
MASS     7.3-51.1 7.3-51.3              TRUE
Matrix     1.2-16   1.2-17              TRUE
mgcv       1.8-27   1.8-28              TRUE
openssl     1.2.2      1.3              TRUE
rlang       0.3.1    0.3.3              TRUE
survival   2.43-3 2.44-1.1              TRUE

  Binaries will be installed


installing the source packages ‘brgedata’, ‘DMRcatedata’, ‘FDb.InfiniumMethylation.hg19’, ‘GO.db’, ‘IlluminaHumanMethylation450kanno.ilmn12.hg19’, ‘IlluminaHumanMethylation450kmanifest’, ‘IlluminaHumanMethylationEPICanno.ilm10b2.hg19’, ‘IlluminaHumanMethylationEPICanno.ilm10b4.hg19’, ‘IlluminaHumanMethylationEPICmanifest’, ‘minfiData’, ‘org.Hs.eg.db’



```
# methylGSA

Version: 

## Error before installation

### Devel

```

  There are binary versions available but the source versions are later:
           binary   source needs_compilation
MASS     7.3-51.1 7.3-51.3              TRUE
Matrix     1.2-16   1.2-17              TRUE
mgcv       1.8-27   1.8-28              TRUE
openssl     1.2.2      1.3              TRUE
rlang       0.3.1    0.3.3              TRUE
survival   2.43-3 2.44-1.1              TRUE

  Binaries will be installed


installing the source packages ‘FDb.InfiniumMethylation.hg19’, ‘GO.db’, ‘IlluminaHumanMethylation450kanno.ilmn12.hg19’, ‘IlluminaHumanMethylation450kmanifest’, ‘IlluminaHumanMethylationEPICanno.ilm10b2.hg19’, ‘IlluminaHumanMethylationEPICanno.ilm10b4.hg19’, ‘IlluminaHumanMethylationEPICmanifest’, ‘org.Hs.eg.db’, ‘reactome.db’



```
### CRAN

```

  There are binary versions available but the source versions are later:
           binary   source needs_compilation
MASS     7.3-51.1 7.3-51.3              TRUE
Matrix     1.2-16   1.2-17              TRUE
mgcv       1.8-27   1.8-28              TRUE
openssl     1.2.2      1.3              TRUE
rlang       0.3.1    0.3.3              TRUE
survival   2.43-3 2.44-1.1              TRUE

  Binaries will be installed


installing the source packages ‘FDb.InfiniumMethylation.hg19’, ‘GO.db’, ‘IlluminaHumanMethylation450kanno.ilmn12.hg19’, ‘IlluminaHumanMethylation450kmanifest’, ‘IlluminaHumanMethylationEPICanno.ilm10b2.hg19’, ‘IlluminaHumanMethylationEPICanno.ilm10b4.hg19’, ‘IlluminaHumanMethylationEPICmanifest’, ‘org.Hs.eg.db’, ‘reactome.db’



```
# miceFast

Version: 0.2.3

## In both

*   checking whether package ‘miceFast’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/miceFast/new/miceFast.Rcheck/00install.out’ for details.
    ```

# milr

Version: 0.3.0

## In both

*   R CMD check timed out
    

# miRSM

Version: 

## Error before installation

### Devel

```

  There are binary versions available but the source versions are later:
           binary   source needs_compilation
expm      0.999-3  0.999-4              TRUE
MASS     7.3-51.1 7.3-51.3              TRUE
Matrix     1.2-16   1.2-17              TRUE
mgcv       1.8-27   1.8-28              TRUE
openssl     1.2.2      1.3              TRUE
rlang       0.3.1    0.3.3              TRUE
survival   2.43-3 2.44-1.1              TRUE

  Binaries will be installed


installing the source packages ‘GO.db’, ‘org.Hs.eg.db’, ‘reactome.db’



```
### CRAN

```

  There are binary versions available but the source versions are later:
           binary   source needs_compilation
expm      0.999-3  0.999-4              TRUE
MASS     7.3-51.1 7.3-51.3              TRUE
Matrix     1.2-16   1.2-17              TRUE
mgcv       1.8-27   1.8-28              TRUE
openssl     1.2.2      1.3              TRUE
rlang       0.3.1    0.3.3              TRUE
survival   2.43-3 2.44-1.1              TRUE

  Binaries will be installed


installing the source packages ‘GO.db’, ‘org.Hs.eg.db’, ‘reactome.db’



```
# miRsponge

Version: 

## Error before installation

### Devel

```

  There are binary versions available but the source versions are later:
           binary   source needs_compilation
expm      0.999-3  0.999-4              TRUE
MASS     7.3-51.1 7.3-51.3              TRUE
Matrix     1.2-16   1.2-17              TRUE
mgcv       1.8-27   1.8-28              TRUE
openssl     1.2.2      1.3              TRUE
rlang       0.3.1    0.3.3              TRUE
survival   2.43-3 2.44-1.1              TRUE

  Binaries will be installed


installing the source packages ‘GO.db’, ‘org.Hs.eg.db’, ‘reactome.db’



```
### CRAN

```

  There are binary versions available but the source versions are later:
           binary   source needs_compilation
expm      0.999-3  0.999-4              TRUE
MASS     7.3-51.1 7.3-51.3              TRUE
Matrix     1.2-16   1.2-17              TRUE
mgcv       1.8-27   1.8-28              TRUE
openssl     1.2.2      1.3              TRUE
rlang       0.3.1    0.3.3              TRUE
survival   2.43-3 2.44-1.1              TRUE

  Binaries will be installed


installing the source packages ‘GO.db’, ‘org.Hs.eg.db’, ‘reactome.db’



```
# mixsqp

Version: 0.1-97

## In both

*   checking whether package ‘mixsqp’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/mixsqp/new/mixsqp.Rcheck/00install.out’ for details.
    ```

# MoonlightR

Version: 1.8.0

## In both

*   checking whether package ‘MoonlightR’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/MoonlightR/new/MoonlightR.Rcheck/00install.out’ for details.
    ```

# morse

Version: 3.2.2

## In both

*   checking whether package ‘morse’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/morse/new/morse.Rcheck/00install.out’ for details.
    ```

# motifmatchr

Version: 1.4.0

## In both

*   checking whether package ‘motifmatchr’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/motifmatchr/new/motifmatchr.Rcheck/00install.out’ for details.
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘BSgenome.Hsapiens.UCSC.hg19’
    ```

# MSnbase

Version: 2.8.3

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘MSnbase-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: FeatComp-class
    > ### Title: Class '"FeatComp"'
    > ### Aliases: FeatComp-class compfnames-methods
    > ###   compfnames,MSnSet,MSnSet-method compfnames,list,missing-method
    > ###   compfnames show,FeatComp-method names,FeatComp-method
    > ###   common,FeatComp-method common,methods common unique1,FeatComp-method
    > ###   unique1,methods unique1 unique2,FeatComp-method unique2,methods
    > ###   unique2
    > ### Keywords: classes
    > 
    > ### ** Examples
    > 
    > library("pRolocdata")
    Error in library("pRolocdata") : there is no package called ‘pRolocdata’
    Execution halted
    ```

*   R CMD check timed out
    

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘pRolocdata’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 15.1Mb
      sub-directories of 1Mb or more:
        R      4.0Mb
        data   1.9Mb
        doc    7.8Mb
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Authors@R field gives more than one person with maintainer role:
      Laurent Gatto <lg390@cam.ac.uk> [aut, cre]
      Johannes Rainer <Johannes.Rainer@eurac.edu> [aut, cre]
      Sebastian Gibb <mail@sebastiangibb.de> [aut, cre]
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported objects imported by ':::' calls:
      ‘Biobase:::.showAnnotatedDataFrame’ ‘MALDIquant:::.estimateNoise’
      ‘MALDIquant:::.localMaxima’ ‘MALDIquant:::.movingAverage’
      ‘MALDIquant:::.savitzkyGolay’
      ‘S4Vectors:::makeClassinfoRowForCompactPrinting’
      ‘S4Vectors:::makePrettyMatrixForCompactPrinting’
      ‘mzR:::.hasChromatograms’ ‘mzR:::.hasSpectra’
      See the note in ?`:::` about the use of this operator.
    ```

# msPurity

Version: 1.8.1

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      [1] "## Check groupPeaks (function only)               ##"
      [1] "########################################################"
      [1] "=== check single core ==="
      [1] "########################################################"
      [1] "## Check mzML Workflow                                ##"
      [1] "########################################################"
      [1] "averaging spectra"
      [1] "filtering spectra"
      [1] "subtracting"
      [1] "purity prediction"
      Error in close.connection(con) : invalid connection
      Calls: test_check ... with_reporter -> force -> source_file -> close -> close.connection
      In addition: Warning message:
      call dbDisconnect() when finished working with a connection 
      Execution halted
    ```

## In both

*   R CMD check timed out
    

*   checking dependencies in R code ... NOTE
    ```
    Package in Depends field not imported from: ‘Rcpp’
      These packages need to be imported from (in the NAMESPACE file)
      for when this namespace is loaded but not attached.
    package 'methods' is used but not declared
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    subtract,purityD: no visible binding for global variable ‘i’
      (/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/msPurity/new/msPurity.Rcheck/00_pkg_src/msPurity/R/purityD-subtract.R:38)
    validate,purityA: no visible global function definition for ‘head’
      (/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/msPurity/new/msPurity.Rcheck/00_pkg_src/msPurity/R/purityA-validate.R:26)
    writeOut,purityD: no visible global function definition for ‘write.csv’
      (/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/msPurity/new/msPurity.Rcheck/00_pkg_src/msPurity/R/purityD-writeOut.R:37)
    writeOut,purityD: no visible global function definition for ‘write.csv’
      (/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/msPurity/new/msPurity.Rcheck/00_pkg_src/msPurity/R/purityD-writeOut.R:42)
    Undefined global functions or variables:
      abline alli approxfun as.dist dev.off dist dnorm fix head i idx
      legend lines median mtch mtchi na.omit parallel plot png points
      purity read.csv read.table scanid sd text topn variable write.csv
    Consider adding
      importFrom("grDevices", "dev.off", "png")
      importFrom("graphics", "abline", "legend", "lines", "plot", "points",
                 "text")
      importFrom("stats", "approxfun", "as.dist", "dist", "dnorm", "median",
                 "na.omit", "sd")
      importFrom("utils", "fix", "head", "read.csv", "read.table",
                 "write.csv")
    to your NAMESPACE file.
    ```

# mvabund

Version: 4.0.1

## In both

*   checking whether package ‘mvabund’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/mvabund/new/mvabund.Rcheck/00install.out’ for details.
    ```

# mvnfast

Version: 0.2.5

## In both

*   checking whether package ‘mvnfast’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/mvnfast/new/mvnfast.Rcheck/00install.out’ for details.
    ```

# mwaved

Version: 1.1.6

## In both

*   checking whether package ‘mwaved’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/mwaved/new/mwaved.Rcheck/00install.out’ for details.
    ```

# netrankr

Version: 0.2.1

## In both

*   checking whether package ‘netrankr’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/netrankr/new/netrankr.Rcheck/00install.out’ for details.
    ```

# nmslibR

Version: 1.0.3

## In both

*   checking whether package ‘nmslibR’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/nmslibR/new/nmslibR.Rcheck/00install.out’ for details.
    ```

# normr

Version: 1.8.0

## In both

*   checking whether package ‘normr’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/normr/new/normr.Rcheck/00install.out’ for details.
    ```

# OncoSimulR

Version: 2.12.0

## In both

*   R CMD check timed out
    

*   checking installed package size ... NOTE
    ```
      installed size is  7.1Mb
      sub-directories of 1Mb or more:
        doc   5.3Mb
    ```

# OpenImageR

Version: 1.1.5

## In both

*   checking whether package ‘OpenImageR’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/OpenImageR/new/OpenImageR.Rcheck/00install.out’ for details.
    ```

# OUTRIDER

Version: 1.0.4

## In both

*   checking whether package ‘OUTRIDER’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/OUTRIDER/new/OUTRIDER.Rcheck/00install.out’ for details.
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘org.Hs.eg.db’
    ```

# phenofit

Version: 0.2.0

## In both

*   checking whether package ‘phenofit’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/phenofit/new/phenofit.Rcheck/00install.out’ for details.
    ```

# pmc

Version: 1.0.3

## In both

*   R CMD check timed out
    

# POUMM

Version: 2.1.5

## In both

*   checking whether package ‘POUMM’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/POUMM/new/POUMM.Rcheck/00install.out’ for details.
    ```

# PureCN

Version: 1.12.2

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘PureCN-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: annotateTargets
    > ### Title: Annotate targets with gene symbols
    > ### Aliases: annotateTargets
    > 
    > ### ** Examples
    > 
    > library(TxDb.Hsapiens.UCSC.hg19.knownGene)
    Loading required package: GenomicFeatures
    Warning: package ‘GenomicFeatures’ was built under R version 3.5.3
    Loading required package: AnnotationDbi
    > library(org.Hs.eg.db)
    Error in library(org.Hs.eg.db) : 
      there is no package called ‘org.Hs.eg.db’
    Execution halted
    ```

*   R CMD check timed out
    

*   checking whether package ‘PureCN’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: package ‘VariantAnnotation’ was built under R version 3.5.3
    See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/PureCN/new/PureCN.Rcheck/00install.out’ for details.
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘org.Hs.eg.db’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  9.1Mb
      sub-directories of 1Mb or more:
        R         2.0Mb
        data      1.1Mb
        doc       2.6Mb
        extdata   3.1Mb
    ```

# RBesT

Version: 1.3-7

## In both

*   checking whether package ‘RBesT’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/max/github/forks/testthat/revdep/checks.noindex/RBesT/new/RBesT.Rcheck/00install.out’ for details.
    ```

# Rborist

Version: 0.1-17

## In both

*   checking whether package ‘Rborist’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/Rborist/new/Rborist.Rcheck/00install.out’ for details.
    ```

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘forestFloor’
    ```

# rDEA

Version: 1.2-5

## In both

*   checking whether package ‘rDEA’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/rDEA/new/rDEA.Rcheck/00install.out’ for details.
    ```

# ReactomePA

Version: 

## Error before installation

### Devel

```

  There are binary versions available but the source versions are later:
          binary   source needs_compilation
MASS    7.3-51.1 7.3-51.3              TRUE
Matrix    1.2-16   1.2-17              TRUE
mgcv      1.8-27   1.8-28              TRUE
openssl    1.2.2      1.3              TRUE
rlang      0.3.1    0.3.3              TRUE

  Binaries will be installed


installing the source packages ‘GO.db’, ‘org.Hs.eg.db’, ‘reactome.db’



```
### CRAN

```

  There are binary versions available but the source versions are later:
          binary   source needs_compilation
MASS    7.3-51.1 7.3-51.3              TRUE
Matrix    1.2-16   1.2-17              TRUE
mgcv      1.8-27   1.8-28              TRUE
openssl    1.2.2      1.3              TRUE
rlang      0.3.1    0.3.3              TRUE

  Binaries will be installed


installing the source packages ‘GO.db’, ‘org.Hs.eg.db’, ‘reactome.db’



```
# recount

Version: 1.8.2

## In both

*   R CMD check timed out
    

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      ‘EnsDb.Hsapiens.v79’ ‘org.Hs.eg.db’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 15.7Mb
      sub-directories of 1Mb or more:
        data  12.1Mb
        doc    3.3Mb
    ```

# redland

Version: 1.0.17-10

## In both

*   checking whether package ‘redland’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/redland/new/redland.Rcheck/00install.out’ for details.
    ```

# redux

Version: 1.1.0

## In both

*   checking whether package ‘redux’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/redux/new/redux.Rcheck/00install.out’ for details.
    ```

# Rlibeemd

Version: 1.4.1

## In both

*   checking whether package ‘Rlibeemd’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/Rlibeemd/new/Rlibeemd.Rcheck/00install.out’ for details.
    ```

# rnetcarto

Version: 0.2.4

## In both

*   checking whether package ‘rnetcarto’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/rnetcarto/new/rnetcarto.Rcheck/00install.out’ for details.
    ```

# rols

Version: 2.10.1

## In both

*   R CMD check timed out
    

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘GO.db’
    ```

# rrd

Version: 0.2.1

## In both

*   checking whether package ‘rrd’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/rrd/new/rrd.Rcheck/00install.out’ for details.
    ```

# rrum

Version: 0.2.0

## In both

*   checking whether package ‘rrum’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/rrum/new/rrum.Rcheck/00install.out’ for details.
    ```

# rstanarm

Version: 2.18.2

## In both

*   R CMD check timed out
    

# runibic

Version: 1.4.0

## In both

*   checking whether package ‘runibic’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/runibic/new/runibic.Rcheck/00install.out’ for details.
    ```

# sarima

Version: 0.7.6

## In both

*   checking whether package ‘sarima’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/sarima/new/sarima.Rcheck/00install.out’ for details.
    ```

# scruff

Version: 1.0.3

## In both

*   R CMD check timed out
    

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .BBSoptions
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported object imported by a ':::' call: 'ShortRead:::.set_omp_threads'
      See the note in ?`:::` about the use of this operator.
    ```

*   checking foreign function calls ... NOTE
    ```
    Foreign function call to a different package:
      .Call(ShortRead:::.set_omp_threads, ...)
    See chapter ‘System and foreign language interfaces’ in the ‘Writing R
    Extensions’ manual.
    ```

# sdcTable

Version: 0.27

## In both

*   checking whether package ‘sdcTable’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/sdcTable/new/sdcTable.Rcheck/00install.out’ for details.
    ```

# sentometrics

Version: 0.5.6

## In both

*   checking whether package ‘sentometrics’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/sentometrics/new/sentometrics.Rcheck/00install.out’ for details.
    ```

# sf

Version: 0.7-3

## In both

*   checking whether package ‘sf’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/sf/new/sf.Rcheck/00install.out’ for details.
    ```

# simcdm

Version: 0.1.1

## In both

*   checking whether package ‘simcdm’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/simcdm/new/simcdm.Rcheck/00install.out’ for details.
    ```

# simulator

Version: 0.2.0

## In both

*   R CMD check timed out
    

# smurf

Version: 1.0.0

## In both

*   checking whether package ‘smurf’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/smurf/new/smurf.Rcheck/00install.out’ for details.
    ```

# ssh

Version: 0.5

## In both

*   checking whether package ‘ssh’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/ssh/new/ssh.Rcheck/00install.out’ for details.
    ```

# SuperGauss

Version: 1.0.1

## In both

*   checking whether package ‘SuperGauss’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/SuperGauss/new/SuperGauss.Rcheck/00install.out’ for details.
    ```

# SuperpixelImageSegmentation

Version: 1.0.0

## In both

*   checking whether package ‘SuperpixelImageSegmentation’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/SuperpixelImageSegmentation/new/SuperpixelImageSegmentation.Rcheck/00install.out’ for details.
    ```

# TCGAbiolinks

Version: 2.10.5

## In both

*   checking whether package ‘TCGAbiolinks’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/TCGAbiolinks/new/TCGAbiolinks.Rcheck/00install.out’ for details.
    ```

# textTinyR

Version: 1.1.2

## In both

*   checking whether package ‘textTinyR’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/textTinyR/new/textTinyR.Rcheck/00install.out’ for details.
    ```

# tissueTreg

Version: 1.2.0

## In both

*   R CMD check timed out
    

*   checking for unstated dependencies in vignettes ... NOTE
    ```
    'library' or 'require' calls not declared from:
      ‘ggplot2’ ‘reshape2’
    ```

# TreeBUGS

Version: 1.4.3

## In both

*   checking whether package ‘TreeBUGS’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/TreeBUGS/new/TreeBUGS.Rcheck/00install.out’ for details.
    ```

# units

Version: 0.6-2

## In both

*   checking whether package ‘units’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/units/new/units.Rcheck/00install.out’ for details.
    ```

# updog

Version: 1.0.1

## In both

*   checking whether package ‘updog’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/updog/new/updog.Rcheck/00install.out’ for details.
    ```

# V8

Version: 2.1

## In both

*   checking whether package ‘V8’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/V8/new/V8.Rcheck/00install.out’ for details.
    ```

# vapour

Version: 0.1.0

## In both

*   checking whether package ‘vapour’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/vapour/new/vapour.Rcheck/00install.out’ for details.
    ```

# vlad

Version: 0.2.0

## In both

*   checking whether package ‘vlad’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/vlad/new/vlad.Rcheck/00install.out’ for details.
    ```

# walker

Version: 0.2.5

## In both

*   R CMD check timed out
    

*   checking installed package size ... NOTE
    ```
      installed size is  7.8Mb
      sub-directories of 1Mb or more:
        doc    1.8Mb
        libs   5.6Mb
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# wand

Version: 0.2.0

## In both

*   checking whether package ‘wand’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/wand/new/wand.Rcheck/00install.out’ for details.
    ```

# XBSeq

Version: 1.14.1

## In both

*   R CMD check timed out
    

*   checking whether the namespace can be loaded with stated dependencies ... NOTE
    ```
    Warning: no function found corresponding to methods exports from ‘XBSeq’ for: ‘conditions’, ‘conditions<-’, ‘dispTable’
    
    A namespace must be able to be loaded with just the base namespace
    loaded: otherwise if the namespace gets loaded by a saved object, the
    session will be unable to start.
    
    Probably some imports need to be declared in the NAMESPACE file.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
      ‘conditions’
      (/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/XBSeq/new/XBSeq.Rcheck/00_pkg_src/XBSeq/R/core_functions.R:106)
    estimateSCV,XBSeqDataSet: no visible global function definition for
      ‘conditions’
      (/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/XBSeq/new/XBSeq.Rcheck/00_pkg_src/XBSeq/R/core_functions.R:107)
    estimateSCV,XBSeqDataSet: no visible global function definition for
      ‘dispTable<-’
      (/Users/hadley/Documents/devtools/testthat/revdep/checks.noindex/XBSeq/new/XBSeq.Rcheck/00_pkg_src/XBSeq/R/core_functions.R:108)
    Undefined global functions or variables:
      ..count.. DataFrame Gamma Group Sample SummarizedExperiment assay
      assay<- assays baseMean coefficients complete.cases conditions cor
      data ddelap dispTable dispTable<- dnbinom dpois formula glm
      log2FoldChange median optim p.adjust pbeta predict qbeta quantile
      rnbinom scvBiasCorrectionFits
    Consider adding
      importFrom("stats", "Gamma", "coefficients", "complete.cases", "cor",
                 "dnbinom", "dpois", "formula", "glm", "median", "optim",
                 "p.adjust", "pbeta", "predict", "qbeta", "quantile",
                 "rnbinom")
      importFrom("utils", "data")
    to your NAMESPACE file.
    ```

# xcms

Version: 3.4.4

## In both

*   R CMD check timed out
    

*   checking installed package size ... NOTE
    ```
      installed size is 12.5Mb
      sub-directories of 1Mb or more:
        R     3.1Mb
        doc   8.0Mb
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    License components with restrictions not permitted:
      GPL (>= 2) + file LICENSE
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported objects imported by ':::' calls:
      ‘MALDIquant:::.localMaxima’ ‘MSnbase:::formatFileSpectrumNames’
      See the note in ?`:::` about the use of this operator.
    There are ::: calls to the package's namespace in its code. A package
      almost never needs to use ::: for its own objects:
      ‘MSW.cwt’ ‘MSW.getLocalMaximumCWT’ ‘MSW.getRidge’ ‘XProcessHistory’
      ‘descendMin’ ‘descendMinTol’ ‘estimateChromNoise’
      ‘getLocalNoiseEstimate’ ‘na.flatfill’ ‘patternVsRowScore’
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    write.cdf,xcmsRaw: no visible global function definition for
      ‘ncvar_def’
    write.cdf,xcmsRaw: no visible global function definition for
      ‘nc_create’
    write.cdf,xcmsRaw: no visible global function definition for
      ‘ncvar_put’
    write.cdf,xcmsRaw: no visible global function definition for
      ‘ncatt_put’
    write.cdf,xcmsRaw: no visible global function definition for ‘nc_close’
    write.mzQuantML,xcmsSet: no visible global function definition for
      ‘saveXML’
    write.mzdata,xcmsRaw: no visible global function definition for
      ‘base64encode’
    Undefined global functions or variables:
      addChildren addEdge base64encode checkCluster checkForRemoteErrors
      edgemode<- makeCluster mpi.any.source mpi.any.tag
      mpi.bcast.Robj2slave mpi.bcast.cmd mpi.comm.rank mpi.comm.size
      mpi.get.sourcetag mpi.recv.Robj mpi.send.Robj mpi.spawn.Rslaves
      nc_close nc_create ncatt_put ncdim_def ncvar_def ncvar_put newXMLNode
      recvOneResult rgl.bbox rgl.clear rgl.points rgl.surface saveXML
      sendCall xmlInternalTreeParse xmlSchemaValidate xmlTree xmlTreeParse
    ```

