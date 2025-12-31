#' Mock S3 and S4 methods
#'
#' @description
#' These functions temporarily override S3 or S4 methods. They can mock
#' methods that don't already exist, or temporarily remove a method by setting
#' `definition = NULL`.
#'
#' Learn more about mocking in `vignette("mocking")`.
#'
#' @param generic A string giving the name of the generic.
#' @param signature A character vector giving the signature of the method.
#' @param definition A function providing the method definition, or `NULL` to
#'   temporarily remove the method.
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
  check_function(definition, allow_null = TRUE)

  generic_def <- get(generic, envir = frame)

  old <- utils::getS3method(generic, signature, optional = TRUE)

  # Set the new method, or a pass-through stub if removing
  definition <- definition %||% function(...) NextMethod()
  registerS3method(generic, signature, definition, envir = frame)

  # On cleanup, restore old method or remove the one we added
  if (is.null(old)) {
    withr::defer(remove_s3_method(generic, signature, envir = frame), frame)
  } else {
    withr::defer(
      registerS3method(generic, signature, old, envir = frame),
      frame
    )
  }

  invisible()
}

remove_s3_method <- function(generic, class, envir) {
  # Extracted from registerS3method()
  group_generics <- c("Math", "Ops", "matrixOps", "Summary", "Complex")
  if (generic %in% group_generics) {
    s3_envir <- .BaseNamespaceEnv
  } else {
    genfun <- get(generic, envir = envir)
    s3_envir <- environment(genfun) %||% .BaseNamespaceEnv
  }

  if (env_has(s3_envir, ".__S3MethodsTable__.")) {
    table <- env_get(s3_envir, ".__S3MethodsTable__.")
    env_unbind(table, paste0(generic, ".", class))
  }
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
  check_function(definition, allow_null = TRUE)

  generic_def <- methods::getGeneric(generic)
  if (is.null(generic_def)) {
    cli::cli_abort("Can't find generic {.fn {generic}}.")
  }

  set_method <- function(def) {
    env <- topenv(frame)
    old <- methods::getMethod(generic_def, signature, optional = TRUE)
    if (is.null(def)) {
      methods::removeMethod(generic_def, signature, env)
    } else {
      suppressMessages(methods::setMethod(generic_def, signature, def, env))
    }
    old
  }

  old <- set_method(definition)
  withr::defer(set_method(old), frame)

  invisible()
}


#' Mock an R6 class
#'
#' @description
#' This function allows you to temporarily override an R6 class definition.
#' It works by creating a subclass then using [local_mocked_bindings()] to
#' temporarily replace the original definition. This means that it will not
#' affect subclasses of the original class; please file an issue if you need
#' this.
#'
#' Learn more about mocking in `vignette("mocking")`.
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
  if (!is.list(public)) {
    stop_input_type(public, "a list")
  }
  if (!is.list(private)) {
    stop_input_type(private, "a list")
  }

  mocked_class <- mock_r6_class(class, public, private)
  local_mocked_bindings("{class$classname}" := mocked_class, .env = frame)
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

# Silence R CMD check NOTE: I think it's because TestMockPerson is a claas
# constructor
#' @importFrom methods new
TestMockPerson <- methods::setClass(
  "TestMockPerson",
  slots = c(name = "character", age = "numeric")
)
methods::setGeneric("mock_age", function(x) standardGeneric("mock_age"))
methods::setMethod("mock_age", "TestMockPerson", function(x) x@age)
