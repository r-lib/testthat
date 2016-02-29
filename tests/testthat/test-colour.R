context("Colours")

test_that("can supress colours", {
  op <- options(
    crayon.enabled = TRUE,
    testthat.use_colours = TRUE
  )
  check <- crayon::has_style(colourise("X"))
  # Must restore original options before expectation is triggered
  options(op)

  expect_true(check)
})

test_that("We don't have colours if we don't want to", {
  op <- options(
    crayon.enabled = TRUE,
    testthat.use_colours = FALSE
  )
  check <- crayon::has_style(colourise("X"))
  options(op)

  expect_false(check)
})
