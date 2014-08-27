context("Mock")

test_that("can make 3 = 5", {
  with_mock({
    expect_equal(3, 5)
  },
  compare = function(x, y, ...) list(equal = TRUE, message = "TRUE")
  )
  expect_that(5, not(equals(3)))
})

test_that("empty mock with return value", {
  expect_true(with_mock(TRUE))
})

test_that("non-empty mock with return value", {
  expect_true(with_mock(
    TRUE,
    compare = function(x, y, ...) list(equal = TRUE, message = "TRUE")
  ))
})

test_that("multi-mock", {
  with_mock({
    expect_warning(stopifnot(compare(3, 5)$equal))
  },
  gives_warning = throws_error
  )
  expect_warning(warning("test"))
})

test_that("nested mock", {
  with_mock({
    with_mock({
      expect_warning(stopifnot(!compare(3, 5)$equal))
    },
    gives_warning = throws_error
    )
  },
  all.equal = function(x, y, ...) TRUE,
  .env = asNamespace("base")
  )
  expect_false(isTRUE(all.equal(3, 5)))
  expect_warning(warning("test"))
})

test_that("qualified mock names", {
  with_mock({
    expect_warning(stopifnot(!compare(3, 5)$equal))
  },
  gives_warning = throws_error,
  `base::all.equal` = function(x, y, ...) TRUE
  )
  with_mock({
    expect_warning(stopifnot(!compare(3, 5)$equal))
  },
  `testthat::gives_warning` = throws_error,
  all.equal = function(x, y, ...) TRUE,
  .env = asNamespace("base")
  )
  expect_false(isTRUE(all.equal(3, 5)))
  expect_warning(warning("test"))
})

test_that("can't mock non-existing", {
  expect_error(with_mock(TRUE, `base::..bogus..` = identity), "Function [.][.]bogus[.][.] not found in environment base")
  expect_error(with_mock(TRUE, ..bogus.. = identity), "Function [.][.]bogus[.][.] not found in environment testthat")
})

test_that("can't mock non-function", {
  expect_error(with_mock(TRUE, .bg_colours = FALSE), "Function [.]bg_colours not found in environment testthat")
})

test_that("need named arguments for mock", {
  expect_error(with_mock(TRUE, FALSE), "Only named arguments are supported")
  expect_error(with_mock(TRUE, FALSE, anything = identity), "Only named arguments are supported")
})
