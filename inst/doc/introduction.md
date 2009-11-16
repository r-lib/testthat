Introduction
============

Testing your code is normally painful and boring. `test_that` aims to make the task as pleasant and fun as possible, so that you get a visceral satisfaction from writing tests. Unlike other testing approaches in R, `testthat`:

 * Uses a natural language interface that make tests a pleasure to read
 
 * Uses blocks instead of functions to encapsulate the expectations of a test
 
 * Gives a visual indication of every single test expectation that you have
 
 * The same code works interactively, as part of a test suite and with R 
   CMD check
 
 * Provides tools to automatically rerun your tests each time you change
   your code (or your tests)

`testthat` draws inspiration from the xUnit family of testing packages, as well as the many innovative ruby testing libraries (e.g. bacon, cucumber).  I have used what I think works for R, and abandoned what doesn't, creating a testing package that is philosophically centred in R.

However, most R is not object-oriented in the same way that java and ruby code is, so `testthat` is not based around testing objects, but instead around testing contexts, groups of interrelated functions.

Why?
====

I wrote `testthat` because I discovered I was spending way too much time recreating bugs that I had previously fixed.  While when I was writing the original code or fixing the bug, I performed many interactive tests to make sure the code was working, I never had a system for retaining these tests and running then multiple times.  I think this reflects a common development pattern in R users - it's not that you don't test your code, but it's that you don't store the test.

In part, this is because previously creating tests required a lot of extra up front work, and none of the existing testing frameworks intermixed seamlessly with the existing R testing framework (e.g. `stopifnot` and the `tests` subdirectory).  One of the aims of the `testthat` package is to make it so easy (and so fun!) to systematise your tests that you do it all the time.

Of course, it's going to require a little bit of extra effort to turn your casual interactive tests into reproducible scripts.  However, this small investment can pay off in the following ways:

 * Decreased long-term frustration. It seems that whenever I'm working to a
   strict deadline I discover a bug in old code. Having to stop what I'm doing
   to fix the bug is a real pain. This happens less when I do more testing and
   the tests are also helpful for showing me which parts of my code are well
   tested.

 * Better code structure. Code that's easy to test is usually better
   designed. I have found writing tests makes me extract out the complicated
   parts of my code in separate functions that work in isolation. These are
   easier to test, easier to understand and easier to combine in new ways.
   Ultimately this leads to less duplication and more agile code.

 * Easier to pick up development after a break. If you always finished a 
   session of coding by creating some tests that don't pass (i.e. for the 
   feature you want to implement next) it's easy to pick up where you left
   off: your failing tests will let you know exactly what you need to do next.
 
 * Can more confidently make big changes. Because you know that all major
   functionality has a test associated with it, you can more confidently 
   make changes and check that you haven't broken anything.  For me, this is 
   particularly useful when I think of a simpler way to accomplish a task -  
   often my simpler solution is only simpler because I've forgotten an 
   important use case!

Additionally, `testthat` does everything it can to make testing fun - it has an easy to remember (and read) natural language interface, it has colours and it'll even occasionally give you some positive reinforcement if all your tests pass.

Dive in
========

Here is what a test file looks like.


There are three ways to run this test:

 * just source it in!
 * run it with `test_file()` 
 * run it during R CMD check (see section)


Test structure
==============

Tests have a hierarchical structure made up of contexts, tests and expectations.  

Contexts
--------

Normally there is one context per file, but you can have more if you want (or you can use the same context in multiple files).  Contexts are way of grouping together tests into logical blocks that all test related functionality.  A new context is created with `context("My context")`.

Most other testing packages have the concept of set-up and teardown methods which are run before and after each test.  These are not necessary with R, because any code in the test file, but not in a test block, will be run.  This allows you to set up objects at the top of the file, and then rely on R scoping rules to prevent them from being modified.

Tests
-----

Tests. A new test is created with `test_that` and has a name and block of code.

Tests are run in their own environment so are self-contained and do not affect the outside world. This (largely) ensures that the order in which tests are run does not matter. The exceptions are actions which have effects outside the local environment. These include things that affect:

  * the filesystem: creating and deleting files, changing
    the working directory, etc.
  * the search path: package loading & detaching, attach
  * global options: options, par

Be careful when using these actions in tests.  If you are using them extensively it may indicate that you need to refactor

Expectations
------------

You can also use expectations outside of test structure.  For example, this might be useful for establishing expectations about the input to a function.

`testthat` comes with a variety of built in expectations:

  * `equals`, uses `all.equals` to check for equality with numerical tolerance

  * `identical_to`, uses `identical` to check to exact equality

  * `is_true`, useful catchall if none of the other expectations does what you
     want

  * `is_false`

  * `is_a`

  * `prints_text`

  * `throws_error`

  * `matches`

You can also write your own expectations.  An expectation should return a function that checks whether or not it's input matches the expected value.  Use `expectation()` to return an object containing the correct details: a boolean saying whether or not the expectation was met, and the message to display if the expectation failed.  The following example shows the simple `is_true` expectation.

    is_true <- function() {
      function(x) {
        expectation(
          identical(x, TRUE),
          "isn't true"
        )
      }
    }


Reporting
==========

`testthat` comes with three reporting suites.  The default, `StopSuite` just `stop()`s whenever a failure is encountered.  This is designed to work with R CMD test, so you can submit a package to CRAN if it has a failing test.

`SuiteMinimal` will run all the tests (not just stopping at the first error), and will print `.` for each successful test, `E` for an error and `F` a failure.  It really is minimal!

`SuiteSummary` is the most verbose.  Like `SuiteMinimal` it will print a `.` for successful tests, but for failures or errors it will print a number.  Once all tests have been number, all errors and failures will be listed by that number so you can see exactly what's going on.  

If you're using R from the terminal, both `SuiteMinimal` and `SuiteSummary` will colour successes green and failures and errors red.  Soon you will become addicted to getting a line of green dots!

Watching
========

Tests are most useful when run frequently, so `testthat` provides a method that will watch your code and test files and automatically rerun your tests when needed.  

This promotes a workflow where the _only_ way you test your code is through tests. Instead of modify-save-source-check you just modify and save, then watch the automated test output for problems.

R CMD check
============

To have tests automatically run by `R CMD check` they need to satisfy the following conditions:

  * live in the `tests` package subdirectory
  * have the extension `.R` (not `.r`)
  * load both `testthat` and the package being developed

The final conditional creates a slight conflict with the usual testthat testing procedures because normally you wouldn't have a version of the package to load (you'll have just been source()ing all your code).  Ways around it:

  * don't load the packages until just before running `R CMD check`.  They should all be passing anyway, `R CMD check` is just a final confirmation that they're all ok.  After its checked successfully, install the package.
  
  * conditionally load the package if present.  `testthat` provides a convenience method for this: `load_if_available`.  The start of your test files would then look like this:

        library(testthat)
        library_if_available(mypackage)

  I recommend this set up because once you've set up the test file there's nothing else to remember.
  
The default behaviour of `testthat` expectation is to `stop()` when a failure (or error) is encountered.  This means that if a test file is sourced, and there is a failure, `R CMD check` will report it.

Future work
============

Code coverage = combination of RProf and code tools.

GUI or graphics widget that display output of tests.  Green squares = pass, red = failure.  Click on a red square to get more information.