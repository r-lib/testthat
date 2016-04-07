## Test environments

* local OS X install, R 3.2.4
* ubuntu 12.04 (on travis-ci), R 3.2.4
* win-builder (devel and release)

## R CMD check results

There were no ERRORs, WARNINGs or NOTEs. 

## Downstream dependencies

* I have run R CMD check on all ~1100 downstream dependencies of testthat
  (https://github.com/hadley/testthat/tree/master/revdep/). 

* I notified individual authors of failures one month ago, two weeks ago,
  and again this morning. 
  
* Unfortunately, there are still a number of failures. I have reviewed these
  (as much as possible), and they seem to be a mix of random test failures and 
  deliberate changes to the testthat API. I'm reasonably confident that they
  don't represent bugs in testthat.

    * BBmisc: checking tests ... ERROR
    * biom: checking tests ... ERROR
    * cellranger: checking tests ... ERROR
    * chunked: checking tests ... ERROR
    * cocor: checking tests ... ERROR
    * CompareCausalNetworks: checking examples ... ERROR
    * crunch: checking tests ... ERROR
    * ddpcr: checking tests ... ERROR
    * describer: checking tests ... ERROR
    * DSsim: checking tests ... ERROR
    * falsy: checking tests ... ERROR
    * flacco: checking tests ... ERROR
    * futile.logger: checking tests ... ERROR
    * gemtc: checking examples ... ERROR
    * GetoptLong: checking tests ... ERROR
    * ggfortify: checking tests ... ERROR
    * ggthemes: checking tests ... ERROR
    * gWidgets2RGtk2: checking tests ... ERROR
    * harvestr: checking tests ... ERROR
    * icd9: checking tests ... ERROR
    * identifyr: checking tests ... ERROR
    * lava: checking tests ... ERROR
    * lawn: checking tests ... ERROR
    * lfstat: checking examples ... ERROR
    * lintr: checking tests ... ERROR
    * mlr: checking tests ... ERROR
    * modules: checking tests ... ERROR
    * MRMR: checking examples ... ERROR
    * MultiGHQuad: checking tests ... ERROR
    * multitable: checking running R code from vignettes ... ERROR
    * mvtboost: checking tests ... ERROR
    * nat: checking tests ... ERROR
    * netdiffuseR: checking tests ... ERROR
    * NlsyLinks: checking tests ... ERROR
    * optmatch: checking tests ... ERROR
    * papeR: checking tests ... ERROR
    * ParamHelpers: checking tests ... ERROR
    * parsedate: checking tests ... ERROR
    * Perc: checking tests ... ERROR
    * pingr: checking tests ... ERROR
    * pixiedust: checking tests ... ERROR
    * PKNCA: checking tests ... ERROR
    * poplite: checking running R code from vignettes ... WARNING
    * prcbench: checking examples ... ERROR
    * precrec: checking tests ... ERROR
    * ProjectTemplate: checking tests ... ERROR
    * pvar: checking tests ... ERROR
    * pxweb: checking tests ... ERROR
    * rAmCharts: checking tests ... ERROR
    * readGenalex: checking tests ... ERROR
    * RGA: checking tests ... ERROR
    * RLumModel: checking tests ... ERROR
    * rpivotTable: checking tests ... ERROR
    * rr: checking tests ... ERROR
    * sdmvspecies: checking for executable files ... WARNING
    * spaero: checking examples ... ERROR
    * spduration: checking tests ... ERROR
    * StableEstim: checking examples ... ERROR
    * statar: checking tests ... ERROR
    * storr: checking examples ... ERROR
    * sweidnumbr: checking tests ... ERROR
    * swirl: checking tests ... ERROR
    * testthatsomemore: checking examples ... ERROR
    * tmod: checking examples ... ERROR
    * useful: checking tests ... ERROR
    * vartors: checking tests ... ERROR
    * VennDiagram: checking tests ... ERROR

I failed to check the following packages:

* Failed to install dependencies for: BayesFactor, biomartr, bnclassify, glmmsr, 
  gpuR, hts, HydeNet, lme4, mmand, myTAI, nabor, pmc, RNiftyReg, RODBCDBI, rpf, 
  rsig, rstanarm, SpaDES, spaMM, sparseHessianFD, toaster, trustOptim, walkr, 
  wgsea, yCrypticRNAs, zoon

* Failed to install: aLFQ, backShift, boral, brms, cleangeo, datapack, FunChisq, 
  gWidgets2tcltk, h5, hunspell, iptools, KFAS, letsR, markmyassignment, morse, 
  move, mwaved, RAppArmor, rAvis, rcrypt, rDEA, redland, Rlibeemd, rmumps, 
  rnetcarto, Rssa, sdcTable, sgd, strvalidator, tigris, tsPI, V8, Zelig, 
  ZeligChoice
