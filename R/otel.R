otel_tracer_name <- "org.r-lib.testthat"

# generic otel helpers ---------------------------------------------------------

otel_cache_tracer <- NULL
otel_local_test_span <- NULL
otel_update_span <- NULL

local({
  otel_is_tracing <- FALSE
  otel_tracer <- NULL

  otel_cache_tracer <<- function() {
    requireNamespace("otel", quietly = TRUE) || return()
    otel_tracer <<- otel::get_tracer(otel_tracer_name)
    otel_is_tracing <<- tracer_enabled(otel_tracer)
  }

  otel_local_test_span <<- function(name, scope = parent.frame()) {
    otel_is_tracing || return()
    otel::start_local_active_span(
      sprintf("test that %s", name),
      tracer = otel_tracer,
      activation_scope = scope
    )
  }

  otel_update_span <<- function(
    span,
    n_success,
    n_failure,
    n_error,
    n_skip,
    n_warning
  ) {
    otel_is_tracing || return()

    total <- n_success + n_failure + n_error + n_skip + n_warning
    test_status <- if (n_error > 0) {
      "error"
    } else if (n_failure > 0) {
      "fail"
    } else if (total == 0 || n_skip == total) {
      "skip"
    } else {
      "pass"
    }
    span$set_attribute("test.expectations.total", total)
    span$set_attribute("test.expectations.passed", n_success)
    span$set_attribute("test.expectations.failed", n_failure)
    span$set_attribute("test.expectations.error", n_error)
    span$set_attribute("test.expectations.skipped", n_skip)
    span$set_attribute("test.expectations.warning", n_warning)
    span$set_attribute("test.status", test_status)

    if (test_status %in% c("pass", "skip")) {
      span$set_status("ok")
    } else {
      span$set_status("error", paste("Test", test_status))
    }
  }
})

tracer_enabled <- function(tracer) {
  .subset2(tracer, "is_enabled")()
}

with_otel_record <- function(expr) {
  on.exit(otel_cache_tracer())
  otelsdk::with_otel_record({
    otel_cache_tracer()
    expr
  })
}
