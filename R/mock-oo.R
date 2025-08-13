#' Mock S3 and S4 methods
#'
#' These functions allow you to temporarily override S3 and S4 methods that
#' already exist. It works by using [registerS3method()]/[setMethod()] to
#' temporarily replace the original defintion.
#'
#' @param generic A string giving the name of the generic.
#' @param signature A character vector giving the signature of the method.
#' @param definition A function providing the method definition.
#' @param frame Calling frame which determines the scope of the mock.
#'   Only needed when wrapping in another local helper.
#' @export
#' @examples
#' x <- as.POSIXlt(Sys.time())
#' local({
#'   local_mocked_s3_method("length", "POSIXlt", function(x) 42)
#'   length(x)
#' })
#'
#' length(x)
local_mocked_s3_method <- function(
  generic,
  signature,
  definition,
  frame = caller_env()
) {
  check_string(generic)
  check_string(signature)
  check_function(definition)

  old <- getS3method(generic, signature, optional = TRUE)
  if (is.null(old)) {
    cli::cli_abort(
      "Can't find existing S3 method {.code {generic}.{signature}()}."
    )
  }
  registerS3method(generic, signature, definition, envir = frame)
  withr::defer(registerS3method(generic, signature, old, envir = frame), frame)
}

#' @rdname local_mocked_s3_method
#' @export
local_mocked_s4_method <- function(
  generic,
  signature,
  definition,
  frame = caller_env()
) {
  check_string(generic)
  check_character(signature)
  check_function(definition)

  old <- getMethod(generic, signature, optional = TRUE)
  if (is.null(old)) {
    name <- paste0(generic, "(", paste0(signature, collapse = ","), ")")
    cli::cli_abort(
      "Can't find existing S4 method {.code {name}}."
    )
  }
  setMethod(generic, signature, definition, where = topenv(frame))
  withr::defer(setMethod(generic, signature, old, where = topenv(frame)), frame)
}


#' Mock an R6 class
#'
#' This function allows you to temporarily override an R6 class definition.
#' It works by creating a subclass then using [local_mocked_bindings()] to
#' temporarily replace the original definition. This means that it will not
#' affect subclasses of the original class; please file an issue if you need
#' this.
#'
#' @export
#' @param class An R6 class definition.
#' @param public,private A named list of public and private methods/data.
#' @inheritParams local_mocked_s3_method
local_mocked_r6_class <- function(
  class,
  public = list(),
  private = list(),
  frame = caller_env()
) {
  if (!inherits(class, "R6ClassGenerator")) {
    stop_input_type(class, "an R6 class definition")
  }

  mocked_class <- mock_r6_class(class, public, private)
  local_mocked_bindings(
    "{class$classname}" := mocked_class,
    .env = caller_env()
  )
}

mock_r6_class <- function(class, public = list(), private = list()) {
  R6::R6Class(
    paste0("Mocked", class$classname),
    inherit = class,
    private = private,
    public = public
  )
}

# For testing ------------------------------------------------------------------

TestMockClass <- R6::R6Class(
  "TestMockClass",
  public = list(
    sum = function() {
      self$public_fun() +
        self$public_val +
        private$private_fun() +
        private$private_val
    },
    public_fun = function() 1,
    public_val = 20
  ),
  private = list(
    private_fun = function() 300,
    private_val = 4000
  )
)

TestMockPerson <- methods::setClass(
  "TestMockPerson",
  slots = c(name = "character", age = "numeric")
)
methods::setGeneric("mock_age", function(x) standardGeneric("mock_age"))
methods::setMethod("mock_age", "TestMockPerson", function(x) x@age)
