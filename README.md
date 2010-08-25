# testthat

Testing your code is normally painful and boring. `testthat` tries to make testing as fun as possible, so that you get a visceral satisfaction from writing tests. Testing should be fun, not a drag, so you do it all the time. To make that happen, `testthat`:

* Provides functions that make it easy to describe what you expect a
  function to do, including catching errors, warnings and messages.

* Easily integrates in your existing workflow, whether it's informal testing
  on the command line, building test suites or using R CMD check.

* Can re-run tests automatically as you change your code or tests.

* Displays test progress visually, showing a pass, fail or error for every
  expectation. If you're using the terminal, it'll even colour the output. 
    
`testthat` draws inspiration from the xUnit family of testing packages, as well from many of the innovative ruby testing libraries, like [rspec](http://rspec.info/), [testy](http://github.com/ahoward/testy), [bacon](http://github.com/chneukirchen/bacon) and [cucumber](http://wiki.github.com/aslakhellesoy/cucumber/). I have used what I think works for R, and abandoned what doesn't, creating a testing environment that is philosophically centred in R. 