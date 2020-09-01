test_that("succeeds only when same object", {
  local_edition(2)
  x <- y <- 1
  expect_success(expect_reference(x, y))
  expect_failure(expect_reference(x, 1))
})

test_that("returns value", {
  local_edition(2)
  one <- 1
  expect_equal(expect_reference(one, one), 1)
})
