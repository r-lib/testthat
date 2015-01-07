context("Silence")

test_that("Nothing to see here", {
  message("YOU SHOULDN'T SEE ME")
  warning("YOU SHOULDN'T SEE ME", immediate. = TRUE)

  succeed()
})
