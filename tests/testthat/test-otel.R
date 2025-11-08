test_that("otel instrumentation works", {
  skip_if_not_installed("otelsdk")

  record <- with_otel_record({
    test_that("otel testing", {
      expect_equal(1, 1)
      expect_error(stop("otel error"))
    })
  })

  traces <- record$traces
  expect_length(traces, 1L)
  expect_equal(traces[[1L]]$name, "test that otel instrumentation works / otel testing")
  expect_equal(traces[[1L]]$instrumentation_scope$name , "org.r-lib.testthat")
})
