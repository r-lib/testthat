test_that("basically principles of equality hold", {
  expect_success(expect_equal(1, 1))
  expect_failure(expect_equal(1, 2))

  x <- y <- 1
  expect_success(expect_reference(x, y))
  expect_failure(expect_reference(x, 1))
})

test_that("three forms of equality label themselves in output", {
  verify_output(test_path("test-expect-equality-label.txt"), {
    expect_identical(1, "a")
    expect_equal(1, "a")
    expect_equivalent(1, "a")
  })
})

test_that("default labels use unquoting", {
  x <- 2
  expect_failure(expect_equal(1, !! x), "`actual` (1) not equal to `expected` (2)", fixed = TRUE)
})

test_that("expect_equivalent ignores attributes and numeric differences", {
  x <- y <- 1
  attr(y, "y") <- y
  expect_success(expect_equivalent(x, y))
  expect_success(expect_equivalent(x, 1L))
})

test_that("expect_equal and expect_equivalent pass on ... to compare", {
  x1 <- 1
  x2 <- x1 + 1e-6

  expect_success(expect_equal(x1, x2, tolerance = 1e-5))
  expect_success(expect_equivalent(x1, x2, tolerance = 1e-5))
})

test_that("useful message if objects equal but not identical", {
  f <- function() x
  g <- function() x
  environment(g) <- globalenv()

  expect_failure(expect_identical(f, g))
})

test_that("% is not treated as sprintf format specifier (#445)", {
  expect_failure(expect_equal("+", "%"))
  expect_failure(expect_equal("%", "+"))
  expect_equal("%", "%")
})

test_that("attributes for object (#452)", {
  oops <- structure(0, oops = "oops")
  expect_equal(oops, oops)
  expect_failure(expect_equal(oops, 0))
  expect_equal(as.numeric(oops), 0)
})
