# To allow the Java-style class name format that Jenkins prefers,
# "package_name_or_domain.ClassName", allow "."s in the class name.
classnameOK <- function(text) {
  gsub("[^._A-Za-z0-9]+", "_", text)
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
JunitReporter <- R6::R6Class("JunitReporter",
  inherit = Reporter,
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
    file_name = NULL,

    elapsed_time = function() {
      time <- (private$proctime() - self$timer)[["elapsed"]]
      self$timer <- private$proctime()
      time
    },

    reset_suite = function() {
      self$errors <- 0
      self$failures <- 0
      self$skipped <- 0
      self$tests <- 0
      self$suite_time <- 0
    },

    start_reporter = function() {
      if (!is_installed("xml2")) {
        stop("Please install the `xml2` package", call. = FALSE)
      }

      self$timer <- private$proctime()
      self$doc <- xml2::xml_new_document()
      self$root <- xml2::xml_add_child(self$doc, "testsuites")
      self$reset_suite()
    },

    start_file = function(file) {
      self$file_name <- file
    },

    start_test = function(context, test) {
      if (is.null(context)) {
        context_start_file(self$file_name)
      }
    },

    start_context = function(context) {
      self$suite <- xml2::xml_add_child(
        self$root,
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
      #jenkins junit plugin requires time has at most 3 digits
      xml2::xml_attr(self$suite, "time") <- as.character(round(self$suite_time, 3))

      self$reset_suite()
    },

    add_result = function(context, test, result) {
      self$tests <- self$tests + 1

      time <- self$elapsed_time()
      self$suite_time <- self$suite_time + time

      # XML node for test case
      name <- test %||% "(unnamed)"
      testcase <- xml2::xml_add_child(
        self$suite, "testcase",
        time = toString(time),
        classname = classnameOK(context),
        name = classnameOK(name)
      )

      first_line <- function(x) {
        loc <- expectation_location(x)
        paste0(strsplit(x$message, split = "\n")[[1]][1], " (", loc, ")")
      }

      # add an extra XML child node if not a success
      if (expectation_error(result)) {
        # "type" in Java is the exception class
        error <- xml2::xml_add_child(testcase, "error", type = "error", message = first_line(result))
        xml2::xml_text(error) <- crayon::strip_style(format(result))
        self$errors <- self$errors + 1
      } else if (expectation_failure(result)) {
        # "type" in Java is the type of assertion that failed
        failure <- xml2::xml_add_child(testcase, "failure", type = "failure", message = first_line(result))
        xml2::xml_text(failure) <- crayon::strip_style(format(result))
        self$failures <- self$failures + 1
      } else if (expectation_skip(result)) {
        xml2::xml_add_child(testcase, "skipped")
        self$skipped <- self$skipped + 1
      }
    },

    end_reporter = function() {
      if (is.character(self$out)) {
        xml2::write_xml(self$doc, self$out, format = TRUE)
      } else if (inherits(self$out, "connection")) {
        file <- tempfile()
        xml2::write_xml(self$doc, file, format = TRUE)
        write_lines(read_lines(file), self$out)
      } else {
        stop("unsupported output type: ", toString(self$out))
      }
    } # end_reporter
  ), # public

  private = list(
    proctime = function() {
      proc.time()
    },
    timestamp = function() {
      strftime(Sys.time(), "%Y-%m-%dT%H:%M:%SZ", tz = "UTC")
    },
    hostname = function() {
      Sys.info()[["nodename"]]
    }
  ) # private
)

# Fix components of JunitReporter that otherwise vary from run-to-run
#
# The following functions need to be mocked out to run a unit test
# against static contents of reporters/junit.txt:
#   - proctime - originally wrapper for proc.time()
#   - timestamp - originally wrapper for toString(Sys.time())
#   - hostname  - originally wrapper for Sys.info()[["nodename"]]
#
JunitReporterMock <- R6::R6Class("JunitReporterMock",
  inherit = JunitReporter,
  public  = list(),
  private = list(
    proctime = function() {
      c(user = 0, system = 0, elapsed = 0)
    },
    timestamp = function() {
      "1999:12:31 23:59:59"
    },
    hostname = function() {
      "nodename"
    }
  )
)
