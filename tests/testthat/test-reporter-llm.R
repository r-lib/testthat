test_that("reports issues immediately but not successes", {
  expect_snapshot_reporter(
    LlmReporter$new(),
    test_path("reporters/tests.R")
  )
})

test_that("reports only summary for all successes", {
  expect_snapshot_reporter(
    LlmReporter$new(),
    test_path("reporters/successes.R")
  )
})

test_that("fails after max_fail tests", {
  withr::local_options(testthat.progress.max_fails = 3)
  expect_snapshot_reporter(
    LlmReporter$new(),
    test_path(c("reporters/fail-many.R", "reporters/fail.R"))
  )
})

test_that("is_llm() detects known LLM agent environment variables", {
  withr::local_envvar(
    AGENT = NA,
    CLAUDECODE = NA,
    GEMINI_CLI = NA,
    CURSOR_AGENT = NA
  )
  expect_false(is_llm())

  local({
    withr::local_envvar(AGENT = "1")
    expect_true(is_llm())
  })
  local({
    withr::local_envvar(CLAUDECODE = "1")
    expect_true(is_llm())
  })
})
