test_that("fails", {
  for (i in 1:5) {
    test_that(paste0(i), fail())
  }
})

test_that("multiplication works", {
  utf8 <- "M\u00e4chler"
  latin1 <- "M\xe4chler"
  Encoding(latin1) <- "latin1"

  expect_equal(capture_output_lines(cat(latin1)), utf8, ignore_encoding = FALSE)
})

test_that("capture output captures output", {
  out1 <- capture_output(print(1:5))
  out2 <- capture_output(1:5, print = TRUE)

  expect_equal(out1, "[1] 1 2 3 4 5")
  expect_equal(out2, "[1] 1 2 3 4 5")
})

test_that("capture output doesn't print invisible things", {
  out <- capture_output(invisible(1), print = TRUE)
  expect_equal(out, "")
})
