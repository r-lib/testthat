context("test-expectation")

test_that("expectation contains failure message even when successful", {
  e <- expect(TRUE, "I failed")
  expect_equal(e$message, "I failed")
})
