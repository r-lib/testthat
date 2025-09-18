# setequal ----------------------------------------------------------------

test_that("ignores order and duplicates", {
  expect_success(expect_setequal(letters, rev(letters)))
  expect_success(expect_setequal(c("a", "a", "b"), c("b", "b", "a")))
})

test_that("checks both directions of containment", {
  expect_failure(expect_setequal(letters, letters[-1]))
  expect_failure(expect_setequal(letters[-1], letters))
})

test_that("truncates long differences", {
  cnd <- catch_cnd(expect_setequal("a", letters))
  expect_match(cnd$message, "...")
})

test_that("can compare data frames", {
  # this isn't really a legit use case but one package does it
  df <- data.frame(x = 1:10, y = 10:1)
  expect_success(expect_setequal(unname(df), unname(df)))
})

test_that("warns if both inputs are named", {
  expect_snapshot(expect_setequal(c(a = 1), c(b = 1)))
})

test_that("checks inputs", {
  expect_snapshot(error = TRUE, {
    expect_setequal(sum, 1)
    expect_setequal(1, sum)
  })
})

test_that("useful message on failure", {
  expect_snapshot_failure(expect_setequal("actual", "expected"))

  x <- 1:2
  y <- 2
  expect_snapshot_failure(expect_setequal(x, y))

  x <- 2
  y <- 2:3
  expect_snapshot_failure(expect_setequal(x, y))

  x <- 1:2
  y <- 2:3
  expect_snapshot_failure(expect_setequal(x, y))

  # doesn't repeat values
  x <- c("a", "a")
  y <- c("b", "b", "b")
  expect_snapshot_failure(expect_setequal(x, y))

  # still looks good when expected is inlined
  x <- c("a", "b", "c")
  expect_snapshot_failure(expect_setequal(x, c("a", "b", "c", "d")))
})

test_that("truncates long vectors", {
  x <- 1:2
  y <- 1:50
  expect_snapshot_failure(expect_setequal(x, y))
})

# mapequal ----------------------------------------------------------------

test_that("ignores order", {
  expect_success(expect_mapequal(list(a = 1, b = 2), list(b = 2, a = 1)))
})

test_that("ignores order recursively", {
  x <- list(outer_1 = 1, outer_2 = list(inner_1 = 1, inner_2 = 2))
  y <- list(outer_2 = list(inner_2 = 2, inner_1 = 1), outer_1 = 1)
  expect_success(expect_mapequal(x, y))
})

test_that("fails when any names are duplicated", {
  expect_failure(expect_mapequal(
    list(a = 1, b = 2, b = 3),
    list(b = 2, a = 1)
  ))
  expect_failure(expect_mapequal(
    list(a = 1, b = 2),
    list(b = 3, b = 2, a = 1)
  ))
  expect_failure(expect_mapequal(
    list(a = 1, b = 2, b = 3),
    list(b = 3, b = 2, a = 1)
  ))
})

test_that("handling NULLs", {
  expect_success(expect_mapequal(list(a = 1, b = NULL), list(b = NULL, a = 1)))
})

test_that("fail if names don't match", {
  expect_failure(expect_mapequal(list(a = 1, b = 2), list(a = 1)))
  expect_failure(expect_mapequal(list(a = 1), list(a = 1, b = 2)))
})

test_that("fails if values don't match", {
  expect_failure(expect_mapequal(
    list(a = 1, b = 2),
    list(a = 1, b = 3)
  ))
})

test_that("fails if unnamed values in different location if any unnamed values", {
  expect_success(expect_mapequal(list(1, b = 2, c = 3), list(1, c = 3, b = 2)))
  expect_failure(expect_mapequal(
    list(1, b = 2, c = 3),
    list(b = 2, 1, c = 3)
  ))
})

# contains ----------------------------------------------------------------

test_that("expect_contains() succeeds when appropriate", {
  expect_success(expect_contains(letters, "a"))
  expect_success(expect_contains(letters, letters))
  expect_success(expect_contains(letters, character()))
})

test_that("expect_contains() gives useful message on failure", {
  x1 <- c("a", "b", "c")
  x2 <- c("c", "d")
  x3 <- c("d", "e")

  expect_snapshot_failure(expect_contains(x1, x2))
  expect_snapshot_failure(expect_contains(x1, x3))
})

# not_contains ----------------------------------------------------------------

test_that("expect_not_contains() succeeds when appropriate", {
  expect_success(expect_not_contains(letters, 1))
  expect_success(expect_not_contains(letters, LETTERS))
  expect_success(expect_not_contains(letters, character()))
})

test_that("expect_not_contains() gives useful message on failure", {
  x1 <- c("a", "b", "c")
  x2 <- c("c", "d")
  x3 <- c("b", "c", "d")

  expect_snapshot_failure(expect_not_contains(x1, x2))
  expect_snapshot_failure(expect_not_contains(x1, x3))
})


# in ----------------------------------------------------------------

test_that("expect_in() succeeds when appropriate", {
  expect_success(expect_in("a", letters))
  expect_success(expect_in(letters, letters))
  expect_success(expect_in(character(), letters))
})

test_that("expect_in() gives useful message on failure", {
  x1 <- c("a", "b")
  x2 <- c("b", "c")
  x3 <- c("d", "e")

  expect_snapshot_failure(expect_in(x1, x2))
  expect_snapshot_failure(expect_in(x1, x3))
})

# not_in ----------------------------------------------------------------

test_that("expect_not_in() succeeds when appropriate", {
  expect_success(expect_not_in(1, letters))
  expect_success(expect_not_in(LETTERS, letters))
  expect_success(expect_not_in(character(), letters))
})

test_that("expect_not_in() gives useful message on failure", {
  x1 <- c("a", "b", "c")
  x2 <- c("c", "d")
  x3 <- c("b", "c", "d")

  expect_snapshot_failure(expect_not_in(x1, x2))
  expect_snapshot_failure(expect_not_in(x1, x3))
})
