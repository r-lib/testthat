Testing your code is normally painful and boring.  `test_that` aims to make the task as pleasant and fun as possible, so that you get a visceral satisfaction from writing tests.

Unlike other testing approaches in R, `test_that`:

 * Uses a natural language interface that makes it easy to have descriptive test names
 
 * Uses blocks instead of functions to encapsulate the expectations of a test
 
 * Gives a visual indication of every single test expectation that you have
 
 * Without changes to your tests, works interactively, with R CMD check and in test suites
 
 * Provides tools to automatically rerun your tests each time you change either your code or your tests
 
 
R CMD check
============

To have tests automatically run by `R CMD check` they need to satisfy the following conditions:

  * be located in the `tests` package subdirectory
  * have extension `.R` (not `.R`)
  * load the package being tested and the testthat package

The final conditional creates a slight conflict with the usual testthat testing procedures because normally you wouldn't have a version of the package to load (you'll have just been source()ing all your code).  Ways around it:

  * don't load the packages until just before running `R CMD check`.  They should all be passing anyway, `R CMD check` is just a final confirmation that they're all ok.  After its checked successfully, install the package.