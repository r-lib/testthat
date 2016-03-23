#' @include reporter.R
NULL


methods::setOldClass('proc_time')

#' List reporter: gather all test results along with elapsed time and
#' file information.
#'
#' This reporter gathers all results, adding additional information such as
#' test elapsed time, and test filename if available. Very useful for reporting.
#'
#' @export
ListReporter <- R6::R6Class("ListReporter", inherit = Reporter,
  public = list(
    current_start_time = NA,
    current_expectations = NULL,
    current_file = NULL,
    results = NULL,

    initialize = function() {
      super$initialize()
      self$results <- Stack$new()
    },

    start_test = function(context, test) {
      self$current_expectations <- Stack$new()
      self$current_start_time <- proc.time()
    },

    add_result = function(context, test, result) {
      self$current_expectations$push(result)
    },

    end_test = function(context, test) {
      elapsed <- as.double(proc.time() - self$current_start_time)

      self$results$push(list(
        file =    self$current_file %||% NA_character_,
        context = context,
        test =    test,
        user =    elapsed[1],
        system =  elapsed[2],
        real =    elapsed[3],
        results = self$current_expectations$as_list()
      ))
    },

    start_file = function(name) {
      self$current_file <- name
    },

    get_results = function() {
      testthat_results(self$results$as_list())
    }
  )
)

#' Create a `testthat_results` object from the test results
#' as stored in the ListReporter results field.
#'
#' @param results a list as stored in ListReporter
#' @return its list argument as a `testthat_results` object
#' @seealso ListReporter
testthat_results  <- function(results) {
  stopifnot(is.list(results))
  structure(results, class = "testthat_results")
}

# return if all tests are successful w/o error
all_passed <- function(res) {
  if (length(res) == 0)
    return(TRUE)

  df <- as.data.frame.testthat_results(res)
  sum(df$failed) == 0 && all(!df$error)
}

#' @export
as.data.frame.testthat_results <- function(x, ...) {
  if (length(x) == 0)
    return(data.frame())

  rows <- lapply(x, sumarize_one_test_results)
  do.call(rbind, rows)
}

sumarize_one_test_results <- function(test) {
  test_results <- test$results
  nb_tests <- length(test_results)

  nb_failed <- nb_skipped <- nb_warning <- 0L
  error <- FALSE

  if (nb_tests > 0) {
    # error reports should be handled differently.
    # They may not correspond to an expect_that() test so remove them
    last_test <- test_results[[nb_tests]]
    error <- expectation_error(last_test)
    if (error) {
      test_results <- test_results[-nb_tests]
      nb_tests <- length(test_results)
    }

    nb_passed <-  sum(vapply(test_results, expectation_success, logical(1)))
    nb_skipped <- sum(vapply(test_results, expectation_skip, logical(1)))
    nb_failed <- sum(vapply(test_results, expectation_failure, logical(1)))
    nb_warning <- sum(vapply(test_results, expectation_warning, logical(1)))
  }

  context <- if (length(test$context) > 0) test$context else ''

  res <- data.frame(file = test$file, context = context, test = test$test,
    nb = nb_tests, failed = nb_failed, skipped = as.logical(nb_skipped),
    error = error, warning = nb_warning,
    user = test$user, system = test$system, real = test$real,
    stringsAsFactors = FALSE)

  res
}


#' @export
print.testthat_results <- function(x, ...) {
  print(as.data.frame(x))
}

