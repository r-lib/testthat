#' Snapshot testing for values
#'
#' Captures the result of function, flexibly serializing it into a text
#' representation that's stored in a snapshot file. See [expect_snapshot()]
#' for more details on snapshot testing.
#'
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
#' @param ... Passed on to [waldo::compare()] so you can control the details of
#'   the comparison.
#' @inheritParams expect_snapshot
#' @inheritParams compare
#' @export
expect_snapshot_value <- function(
  x,
  style = c("json", "json2", "deparse", "serialize"),
  cran = FALSE,
  tolerance = testthat_tolerance(),
  ...,
  variant = NULL
) {
  edition_require(3, "expect_snapshot_value()")
  variant <- check_variant(variant)
  lab <- quo_label(enquo(x))

  style <- arg_match(style)

  save <- switch(
    style,
    json = function(x) jsonlite::toJSON(x, auto_unbox = TRUE, pretty = TRUE),
    json2 = function(x) jsonlite::serializeJSON(x, pretty = TRUE),
    deparse = function(x) paste0(deparse(x), collapse = "\n"),
    serialize = function(x) {
      jsonlite::base64_enc(serialize(x, NULL, version = 2))
    }
  )
  load <- switch(
    style,
    json = function(x) jsonlite::fromJSON(x, simplifyVector = FALSE),
    json2 = function(x) jsonlite::unserializeJSON(x),
    deparse = function(x) reparse(x),
    serialize = function(x) unserialize(jsonlite::base64_dec(x))
  )

  with_is_snapshotting(force(x))
  check_roundtrip(
    x,
    load(save(x)),
    label = lab,
    style = style,
    ...,
    tolerance = tolerance
  )

  expect_snapshot_helper(
    lab,
    x,
    save = save,
    load = load,
    cran = cran,
    ...,
    tolerance = tolerance,
    variant = variant,
    trace_env = caller_env()
  )
}

# Safe environment for evaluating deparsed objects, based on inspection of
# https://github.com/wch/r-source/blob/5234fe7b40aad8d3929d240c83203fa97d8c79fc/src/main/deparse.c#L845
reparse <- function(x) {
  env <- env(
    emptyenv(),
    `-` = `-`,
    c = c,
    list = list,
    quote = quote,
    structure = structure,
    expression = expression,
    `function` = `function`,
    new = methods::new,
    getClass = methods::getClass,
    pairlist = pairlist,
    alist = alist,
    as.pairlist = as.pairlist
  )

  eval(parse(text = x), env)
}

# Safe environment for evaluating deparsed objects, based on inspection of
# https://github.com/wch/r-source/blob/5234fe7b40aad8d3929d240c83203fa97d8c79fc/src/main/deparse.c#L845
reparse <- function(x) {
  env <- env(
    emptyenv(),
    `-` = `-`,
    c = c,
    list = list,
    quote = quote,
    structure = structure,
    expression = expression,
    `function` = `function`,
    new = methods::new,
    getClass = methods::getClass,
    pairlist = pairlist,
    alist = alist,
    as.pairlist = as.pairlist
  )

  eval(parse(text = x), env)
}

check_roundtrip <- function(
  x,
  y,
  label,
  style,
  ...,
  tolerance = testthat_tolerance(),
  error_call = caller_env()
) {
  check <- waldo_compare(
    x,
    y,
    x_arg = "original",
    y_arg = "new",
    ...,
    tolerance = tolerance
  )
  if (length(check) > 0) {
    abort(
      c(
        paste0(
          "`",
          label,
          "` could not be safely serialized with `style = \"",
          style,
          "\"`."
        ),
        " " = paste0(
          "Serializing then deserializing the object returned something new:\n\n",
          check,
          "\n"
        ),
        i = "You may need to try a different `style`."
      ),
      call = error_call
    )
  }
}
