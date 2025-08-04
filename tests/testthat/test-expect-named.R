test_that("expected_named verifies presence of names", {
  expect_success(expect_named(c(a = 1)))
  expect_failure(expect_named(1:10))
})

test_that("expected_named verifies actual of names", {
  expect_success(expect_named(c(a = 1), "a"))
  expect_failure(expect_named(c(a = 1), "b"))
})

test_that("expected_named optionally ignores case", {
  expect_success(expect_named(c(a = 1), "A", ignore.case = TRUE))
})

test_that("expected_named optionally ignores order", {
  expect_success(expect_named(
    c(a = 1, b = 2),
    c("b", "a"),
    ignore.order = TRUE
  ))
})

test_that("expect_named validates its inputs", {
  expect_snapshot(error = TRUE, {
    expect_named(c(a = 1), "a", ignore.order = "yes")
    expect_named(c(a = 1), "a", ignore.case = "yes")
  })
})
