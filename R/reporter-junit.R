#' @include reporter.R
NULL

classnameOK <- function(text) {
  gsub("[ \\.]", "_", text)
}


#' Test reporter: summary of errors in jUnit XML format.
#'
#' This reporter includes detailed results about each test and summaries,
#' written to a file (or stdout) in jUnit XML format. This can be read by
#' the Jenkins Continuous Integration System to report on a dashboard etc.
#' Requires the _xml2_ package.
#'
#' To fit into the jUnit structure, context() becomes the `<testsuite>`
#' name as well as the base of the `<testcase> classname`. The
#' test_that() name becomes the rest of the `<testcase> classname`.
#' The deparsed expect_that() call becomes the `<testcase>` name.
#' On failure, the message goes into the `<failure>` node message
#' argument (first line only) and into its text content (full message).
#'
#' Execution time and some other details are also recorded.
#'
#' References for the jUnit XML format:
#' \url{http://llg.cubic.org/docs/junit/}
#'
#' @export
JunitReporter <- R6::R6Class("JunitReporter", inherit = Reporter,
  public = list(
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

    elapsed_time = function() {
      time <- round((private$proctime() - self$timer)[["elapsed"]], 2)
      self$timer <- private$proctime()
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
      if (!is_installed("xml2")) {
        stop("Please install the `xml2` package", call. = FALSE)
      }

      self$timer <- private$proctime()
      self$doc   <- xml2::xml_new_document()
      self$root  <- xml2::xml_add_child(self$doc, 'testsuites')
      self$reset_suite()
    },

    start_context = function(context) {
      self$suite <- xml2::xml_add_child(self$root,
        "testsuite",
        name      = context,
        timestamp = private$timestamp(),
        hostname  = private$hostname()
      )
    },

    end_context = function(context) {
      xml2::xml_attr(self$suite, "tests") <- as.character(self$tests)
      xml2::xml_attr(self$suite, "skipped") <- as.character(self$skipped)
      xml2::xml_attr(self$suite, "failures") <- as.character(self$failures)
      xml2::xml_attr(self$suite, "errors") <- as.character(self$errors)
      xml2::xml_attr(self$suite, "time") <- as.character(self$suite_time)

      self$reset_suite()
    },

    add_result = function(context, test, result) {
      self$tests <- self$tests + 1

      time <- self$elapsed_time()
      self$suite_time <- self$suite_time + time

      # XML node for test case
      name <- test %||% "(unnamed)"
      testcase <- xml2::xml_add_child(self$suite, "testcase",
        time = toString(time),
        classname = classnameOK(context),
        name = classnameOK(name)
      )

      first_line <- function(x) {
        strsplit(x, split = "\n")[[1]][1]
      }

      # add an extra XML child node if not a success
      if (expectation_error(result)) {
        # "type" in Java is the exception class
        error <- xml2::xml_add_child(testcase, 'error', type = 'error', message = first_line(result$message))
        xml2::xml_text(error) <- format(result)
        self$errors <- self$errors + 1

      } else if (expectation_failure(result)) {
        # "type" in Java is the type of assertion that failed
        failure <- xml2::xml_add_child(testcase, 'failure', type = 'failure', message = first_line(result$message))
        xml2::xml_text(failure) <- format(result)
        self$failures <- self$failures + 1

      } else if (expectation_skip(result)) {
        xml2::xml_add_child(testcase, "skipped")
        self$skipped <- self$skipped + 1
      }
    },

    end_reporter = function() {
      output_file <- getOption("testthat.junit.output_file")

      if (!is.null(output_file)) {
        xml2::write_xml(self$doc, output_file, format = TRUE)
      } else if (inherits(self$out, "connection")) {
        file <- tempfile()
        xml2::write_xml(self$doc, file, format = TRUE)
        write_lines(read_lines(file), self$out)
      } else {
        stop('unsupported output type: ', toString(self$out))
      }
    } # end_reporter
  ), #public

  private = list (
    proctime = function () {
      proc.time()
    },
    timestamp = function () {
      toString(Sys.time())
    },
    hostname = function () {
      Sys.info()[["nodename"]]
    }
  ) # private
)
