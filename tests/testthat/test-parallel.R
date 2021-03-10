
test_that("detect number of cpus to use", {

  withr::local_options(Ncpus = 100L)
  withr::local_envvar(TESTTHAT_CPUS = NA)
  expect_equal(default_num_cpus(), 100L)

  withr::local_options(Ncpus = 100L)
  withr::local_envvar(TESTTHAT_CPUS = 10)
  expect_equal(default_num_cpus(), 100L)

  withr::local_options(list(Ncpus = NULL))
  withr::local_envvar(TESTTHAT_CPUS = NA)
  expect_equal(default_num_cpus(), 2L)

  withr::local_options(list(Ncpus = NULL))
  withr::local_envvar(TESTTHAT_CPUS = NA)
  expect_equal(default_num_cpus(), 2L)

  withr::local_options(list(Ncpus = NULL))
  withr::local_envvar(TESTTHAT_CPUS = 13)
  expect_equal(default_num_cpus(), 13L)
})

test_that("ok", {
  withr::local_envvar(c(TESTTHAT_PARALLEL = "TRUE"))
  ret <- test_local(
    test_path("test-parallel", "ok"),
    reporter = "silent",
    stop_on_failure = FALSE
  )
  tdf <- as.data.frame(ret)
  tdf <- tdf[order(tdf$file), ]
  expect_equal(tdf$failed, c(0,1,0))
  expect_equal(tdf$skipped, c(FALSE, FALSE, TRUE))
})
