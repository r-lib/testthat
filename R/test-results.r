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
    error <- last_test$error
    if (error) {
      test_results <- test_results[- nb_tests]
      nb_tests <- length(test_results)
    }

    nb_passed <- sum(vapply(test_results, '[[', TRUE, 'passed'))
    nb_skipped <- sum(vapply(test_results, '[[', TRUE, 'skipped'))
    nb_failed <- nb_tests - nb_passed - nb_skipped
  }

  context <- if (length(test$context) > 0) test$context else ''

  res <- data.frame(file = test$file, context = context, test = test$test,
    nb = nb_tests, failed = nb_failed, skipped = nb_skipped, error = error,
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

