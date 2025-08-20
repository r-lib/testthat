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

test_that("good error if bad option", {
  withr::local_options(Ncpus = "bad")
  expect_snapshot(default_num_cpus(), error = TRUE)
})

test_that("ok", {
  local_parallel_test_config()
  capture.output(suppressMessages(
    ret <- test_local(
      test_path("test-parallel", "ok"),
      reporter = "summary",
      stop_on_failure = FALSE
    )
  ))
  tdf <- as.data.frame(ret)
  tdf <- tdf[order(tdf$file), ]
  expect_equal(tdf$failed, c(0, 1, 0))
  expect_equal(tdf$skipped, c(FALSE, FALSE, TRUE))
})

test_that("fail", {
  local_parallel_test_config()
  # we cannot run these with the silent reporter, because it is not
  # parallel compatible, and they'll not run in parallel
  capture.output(suppressMessages(
    ret <- test_local(
      test_path("test-parallel", "fail"),
      reporter = "summary",
      stop_on_failure = FALSE
    )
  ))
  tdf <- as.data.frame(ret)
  tdf <- tdf[order(tdf$file), ]
  expect_equal(tdf$failed, c(1))
})

test_that("snapshots", {
  local_parallel_test_config()

  tmp <- withr::local_tempdir("testthat-snap-")
  file.copy(test_path("test-parallel", "snap"), tmp, recursive = TRUE)
  # we cannot run these with the silent reporter, because it is not
  # parallel compatible, and they'll not run in parallel
  capture.output(suppressMessages(
    ret <- test_local(
      file.path(tmp, "snap"),
      reporter = "summary",
      stop_on_failure = FALSE
    )
  ))
  tdf <- as.data.frame(ret)
  tdf <- tdf[order(tdf$file), ]
  expect_equal(tdf$failed, c(0, 0, 1))
  snaps <- file.path(tmp, "snap", "tests", "testthat", "_snaps")
  expect_true(file.exists(file.path(snaps, "snap-1.md")))
  expect_true(file.exists(file.path(snaps, "snap-2.md")))
  expect_true(file.exists(file.path(snaps, "snap-3.md")))
})

test_that("new snapshots are added", {
  local_parallel_test_config()
  withr::local_envvar(CI = "false")

  tmp <- withr::local_tempdir("testthat-snap-")
  file.copy(test_path("test-parallel", "snap"), tmp, recursive = TRUE)
  unlink(file.path(tmp, "snap", "tests", "testthat", "_snaps", "snap-2.md"))

  # we cannot run these with the silent reporter, because it is not
  # parallel compatible, and they'll not run in parallel
  capture.output(suppressMessages(
    ret <- test_local(
      file.path(tmp, "snap"),
      reporter = "summary",
      stop_on_failure = FALSE
    )
  ))
  tdf <- as.data.frame(ret)
  tdf <- tdf[order(tdf$file), ]
  expect_equal(tdf$failed, c(0, 0, 1))
  snaps <- file.path(tmp, "snap", "tests", "testthat", "_snaps")
  expect_true(file.exists(file.path(snaps, "snap-1.md")))
  expect_true(file.exists(file.path(snaps, "snap-2.md")))
  expect_true(file.exists(file.path(snaps, "snap-3.md")))
})

test_that("snapshots are removed if test file has no snapshots", {
  local_parallel_test_config()

  tmp <- withr::local_tempdir("testthat-snap-")
  file.copy(test_path("test-parallel", "snap"), tmp, recursive = TRUE)
  writeLines(
    "test_that(\"2\", { expect_true(TRUE) })",
    file.path(tmp, "snap", "tests", "testthat", "test-snap-2.R")
  )

  # we cannot run these with the silent reporter, because it is not
  # parallel compatible, and they'll not run in parallel
  capture.output(suppressMessages(
    ret <- test_local(
      file.path(tmp, "snap"),
      reporter = "summary",
      stop_on_failure = FALSE
    )
  ))
  tdf <- as.data.frame(ret)
  tdf <- tdf[order(tdf$file), ]
  expect_equal(tdf$failed, c(0, 0, 1))
  snaps <- file.path(tmp, "snap", "tests", "testthat", "_snaps")
  expect_true(file.exists(file.path(snaps, "snap-1.md")))
  expect_false(file.exists(file.path(snaps, "snap-2.md")))
  expect_true(file.exists(file.path(snaps, "snap-3.md")))
})

test_that("snapshots are removed if test file is removed", {
  local_parallel_test_config()

  withr::defer(unlink(tmp, recursive = TRUE))
  dir.create(tmp <- tempfile("testthat-snap-"))
  file.copy(test_path("test-parallel", "snap"), tmp, recursive = TRUE)
  unlink(file.path(tmp, "snap", "tests", "testthat", "test-snap-2.R"))
  withr::local_envvar(CI = NA_character_)
  # we cannot run these with the silent reporter, because it is not
  # parallel compatible, and they'll not run in parallel
  capture.output(suppressMessages(
    ret <- test_local(
      file.path(tmp, "snap"),
      reporter = "summary",
      stop_on_failure = FALSE
    )
  ))
  tdf <- as.data.frame(ret)
  tdf <- tdf[order(tdf$file), ]
  expect_equal(tdf$failed, c(0, 1))
  snaps <- file.path(tmp, "snap", "tests", "testthat", "_snaps")
  expect_true(file.exists(file.path(snaps, "snap-1.md")))
  expect_false(file.exists(file.path(snaps, "snap-2.md")))
  expect_true(file.exists(file.path(snaps, "snap-3.md")))
})
