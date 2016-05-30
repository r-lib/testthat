#' @include reporter.R
NULL

#' Test reporter: summary of errors in jUnit XML format.
#'
#' This reporter includes detailed results about each test and summaries,
#' written to a file (or stdout) in jUnit XML format. This can be read by
#' the Jenkins Continuous Integration System to report on a dashboard etc.
#' Requires the XML package.
#'
#' This works for \code{\link{expect_that}} but not for the wrappers like
#' \code{\link{expect_equal}} etc.
#'
#' To fit into the jUnit structure, context() becomes the \code{<testsuite>}
#' name as well as the base of the \code{<testcase> classname}. The
#' test_that() name becomes the rest of the \code{<testcase> classname}.
#' The deparsed expect_that() call becomes the \code{<testcase>} name.
#' On failure, the message goes into the \code{<failure>} node message
#' argument (first line only) and into its text content (full message).
#'
#' Execution time and some other details are also recorded.
#'
#' References for the jUnit XML format:
#' \url{http://llg.cubic.org/docs/junit/}
#'
#' Output drawn from the SummaryReporter is printed to the standard
#' error stream during execution.
#'
#' @export
JunitReporter <- R6::R6Class("JunitReporter", inherit = Reporter,
  public = list(
    file = NULL,
    results = NULL,
    timer = NULL,

    initialize = function(file = "report.xml") {
      super$initialize()
      if (!require("XML", quietly = TRUE)) {
        stop("Please install the XML package", call. = FALSE)
      }
      self$file <- file
      self$results <- list()
    },

    start_reporter = function() {
      self$timer <- proc.time()
    },

    start_context = function(context) {
      self$cat(context, ": ")
    },

    end_context = function(context) {
      self$cat("\n")
    },

    add_result = function(context, test, result) {
      if (expectation_broken(result)) {
        self$cat_tight(single_letter_summary(result))
      }else {
        self$cat_tight(colourise(".", "passed"))
      }

      result$time <- round((proc.time() - self$timer)[["elapsed"]], 2)
      self$timer  <- proc.time()
      result$test <- if (is.null(test) || test == "") "(unnamed)" else test
      # call can sometimes contain a second item, "succeed()"
      result$call <- if (is.null(result$call)) "(unexpected)" else format(result$call)[1]
      self$results[[context]] <- append(self$results[[context]], list(result))
    },

    end_reporter = function() {
      self$cat("\n")
      xmlNodeOK <- function(name, ..., attrs = NULL) {
        ## do XML entity substitutions
        if (!is.null(attrs)) {
          attrs <- vapply(attrs, function(x) toString(xmlTextNode(x)), character(1))
        }
        xmlNode(name, ..., attrs = attrs)
      }
      classnameOK <- function(text) {
        gsub("[ \\.]", "_", text)
      }
      suites <- lapply(names(self$results), function(context) {
        result_list <- self$results[[context]]
        xnames <- vapply(result_list, `[[`, character(1), "call")
        xnames <- make.unique(xnames, sep = "_")
        for (i in seq_along(result_list)) {
          result_list[[i]]$call <- xnames[[i]]
        }
        testcases <- lapply(result_list, function(result) {
          failnode <- NULL
          if (expectation_broken(result)) {
            ref <- result$srcref
            if ( is.null(ref) ) {
              location <- ''
            } else {
              location <- paste0('(@', attr(ref, 'srcfile')$filename, '#', ref[1], ')')
            }
            failnode <-
                xmlNodeOK("failure", attrs =
                          c(type = ifelse(result$error, "error", "failure"),
                            message = location),
                          .children = list(xmlTextNode(result)))
          }
          xmlNodeOK("testcase", attrs =
                    c(classname = paste(classnameOK(context),
                                        classnameOK(result$test), sep = "."),
                      name = result$success_msg,
                      time = result$time,
                      message = result$success_msg),
                    .children = if (expectation_broken(result)) list(failnode))
        })
        ispass <- vapply(result_list, expectation_success, logical(1))
        iserr <- vapply(result_list, expectation_error,  logical(1))
        tests <- vapply(result_list, `[[`, character(1), "test")
        xmlNodeOK("testsuite", attrs =
                  c(tests = length(result_list),
                    failures = sum(!ispass & !iserr),
                    errors = sum(iserr),
                    name = context,
                    time = sum(vapply(result_list, `[[`, numeric(1), "time")),
                    timestamp = toString(Sys.time()),
                    hostname = Sys.info()[["nodename"]]),
                  .children = testcases)
      })
      cat(toString(xmlNode("testsuites", .children = suites)),
          file = self$file)
    }
  )
)
