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

test_that("can't mock non-existing", {
  expect_error(with_mock(..bogus.. = identity, TRUE), "Function [.][.]bogus[.][.] not found in environment testthat")
})

test_that("can't mock non-function", {
  expect_error(with_mock(pkg_and_name_rx = FALSE, TRUE), "Function pkg_and_name_rx not found in environment testthat")
})

test_that("empty or no-op mock", {
  expect_warning(
    expect_null(with_mock()),
    "Not mocking anything. Please use named parameters to specify the functions you want to mock.",
    fixed = TRUE
  )
  expect_warning(
    expect_true(with_mock(TRUE)),
    "Not mocking anything. Please use named parameters to specify the functions you want to mock.",
    fixed = TRUE
  )
})

test_that("visibility", {
  expect_warning(expect_false(withVisible(with_mock())$visible))
  expect_true(withVisible(with_mock(compare = function() {}, TRUE))$visible)
  expect_false(withVisible(with_mock(compare = function() {}, invisible(5)))$visible)
})

test_that("multiple return values", {
  expect_true(with_mock(FALSE, TRUE, compare = function() {}))
  expect_equal(with_mock(3, compare = function() {}, 5), 5)
})

test_that("can access variables defined in function", {
  x <- 5
  expect_equal(with_mock(x, compare = function() {}), 5)
})

test_that("can mock if package is not loaded", {
  if ("package:devtools" %in% search()) {
    skip("devtools is loaded")
  }
  skip_if_not_installed("devtools")
  with_mock(`devtools::test` = identity, expect_identical(devtools::test, identity))
})

test_that("changes to variables are preserved between calls and visible outside", {
  x <- 1
  with_mock(
    show_menu = function() {},
    x <- 3,
    expect_equal(x, 3)
  )
  expect_equal(x, 3)
})

test_that("mock extraction", {
  expect_identical(
    extract_mocks(list(compare = compare), .env = asNamespace("testthat"))$compare$name,
    as.name("compare")
  )
  expect_error(
    extract_mocks(list(..bogus.. = identity), "testthat"),
    "Function [.][.]bogus[.][.] not found in environment testthat"
  )
  expect_equal(
    length(extract_mocks(list(not = identity, show_menu = identity), "testthat")),
    2
  )
})

test_that("mocks can access local variables", {
  value <- compare(0, 0)

  with_mock(
    expect_equal(2 * 3, 4),
    compare = function(x, y, ...) {
      value
    }
  )
})


# local_mock --------------------------------------------------------------

test_that("local_mock operates locally", {
  f <- function() {
    local_mock(compare = function(x, y) FALSE)
    compare(1, 1)
  }

  expect_false(f())
  expect_equal(compare(1, 1), no_difference())
})
