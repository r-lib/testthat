test_that("expect_failure() requires 1 failure and zero successes", {
  expect_success(expect_failure(fail()))

  expect_failure(expect_failure({}))
  expect_failure(expect_failure(pass()))
  expect_failure(expect_failure({
    pass()
    fail()
  }))

  expect_failure(expect_failure({
    fail()
    # Following succeed/fail are never reached
    pass()
    fail()
  }))
})

test_that("expect_failure() can optionally match message", {
  expect_success(expect_failure(fail("apple"), "apple"))
  expect_failure(expect_failure(fail("apple"), "banana"))
})

test_that("expect_failure() generates a useful error messages", {
  expect_no_failure <- function() {}
  expect_many_failures <- function() {
    fail()
    fail()
  }
  expect_has_success <- function() {
    fail()
    pass()
  }
  expect_failure_foo <- function() fail("foo")

  expect_snapshot_failure({
    expect_failure(expect_no_failure())
    expect_failure(expect_many_failures())
    expect_failure(expect_has_success())
    expect_failure(expect_failure_foo(), "bar")
  })
})

test_that("expect_success() requires 1 success and zero failures", {
  expect_success(expect_success(pass()))

  expect_failure(expect_success({}))
  expect_failure(expect_success(fail()))
  expect_failure(expect_success({
    pass()
    fail()
  }))
  expect_failure(expect_success({
    pass()
    pass()
  }))
})

test_that("errors in expect_success bubble up", {
  expect_snapshot(expect_success(abort("error")), error = TRUE)
})

test_that("show_failure", {
  expect_null(show_failure(NULL))
  expect_snapshot(show_failure(expect_true(FALSE)))
})


test_that("expect_success() generates a useful error messages", {
  expect_no_success <- function() {}
  expect_many_successes <- function() {
    pass()
    pass()
  }
  expect_has_failure <- function() {
    fail()
    pass()
  }

  expect_snapshot_failure({
    expect_success(expect_no_success())
    expect_success(expect_many_successes())
    expect_success(expect_has_failure())
  })
})

test_that("can count successes and failures", {
  status <- capture_success_failure({})
  expect_equal(status$n_success, 0)
  expect_equal(status$n_failure, 0)

  status <- capture_success_failure({
    pass()
    pass()
    fail()
  })
  expect_equal(status$n_success, 2)
  expect_equal(status$n_failure, 1)

  # No code run after first fail
  status <- capture_success_failure({
    pass()
    fail()
    pass()
    fail()
  })
  expect_equal(status$n_success, 2)
  expect_equal(status$n_failure, 2)
})

test_that("expect_no are deprecated", {
  expect_snapshot({
    expect_no_failure(pass())
    expect_no_success(fail())
  })
})

test_that("expect_no still work", {
  withr::local_options(lifecycle_verbosity = "quiet")
  expect_success(expect_no_failure(pass()))
  expect_failure(expect_no_failure(fail()))
  expect_success(expect_no_success(fail()))
  expect_failure(expect_no_success(pass()))
})
