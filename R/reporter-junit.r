#' @include reporter.r
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
#' http://ant.1045680.n5.nabble.com/schema-for-junit-xml-output-td1375274.html
#' http://windyroad.org/dl/Open%20Source/JUnit.xsd
#'
#' Output drawn from the SummaryReporter is printed to the standard
#' error stream during execution.
#'
#' @export
#' @export JUnitReporter
#' @exportClass JUnitReporter
#' @aliases JUnitReporter-class
#' @keywords debugging
JUnitReporter <- setRefClass("JUnitReporter", contains = "Reporter",
  fields = list(
    "file" = "character",
    "results" = "list",
    "timer" = "ANY"),

  methods = list(
    initialize = function(file = "", ...) {
      if (!require("XML", quietly = TRUE)) {
        stop("Please install the XML package", call. = FALSE)
      }
      callSuper(...)
      file <<- file
      results <<- list()
    },

    start_reporter = function() {
      callSuper()
      results <<- list()
      timer <<- proc.time()
      context <<- "(ungrouped)"
    },

    start_context = function(desc) {
      callSuper(desc)
      cat(desc, ": ", file = stderr())
    },

    end_context = function() {
      callSuper()
      cat("\n", file = stderr())
    },

    add_result = function(result) {
      if (result$passed) {
        cat(colourise(".", as = "passed"), file = stderr())
      } else {
        failed <<- TRUE
        if (result$error) {
          cat(colourise("F", as = "error"), file = stderr())
        } else {
          cat(colourise("E", as = "error"), file = stderr())
        }
      }
      result$time <- round((proc.time() - timer)[["elapsed"]], 2)
      timer <<- proc.time()
      result$test <- if (is.null(test) || test == "") "(unnamed)" else test
      result$call <- if (is.null(result$call)) "(unexpected)" else result$call
      results[[context]] <<- append(results[[context]], list(result))
    },

    end_reporter = function() {
      cat("\n", file = stderr())
      xmlNodeOK <- function(name, ..., attrs = NULL) {
        ## do XML entity substitutions
        if (!is.null(attrs)) {
          attrs <- sapply(attrs, function(x) toString(xmlTextNode(x)))
        }
        xmlNode(name, ..., attrs = attrs)
      }
      classnameOK <- function(text) {
        gsub("[ \\.]", "_", text)
      }
      suites <- lapply(names(results), function(context) {
        x <- results[[context]]
        xnames <- vapply(x, "[[", "call", FUN.VALUE = character(1))
        xnames <- make.unique(xnames, sep = "_")
        for (i in seq_along(x)) {
          x[[i]]$call <- xnames[[i]]
        }
        testcases <- lapply(x, function(result) {
          failnode <- NULL
          if (!result$passed) {
            failnode <-
              xmlNodeOK("failure", attrs =
                        c(type = ifelse(result$error, "error", "failure"),
                          message = gsub("\n.*", "", result$message)),
                        .children = list(xmlTextNode(result$message)))
          }
          xmlNodeOK("testcase", attrs =
                    c(classname = paste(classnameOK(context),
                          classnameOK(result$test), sep = "."),
                      name = result$call,
                      time = result$time),
                    .children = if (!result$passed) list(failnode))
        })
        ispass <- sapply(x, "[[", "passed")
        iserr <- sapply(x, "[[", "error")
        tests <- sapply(x, "[[", "test")
        xmlNodeOK("testsuite", attrs =
                  c(tests = length(x),
                    failures = sum(!ispass & !iserr),
                    errors = sum(iserr),
                    name = context,
                    time = sum(sapply(x, "[[", "time")),
                    timestamp = toString(Sys.time()),
                    hostname = Sys.info()[["nodename"]]),
                  .children = testcases)
      })
      cat(toString(xmlNode("testsuites", .children = suites)),
          file = file)
    }
  )
)
