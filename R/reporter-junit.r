#' Test reporter: summary of errors in jUnit XML format.
#' 
#' This reporter includes detailed results about each test and summaries,
#' written to a file (or stdout) in jUnit XML format. This can be read by
#' the Jenkins Continuous Integration System to report on a dashboard etc.
#' Requires the XML package.
#'
#' This works for \code{\link{expect_that}} but not for the wrappers like
#' \code{\link{expect_equals}} etc.
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
#' @name JUnitReporter
#' @export
#' @examples
#' if (require("XML")) {
#'   test_package("testthat", reporter = newJUnitReporter("testjunit.xml"))
#' }
#' @keywords debugging
NULL

JUnitReporter$do({
  self$file <- ""
  
  self$start_reporter <- function() {
    if (!require("XML", quietly = TRUE)) {
      stop("Please install the XML package", call. = F)
    }
    self$results <- list()
    self$context <- "(ungrouped)"
    self$timer <- proc.time()
  }
  
  self$start_context <- function(desc) {
    self$context <- desc
    cat(desc, ": ", file = stderr())
  }
  
  self$end_context <- function() {
    cat("\n", file = stderr())
  }
  
  self$add_result <- function(result) {
    if (result$passed) {
      cat(colourise(".", fg = "light green"), file = stderr())
    } else {
      self$failed <- TRUE
      if (result$error) {
        cat(colourise("F", fg = "red"), file = stderr())
      } else {
        cat(colourise("E", fg = "red"), file = stderr())
      }
    }
    result$time <- round((proc.time() - self$timer)[["elapsed"]], 2)
    self$timer <- proc.time()
    result$test <-
      ifelse(self$test == "", "(unnamed)", self$test)
    result$call <-
      ifelse(is.null(result$call), "(unexpected)", result$call)
    self$results[[self$context]] <-
      append(self$results[[self$context]], list(result))
  }
  
  self$end_reporter <- function() {
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
    suites <- lapply(names(self$results), function(context) {
      x <- self$results[[context]]
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
        file = self$file)
  }
  
})

#' Wrapper function to help write jUnit reporter output to a file.
#'
#' @name newJUnitReporter
#' @export
newJUnitReporter <- function(file = "junit_out.xml") {
  JUnitReporter$clone()$do(self$file <- file)
}
