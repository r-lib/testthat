test_that("environment has package name", {
  expect_equal(methods::getPackageName(test_env("testthat")), "testthat")
  expect_equal(methods::getPackageName(topenv()), "testthat")
})

setClass("MyClass")
test_that("Cannot create S4 class without special behaviour", {
  expect_error(setClass("MyClass2"), NA)
})

test_that("is_checking respects env var", {
  withr::local_envvar(TESTTHAT_IS_CHECKING = "true")
  expect_true(is_checking())

  withr::local_envvar(TESTTHAT_IS_CHECKING = "false")
  expect_false(is_checking())
})

test_that("is_snapshot() is true in snapshots", {
  local_edition(3) # why is this needed?
  expect_false(is_snapshot())

  expect_snapshot(is_snapshot())
  expect_snapshot_value(is_snapshot())
  expect_snapshot_output(is_snapshot())
  expect_snapshot_warning(if (is_snapshot()) warning("Is snapshotting!"))
  expect_snapshot_error(if (is_snapshot()) stop("Is snapshotting!"))
})
