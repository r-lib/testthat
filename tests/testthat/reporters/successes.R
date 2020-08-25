test_that("two successes", {
  expect_true(TRUE)
  expect_true(TRUE)
})

test_that("five more successes", {
  for (i in 1:5) {
    expect_true(TRUE)
  }
})
