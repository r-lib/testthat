#' @include reporter.R
NULL

classnameOK <- function(text) {
  gsub("[ \\.]", "_", text)
}

#' @importFrom xml2 xml_attr<- xml_add_child
add_broken <- function (parent, type, message) {
  child <- xml_add_child(parent, type)
  xml_attr(child, 'type')    <- type
  xml_attr(child, 'message') <- message
}

#' @importFrom xml2 xml_attr<-
add_attrs <- function (node, ...) {
  attrs <- list(...)
  for (name in names(attrs)) {
    xml_attr(node, name) <- as.character(attrs[[name]])
  }
}


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
#' @importFrom xml2 xml_new_document write_xml xml_add_child xml_attr<-
JunitReporter <- R6::R6Class("JunitReporter", inherit = Reporter,
  public = list(
    file     = NULL,
    results  = NULL,
    timer    = NULL,
    doc      = NULL,
    errors   = NULL,
    failures = NULL,
    skipped  = NULL,
    tests    = NULL,
    root     = NULL,
    suite    = NULL,
    suite_time = NULL,

    initialize = function(file = "report.xml") {
      super$initialize()
      self$file    <- file
    },

    elapsed_time = function() {
      time <- round((proc.time() - self$timer)[["elapsed"]], 2)
      self$timer  <- proc.time()
      time
    },

    reset_suite = function () {
      self$errors   <- 0
      self$failures <- 0
      self$skipped  <- 0
      self$tests    <- 0
      self$suite_time <- 0
    },

    start_reporter = function() {
      self$timer <- proc.time()
      self$doc   <- xml_new_document()
      self$root  <- xml_add_child(self$doc, 'testsuites')
      self$reset_suite()
    },

    start_context = function(context) {
      self$cat(context, ": ")

      self$suite <- xml_add_child(self$root, "testsuite")
      add_attrs(self$suite,
        name      = context,
        timestamp = toString(Sys.time()),
        hostname  = Sys.info()[["nodename"]]
      )
    },

    end_context = function(context) {
      self$cat("\n")

      add_attrs(self$suite,
                tests = self$tests, skipped = self$skipped,
                failures = self$failures, errors = self$errors,
                time = self$suite_time)

      self$reset_suite()
    },

    add_result = function(context, test, result) {
      self$tests <- self$tests + 1

      time <- self$elapsed_time()
      self$suite_time <- self$suite_time + time

      # XML node for test case
      testcase <- xml_add_child(self$suite, "testcase")
      name <- if (is.null(test) || !nchar(test)) "(unnamed)" else test

      add_attrs(testcase, time = time,
                classname = paste0(classnameOK(context), '.', classnameOK(name)))

      # message - if failure or error
      message <- if (is.null(result$call)) "(unexpected)" else format(result$call)[1]

      if (!is.null(result$srcref)) {
        location <- paste0('@', attr(result$srcref, 'srcfile')$filename, '#', result$srcref[1])
        message  <- paste(as.character(result), location)
      }

      # add child XML node if not success
      if (expectation_error(result)) {
        self$cat_tight(single_letter_summary(result))
        add_broken(testcase, 'error', message)
        self$errors <- self$errors + 1
      }
      else if (expectation_failure(result)) {
        self$cat_tight(single_letter_summary(result))
        add_broken(testcase, 'failure', message)
        self$failures <- self$failures + 1
      }
      else if (expectation_skip(result)) {
        self$cat_tight(colourise("S", "success"))
        xml_add_child(testcase, "skipped")
        self$skipped <- self$skipped + 1
      }
      else {
        self$cat_tight(colourise(".", "success"))
      }
    },

    end_reporter = function() {
      self$cat("\n")

      # this causes a segfault write_xml(xmlDoc, self$file, format = )
      cat(toString(self$doc), file = self$file)

    } # end_reporter
  )
)
