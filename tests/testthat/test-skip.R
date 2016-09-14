context("skip")

test_that("Package checks", {
  expect_skip <- function(code, need_skip = TRUE) {
    skipped <- TRUE
    tryCatch(
      {
        code
        skipped <- FALSE
      },
      skip = function(e) NULL
    )

    expect_equal(skipped, need_skip)
  }
  expect_skip(skip_if_not_installed("testthat"), FALSE)
  expect_skip(skip_if_not_installed("testthat", 1.0), FALSE)
  expect_skip(skip_if_not_installed("testthat", "9999.9999.999"))
})
