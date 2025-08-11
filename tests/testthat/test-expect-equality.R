test_that("basical principles of equality hold", {
  local_edition(2)
  expect_success(expect_equal(1, 1))
  expect_snapshot_failure(expect_equal(1, 2))
  expect_success(expect_identical(1, 1))
  expect_snapshot_failure(expect_identical(1, 2))

  local_edition(3)
  expect_success(expect_equal(1, 1))
  expect_snapshot_failure(expect_equal(1, 2))
  expect_success(expect_identical(1, 1))
  expect_snapshot_failure(expect_identical(1, 2))
})

test_that("expect_equal() ignores numeric type; expect_identical() does not", {
  local_edition(2)
  expect_success(expect_equal(1, 1L))
  expect_snapshot_failure(expect_identical(1, 1L))

  local_edition(3)
  expect_success(expect_equal(1, 1L))
  expect_snapshot_failure(expect_identical(1, 1L))
})

test_that("returns value", {
  one <- 1

  local_edition(3)
  expect_equal(expect_equal(one, one), 1)
  expect_equal(expect_identical(one, one), 1)

  local_edition(2)
  expect_equal(expect_equal(one, one), 1)
  expect_equal(expect_identical(one, one), 1)
})

test_that("can control numeric tolerance", {
  x1 <- 1
  x2 <- x1 + 1e-6

  local_edition(2)
  expect_snapshot_failure(expect_equal(x1, x2))
  expect_success(expect_equal(x1, x2, tolerance = 1e-5))
  expect_success(expect_equivalent(x1, x2, tolerance = 1e-5))

  # with partial matching
  withr::local_options(warnPartialMatchArgs = FALSE)
  expect_success(expect_equal(x1, x2, tol = 1e-5))

  local_edition(3)
  expect_snapshot_failure(expect_equal(x1, x2))
  expect_success(expect_equal(x1, x2, tolerance = 1e-5))
})

test_that("second edition only optionally sets tolerance", {
  local_edition(2)

  # all.equal.POSIXct sets default tolerance to 0.001
  x <- .POSIXct(1)
  y <- .POSIXct(1 + 1e-4)
  expect_success(expect_equal(x, y))
})

test_that("provide useful feedback on failure", {
  local_output_override()

  local_edition(3)
  x <- 1
  expect_snapshot_failure(expect_identical(x, "a"))
  expect_snapshot_failure(expect_equal(x, "a"))

  local_edition(2)
  withr::local_options(testthat.edition_ignore = TRUE)
  expect_snapshot_failure(expect_identical(x, "a"))
  expect_snapshot_failure(expect_equal(x, "a"))
})

test_that("default labels use unquoting", {
  local_edition(2)

  x <- 2
  expect_snapshot_failure(expect_equal(1, !!x))
})

test_that("% is not treated as sprintf format specifier (#445)", {
  expect_snapshot_failure(expect_equal("+", "%"))
  expect_snapshot_failure(expect_equal("%", "+"))
  expect_equal("%", "%")
})

test_that("is_call_infix() handles complex calls (#1472)", {
  expect_false(is_call_infix(quote(
    base::any(
      c(
        veryyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy_long_name = TRUE
      ),
      na.rm = TRUE
    )
  )))

  withr::local_envvar(
    "_R_CHECK_LENGTH_1_LOGIC2_" = "TRUE",
  )
  expect_true(
    base::any(
      c(
        veryyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy_long_name = TRUE
      ),
      na.rm = TRUE
    )
  )
})


# 2nd edition ---------------------------------------------------

test_that("useful message if objects equal but not identical", {
  local_edition(2)

  f <- function() x
  g <- function() x
  environment(g) <- globalenv()

  expect_snapshot_failure(expect_identical(f, g))
})

test_that("attributes for object (#452)", {
  local_edition(2)

  oops <- structure(0, oops = "oops")
  expect_equal(oops, oops)
  expect_snapshot_failure(expect_equal(oops, 0))
  expect_equal(as.numeric(oops), 0)
})

test_that("expect_equivalent ignores attributes and numeric differences", {
  local_edition(2)

  x <- y <- 1
  attr(y, "y") <- y
  expect_success(expect_equivalent(x, y))
  expect_success(expect_equivalent(x, 1L))
})

test_that("expect_equivalent returns value", {
  local_edition(2)
  one <- 1

  expect_equal(expect_equivalent(one, one), 1)
})

test_that("expect_equal validates its inputs", {
  expect_snapshot(error = TRUE, {
    expect_equal(1, 2, tolerance = "high")
    expect_equal(1, 2, tolerance = -1)
  })
})
