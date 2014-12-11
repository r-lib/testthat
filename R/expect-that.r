#' Expect that a condition holds.
#'
#' An expectation checks whether a single condition holds true.
#' \pkg{testthat} currently provides the following expectations.  See their
#' documentation for more details
#'
#' \itemize{
#'  \item \code{\link{is_true}}: truth
#'  \item \code{\link{is_false}}: falsehood
#'  \item \code{\link{is_a}}: inheritance
#'  \item \code{\link{equals}}: equality with numerical tolerance
#'  \item \code{\link{equals_reference}}: equality relative to a reference
#'  \item \code{\link{is_equivalent_to}}: equality ignoring attributes
#'  \item \code{\link{is_identical_to}}: exact identity
#'  \item \code{\link{matches}}: string matching
#'  \item \code{\link{prints_text}}: output matching
#'  \item \code{\link{throws_error}}: error matching
#'  \item \code{\link{gives_warning}}: warning matching
#'  \item \code{\link{shows_message}}: message matching
#'  \item \code{\link{takes_less_than}}: performance
#' }
#'
#' Expectations are arranged into tests with \code{\link{test_that}} and
#' tests are arranged into contexts with \code{\link{context}}.
#'
#' @param object object to test
#' @param condition, a function that returns whether or not the condition
#'   is met, and if not, an error message to display.
#' @param label object label. When \code{NULL}, computed from deparsed object.
#' @param info extra information to be included in the message (useful when
#'   writing tests in loops).
#' @return the (internal) expectation result as an invisible list
#' @export
#' @seealso \code{\link{fail}} for an expectation that always fails.
#' @examples
#' expect_that(5 * 2, equals(10))
#' expect_that(sqrt(2) ^ 2, equals(2))
#' \dontrun{
#' expect_that(sqrt(2) ^ 2, is_identical_to(2))
#' }
expect_that <- function(object, condition, info = NULL, label = NULL) {
  stopifnot(length(info) <= 1, length(label) <= 1)
  if (is.null(label)) {
    label <- find_expr("object")
  }
  results <- condition(object)

  results$srcref <- find_test_srcref()

  results$failure_msg <- paste0(label, " ", results$failure_msg)
  results$success_msg <- paste0(label, " ", results$success_msg)
  if (!is.null(info)) {
    results$failure_msg <- paste0(results$failure_msg, "\n", info)
    results$success_msg <- paste0(results$success_msg, "\n", info)
  }

  get_reporter()$add_result(results)
  invisible(results)
}

#' @title alternative \code{expect_that} from \code{testthat} which permutes all
#'   the inputs to a function which should give the same result where n args >=2 and the function is commutative.
#' @description This makes a lot of assumptions, needs more testing. It can't
#'   handle mixed error/no error outcomes after permutation, which is an
#'   important feature to consider. The command following this function attaches this function to the testthat namespace. This means that it can call internal testthat functions, but does not mean it appears as testthat::expect_that_combine
#'   @examples
#'   expect_that_combine(sum(1,2,3), testthat::equals(6))
#'
#' @return testthat result
#' @export
expect_that_combine <- function(object, condition, info = NULL, label = NULL) {

  cl <- substitute(object)
  stopifnot(sum(sapply(cl, is.symbol)) == 1)

  func_name <- cl[[1]]
  args <- as.list(cl[-1])
  # can only handle flat lists of arguments when permuting
  stopifnot(unlist(args, recursive = TRUE) == unlist(args, recursive = FALSE))
  stopifnot(length(args) >= 2)

  # get the combinations of arguments
  arg_combs <- permute(unlist(args))

  # now loop through all permutations
  for (comb in 1:dim(arg_combs)[1]) {
    # create a promise in effort to mimic expect_that behaviour
    e <- expect_that(
      object    = do.call(as.character(func_name), as.list(arg_combs[comb,])),
      condition = condition,
      info      = paste0(
        info, "args = ",
        paste(arg_combs[comb, ], collapse = " ", sep = ","),
        sprintf(" (test iteration %d)", comb)
      ),
      label     = label
    )
  }
  invisible(e)
}

permute <- function(x) {
  # break out of recursion:
  if (length(x) == 2) return(rbind(x, c(x[2], x[1])))

  res <- numeric()

  #take each one and place it first, then recurse the rest:
  for (element in 1:length(x)) {
    sub_combs <- Recall(x[-element]) # recurse
    new_combs <- cbind(x[element], sub_combs)
    res <- rbind(res, new_combs)
  }
  unname(res)
}

# find the srcref of the test call, or NULL
find_test_srcref <- function() {
  # candidate frame is not in the testthat package,
  # its call matches expect_* and has parsing info attached
  .is_test_frame <- function(i) {
    # is enclosure of the frame containing the call inside testthat package ?
    inside <- identical(environmentName(parent.env(sys.frame(i - 1)))
      , 'testthat')
    match_expect <- any(grepl('expect_', sys.call(i)))
    has_srcref <- !is.null(attr(sys.call(i), 'srcref'))

    !inside && match_expect && has_srcref
  }

  # find the first call (tracing back) that seems good
  nbe <- Find(.is_test_frame, seq_len(sys.nframe()), right = TRUE)

  if (length(nbe) == 0 || is.na(nbe)) {
    return(NULL)
  }

  cc <- sys.call(nbe)
  src <- attr(cc, 'srcref')
  if (is.null(src))  warning("could not get srcref")

  src
}

#' A default expectation that always fails.
#'
#' The fail function forces a test to fail.  This is useful if you want to
#' test a pre-condition '
#'
#' @param message a string to display.
#' @export
#' @examples
#' \dontrun{
#' test_that("this test fails", fail())
#' }
fail <- function(message = "Failure has been forced.") {
  results <- expectation(FALSE, message, "This always succeeds.")
  get_reporter()$add_result(results)
  invisible()
}


#' Negate an expectation
#'
#' This negates an expectation, making it possible to express that you
#' want the opposite of a standard expectation.
#'
#' @param f an existing expectation function
#' @export
#' @examples
#' x <- 1
#' expect_that(x, equals(1))
#' expect_that(x, not(equals(2)))
#' \dontrun{
#' expect_that(x, equals(2))
#' expect_that(x, not(equals(1)))
#' }
not <- function(f) {
  stopifnot(is.function(f))

  function(...) {
    res <- f(...)
    negate(res)
  }
}
