#' Test reporter: summary of errors in jUnit XML format.
#' 
#' This reporter includes detailed results about each test and summaries,
#' written (to standard out) in jUnit XML format. This can be read by
#' the Jenkins Continuous Integration System to report on a dashboard etc.
#' Requires the XML package.
#'
#' References for the jUnit XML format:
#' http://ant.1045680.n5.nabble.com/schema-for-junit-xml-output-td1375274.html
#' http://windyroad.org/dl/Open%20Source/JUnit.xsd
#'
#' @name JUnitReporter
#' @export
#' @examples
#' test_package("testthat", reporter = newJUnitReporter("testjunit.xml"))
#' @keywords debugging
NULL

JUnitReporter$do({
  self$file <- ""
  
  self$start_reporter <- function() {
    library("XML")
    self$results <- list()
    self$n <- 0
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
    self$n <- self$n + 1
    result$test <- if (self$test == "") "(unnamed)" else self$test
    self$results[[self$context]][[toString(self$n)]] <-
      result
  }
  
  self$end_reporter <- function() {
    cat("\n", file = stderr())
    xmlNodeOK <- function(name, ..., attrs = NULL) {
      ## do XML entity substitutions
      if (!is.null(attrs))
        attrs <- sapply(attrs, function(x) toString(xmlTextNode(x)))
      xmlNode(name, ..., attrs = attrs)
    }
    classnameOK <- function(text) {
      gsub("[ \\.]", "_", text)
    }
    suites <- lapply(names(self$results), function(context) {
      x <- self$results[[context]]
      xnames <- sapply(x, function(xi) {
        if (is.null(xi$call)) "(unexpected)" else xi$call
      })
      xnames <- make.unique(xnames, sep = "_")
      for (i in seq_along(x))
        x[[i]]$call <- xnames[[i]]
      testcases <- lapply(x, function(result) {
        failnode <- NULL
        if (!result$passed)
          failnode <-
            xmlNodeOK("failure", attrs =
                      c(type = ifelse(result$error, "error", "failure"),
                        message = gsub("\n.*", "", result$message)),
                      .children = list(xmlTextNode(result$message)))
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
