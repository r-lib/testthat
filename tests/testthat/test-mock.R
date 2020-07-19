test_that("deprecated in 3rd edition", {
  expect_warning(local_mock(), "deprecated")
  expect_warning(with_mock(is_testing = function() FALSE), "deprecated")
})

test_that("can change value of internal function", {
  local_edition(2)

  with_mock(
    test_mock2 = function() 5,
    expect_equal(test_mock1(), 5)
  )

  # and value is restored on error
  expect_error(
    with_mock(
      test_mock2 = function() 5,
      stop("!")
    )
  )
  expect_equal(test_mock1(), 10)
})


test_that("mocks can access local variables", {
  local_edition(2)
  x <- 5

  with_mock(
    test_mock2 = function() x,
    expect_equal(test_mock1(), 5)
  )
})

test_that("non-empty mock with return value", {
  local_edition(2)
  expect_true(with_mock(
    compare = function(x, y, ...) list(equal = TRUE, message = "TRUE"),
    TRUE
  ))
})

test_that("nested mock", {
  local_edition(2)
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
  local_edition(2)
  expect_error(with_mock(..bogus.. = identity, TRUE), "Function [.][.]bogus[.][.] not found in environment testthat")
})

test_that("can't mock non-function", {
  local_edition(2)
  expect_error(with_mock(pkg_and_name_rx = FALSE, TRUE), "Function pkg_and_name_rx not found in environment testthat")
})

test_that("empty or no-op mock", {
  local_edition(2)
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
  local_edition(2)
  expect_warning(expect_false(withVisible(with_mock())$visible))
  expect_true(withVisible(with_mock(compare = function() {}, TRUE))$visible)
  expect_false(withVisible(with_mock(compare = function() {}, invisible(5)))$visible)
})

test_that("multiple return values", {
  local_edition(2)
  expect_true(with_mock(FALSE, TRUE, compare = function() {}))
  expect_equal(with_mock(3, compare = function() {}, 5), 5)
})

test_that("can access variables defined in function", {
  local_edition(2)
  x <- 5
  expect_equal(with_mock(x, compare = function() {}), 5)
})

test_that("can mock if package is not loaded", {
  local_edition(2)
  if ("package:curl" %in% search()) {
    skip("curl is loaded")
  }
  skip_if_not_installed("curl")
  with_mock(`curl::curl` = identity, expect_identical(curl::curl, identity))
})

test_that("changes to variables are preserved between calls and visible outside", {
  local_edition(2)
  x <- 1
  with_mock(
    show_menu = function() {},
    x <- 3,
    expect_equal(x, 3)
  )
  expect_equal(x, 3)
})

test_that("mock extraction", {
  local_edition(2)
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
# local_mock --------------------------------------------------------------

test_that("local_mock operates locally", {
  local_edition(2)
  f <- function() {
    local_mock(compare = function(x, y) FALSE)
    compare(1, 1)
  }

  expect_false(f())
  expect_equal(compare(1, 1), no_difference())
})
