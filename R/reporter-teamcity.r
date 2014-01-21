#' @include reporter.r
NULL

#' Test reporter: Teamcity format.
#'
#' This reporter will output results in the Teamcity message format.
#' For more information about Teamcity messages, see 
#' http://confluence.jetbrains.com/display/TCD7/Build+Script+Interaction+with+TeamCity
#'
#' @export
#' @export TeamcityReporter
#' @aliases TeamcityReporter
#' @keywords debugging
#' @param ... Arguments used to initialise class
TeamcityReporter <- setRefClass("TeamcityReporter", contains = "Reporter",
  fields = list(
    "has_tests" = "logical",
    "currentContext" = "character"),

  methods = list(

    start_context = function(desc) {
  		currentContext <<- desc;
  		cat("##teamcity[testSuiteStarted name='", currentContext, "']\n")
    },
	
    end_context = function() {
		  cat("##teamcity[testSuiteFinished name='", currentContext, "']\n")
    },

    start_reporter = function() {
		  currentContext <<- ""
		  has_tests <<- FALSE
    },

    add_result = function(result) {
      has_tests <<- TRUE
      
      splitTestName <- strsplit(gsub('\'', ' ', result$success_msg),"\n")
      testName <- splitTestName[[1]][1]
      
  		cat("##teamcity[testStarted name='",testName,"']\n")
      
  		if (!result$passed) {
  			splitMessage <- strsplit(gsub('\'', ' ', result$failure_msg),"\n")
  			errorMessage <- splitMessage[[1]][1]
  			detailsMessage <- paste(splitMessage[[1]][-1], collapse="|n")        
  			
  			cat("##teamcity[testFailed name='", testName, "' message='", errorMessage, "' details='", detailsMessage, "']\n")
  		}
  		cat("##teamcity[testFinished name='", testName, "']\n")
    },

    end_reporter = function() {
    }
  )
)
