#' Stub object for managing a reporter of tests.
#'
#' Do not clone directly from this object - children should implement all
#' methods.
#'
#' @keywords internal
#' @export
#' @export Reporter
#' @aliases Reporter
#' @param ... Arguments used to initialise class
#' @importFrom methods setRefClass new
Reporter <- setRefClass("Reporter",
  methods = list(
    start_reporter = function() {},
    start_context =  function(context) {},
    start_test =     function(context, test) {},
    add_result =     function(context, test, result) {},
    end_test =       function(context, test) {},
    end_context =    function(context) {},
    end_reporter =   function() {}
  )
)
