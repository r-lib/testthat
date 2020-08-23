
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
