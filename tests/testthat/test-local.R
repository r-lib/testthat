test_that("local context is 'as promised' inside test_that()", {
  # high-level expectations or expectations that preceded testthat 3e
  expect_true(is_testing())
  expect_equal(testing_package(), "testthat")
  expect_false(is_interactive())
  expect_equal(Sys.getenv("R_TESTS"), "")

  # set in local_test_context()
  expect_equal(Sys.getenv("TESTTHAT"), "true")

  # testthat 3e, set in local_reproducible_output()
  expect_equal(edition_get(), 3L)
  expect_equal(getOption("width"), 80)
  expect_false(getOption("crayon.enabled"))
  expect_false(getOption("cli.dynamic"))
  expect_false(getOption("cli.unicode"))
  expect_equal(getOption("lifecycle_verbosity"), "warning")
  expect_equal(getOption("OutDec"), ".")
  expect_false(getOption("rlang_interactive"))
  expect_false(getOption("useFancyQuotes"))
  expect_equal(getOption("max.print"), 99999)

  expect_equal(Sys.getenv("RSTUDIO"), "")
  expect_equal(Sys.getenv("LANGUAGE"), "en")

  expect_equal(Sys.getlocale("LC_COLLATE"), "C")
})

test_that("can override usual options", {
  local_test_directory(tempdir(), "methods")
  expect_equal(testing_package(), "methods")
})
