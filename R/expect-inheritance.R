#' Does code return an object inheriting from the expected base type, S3 class,
#' or S4 class?
#'
#' @description
#' See <https://adv-r.hadley.nz/oo.html> for an overview of R's OO systems, and
#' the vocabulary used here.
#'
#' * `expect_type(x, type)` checks that `typeof(x)` is `type`.
#' * `expect_s3_class(x, class)` checks that `x` is an S3 object that
#'   [inherits()] from `class`
#' * `expect_s3_class(x, NA)` checks that `x` isn't an S3 object.
#' * `expect_s4_class(x, class)` checks that `x` is an S4 object that
#'   [is()] `class`.
#' * `expect_s4_class(x, NA)` checks that `x` isn't an S4 object.
#'
#' See [expect_vector()] for testing properties of objects created by vctrs.
#'
#' @param type String giving base type (as returned by [typeof()]).
#' @param class Either a character vector of class names, or
#'  for `expect_s3_class()` and `expect_s4_class()`, an `NA` to assert
#'  that `object` isn't an S3 or S4 object.
#' @inheritParams expect_that
#' @family expectations
#' @examples
#' x <- data.frame(x = 1:10, y = "x", stringsAsFactors = TRUE)
#' # A data frame is an S3 object with class data.frame
#' expect_s3_class(x, "data.frame")
#' show_failure(expect_s4_class(x, "data.frame"))
#' # A data frame is built from a list:
#' expect_type(x, "list")
#'
#' # An integer vector is an atomic vector of type "integer"
#' expect_type(x$x, "integer")
#' # It is not an S3 object
#' show_failure(expect_s3_class(x$x, "integer"))
#'
#' # Above, we requested data.frame() converts strings to factors:
#' show_failure(expect_type(x$y, "character"))
#' expect_s3_class(x$y, "factor")
#' expect_type(x$y, "integer")
#' @name inheritance-expectations
NULL

#' @export
#' @rdname inheritance-expectations
expect_type <- function(object, type) {
  stopifnot(is.character(type), length(type) == 1)

  act <- quasi_label(enquo(object), arg = "object")
  act_type <- typeof(act$val)

  expect(
    identical(act_type, type),
    sprintf("%s has type %s, not %s.", act$lab, format_class(act_type), format_class(type))
  )
  invisible(act$val)
}

#' @export
#' @rdname inheritance-expectations
#' @param exact If `FALSE`, the default, checks that `object` inherits
#'   from `class`. If `TRUE`, checks that object has a class that's identical
#'   to `class`.
expect_s3_class <- function(object, class, exact = FALSE) {
  act <- quasi_label(enquo(object), arg = "object")
  act$class <- format_class(class(act$val))
  exp_lab <- format_class(class)

  if (identical(class, NA)) {
    expect(
      isS3(object) == !is.na(class),
      sprintf("%s is an S3 object", act$lab)
    )
  } else if (is.character(class)) {
    if (!isS3(act$val)) {
      fail(sprintf("%s is not an S3 object", act$lab))
    } else if (exact) {
      expect(
        identical(class(act$val), class),
        sprintf("%s has class %s, not %s.", act$lab, act$class, exp_lab)
      )
    } else {
      expect(
        inherits(act$val, class),
        sprintf("%s inherits from %s not %s.", act$lab, act$class, exp_lab)
      )
    }
  } else {
    abort("`class` must be a NA or a character vector")
  }

  invisible(act$val)
}

#' @export
#' @rdname inheritance-expectations
expect_s4_class <- function(object, class) {
  act <- quasi_label(enquo(object), arg = "object")
  act_val_lab <- format_class(methods::is(object))
  exp_lab <- format_class(class)

  if (identical(class, NA)) {
    expect(
      isS4(object) == !is.na(class),
      sprintf("%s is an S4 object", act$lab)
    )
  } else if (is.character(class)) {
    if (!isS4(act$val)) {
      fail(sprintf("%s is not an S4 object", act$lab))
    } else {
      expect(
        methods::is(act$val, class),
        sprintf("%s inherits from %s not %s.", act$lab, act_val_lab, exp_lab)
      )
    }
  } else {
    abort("`class` must be a NA or a character vector")
  }

  invisible(act$val)
}

isS3 <- function(x) is.object(x) && !isS4(x)

#' Does an object inherit from a given class?
#'
#' @description
#' `r lifecycle::badge("superseded")`
#'
#' `expect_is()` is an older form that uses [inherits()] without checking
#' whether `x` is S3, S4, or neither. Instead, I'd recommend using
#' [expect_type()], [expect_s3_class()] or [expect_s4_class()] to more clearly
#' convey your  intent.
#'
#' @section 3rd edition:
#' `r lifecycle::badge("deprecated")`
#'
#' `expect_is()` is formally deprecated in the 3rd edition.
#'
#' @keywords internal
#' @inheritParams expect_type
#' @export
expect_is <- function(object, class, info = NULL, label = NULL) {
  stopifnot(is.character(class))
  edition_deprecate(3, "expect_is()",
    "Use `expect_type()`, `expect_s3_class()`, or `expect_s4_class()` instead"
  )


  act <- quasi_label(enquo(object), label, arg = "object")
  act$class <- format_class(class(act$val))
  exp_lab <- format_class(class(class))

  expect(
    inherits(act$val, class),
    sprintf("%s inherits from `%s` not `%s`.", act$lab, act$class, exp_lab),
    info = info
  )
  invisible(act$val)
}


format_class <- function(x) {
  paste0(encodeString(x, quote = "'"), collapse = "/")
}
