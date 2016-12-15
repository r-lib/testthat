context("Latin-1")

test_that("sourced with correct encoding", {
  expect_equal("ä", "\u00e4")
})
