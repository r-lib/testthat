#' Quasi-labelling
#'
#' The first argument to every `expect_` function can use unquoting to
#' construct better labels. This makes it easy to create informative labels when
#' expectations are used inside a function or a for loop. `quasi_label()` wraps
#' up the details, returning the expression and label.
#'
#' @section Limitations:
#' Because all `expect_` function use unquoting to generate more informative
#' labels, you can not use unquoting for other purposes. Instead, you'll need
#' to perform all other unquoting outside of the expectation and only test
#' the results.
#'
#' @param quo A quosure created by `rlang::enquo()`.
#' @param label An optional label to override the default. This is
#'   only provided for internal usage. Modern expectations should not
#'   include a `label` parameter.
#' @param arg Argument name shown in error message if `quo` is missing.
#' @keywords internal
#' @return A list containing two elements:
#' \item{val}{The evaluate value of `quo`}
#' \item{lab}{The quasiquoted label generated from `quo`}
#' @export
#' @examples
#' f <- function(i) if (i > 3) i * 9 else i * 10
#' i <- 10
#'
#' # This sort of expression commonly occurs inside a for loop or function
#' # And the failure isn't helpful because you can't see the value of i
#' # that caused the problem:
#' show_failure(expect_equal(f(i), i * 10))
#'
#' # To overcome this issue, testthat allows you to unquote expressions using
#' # !!. This causes the failure message to show the value rather than the
#' # variable name
#' show_failure(expect_equal(f(!!i), !!(i * 10)))
quasi_label <- function(quo, label = NULL, arg = "quo") {
  force(quo)
  if (quo_is_missing(quo)) {
    stop("argument `", arg, "` is missing, with no default.", call. = FALSE)
  }

  expr <- quo_get_expr(quo)
  value <- eval_bare(expr, quo_get_env(quo))
  label <- label %||% auto_label(expr, value, arg)

  new_actual(value, label)
}

new_actual <- function(value, label) {
  list(
    val = value,
    lab = label
  )
}

quasi_capture <- function(.quo, .label, .capture, ...) {
  act <- list()
  act$lab <- .label %||% quo_label(.quo)
  act$cap <- .capture(
    act$val <- eval_bare(quo_get_expr(.quo), quo_get_env(.quo)),
    ...
  )

  act
}

auto_label <- function(expr, value, arg) {
  if (is.call(expr) || is.name(expr)) {
    label <- expr_label(expr)
    if (is_simple(value)) {
      paste0(label, " (", simple_format(value), ")")
    } else {
      label
    }
  } else if (is_simple(expr)) {
    paste0("`", arg, "` (", simple_format(expr), ")")
  } else {
    paste0("`", arg, "`")
  }
}

# expect_true(NULL)

is_simple <- function(x) {
  if (is.null(x)) {
    return(TRUE)
  }
  if (!is.atomic(x)) {
    return(FALSE)
  }
  if (length(x) != 1) {
    return(FALSE)
  }

  if (is.character(x)) {
    !grepl("\n", x) && nchar(x) < 100
  } else if (is.logical(x) || is.numeric(x)) {
    TRUE
  }
}

simple_format <- function(x) {
  if (is.character(x)) {
    encodeString(x, quote = '"')
  } else {
    format(x)
  }
}

expr_label <- function(x) {
  if (is_syntactic_literal(x)) {
    deparse1(x)
  } else if (is.name(x)) {
    paste0("`", as.character(x), "`")
  } else if (is_call(x)) {
    chr <- deparse(x)
    if (length(chr) > 1) {
      if (is_call(x, "function")) {
        x[[3]] <- quote(...)
      } else if (is_call_infix(x)) {
        left <- deparse(x[[2]], width.cutoff = 29)
        right <- deparse(x[[3]], width.cutoff = 28)

        if (length(left) > 1) {
          x[[2]] <- quote(expr = ...)
        }
        if (length(right) > 1) {
          x[[3]] <- quote(expr = ...)
        }
      } else {
        x <- call2(x[[1]], quote(expr = ...))
      }
    }
    deparse1(x)
  } else {
    # Any other object that's been inlined in
    x <- deparse(x)
    if (length(x) > 1) {
      x <- paste0(x[[1]], "...)")
    }
    x
  }
}

is_call_infix <- function(x) {
  if (!is_call(x, n = 2)) {
    return(FALSE)
  }

  fn <- x[[1]]
  if (!is_symbol(fn)) {
    return(FALSE)
  }

  name <- as_string(fn)
  base <- c(
    ":",
    "::",
    ":::",
    "$",
    "@",
    "^",
    "*",
    "/",
    "+",
    "-",
    ">",
    ">=",
    "<",
    "<=",
    "==",
    "!=",
    "!",
    "&",
    "&&",
    "|",
    "||",
    "~",
    "<-",
    "<<-"
  )
  name %in% base || grepl("^%.*%$", name)
}
