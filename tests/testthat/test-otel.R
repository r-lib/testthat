test_that("otel instrumentation works", {
  skip_if_not_installed("otelsdk")

  record <- with_otel_record({
    test_that("testing is traced", {
      expect_equal(1, 1)
      expect_error(stop("expected error"))
    })
    test_that("all expectations are recorded", {
      expect_equal(1, 1)
      expect_true(TRUE)
      expect_length(1:3, 3)
      expect_warning(warning("expected warning"))
      expect_error(stop("expected error"))
    })
  })

  traces <- record$traces
  expect_length(traces, 2L)
  span <- traces[[1L]]
  expect_equal(
    span$name,
    "test that otel instrumentation works / testing is traced"
  )
  expect_equal(span$instrumentation_scope$name, "org.r-lib.testthat")
  span <- traces[[2L]]
  expect_equal(span$attributes[["test.status"]], "pass")
  expect_equal(span$attributes[["test.expectations.total"]], 5)
  expect_equal(span$attributes[["test.expectations.passed"]], 5)
  expect_equal(span$attributes[["test.expectations.failed"]], 0)
  expect_equal(span$attributes[["test.expectations.error"]], 0)
  expect_equal(span$attributes[["test.expectations.skipped"]], 0)
  expect_equal(span$attributes[["test.expectations.warning"]], 0)
  expect_equal(span$status, "ok")
})
