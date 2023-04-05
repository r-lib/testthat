test_that("always returns a path",{
  withr::local_envvar(TESTTHAT = "true")
  withr::local_options(testthat_interactive = FALSE)

  expect_equal(test_path(), ".")
})

test_that("is vectorised", {
  withr::local_envvar(TESTTHAT = "true")
  withr::local_options(testthat_interactive = FALSE)

  expect_equal(test_path("x", c("a", "b")), c("x/a", "x/b"))
})

test_that("uses local path when called from test_file()/tools::testInstalledPackages()", {
  withr::local_envvar(TESTTHAT = "true")
  withr::local_options(testthat_interactive = FALSE)

  expect_equal(test_path("path"), "path")
})

test_that("returns local path during package loading", {
  withr::local_envvar(TESTTHAT = "false", DEVTOOLS_LOAD = "testthat")

  expect_equal(test_path("path"), "path")
})

test_that("returns full path when called interactively", {
  withr::local_envvar("TESTTHAT" = "false")
  pkg <- withr::local_tempdir()
  dir.create(file.path(pkg, "tests", "testthat"), recursive = TRUE)
  withr::local_dir(pkg)

  expect_equal(test_path("path"), "tests/testthat/path")
})

test_that("throws error if can't find tests/testthat", {
  withr::local_envvar("TESTTHAT" = "false")
  withr::local_dir(withr::local_tempdir())

  local_edition(3)
  local_reproducible_output()

  expect_snapshot(test_path("empty"), error = TRUE)
})
