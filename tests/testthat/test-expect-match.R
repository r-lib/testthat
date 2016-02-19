context("expect_match")

test_that("extra arguments to matches passed onto grepl", {
  expect_success(expect_match("te*st", "e*", fixed = TRUE))
  expect_success(expect_match("test", "TEST", ignore.case = TRUE))

  expect_success(expect_that("te*st", matches("e*", fixed = TRUE)))
  expect_success(expect_that("test", matches("TEST", ignore.case = TRUE)))

})

