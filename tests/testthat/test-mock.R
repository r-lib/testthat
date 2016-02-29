context("Mock")

test_that("can make 3 = 5", {
  with_mock(
    compare = function(x, y, ...) list(equal = TRUE, message = "TRUE"),
    expect_equal(3, 5)
  )
})

test_that("mocked function is restored on error", {
  expect_error(
    with_mock(
      compare = function(x, y, ...) list(equal = TRUE, message = "TRUE"),
      stop("Simulated error")
    ),
    "Simulated error"
  )
})

test_that("non-empty mock with return value", {
  expect_true(with_mock(
    compare = function(x, y, ...) list(equal = TRUE, message = "TRUE"),
    TRUE
  ))
})

test_that("nested mock", {
  with_mock(
    all.equal = function(x, y, ...) TRUE,
    {
      with_mock(
        expect_warning = expect_error,
        {
          expect_warning(stopifnot(!compare(3, "a")$equal))
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
    expect_warning = expect_error,
    `base::all.equal` = function(x, y, ...) TRUE,
    {
      expect_warning(stopifnot(!compare(3, "a")$equal))
    }
  )
  with_mock(
    `testthat::expect_warning` = expect_error,
    all.equal = function(x, y, ...) TRUE,
    {
      expect_warning(stopifnot(!compare(3, "a")$equal))
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

test_that("multiple return values", {
  expect_true(with_mock(FALSE, TRUE, `base::identity` = identity))
  expect_equal(with_mock(3, `base::identity` = identity, 5), 5)
})

test_that("can access variables defined in function", {
  x <- 5
  suppressWarnings(expect_equal(with_mock(x), 5))
})

test_that("can mock both qualified and unqualified functions", {
  with_mock(`stats::acf` = identity, expect_identical(stats::acf, identity))
  with_mock(`stats::acf` = identity, expect_identical(acf, identity))
  with_mock(acf = identity, expect_identical(stats::acf, identity), .env = "stats")
  with_mock(acf = identity, expect_identical(acf, identity), .env = "stats")
})

test_that("can mock hidden functions", {
  with_mock(`stats:::add1.default` = identity, expect_identical(stats:::add1.default, identity))
})

test_that("can mock if package is not loaded", {
  if ("package:devtools" %in% search())
    skip('devtools is loaded')
  skip_if_not_installed("devtools")
  with_mock(`devtools::add_path` = identity, expect_identical(devtools::add_path, identity))
})

test_that("changes to variables are preserved between calls and visible outside", {
  x <- 1
  with_mock(
    `base::identity` = identity,
    x <- 3,
    expect_equal(x, 3)
  )
  expect_equal(x, 3)
})

test_that("can mock function imported from other package", {
  with_mock(`testthat::setRefClass` = identity, expect_identical(setRefClass, identity))
  with_mock(`methods::setRefClass` = identity, expect_identical(setRefClass, identity))
})

test_that("mock extraction", {
  expect_identical(extract_mocks(list(identity = identity), asNamespace("base"))$identity$name, as.name("identity"))
  expect_error(extract_mocks(list(..bogus.. = identity), asNamespace("base")),
               "Function [.][.]bogus[.][.] not found in environment base")
  expect_identical(extract_mocks(list(`base::identity` = identity), NULL)[[1]]$name, as.name("identity"))
  expect_identical(extract_mocks(list(`base::identity` = identity), NULL)[[1]]$env, asNamespace("base"))
  expect_identical(extract_mocks(list(identity = stop), "base")[[1]]$env, asNamespace("base"))
  expect_identical(extract_mocks(list(identity = stop), asNamespace("base"))[[1]]$env, asNamespace("base"))
  expect_identical(extract_mocks(list(`base::identity` = stop), NULL)[[1]]$orig_value, identity)
  expect_identical(extract_mocks(list(`base::identity` = stop), NULL)[[1]]$new_value, stop)
  expect_identical(extract_mocks(list(`base::identity` = stop), "stats")[[1]]$new_value, stop)
  expect_identical(extract_mocks(list(acf = identity), "stats")[[1]]$new_value, identity)
  expect_equal(length(extract_mocks(list(not = identity, `base::!` = identity), "testthat")), 2)
})

test_that("mocks can access local variables", {
  value <- TRUE

  with_mock(
    expect_equal(2 * 3, 4),
    all.equal = function(x, y, ...) {value}
  )
})
