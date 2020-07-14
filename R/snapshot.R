#' Snapshot testing
#'
#' @description
#' `r lifecycle::badge("experimental")`
#'
#' Snapshot tests (aka golden tests) are similar to unit tests except that the
#' expected result is stored in a separate file that is managed by testthat.
#' Snapshot tests are useful for when the expected value is large, or when
#' the intent of the code is something that can only be verified by a human
#' (e.g. this is a useful error message).
#'
#' * `expect_snapshot_output()` captures the output printed to the console.
#'   (by [testthat_print()]).
#' * `expect_snapshot_value()` captures the return value.
#' * `expect_snapshot_condition()` captures a specified condition.
#'
#' (These functions supersede [verify_output()], [expect_known_output()],
#' [expect_known_value()], and [expect_known_hash()].)
#'
#' @section Workflow:
#' The first time that you run a snapshot expectation it will run `x`,
#' capture the results, and record in `tests/testthat/snap/{test}.json`.
#' Each test file gets its own snapshot file, e.g. `test-foo.R` will get
#' `snap/foo.json`.
#'
#' It's important to review the JSON files and commit them to git. They are
#' designed to be human readable, and you should always review new additions
#' to ensure that the salient information has been capture. They should also
#' be carefully reviewed in pull requests, to make sure that snapshots have
#' updated in the expected way.
#'
#' On subsequent runs, the result of `x` will be compared to the value stored
#' on disk. If it's different, the expectation will fail, and a new file
#' `snap/{test}.new.json` will be created. If the change was deliberate,
#' you can approve the change with [snapshot_accept()] and then the tests will
#' pass the next time you run them.
#'
#' @param x Code to evaluate.
#' @param cran Should these expectations be verified on CRAN? By default,
#'   they are not, because snapshot tests tend to be fragile because they
#'   often rely on minor details of dependencies. Even on CRAN, the
#'   expectations will still fail if `x` errors.
#' @export
expect_snapshot_output <- function(x, cran = FALSE) {
  lab <- quo_label(enquo(x))
  val <- capture_output_lines(x, print = TRUE)

  expect_snapshot(lab, val, cran = cran,
    save = function(x) paste0(x, collapse = "\n"),
    load = function(x) split_by_line(x)[[1]]
  )
}

#' @param style Serialization style to use:
#'   * `json` uses [jsonlite::fromJSON()] and [jsonlite::toJSON()]. This
#'      produces the simplest output but only works for relatively simple
#'      objects.
#'   * `json2` uses [jsonlite::serializeJSON()] and [jsonlite::unserializeJSON()]
#'     which are more verbose but work for a wider range of type.
#'   * `deparse` uses [deparse()], which generates a depiction of the object
#'     using R code.
#'   * `serialize()` produces a binary serialization of the object using
#'     [serialize()]. This is all but guaranteed to work for any R object,
#'     but produces a completely opaque serialization.
#' @export
#' @rdname expect_snapshot_output
expect_snapshot_value <- function(x,
                                  style = c("json", "json2", "deparse", "serialize"),
                                  cran = FALSE) {
  lab <- quo_label(enquo(x))

  style <- arg_match(style)

  save <- switch(style,
    json = function(x) jsonlite::toJSON(x, auto_unbox = TRUE, pretty = TRUE),
    json2 = function(x) jsonlite::serializeJSON(x, pretty = TRUE),
    deparse = function(x) paste0(deparse(x), collapse = "\n"),
    serialize = function(x) jsonlite::base64_enc(serialize(x, NULL))
  )
  load <- switch(style,
    json = function(x) jsonlite::fromJSON(x, simplifyVector = FALSE),
    json2 = function(x) jsonlite::unserializeJSON(x),
    deparse = function(x) reparse(x),
    serialize = function(x) unserialize(jsonlite::base64_dec(x))
  )

  expect_snapshot(lab, x, save = save, load = load, cran = cran)
}

# Safe environment for evaluating deparsed objects, based on inspection of
# https://github.com/wch/r-source/blob/5234fe7b40aad8d3929d240c83203fa97d8c79fc/src/main/deparse.c#L845
reparse <- function(x) {
  env <- env(emptyenv(),
    list = list,
    quote = quote,
    expression = expression,
    `function` = `function`,
    new = methods::new,
    pairlist = pairlist,
    alist = alist,
    as.pairlist = as.pairlist
  )

  eval(parse(text = x), env)
}

#' @param class Expected class of condition, e.g. use `error` for errors,
#'   `warning` for warnings, `message` for messages. The expectation will
#'   always fail (even on CRAN) if a condition of this class isn't seen
#'   when executing `x`.
#' @export
#' @rdname expect_snapshot_output
expect_snapshot_condition <- function(x, class = "error", cran = FALSE) {
  lab <- quo_label(enquo(x))
  val <- capture_matching_condition(x, cnd_matcher(class))
  if (is.null(val)) {
    fail(sprintf("%s did not throw '%s' condition", lab, class))
  }

  fields <- unclass(val)[setdiff(names(val), c("message", "trace", "call", "parent"))]
  error <- list(
    message = conditionMessage(val),
    class = class(val),
    fields = fields
  )
  expect_snapshot(
    lab, error,
    cran = cran,
    save = function(x) jsonlite::toJSON(x, pretty = TRUE),
    load = jsonlite::fromJSON
  )
}

expect_snapshot <- function(lab, val, cran = FALSE, save = identity, load = identity) {
  if (!interactive() && on_cran()) {
    skip("On CRAN")
  }

  snapshotter <- get_snapshotter()
  if (is.null(snapshotter)) {
    cat("No snapshotter active. Current value: \n")
    cat(val, sep = "\n")
  } else {
    comp <- snapshotter$take_snapshot(val, save = save, load = load)
    expect(
      length(comp) == 0,
      sprintf(
        "Shapshot of %s has changed:\n%s\n\n%s",
        lab,
        paste0(comp, collapse = "\n\n"),
        "Run `snapshot_accept()` if this is a deliberate change"
      )
    )
  }
}

#' Snapshot management
#'
#' `snapshot_accept()` accepts all changed snapshots.
#'
#' @param path Path to tests
#' @export
snapshot_accept <- function(path = "tests/testthat") {
  changed <- dir(file.path(path, "_snaps"), pattern = "\\.new\\.md$", full.names = TRUE)

  cur <- gsub("\\.new\\.md$", "\\.md", changed)
  unlink(cur)
  file.rename(changed, cur)

  invisible()
}
