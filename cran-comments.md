## Test environments

* local OS X install (R-release)
* travis-ci.org (R-3.1, R-3.2, R-3.3, R-oldrel, R-release, R-devel)
* win-builder (R-devel)

## R CMD check results

There were no ERRORs, WARNINGs, or NOTEs.

## revdepcheck results

We checked 4279 reverse dependencies (3808 from CRAN + 471 from BioConductor), comparing R CMD check results across CRAN and dev versions of this package.

 * We saw 4 new problems
 * We failed to check 71 packages

Issues with CRAN packages are summarised below.

### New problems
(This reports the first line of each new failure)

* markmyassignment
  checking whether package ‘markmyassignment’ can be installed ... WARNING
  https://github.com/MansMeg/markmyassignment/issues/103
  
* parallelMap
  checking tests ...
  https://github.com/berndbischl/parallelMap/issues/64

* platetools
  checking tests ...
  https://github.com/Swarchal/platetools/issues/19

* rentrez
  checking examples ... ERROR
  Web failure

### Failed to check

* aslib             (NA)
* awsjavasdk        (NA)
* Ball              (NA)
* BayesRS           (NA)
* BIEN              (NA)
* BMSC              (NA)
* catSurv           (NA)
* coga              (NA)
* CollapsABEL       (NA)
* collUtils         (NA)
* colorednoise      (NA)
* corehunter        (NA)
* Crossover         (NA)
* ctsem             (NA)
* curl              (NA)
* DatabaseConnector (NA)
* DataLoader        (NA)
* deisotoper        (NA)
* DeLorean          (NA)
* dotCall64         (NA)
* dynr              (NA)
* excursions        (NA)
* fastLink          (NA)
* geometa           (NA)
* GFORCE            (NA)
* gower             (NA)
* gWidgets2tcltk    (NA)
* hashr             (NA)
* imbalance         (NA)
* influenceR        (NA)
* island            (NA)
* joineRML          (NA)
* JointAI           (NA)
* jqr               (NA)
* jwutil            (NA)
* kmcudaR           (NA)
* KRIG              (NA)
* libstableR        (NA)
* ludic             (NA)
* mcmcabn           (NA)
* ModelMetrics      (NA)
* Morpho            (NA)
* morse             (NA)
* mvabund           (NA)
* mwaved            (NA)
* NNLM              (NA)
* poppr             (NA)
* praznik           (NA)
* rDEA              (NA)
* rdist             (NA)
* redland           (NA)
* redux             (NA)
* rFerns            (NA)
* Rlibeemd          (NA)
* rnetcarto         (NA)
* rpf               (NA)
* rrd               (NA)
* rstanarm          (NA)
* Rtsne             (NA)
* sdcTable          (NA)
* sf                (NA)
* simputation       (NA)
* SiMRiv            (NA)
* ssh               (NA)
* stringdist        (NA)
* SuperGauss        (NA)
* TreeBUGS          (NA)
* units             (NA)
* V8                (NA)
* vapour            (NA)
* wand              (NA)
