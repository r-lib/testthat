test_that("expect_failure() requires 1 failure and zero successes", {
  expect_success(expect_failure(fail()))

  expect_failure(expect_failure({}))
  expect_failure(expect_failure(succeed()))
  expect_failure(expect_failure({
    succeed()
    fail()
  }))

  expect_failure(expect_failure({
    fail()
    # Following succeed/fail are never reached
    succeed()
    fail()
  }))
})

test_that("expect_failure() can optionally match message", {
  expect_success(expect_failure(fail("apple"), "apple"))
  expect_failure(expect_failure(fail("apple"), "banana"))
})

test_that("expect_success() requires 1 success and zero failures", {
  expect_success(expect_success(succeed()))

  expect_failure(expect_success({}))
  expect_failure(expect_success(fail()))
  expect_failure(expect_success({
    succeed()
    fail()
  }))
  expect_failure(expect_success({
    succeed()
    succeed()
  }))
})

test_that("errors in expect_success bubble up", {
  expect_snapshot(expect_success(abort("error")), error = TRUE)
})

test_that("show_failure", {
  expect_null(show_failure(NULL))
  expect_output(show_failure(expect_true(FALSE)), "FALSE is not TRUE")
})

test_that("can count successes and failures", {
  status <- capture_success_failure({})
  expect_equal(status$n_success, 0)
  expect_equal(status$n_failure, 0)

  status <- capture_success_failure({
    succeed()
    succeed()
    fail()
  })
  expect_equal(status$n_success, 2)
  expect_equal(status$n_failure, 1)

  # No code run after first fail
  status <- capture_success_failure({
    succeed()
    fail()
    succeed()
    fail()
  })
  expect_equal(status$n_success, 2)
  expect_equal(status$n_failure, 2)
})

test_that("expect_no are deprecated", {
  expect_snapshot({
    expect_no_failure(succeed())
    expect_no_success(fail())
  })
})

test_that("expect_no still work", {
  withr::local_options(lifecycle_verbosity = "quiet")
  expect_success(expect_no_failure(succeed()))
  expect_failure(expect_no_failure(fail()))
  expect_success(expect_no_success(fail()))
  expect_failure(expect_no_success(succeed()))
})
