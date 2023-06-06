test_that("set_state_inspector() verifies its inputs", {
  expect_snapshot(set_state_inspector(function(x) 123), error = TRUE)
})

test_that("can detect state changes", {
  local_edition(3) # Why are these needed for R CMD check?
  local_reproducible_output()

  local_options(x = NULL)
  set_state_inspector(function() list(x = getOption("x")))
  withr::defer(set_state_inspector(NULL))

  expect_snapshot_reporter(CheckReporter$new(), test_path("reporters/state-change.R"))
})
