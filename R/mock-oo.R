#' Mock S3 and S4 methods
#'
#' @export
local_mocked_s3_method <- function(
  generic,
  signature,
  definition,
  frame = caller_env()
) {
  old <- getS3method(generic, signature)
  registerS3method(generic, signature, definition, envir = frame)
  withr::defer(registerS3method(generic, signature, old, envir = frame), frame)
}

#' @rdname local_mock_s3_method
#' @export
local_mocked_s4_method <- function(
  generic,
  signature,
  definition,
  frame = caller_env()
) {
  old <- getMethod(generic, signature)
  setMethod(generic, signature, definition, where = topenv(frame))
  withr::defer(setMethod(generic, signature, old, where = topenv(frame)), frame)
}


#' Mock an R6 class
#'
#' This works by creating a
#'
#' @export
#'
local_mocked_r6_class <- function(class, public = list(), private = list()) {
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
    n = function() 1
  )
)
