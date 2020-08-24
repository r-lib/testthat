
test_that("detect number of cpus to use", {

  mockery::stub(default_num_cpus, "ps::ps_cpu_count", 50)

  withr::local_options(list(Ncpus = 100L))
  withr::local_envvar(list(TESTTHAT_MAX_CPUS = NA))
  expect_equal(default_num_cpus(), 100L)

  withr::local_options(list(Ncpus = 100L))
  withr::local_envvar(list(TESTTHAT_MAX_CPUS = 10))
  expect_equal(default_num_cpus(), 100L)

  withr::local_options(list(Ncpus = NULL))
  withr::local_envvar(list(TESTTHAT_MAX_CPUS = NA))
  expect_equal(default_num_cpus(), 50)

  withr::local_options(list(Ncpus = NULL))
  withr::local_envvar(list(TESTTHAT_MAX_CPUS = NA))
  expect_equal(default_num_cpus(), 50)

  withr::local_options(list(Ncpus = NULL))
  withr::local_envvar(list(TESTTHAT_MAX_CPUS = 13))
  expect_equal(default_num_cpus(), 13)
})

test_that("ok", {
  ret <- test_pkg_in_subprocess(test_path("test-parallel", "ok"))
  tdf <- as.data.frame(ret)
  expect_equal(tdf$failed, c(0,1,0))
  expect_equal(tdf$skipped, c(FALSE, FALSE, TRUE))
})
