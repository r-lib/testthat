#' Report results in SonarQube generic test execution XML format
#'
#' @description
#' This reporter produces XML output following the SonarQube
#' [Generic Test Execution Report Format](https://docs.sonarsource.com/sonarqube-server/analyzing-source-code/test-coverage/generic-test-data#generic-test-execution),
#' written to a file (or stdout). The resulting XML can be imported into
#' SonarQube by setting the `sonar.testExecutionReportPaths` analysis
#' parameter. Requires the _xml2_ package.
#'
#' Test files become `<file>` elements (with the path attribute set to the
#' relative test file path), and individual `test_that()` blocks become
#' `<testCase>` elements. On failure, error, or skip, a corresponding
#' child element (`<failure>`, `<error>`, or `<skipped>`) is added to the
#' test case.
#'
#' @export
#' @family reporters
SonarqubeReporter <- R6::R6Class(
  "SonarqubeReporter",
  inherit = Reporter,
  public = list(
    timer = NULL,
    doc = NULL,
    root = NULL,
    file_node = NULL,
    file_name = NULL,

    elapsed_time = function() {
      time <- (private$proctime() - self$timer)[["elapsed"]]
      self$timer <- private$proctime()
      time
    },

    start_reporter = function() {
      check_installed("xml2", "to use SonarqubeReporter")

      self$timer <- private$proctime()
      self$doc <- xml2::xml_new_document()
      self$root <- xml2::xml_add_child(
        self$doc,
        "testExecutions",
        version = "1"
      )
    },

    start_file = function(file) {
      self$file_name <- file

      # Build path relative to the project root so SonarQube can locate
      # the test file. TESTTHAT_WD holds the original working directory
      # (i.e. the project root) while getwd() is the test directory.
      path <- file
      project_root <- Sys.getenv("TESTTHAT_WD", unset = "")
      if (nzchar(project_root)) {
        root <- normalizePath(project_root, winslash = "/", mustWork = FALSE)
        current <- normalizePath(getwd(), winslash = "/", mustWork = FALSE)
        if (startsWith(current, root)) {
          rel_dir <- substring(current, nchar(root) + 2L)
          if (nzchar(rel_dir)) {
            path <- file.path(rel_dir, file)
          }
        }
      }

      self$file_node <- xml2::xml_add_child(
        self$root,
        "file",
        path = path
      )
    },

    start_test = function(context, test) {
      # Reset timer at the start of each test
      self$timer <- private$proctime()
    },

    add_result = function(context, test, result) {
      withr::local_options(list(OutDec = "."))

      time <- self$elapsed_time()
      # SonarQube expects duration in milliseconds
      duration_ms <- round(time * 1000)

      # If no file node was started, create a default one
      if (is.null(self$file_node)) {
        self$start_file(self$file_name %||% "(unknown)")
      }

      name <- test %||% "(unnamed)"
      testcase <- xml2::xml_add_child(
        self$file_node,
        "testCase",
        name = name,
        duration = as.character(duration_ms)
      )

      first_line <- function(x) {
        loc <- expectation_location(x, " (", ")")
        paste0(strsplit(cli::ansi_strip(x$message), split = "\n")[[1]][1], loc)
      }

      if (expectation_error(result)) {
        error_node <- xml2::xml_add_child(
          testcase,
          "error",
          message = first_line(result)
        )
        xml2::xml_text(error_node) <- cli::ansi_strip(format(result))
      } else if (expectation_failure(result)) {
        failure_node <- xml2::xml_add_child(
          testcase,
          "failure",
          message = first_line(result)
        )
        xml2::xml_text(failure_node) <- cli::ansi_strip(format(result))
      } else if (expectation_skip(result)) {
        xml2::xml_add_child(testcase, "skipped", message = first_line(result))
      }
    },

    end_file = function() {
      self$file_node <- NULL
    },

    end_reporter = function() {
      if (is.character(self$out)) {
        xml2::write_xml(self$doc, self$out, format = TRUE)
      } else if (inherits(self$out, "connection")) {
        file <- withr::local_tempfile()
        xml2::write_xml(self$doc, file, format = TRUE)
        cat(brio::read_file(file), file = self$out)
      } else {
        cli::cli_abort("Unsupported output type: {toString(self$out)}.")
      }
    }
  ),

  private = list(
    proctime = function() {
      proc.time()
    }
  )
)

# Mock for deterministic testing
SonarqubeReporterMock <- R6::R6Class(
  "SonarqubeReporterMock",
  inherit = SonarqubeReporter,
  public = list(),
  private = list(
    proctime = function() {
      c(user = 0, system = 0, elapsed = 0)
    }
  )
)
