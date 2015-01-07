context("Colours")

test_that("We have colours if we want to", {

  op <- options(
    crayon.enabled = TRUE,
    testthat.use_colours = TRUE
  )

  c1 <- crayon::has_style(colourise("X", "passed"))
  c2 <- crayon::has_style(colourise("X", "skipped"))
  c3 <- crayon::has_style(colourise("X", "error"))

  options(op)

  expect_true(c1)
  expect_true(c2)
  expect_true(c3)

})

test_that("We don't have colours if we don't want to", {

  op <- options(
    crayon.enabled = TRUE,
    testthat.use_colours = FALSE
  )

  c1 <- crayon::has_style(colourise("X", "passed"))
  c2 <- crayon::has_style(colourise("X", "skipped"))
  c3 <- crayon::has_style(colourise("X", "error"))

  options(op)

  expect_false(c1)
  expect_false(c2)
  expect_false(c3)

})
