test_that("logical tests act as expected", {
  expect_success(expect_true(TRUE))
  expect_success(expect_false(FALSE))

  expect_failure(expect_true(FALSE), "FALSE isn't true")
  expect_failure(expect_false(TRUE), "TRUE isn't false")
})

test_that("logical tests ignore attributes", {
  expect_success(expect_true(c(a = TRUE)))
  expect_success(expect_false(c(a = FALSE)))
})

test_that("additional info returned in message", {
  expect_failure(expect_true(FALSE, "NOPE"), "\nNOPE")
  expect_failure(expect_false(TRUE, "YUP"), "\nYUP")
})
