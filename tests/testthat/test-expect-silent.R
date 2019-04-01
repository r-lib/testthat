test_that("checks for any type of output", {
  expect_failure(expect_silent(warning("!")))
  expect_failure(expect_silent(message("!")))
  expect_failure(expect_silent(print("!")))

  expect_success(expect_silent(""))
})

test_that("returns first argument", {
  expect_equal(expect_silent(1), 1)
})
