Testing your code is normally painful and boring.  `test_that` aims to make the task as pleasant and fun as possible, so that you get a visceral satisfaction from writing tests.

Unlike other testing approaches in R, `test_that`:

 * Uses a natural language interface that makes it easy to have descriptive test names
 
 * Uses blocks instead of functions to encapsulate the expectations of a test
 
 * Gives a visual indication of every single test expectation that you have
 
 * Without changes to your tests, works interactively, with R CMD check and in test suites
 
 * Provides tools to automatically rerun your tests each time you change either your code or your tests