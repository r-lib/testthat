context("Mock")

test_that("can make 3 = 5", {
  with_mock(
    compare = function(x, y, ...) list(equal = TRUE, message = "TRUE"),
    expect_equal(3, 5)
  )
  expect_that(5, not(equals(3)))
})

test_that("empty mock with return value", {
  expect_true(with_mock(TRUE))
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
  expect_identical(with_mock(), invisible(NULL))
  expect_identical(with_mock(TRUE), TRUE)
  expect_identical(with_mock(invisible(5)), invisible(5))
})
