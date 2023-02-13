test_that("with_mocked_env() modifies parent env", {
  f <- function() g()
  f2 <- with_mocked_env(f, g = function() 1)
  expect_equal(f2(), 1)
})

test_that("with_mocked_env() validates its inputs", {
  f <- function() 1

  expect_snapshot(error = TRUE, {
    with_mocked_env(1)
    with_mocked_env(f, function() 2)
    with_mocked_env(f, x = 2)
  })
})

test_that("with_mocked_bindings affects local bindings", {
  out <- with_mocked_bindings(test_mock1(), test_mock2 = function() "x")
  expect_equal(out, "x")
})

test_that("local_mocked_bindings affects local bindings", {
  local_mocked_bindings(test_mock2 = function() "x")
  expect_equal(test_mock1(), "x")
})
