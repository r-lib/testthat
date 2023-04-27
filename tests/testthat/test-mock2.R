test_that("with_mocked_bindings affects local bindings", {
  out <- with_mocked_bindings(
    test_mock_package(),
    test_mock_package2 = function() "x"
  )
  expect_equal(out, "x")
  expect_equal(test_mock_package(), "y")
})

test_that("local_mocked_bindings affects local bindings", {
  local({
    local_mocked_bindings(test_mock_package2 = function() "x")
    expect_equal(test_mock_package(), "x")
  })

  expect_equal(test_mock_package(), "y")
})

test_that("unlocks and relocks binding if needed", {
  ns_env <- ns_env("testthat")
  expect_true(env_binding_are_locked(ns_env, "test_mock_package"))

  local({
    local_mocked_bindings(test_mock_package = function(...) "x")
    expect_false(env_binding_are_locked(ns_env, "test_mock_package"))
  })

  expect_true(env_binding_are_locked(ns_env, "test_mock_package"))
})

test_that("can make wrapper", {
  local_mock_x <- function(env = caller_env()) {
    local_mocked_bindings(test_mock_package2 = function() "x", .env = env)
  }

  local({
    local_mock_x()
    expect_equal(test_mock_package(), "x")
  })

  expect_equal(test_mock_package(), "y")
})

test_that("with_mocked_bindings() validates its inputs", {
  expect_snapshot(error = TRUE, {
    with_mocked_bindings(1 + 1, function() 2)
    with_mocked_bindings(1 + 1, x = 2)
  })
})

# -------------------------------------------------------------------------

test_that("can mock directly", {
  local_mocked_bindings(test_mock_package = function(...) "x")
  expect_equal(test_mock_package(), "x")
})

test_that("can mock bindings from imports", {
  local_mocked_bindings(sym = function(...) "x")
  expect_equal(test_mock_imports(), "x")
})

test_that("can mock bindings in another package", {
  local_mocked_bindings(sym = function(...) "x", .package = "rlang")
  expect_equal(test_mock_namespaced(), "x")
})

test_that("can mock S3 methods", {
  local({
    local_mocked_bindings(test_mock_method.integer = function(...) "x")
    expect_equal(test_mock_method(1L), "x")
  })
  expect_equal(test_mock_method(1L), "y")
})

test_that("can't mock bindings that don't exist", {
  expect_snapshot(local_mocked_bindings(f = function() "x"), error = TRUE)
})

