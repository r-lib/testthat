#' Stub object for managing a reporter of tests.
#'
#' Do not clone directly from this object - children should implement all
#' methods.
#'
#' @keywords internal
#' @export
#' @export Reporter
#' @aliases Reporter
#' @importFrom R6 R6Class
Reporter <- R6::R6Class("Reporter",
  public = list(
    start_reporter = function() {},
    start_context =  function(context) {},
    start_test =     function(context, test) {},
    add_result =     function(context, test, result) {},
    end_test =       function(context, test) {},
    end_context =    function(context) {},
    end_reporter =   function() {},

    out = NULL,

    initialize = function() {
      self$out <- stdout()
    },

    cat = function(..., file = NULL, sep = " ", fill = FALSE, labels = NULL,
                   append = NULL) {
      if (!is.null(file)) {
        warning("file ignored", call. = FALSE)
      }
      if (!is.null(append)) {
        warning("append ignored", call. = FALSE)
      }

      cat(..., file = self$out, sep = sep, fill = fill, labels = labels)
    },

    cat_tight = function(...) {
      self$cat(..., sep = "")
    },

    cat_line = function(...) {
      self$cat_tight(..., "\n")
    },

    cat_paragraph = function(...) {
      self$cat_tight(..., "\n\n")
    },

    # The hierarchy of contexts are implied - a context starts with a
    # call to context(), and ends either with the end of the file, or
    # with the next call to context() in the same file. These private
    # methods paper over the details so that context appear to work
    # in the same way as tests and expectations.
    .context = NULL,
    .start_context = function(context) {

      if (!is.null(self$.context)) {
        self$end_context(self$.context)
      }
      self$.context <- context
      self$start_context(context)

      invisible()
    },
    .end_context = function(context) {
      if (!is.null(self$.context)) {
        self$end_context(self$.context)
        self$.context <- NULL
      }
      invisible()
    }
  )
)
