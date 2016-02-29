#' @include reporter.R
NULL


setOldClass('proc_time')

#' List reporter: gather all test results along with elapsed time and
#' file information.
#'
#' This reporter gathers all results, adding additional information such as
#' test elapsed time, and test filename if available. Very useful for reporting.
#'
#' @export
ListReporter <- R6::R6Class("ListReporter", inherit = Reporter,
  public = list(
    start_test_time = NA,
    file = "",
    results = list(),
    current_test_results = list(),

    start_test = function(context, test) {
      self$current_test_results <- list()
      self$start_test_time <- proc.time()
    },

    end_test = function(context, test) {
      el <- as.double(proc.time() - self$start_test_time)
      fname <- if (length(self$file)) self$file else NA_character_
      test_info <- list(file = fname, context = context, test = test,
        user = el[1], system = el[2], real = el[3],
        results = self$current_test_results)

      self$results <- c(self$results, list(test_info))
      self$current_test_results <- list()
    },

    add_result = function(context, test, result) {
      self$current_test_results <<- c(self$current_test_results, list(result))
    },

    ### new methods
    start_file = function(name) {
      self$file <- name
    },

    get_summary = function() {
      summarize_results(self$results)
    }

  )
)


# format results from ListReporter
summarize_results <- function(results_list) {
  if (is.null(results_list) || length(results_list) == 0)
    return(data.frame())
  rows <- lapply(results_list, sumarize_one_test_results)
  do.call(rbind, rows)
}

sumarize_one_test_results <- function(test) {
  test_results <- test$results
  nb_tests <- length(test_results)

  nb_failed <- nb_skipped <- 0L
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
    nb_failed <- nb_tests - nb_passed - nb_skipped
  }

  context <- if (length(test$context) > 0) test$context else ''

  res <- data.frame(file = test$file, context = context, test = test$test,
    nb = nb_tests, failed = nb_failed, skipped = as.logical(nb_skipped), error = error,
    user = test$user, system = test$system, real = test$real,
    stringsAsFactors = FALSE)

  res
}


#' Create a `testthat_results` object from the test results
#' as stored in the ListReporter results field.
#'
#' @param results a list as stored in ListReporter
#' @return its list argument as a `testthat_results` object
#' @seealso ListReporter
testthat_results  <- function(results) {
  structure(results, class = "testthat_results")
}

# return if all tests are successful w/o error
all_passed <- function(res) {
  df <- as.data.frame.testthat_results(res)
  if (ncol(df) == 0) return(TRUE)
  sum(df$failed) == 0 && all(!df$error)
}


#' @export
as.data.frame.testthat_results <- function(x, ...) {
  summarize_results(x)
}


#' @export
print.testthat_results <- function(x, ...) {
  print(as.data.frame(x))
}

