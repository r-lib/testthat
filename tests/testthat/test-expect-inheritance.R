test_that("expect_type checks typeof", {
  expect_success(expect_type(factor("a"), "integer"))
  expect_failure(expect_type(factor("a"), "double"))
})

test_that("expect_is checks class", {
  expect_success(expect_is(factor("a"), "factor"))
  expect_failure(expect_is(factor("a"), "integer"))
})

test_that("expect_s3/s4_class fails if appropriate type", {
  A <- methods::setClass("A", contains = "list")
  on.exit(methods::removeClass("A"))

  expect_failure(expect_s3_class(1, "double"), "not an S3 object")
  expect_failure(expect_s3_class(A(), "double"), "not an S3 object")
  expect_failure(expect_s4_class(factor(), "double"), "not an S4 object")
})

test_that("test_s4_class respects class hierarchy", {
  A <- methods::setClass("A", contains = "list")
  B <- methods::setClass("B", contains = "list")
  C <- methods::setClass("C", contains = c("A", "B"))
  on.exit({
    methods::removeClass("A")
    methods::removeClass("B")
    methods::removeClass("C")
  })

  expect_success(expect_s4_class(C(), "A"))
  expect_success(expect_s4_class(C(), "B"))
  expect_failure(expect_s4_class(C(), "D"), "inherits from `C/A/B/list/vector`")
})

test_that("test_s3_class respects class hierarchy", {
  x <- structure(list(), class = c("a", "b"))
  expect_success(expect_s3_class(x, "a"))
  expect_success(expect_s3_class(x, "b"))
  expect_failure(expect_s3_class(x, "c"), "inherits from `a/b`")
})

test_that("test_s3_class can request exact match", {
  x <- structure(list(), class = c("a", "b"))
  expect_failure(expect_s3_class(x, "a", exact = TRUE))
  expect_success(expect_s3_class(x, c("a", "b"), exact = TRUE))
})


test_that("expect_s3_class allows unquoting of first argument", {
  f <- factor("a")
  expect_success(expect_s3_class(!! rlang::quo(f), "factor"))
})
