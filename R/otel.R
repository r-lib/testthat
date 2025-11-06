otel_tracer_name <- "org.r-lib.testthat"
otel_is_tracing <- FALSE
otel_tracer <- NULL

# generic otel helpers ---------------------------------------------------------

# nocov start

otel_cache_tracer <- function() {
  requireNamespace("otel", quietly = TRUE) || return()
  otel_tracer <<- otel::get_tracer(otel_tracer_name)
  otel_is_tracing <<- tracer_enabled(otel_tracer)
}

# nocov end

tracer_enabled <- function(tracer) {
  .subset2(tracer, "is_enabled")()
}

otel_refresh_tracer <- function() {
  requireNamespace("otel", quietly = TRUE) || return()
  tracer <- otel::get_tracer()
  modify_binding(
    topenv(),
    list(otel_tracer = tracer, otel_is_tracing = tracer_enabled(tracer))
  )
}

modify_binding <- function(env, lst) {
  lapply(names(lst), unlockBinding, env)
  list2env(lst, envir = env)
  lapply(names(lst), lockBinding, env)
}

otel_local_active_span <- function(
  name,
  label,
  attributes = list(),
  links = NULL,
  options = NULL,
  scope = parent.frame()
) {
  otel_is_tracing || return()
  spn <- otel::start_local_active_span(
    sprintf("%s %s", name, label),
    attributes = otel::as_attributes(attributes),
    links = links,
    options = options,
    tracer = otel_tracer,
    activation_scope = scope
  )
}
