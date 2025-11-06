test_that("otel instrumentation works", {
  skip_if_not_installed("otelsdk")

  record <- otelsdk::with_otel_record({
    otel_refresh_tracer()
    test_that("otel testing", {
      expect_equal(1, 1)
      expect_error(stop("otel error"))
    })
  })
  # reset tracer after tests
  otel_refresh_tracer()

  traces <- record$traces
  expect_length(traces, 1L)
  expect_equal(traces[[1L]]$name, "test that otel testing")
  expect_equal(traces[[1L]]$instrumentation_scope$name , "org.r-lib.testthat")
})
