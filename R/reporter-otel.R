#' OpenTelemetry reporter: traces for test results
#'
#' A variant of the Check reporter that also emits OpenTelemetry traces for
#' tests. Span attributes are drawn from [the semantic conventions for
#' tests](https://opentelemetry.io/docs/specs/semconv/registry/attributes/test/).
#'
#' @export
#' @family reporters
OpenTelemetryReporter <- R6::R6Class(
  "OpenTelemetryReporter",
  inherit = CheckReporter,
  public = list(
    tracer = NULL,
    sessions = NULL,
    suite_spans = NULL,
    test_spans = NULL,
    current_file = NULL,

    #' @param pkg A path to an R package, by default the one in the current
    #'   directory.
    #' @param tracer An \pkg{otel} tracer, or `NULL` to use the default tracer.
    initialize = function(pkg = ".", tracer = NULL, ..., call = caller_env()) {
      check_installed("otel", "for emitting Open Telemetry traces", call = call)
      set_pkg_resource_attributes(pkg)
      self$tracer <- tracer %||% otel::get_tracer("testthat")
      self$sessions <- new_environment()
      self$suite_spans <- new_environment()
      self$test_spans <- new_environment()
      super$initialize(...)
    },

    start_file = function(file) {
      # Track the current file so we can set it as an attribute on spans.
      self$current_file <- file.path("tests/testthat", file)
      context_start_file(file)
    },

    end_file = function(file) {
      self$current_file <- NULL
    },

    start_context = function(context) {
      # In order to handle concurrency issues with parallel tests, we maintain
      # an otel session for each context and switch in and out of it as needed.
      session <- self$tracer$start_session()
      env_poke(self$sessions, context, session)
      on.exit(self$tracer$deactivate_session())

      span <- self$tracer$start_span(
        name = "test_suite",
        attributes = compact(list(
          "test.suite.name" = context,
          "code.filepath" = self$current_file
        )),
        scope = NULL
      )
      env_poke(self$suite_spans, context, span)
    },

    end_context = function(context) {
      span <- env_get(self$suite_spans, context)
      span$end()
      env_unbind(self$suite_spans, context)

      # Clean up the session.
      session <- env_get(self$sessions, context)
      self$tracer$finish_session(session)
      env_unbind(self$sessions, context)
    },

    start_test = function(context, test) {
      if (is.null(context)) {
        # It seems like this can happen when running tests with a filter.
        context <- names(self$sessions)[1]
      }

      # Ensure we start test spans (and any spans started by functions within
      # that test) in the context's session.
      session <- env_get(self$sessions, context)
      self$tracer$activate_session(session)

      key <- paste(context, test, sep = "|")
      parent <- env_get(self$suite_spans, context)
      span <- self$tracer$start_span(
        name = "test_case",
        attributes = list("test.case.name" = test),
        options = list(parent = parent),
        scope = NULL
      )
      env_poke(self$test_spans, key, span)
    },

    end_test = function(context, test) {
      # Deactivate the context's session before starting the next test (which
      # might have a different one).
      on.exit(self$tracer$deactivate_session())

      context <- context %||% names(self$sessions)[1]
      key <- paste(context, test, sep = "|")
      span <- env_get(self$test_spans, key)
      if (span$is_recording() && !span$status_set) {
        # If the span's status hasn't been set, we assume the test passed.
        span$set_status("ok")
        span$set_attribute("test.case.result.status", "pass")
      }
      span$end()
      env_unbind(self$test_spans, key)
    },

    add_result = function(context, test, result) {
      if (expectation_broken(result) || expectation_skip(result)) {
        context <- context %||% names(self$sessions)[1]
        key <- paste(context, test, sep = "|")
        span <- env_get(self$test_spans, key)
        if (!span$is_recording()) {
          return(super$add_result(context, test, result))
        }

        # Extract source references, if possible.
        filename <- NULL
        line <- NULL
        column <- NULL
        if (inherits(result$srcref, "srcref")) {
          filename <- attr(result$srcref, "srcfile")$filename
          line <- result$srcref[1]
          column <- result$srcref[2]
        }
        attributes <- compact(list(
          "code.filepath" = file.path("tests/testthat", filename),
          "code.lineno" = line,
          "code.column" = column
        ))

        if (expectation_broken(result)) {
          # Record error or failure expectations as exceptions on the test span.
          span$record_exception(result, attributes = attributes)
          # Mark the span as having errored. This is also what
          # pytest-opentelemetry does.
          span$set_status("error")
          span$set_attribute("test.case.result.status", "fail")
        } else if (expectation_skip(result)) {
          # Record a special "skipped" event for skip expectations.
          span$add_event("test_skipped", attributes = attributes)
          span$set_status("unset")
          span$set_attribute("test.case.result.status", "skipped")
        }
      }
      super$add_result(context, test, result)
    }
  )
)

set_pkg_resource_attributes <- function(pkg = ".") {
  attributes <- get_pkg_resource_attributes(pkg)
  if (is.null(attributes)) {
    return()
  }
  set_resource_attributes(.attributes = attributes)
}

get_pkg_resource_attributes <- function(pkg = ".") {
  # Try to detect when we are testing a package.
  if (!env_var_is_true("NOT_CRAN")) {
    return(NULL)
  }
  # Use what we know about the package to set some resource attributes.
  desc <- pkgload::pkg_desc(pkg)
  attributes <- list(
    "service.name" = desc$get_field("Package"),
    "service.version" = desc$get_version(),
    "vcs.repository.url.full" = get_repo_url(),
    "vcs.repository.ref.revision" = get_git_revision()
  )
  # Existing environment variables take precedence.
  from_env <- get_resource_attributes()
  utils::modifyList(attributes, from_env)
}

get_repo_url <- function(pkg = ".") {
  # Default to using the Github Actions context, if available.
  if (nchar(repo <- Sys.getenv("GITHUB_REPOSITORY")) != 0) {
    return(paste0(Sys.getenv("GITHUB_SERVER_URL"), "/", repo))
  }
  # Otherwise check if the package has a GitHub URL in its DESCRIPTION file.
  desc <- pkgload::pkg_desc(pkg)
  github_urls <- startsWith(desc$get_urls(), "https://github.com")
  if (any(github_urls)) {
    return(desc$get_urls()[github_urls][1])
  }
  NULL
}

get_git_revision <- function() {
  # Default to using the Github Actions context, if available.
  if (nchar(revision <- Sys.getenv("GITHUB_SHA")) != 0) {
    return(revision)
  }
  tryCatch(
    system2(
      "git",
      c("rev-parse", "HEAD"),
      stdout = TRUE,
      stderr = TRUE
    )[1],
    error = function(e) NULL
  )
}

get_resource_attributes <- function(
  env = Sys.getenv("OTEL_RESOURCE_ATTRIBUTES")
) {
  if (nchar(env) == 0) {
    return(list())
  }
  # Split the attributes by comma and then by equals sign.
  attrs <- strsplit(env, ",", fixed = TRUE)[[1]]
  split <- strsplit(attrs, "=", fixed = TRUE)
  out <- structure(
    vector("list", length(split)),
    .Names = character(length(split))
  )
  for (i in seq_along(split)) {
    x <- split[[i]]
    if (length(x) != 2) {
      cli::cli_abort(
        "Invalid {.env OTEL_RESOURCE_ATTRIBUTES} format: {.str {env}}",
        .internal = TRUE
      )
    }
    out[[i]] <- x[2]
    names(out)[i] <- x[1]
  }
  out
}

set_resource_attributes <- function(..., .attributes = list()) {
  attrs <- utils::modifyList(list(...), .attributes)
  # Special handling for service.name, which isn't picked up by the SDK unless
  # it's set in the dedicated environment variable.
  if (!is.null(attrs["service.name"])) {
    Sys.setenv(OTEL_SERVICE_NAME = attrs[["service.name"]])
  }
  attrs <- vapply(attrs, format, character(1L))
  formatted <- paste(names(attrs), attrs, sep = "=", collapse = ",")
  Sys.setenv(OTEL_RESOURCE_ATTRIBUTES = formatted)
}
