test_that("can supress colours", {
  op <- options(
    crayon.enabled = TRUE,
    testthat.use_colours = TRUE,
    cli.num_colors = 8L
  )
  check <- cli::ansi_has_any(colourise("X"))
  # Must restore original options before expectation is triggered
  options(op)

  expect_true(check)
})

test_that("We don't have colours if we don't want to", {
  op <- options(
    crayon.enabled = TRUE,
    testthat.use_colours = FALSE
  )
  check <- cli::ansi_has_any(colourise("X"))
  options(op)

  expect_false(check)
})
