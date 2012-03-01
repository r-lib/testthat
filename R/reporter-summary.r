#' @include reporter.r
NULL

#' Test reporter: summary of errors.
#' 
#' This is the most useful reporting reporter as it lets you know both which
#' tests have run successfully, as well as fully reporting information about
#' failures and errors.  It is the default reporting reporter used by 
#' \code{\link{test_dir}} and \code{\link{test_file}}.
#' 
#' As an additional benefit, this reporter will praise you from time-to-time
#' if all your tests pass.
#'
#' @export
#' @exportClass SummaryReporter
#' @aliases SummaryReporter-class
#' @keywords debugging
SummaryReporter <- setRefClass("SummaryReporter", contains = "Reporter", 
  fields = list(
    "failures" = "list", 
    "n" = "integer", 
    "has_tests" = "logical"),

  methods = list(
  
    start_context = function(desc) {
      cat(desc, ": ")
    },

    end_context = function() {
      cat("\n")
    },

    start_reporter = function() {
      failures <<- list()
      has_tests <<- FALSE
      n <<- 0L
    },

    add_result = function(result) {
      has_tests <<- TRUE
      if (result$passed) {
        cat(colourise(".", fg = "light green"))
      } else {
        failed <<- TRUE
        n <<- n + 1L

        if (n > length(labels)) {
          n <<- length(labels)
          cat(colourise("F", fg = "red"))
        } else {
          result$test <- if (is.null(test)) "(unknown)" else test
          failures[[n]] <<- result
          cat(colourise(labels[n], fg = "red"))
        }

      }
    },

    end_reporter = function() {
      charrep <- function(char, times) {
        sapply(times, function(i) str_c(rep.int(char, i), collapse = ""))
      }

      if (n == 0) {
        cat("\n")
        if (has_tests && sample(10, 1) == 1) {
          cat(colourise(sample(.praise, 1), "light green"), "\n")
        }
      } else {
        label <- labels[seq_len(n)]
        type <- ifelse(sapply(failures, "[[", "error"), "Error", "Failure")
        tests <- vapply(failures, "[[", "test", FUN.VALUE = character(1))
        header <- str_c(label, ". ", type, ": ", tests, " ")
        linewidth <- ifelse(nchar(header) > getOption("width"),0,getOption("width") - nchar(header))
        line <- charrep("-", linewidth )

        message <- sapply(failures, "[[", "message")

        cat("\n\n")
        cat(str_c(
          colourise(header, "red"), line, "\n", 
          message, "\n", collapse = "\n"))      
      }
    }
  )
)

.praise <- c(
  "You rock!",
  "You are a coding rockstar!",
  "Keep up the good work.",
  ":)",
  "Woot!",
  "Way to go!",
  "Nice code."
)
labels <- c(1:9, letters, LETTERS)
