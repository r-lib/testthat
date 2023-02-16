test_that("with_mocked_bindings affects local bindings", {
  out <- with_mocked_bindings(test_mock1(), test_mock2 = function() "x")
  expect_equal(out, "x")
})

test_that("local_mocked_bindings affects local bindings", {
  local_mocked_bindings(test_mock2 = function() "x")
  expect_equal(test_mock1(), "x")
})

test_that("can make wrapper", {
  local_mock_x <- function(env = caller_env()) {
    local_mocked_bindings(test_mock2 = function() "x", .env = env)
  }

  local({
    local_mock_x()
    expect_equal(test_mock1(), "x")
  })

  expect_equal(test_mock1(), 10)
})

test_that("with_mocked_bindings() validates its inputs", {
  expect_snapshot(error = TRUE, {
    with_mocked_bindings(1 + 1, function() 2)
    with_mocked_bindings(1 + 1, x = 2)
  })
})
