context("Silence")

test_that("Nothing to see here", {
  message("YOU SHOULDN'T SEE ME")
  succeed()
})
