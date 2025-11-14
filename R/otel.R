otel_tracer_name <- "org.r-lib.testthat"

# generic otel helpers ---------------------------------------------------------

otel_cache_tracer <- NULL
otel_local_active_span <- NULL

local({
  otel_is_tracing <- FALSE
  otel_tracer <- NULL

  otel_cache_tracer <<- function() {
    requireNamespace("otel", quietly = TRUE) || return()
    otel_tracer <<- otel::get_tracer(otel_tracer_name)
    otel_is_tracing <<- tracer_enabled(otel_tracer)
  }

  otel_local_active_span <<- function(
    name,
    label,
    scope = parent.frame()
  ) {
    otel_is_tracing || return()
    otel::start_local_active_span(
      sprintf("%s %s", name, label),
      tracer = otel_tracer,
      activation_scope = scope
    )
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
