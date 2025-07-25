#' Snapshot testing
#'
#' @description
#' Snapshot tests (aka golden tests) are similar to unit tests except that the
#' expected result is stored in a separate file that is managed by testthat.
#' Snapshot tests are useful for when the expected value is large, or when
#' the intent of the code is something that can only be verified by a human
#' (e.g. this is a useful error message). Learn more in
#' `vignette("snapshotting")`.
#'
#' `expect_snapshot()` runs code as if you had executed it at the console, and
#' records the results, including output, messages, warnings, and errors.
#' If you just want to compare the result, try [expect_snapshot_value()].
#'
#' @section Workflow:
#' The first time that you run a snapshot expectation it will run `x`,
#' capture the results, and record them in `tests/testthat/_snaps/{test}.md`.
#' Each test file gets its own snapshot file, e.g. `test-foo.R` will get
#' `_snaps/foo.md`.
#'
#' It's important to review the Markdown files and commit them to git. They are
#' designed to be human readable, and you should always review new additions
#' to ensure that the salient information has been captured. They should also
#' be carefully reviewed in pull requests, to make sure that snapshots have
#' updated in the expected way.
#'
#' On subsequent runs, the result of `x` will be compared to the value stored
#' on disk. If it's different, the expectation will fail, and a new file
#' `_snaps/{test}.new.md` will be created. If the change was deliberate,
#' you can approve the change with [snapshot_accept()] and then the tests will
#' pass the next time you run them.
#'
#' Note that snapshotting can only work when executing a complete test file
#' (with [test_file()], [test_dir()], or friends) because there's otherwise
#' no way to figure out the snapshot path. If you run snapshot tests
#' interactively, they'll just display the current value.
#'
#' @param x Code to evaluate.
#' @param cran Should these expectations be verified on CRAN? By default,
#'   they are not, because snapshot tests tend to be fragile because they
#'   often rely on minor details of dependencies.
#' @param error Do you expect the code to throw an error? The expectation
#'   will fail (even on CRAN) if an unexpected error is thrown or the
#'   expected error is not thrown.
#' @param variant If non-`NULL`, results will be saved in
#'   `_snaps/{variant}/{test.md}`, so `variant` must be a single string
#'   suitable for use as a directory name.
#'
#'   You can use variants to deal with cases where the snapshot output varies
#'   and you want to capture and test the variations. Common use cases include
#'   variations for operating system, R version, or version of key dependency.
#'   Variants are an advanced feature. When you use them, you'll need to
#'   carefully think about your testing strategy to ensure that all important
#'   variants are covered by automated tests, and ensure that you have a way
#'   to get snapshot changes out of your CI system and back into the repo.
#' @param transform Optionally, a function to scrub sensitive or stochastic
#'   text from the output. Should take a character vector of lines as input
#'   and return a modified character vector as output.
#' @param cnd_class Whether to include the class of messages,
#'   warnings, and errors in the snapshot. Only the most specific
#'   class is included, i.e. the first element of `class(cnd)`.
#' @export
expect_snapshot <- function(x,
                            cran = FALSE,
                            error = FALSE,
                            transform = NULL,
                            variant = NULL,
                            cnd_class = FALSE) {
  edition_require(3, "expect_snapshot()")
  variant <- check_variant(variant)
  if (!is.null(transform)) {
    transform <- as_function(transform)
  }

  x <- enquo0(x)

  # Execute code, capturing last error
  state <- new_environment(list(error = NULL))
  replay <- function(x) {
    snapshot_replay(
      x,
      state,
      transform = transform,
      cnd_class = cnd_class
    )
  }
  with_is_snapshotting(
    out <- verify_exec(quo_get_expr(x), quo_get_env(x), replay)
  )

  # Use expect_error() machinery to confirm that error is as expected
  msg <- compare_condition_3e("error", NULL, state$error, quo_label(x), error)
  if (!is.null(msg)) {
    if (error) {
      expect(FALSE, msg, trace = state$error[["trace"]])
    } else {
      cnd_signal(state$error)
    }
    return()
  }

  expect_snapshot_helper("code", out,
    cran = cran,
    save = function(x) paste0(x, collapse = "\n"),
    load = function(x) split_by_line(x)[[1]],
    variant = variant,
    trace_env = caller_env()
  )
}

snapshot_replay <- function(x, state, ..., transform = NULL) {
  UseMethod("snapshot_replay", x)
}
#' @export
snapshot_replay.character <- function(x, state, ..., transform = NULL) {
  c(snap_header(state, "Output"), snapshot_lines(x, transform))
}
#' @export
snapshot_replay.source <- function(x, state, ..., transform = NULL) {
  c(snap_header(state, "Code"), snapshot_lines(x$src))
}
#' @export
snapshot_replay.condition <- function(x,
                                      state,
                                      ...,
                                      transform = NULL,
                                      cnd_class = FALSE) {

  cnd_message <- env_get(ns_env("rlang"), "cnd_message")

  if (inherits(x, "message")) {
    msg <- cnd_message(x)
    type <- "Message"
  } else {
    if (inherits(x, "error")) {
      state$error <- x
    }
    msg <- cnd_message(x, prefix = TRUE)
    type <- "Condition"
  }

  if (cnd_class) {
    type <- paste0(type, " <", class(x)[[1]], ">")
  }

  c(snap_header(state, type), snapshot_lines(msg, transform))
}

snapshot_lines <- function(x, transform = NULL) {
  x <- split_lines(x)
  if (!is.null(transform)) {
    x <- transform(x)
  }
  x <- indent(x)
  x
}

add_implicit_nl <- function(x) {
  if (substr(x, nchar(x), nchar(x)) == "\n") {
    x
  } else {
    paste0(x, "\n")
  }
}

snap_header <- function(state, header) {
  if (!identical(state$header, header)) {
    state$header <- header
    header
  }
}

#' Snapshot helpers
#'
#' @description
#' `r lifecycle::badge("questioning")`
#'
#' These snapshotting functions are questioning because they were developed
#' before [expect_snapshot()] and we're not sure that they still have a
#' role to play.
#'
#' * `expect_snapshot_output()` captures just output printed to the console.
#' * `expect_snapshot_error()` captures an error message and
#'   optionally checks its class.
#' * `expect_snapshot_warning()` captures a warning message and
#'   optionally checks its class.
#'
#' @inheritParams expect_snapshot
#' @keywords internal
#' @export
expect_snapshot_output <- function(x, cran = FALSE, variant = NULL) {
  edition_require(3, "expect_snapshot_output()")
  variant <- check_variant(variant)

  lab <- quo_label(enquo(x))
  with_is_snapshotting(
    val <- capture_output_lines(x, print = TRUE, width = NULL)
  )

  expect_snapshot_helper(lab, val,
    cran = cran,
    save = function(x) paste0(x, collapse = "\n"),
    load = function(x) split_by_line(x)[[1]],
    variant = variant,
    trace_env = caller_env()
  )
}

#' @param class Class of expected error or warning. The expectation will
#'   always fail (even on CRAN) if an error of this class isn't seen
#'   when executing `x`.
#' @export
#' @rdname expect_snapshot_output
expect_snapshot_error <- function(x, class = "error", cran = FALSE, variant = NULL) {
  edition_require(3, "expect_snapshot_error()")
  expect_snapshot_condition(
    "error", {{x}},
    class = class,
    cran = cran,
    variant = variant
  )
}

#' @export
#' @rdname expect_snapshot_output
expect_snapshot_warning <- function(x, class = "warning", cran = FALSE, variant = NULL) {
  edition_require(3, "expect_snapshot_warning()")
  expect_snapshot_condition(
    "warning", {{x}},
    class = class,
    cran = cran,
    variant = variant
  )
}

expect_snapshot_condition <- function(base_class, x, class, cran = FALSE, variant = NULL) {
  variant <- check_variant(variant)

  lab <- quo_label(enquo(x))
  with_is_snapshotting(
    val <- capture_matching_condition(x, cnd_matcher(class))
  )
  if (is.null(val)) {
    if (base_class == class) {
      fail(sprintf("%s did not generate %s", lab, base_class))
    } else {
      fail(sprintf("%s did not generate %s with class '%s'", lab, base_class, class))
    }
  }

  expect_snapshot_helper(
    lab,
    conditionMessage(val),
    cran = cran,
    variant = variant,
    trace_env = caller_env()
  )
}

expect_snapshot_helper <- function(lab, val,
                                   cran = FALSE,
                                   save = identity,
                                   load = identity,
                                   ...,
                                   tolerance = testthat_tolerance(),
                                   variant = NULL,
                                   trace_env = caller_env()
                                   ) {
  if (!cran && !interactive() && on_cran()) {
    skip("On CRAN")
  }

  snapshotter <- get_snapshotter()
  if (is.null(snapshotter)) {
    snapshot_not_available(save(val))
    return(invisible())
  }

  comp <- snapshotter$take_snapshot(val,
    save = save,
    load = load,
    ...,
    tolerance = tolerance,
    variant = variant,
    trace_env = trace_env
  )

  if (!identical(variant, "_default")) {
    variant_lab <- paste0(" (variant '", variant, "')")
  } else {
    variant_lab <- ""
  }
  hint <- snapshot_accept_hint(variant, snapshotter$file)

  expect(
    length(comp) == 0,
    sprintf(
      "Snapshot of %s has changed%s:\n%s\n\n%s",
      lab,
      variant_lab,
      paste0(comp, collapse = "\n\n"),
      hint
    ),
    trace_env = trace_env
  )
}

snapshot_accept_hint <- function(variant, file, reset_output = TRUE) {
  if (reset_output) {
    local_reporter_output()
  }

  if (is.null(variant) || variant == "_default") {
    name <- file
  } else {
    name <- file.path(variant, file)
  }

  paste0(
    cli::format_inline("* Run {.run testthat::snapshot_accept('{name}')} to accept the change."), "\n",
    cli::format_inline("* Run {.run testthat::snapshot_review('{name}')} to interactively review the change.")
  )
}

snapshot_not_available <- function(message) {
  local_reporter_output()

  cat(cli::rule("Snapshot"), "\n", sep = "")
  cli::cli_inform(c(
    i = "Can't save or compare to reference when testing interactively."
  ))
  cat(message, "\n", sep = "")
  cat(cli::rule(), "\n", sep = "")
}

local_snapshot_dir <- function(snap_names, .env = parent.frame()) {
  path <- withr::local_tempdir(.local_envir = .env)
  dir.create(file.path(path, "_snaps"), recursive = TRUE)

  dirs <- setdiff(unique(dirname(snap_names)), ".")
  for (dir in dirs) {
    dir.create(file.path(path, "_snaps", dir), recursive = TRUE, showWarnings = FALSE)
  }

  snap_paths <- file.path(path, "_snaps", snap_names)
  lapply(snap_paths, brio::write_lines, text = "")

  path
}

# if transform() wiped out the full message, don't indent, #1487
indent <- function(x) if (length(x)) paste0("  ", x) else x

check_variant <- function(x) {
  if (is.null(x)) {
    "_default"
  } else if (is_string(x)) {
    x
  } else {
    abort("If supplied, `variant` must be a string")
  }
}

with_is_snapshotting <- function(code) {
  withr::local_envvar(TESTTHAT_IS_SNAPSHOT = "true")
  code
}
