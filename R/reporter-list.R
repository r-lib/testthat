methods::setOldClass("proc_time")

#' Capture test results and metadata
#'
#' This reporter gathers all results, adding additional information such as
#' test elapsed time, and test filename if available. Very useful for reporting.
#'
#' @export
#' @family reporters
ListReporter <- R6::R6Class(
  "ListReporter",
  inherit = Reporter,
  public = list(
    running = NULL,
    current_file = "", # so we can still subset with this
    results = NULL,

    initialize = function() {
      super$initialize()
      self$capabilities$parallel_support <- TRUE
      self$capabilities$parallel_updates <- TRUE
      self$results <- Stack$new()
      self$running <- new.env(parent = emptyenv())
    },

    start_test = function(context, test) {
      # is this a new test block?
      if (
        !identical(self$running[[self$current_file]]$context, context) ||
          !identical(self$running[[self$current_file]]$test, test)
      ) {
        self$running[[self$current_file]]$context <- context
        self$running[[self$current_file]]$test <- test
        self$running[[self$current_file]]$expectations <- Stack$new()
        self$running[[self$current_file]]$start_time <- proc.time()
      }
    },

    add_result = function(context, test, result) {
      if (is.null(self$running[[self$current_file]]$expectations)) {
        # we received a result outside of a test:
        # could be a bare expectation or an exception/error
        if (!inherits(result, 'error')) {
          return()
        }
        self$running[[self$current_file]]$expectations <- Stack$new()
      }

      self$running[[self$current_file]]$expectations$push(result)
    },

    end_test = function(context, test) {
      elapsed <- as.double(
        proc.time() - self$running[[self$current_file]]$start_time
      )

      results <- list()
      if (!is.null(self$running[[self$current_file]]$expectations)) {
        results <- self$running[[self$current_file]]$expectations$as_list()
      }

      self$results$push(list(
        file = self$current_file %||% NA_character_,
        context = context,
        test = test,
        user = elapsed[1],
        system = elapsed[2],
        real = elapsed[3],
        results = results
      ))

      self$running[[self$current_file]]$expectations <- NULL
    },

    start_file = function(name) {
      if (!name %in% names(self$running)) {
        newfile <- list(
          start_time = NA,
          expectations = NULL,
          context = NULL,
          test = NULL
        )
        assign(name, newfile, envir = self$running)
      }
      self$current_file <- name
    },

    end_file = function() {
      # fallback in case we have errors but no expectations
      self$end_context(self$current_file)
      rm(list = self$current_file, envir = self$running)
    },

    end_context = function(context) {
      results <- self$running[[self$current_file]]$expectations
      if (is.null(results)) {
        return()
      }

      self$running[[self$current_file]]$expectations <- NULL

      # look for exceptions raised outside of tests
      # they happened just before end_context since they interrupt the test_
      # file execution
      results <- results$as_list()
      if (length(results) == 0) {
        return()
      }

      self$results$push(list(
        file = self$current_file %||% NA_character_,
        context = context,
        test = NA_character_,
        user = NA_real_,
        system = NA_real_,
        real = NA_real_,
        results = results
      ))
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
#' @keywords internal
testthat_results <- function(results) {
  stopifnot(is.list(results))
  structure(results, class = "testthat_results")
}

# return if all tests are successful w/o error
all_passed <- function(res) {
  if (length(res) == 0) {
    return(TRUE)
  }

  df <- as.data.frame.testthat_results(res)
  sum(df$failed) == 0 && !any(df$error)
}

any_warnings <- function(res) {
  if (length(res) == 0) {
    return(FALSE)
  }

  df <- as.data.frame.testthat_results(res)
  any(df$warning > 0)
}


#' @export
as.data.frame.testthat_results <- function(x, ...) {
  if (length(x) == 0) {
    return(
      data.frame(
        file = character(0),
        context = character(0),
        test = character(0),
        nb = integer(0),
        failed = integer(0),
        skipped = logical(0),
        error = logical(0),
        warning = integer(0),
        user = numeric(0),
        system = numeric(0),
        real = numeric(0),
        passed = integer(0),
        result = list(),
        stringsAsFactors = FALSE
      )
    )
  }

  rows <- lapply(x, summarize_one_test_results)
  do.call(rbind, rows)
}

summarize_one_test_results <- function(test) {
  test_results <- test$results
  nb_tests <- length(test_results)

  nb_failed <- nb_skipped <- nb_warning <- nb_passed <- 0L
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

    nb_passed <- sum(map_lgl(test_results, expectation_success))
    nb_skipped <- sum(map_lgl(test_results, expectation_skip))
    nb_failed <- sum(map_lgl(test_results, expectation_failure))
    nb_warning <- sum(map_lgl(test_results, expectation_warning))
  }

  context <- if (length(test$context) > 0) test$context else ""

  res <- data.frame(
    file = test$file,
    context = context,
    test = test$test,
    nb = nb_tests,
    failed = nb_failed,
    skipped = as.logical(nb_skipped),
    error = error,
    warning = nb_warning,
    user = test$user,
    system = test$system,
    real = test$real,
    stringsAsFactors = FALSE
  )

  # Added at end for backward compatibility
  res$passed <- nb_passed

  # Cannot easily add list columns in data.frame()
  res$result <- list(test_results)
  res
}


#' @export
print.testthat_results <- function(x, ...) {
  print(as.data.frame(x))
}
