test_that("expected_named verifies presence of names", {
  expect_success(expect_named(c(a = 1)))
  expect_snapshot_failure(expect_named(1:10))
})

test_that("expected_named verifies actual of names", {
  expect_success(expect_named(c(a = 1), "a"))
  expect_snapshot_failure(expect_named(c(a = 1), "b"))
})

test_that("expected_named optionally ignores order and case", {
  x <- c(a = 1, b = 2)
  expect_success(expect_named(x, c("A", "B"), ignore.case = TRUE))
  expect_success(expect_named(x, c("b", "a"), ignore.order = TRUE))
})

test_that("provide useful feedback on failure", {
  x1 <- c(a = 1)
  x2 <- c(a = 1, b = 2)

  expect_snapshot_failure(expect_named(x1, c("a", "b"), ignore.order = TRUE))
  expect_snapshot_failure(expect_named(x2, "a", ignore.order = TRUE))
  expect_snapshot_failure(expect_named(x1, "b", ignore.order = TRUE))

  expect_snapshot_failure(expect_named(x1, c("a", "b"), ignore.order = FALSE))
  expect_snapshot_failure(expect_named(x2, "a", ignore.order = FALSE))
  expect_snapshot_failure(expect_named(x1, c("b"), ignore.order = FALSE))
})

test_that("expect_named validates its inputs", {
  expect_snapshot(error = TRUE, {
    expect_named(c(a = 1), "a", ignore.order = "yes")
    expect_named(c(a = 1), "a", ignore.case = "yes")
  })
})

test_that("expect_named accepts glue for 'expected'", {
  n <- structure(
    c("v1", "v2", "v3", "v4", "v5"),
    class = c("glue", "character")
  )
  v <- set_names(1:5, n)

  expect_named(v, n)
})
