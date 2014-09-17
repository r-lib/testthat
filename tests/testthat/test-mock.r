context("Mock")

test_that("can make 3 = 5", {
  with_mock(
    compare = function(x, y, ...) list(equal = TRUE, message = "TRUE"),
    expect_equal(3, 5)
  )
  expect_that(5, not(equals(3)))
})

test_that("non-empty mock with return value", {
  expect_true(with_mock(
    compare = function(x, y, ...) list(equal = TRUE, message = "TRUE"),
    TRUE
  ))
})

test_that("multi-mock", {
  with_mock(
    gives_warning = throws_error,
    {
      expect_warning(stopifnot(compare(3, 5)$equal))
    }
  )
  expect_warning(warning("test"))
})

test_that("nested mock", {
  with_mock(
    all.equal = function(x, y, ...) TRUE,
    {
      with_mock(
        gives_warning = throws_error,
        {
          expect_warning(stopifnot(!compare(3, 5)$equal))
        }
      )
    },
    .env = asNamespace("base")
  )
  expect_false(isTRUE(all.equal(3, 5)))
  expect_warning(warning("test"))
})

test_that("qualified mock names", {
  with_mock(
    gives_warning = throws_error,
    `base::all.equal` = function(x, y, ...) TRUE,
    {
      expect_warning(stopifnot(!compare(3, 5)$equal))
    }
  )
  with_mock(
    `testthat::gives_warning` = throws_error,
    all.equal = function(x, y, ...) TRUE,
    {
      expect_warning(stopifnot(!compare(3, 5)$equal))
    },
    .env = asNamespace("base")
  )
  expect_false(isTRUE(all.equal(3, 5)))
  expect_warning(warning("test"))
})

test_that("can't mock non-existing", {
  expect_error(with_mock(`base::..bogus..` = identity, TRUE), "Function [.][.]bogus[.][.] not found in environment base")
  expect_error(with_mock(..bogus.. = identity, TRUE), "Function [.][.]bogus[.][.] not found in environment testthat")
})

test_that("can't mock non-function", {
  expect_error(with_mock(.bg_colours = FALSE, TRUE), "Function [.]bg_colours not found in environment testthat")
})

test_that("empty or no-op mock", {
  suppressWarnings({
    expect_that(with_mock(), equals(invisible(NULL)))
    expect_that(with_mock(TRUE), equals(TRUE))
    expect_that(with_mock(invisible(5)), equals(invisible(5)))
  })

  expect_that(with_mock(), gives_warning("Not mocking anything."))
  expect_that(with_mock(TRUE), gives_warning("Not mocking anything."))
  expect_that(with_mock(invisible(5)), gives_warning("Not mocking anything."))
})

test_that("can access variables defined in function", {
  x <- 5
  suppressWarnings(expect_equal(with_mock(x), 5))
})

test_that("mock extraction", {
  expect_equal(get_mocks(list(identity = identity), asNamespace("base"))$identity$name, "identity")
  expect_error(get_mocks(list(..bogus.. = identity), asNamespace("base")),
               "Function [.][.]bogus[.][.] not found in environment base")
  expect_equal(get_mocks(list(`base::identity` = identity), NULL)[[1]]$name, "identity")
  expect_equal(get_mocks(list(`base::identity` = identity), NULL)[[1]]$env, asNamespace("base"))
  expect_equal(get_mocks(list(`base::identity` = stop), NULL)[[1]]$orig_value, identity)
  expect_equal(get_mocks(list(`base::identity` = stop), NULL)[[1]]$new_value, stop)
  expect_equal(length(get_mocks(list(not = identity, `base::!` = identity), "testthat")), 2)
})
