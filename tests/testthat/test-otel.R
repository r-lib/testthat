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

test_that("otel instrumentation works with describe/it", {
  skip_if_not_installed("otelsdk")

  record <- with_otel_record({
    with_reporter("silent", {
      describe("a feature", {
        it("passes", {
          expect_true(TRUE)
        })
        it("fails", {
          expect_equal(1, 1)
          expect_true(FALSE)
        })
      })
    })
  })

  traces <- record$traces
  expect_length(traces, 3L)
  expect_equal(traces[[1L]]$name, "test that a feature / passes")
  expect_equal(traces[[1L]]$attributes[["test.expectations.total"]], 1)
  expect_equal(traces[[1L]]$attributes[["test.status"]], "pass")
  expect_equal(traces[[1L]]$status, "ok")
  expect_equal(traces[[2L]]$name, "test that a feature / fails")
  expect_equal(traces[[2L]]$attributes[["test.expectations.total"]], 2)
  expect_equal(traces[[2L]]$attributes[["test.expectations.passed"]], 1)
  expect_equal(traces[[2L]]$attributes[["test.expectations.failed"]], 1)
  expect_equal(traces[[2L]]$attributes[["test.status"]], "fail")
  expect_equal(traces[[2L]]$status, "error")
  expect_equal(traces[[3L]]$name, "test that a feature")
  expect_equal(traces[[3L]]$attributes[["test.expectations.total"]], 0)
})

test_that("otel instrumentation works with nested test_that", {
  skip_if_not_installed("otelsdk")

  record <- with_otel_record({
    with_reporter("silent", {
      test_that("outer test", {
        expect_true(TRUE)
        test_that("inner test fails", {
          expect_equal(1, 2)
        })
      })
    })
  })

  traces <- record$traces
  expect_length(traces, 2L)
  expect_equal(traces[[1L]]$name, "test that outer test / inner test fails")
  expect_equal(traces[[1L]]$attributes[["test.expectations.total"]], 1)
  expect_equal(traces[[1L]]$attributes[["test.expectations.failed"]], 1)
  expect_equal(traces[[1L]]$attributes[["test.status"]], "fail")
  expect_equal(traces[[1L]]$status, "error")
  expect_equal(traces[[2L]]$name, "test that outer test")
  expect_equal(traces[[2L]]$attributes[["test.expectations.total"]], 1)
  expect_equal(traces[[2L]]$attributes[["test.status"]], "pass")
  expect_equal(traces[[2L]]$status, "ok")
})
