test_that("expect_type checks typeof", {
  expect_success(expect_type(factor("a"), "integer"))
  expect_failure(expect_type(factor("a"), "double"))
})

test_that("expect_type validates its inputs", {
  expect_snapshot(error = TRUE, {
    expect_type(1, c("integer", "double"))
  })
})

test_that("expect_is checks class", {
  local_edition(2)

  expect_success(expect_is(factor("a"), "factor"))
  expect_failure(expect_is(factor("a"), "integer"))
})

test_that("expect_s3/s4_class fails if appropriate type", {
  A <- methods::setClass("A", contains = "list")

  expect_failure(expect_s3_class(1, "double"), "not an S3 object")
  expect_failure(expect_s3_class(A(), "double"), "not an S3 object")
  expect_failure(expect_s4_class(factor(), "double"), "not an S4 object")
})

test_that("expect_s[34]_class can check not S3/S4", {
  expect_success(expect_s3_class(1, NA))
  expect_snapshot_failure(expect_s3_class(factor(), NA))

  A <- methods::setClass("A", contains = "list")
  expect_success(expect_s4_class(1, NA))
  expect_snapshot_failure(expect_s4_class(A(), NA))
})

test_that("test_s4_class respects class hierarchy", {
  A <- methods::setClass("A", contains = "list")
  B <- methods::setClass("B", contains = "list")
  C <- methods::setClass("C", contains = c("A", "B"))
  withr::defer({
    methods::removeClass("A")
    methods::removeClass("B")
    methods::removeClass("C")
  })

  expect_success(expect_s4_class(C(), "A"))
  expect_success(expect_s4_class(C(), "B"))
  expect_snapshot_failure(expect_s4_class(C(), "D"))
})

test_that("expect_s3_class validates its inputs", {
  expect_snapshot(error = TRUE, {
    expect_s3_class(factor("a"), 1)
    expect_s3_class(factor("a"), "factor", exact = "yes")
  })
})

test_that("test_s3_class respects class hierarchy", {
  x <- structure(list(), class = c("a", "b"))
  expect_success(expect_s3_class(x, "a"))
  expect_success(expect_s3_class(x, "b"))
  expect_snapshot_failure(expect_s3_class(x, "c"))
  expect_snapshot_failure(expect_s3_class(x, c("c", "d")))
})

test_that("test_s3_class can request exact match", {
  x <- structure(list(), class = c("a", "b"))
  expect_failure(expect_s3_class(x, "a", exact = TRUE))
  expect_success(expect_s3_class(x, c("a", "b"), exact = TRUE))
})

test_that("expect_s3_class allows unquoting of first argument", {
  f <- factor("a")
  expect_success(expect_s3_class(!!rlang::quo(f), "factor"))
})


test_that("expect_s4_class allows unquoting of first argument", {
  cls <- methods::setClass("new_class", slots = c("a" = "numeric"))
  obj <- methods::new("new_class", a = 3)
  expect_success(expect_s4_class(!!rlang::quo(obj), "new_class"))
})


test_that("expect_s3_class validates its inputs", {
  expect_snapshot(error = TRUE, {
    expect_s4_class(factor("a"), 1)
  })
})

# expect_r6_class --------------------------------------------------------

test_that("expect_r6_class succeeds when object inherits from expected class", {
  Person <- R6::R6Class("Person")
  Student <- R6::R6Class("Student", inherit = Person)

  person <- Person$new()
  student <- Student$new()

  expect_success(expect_r6_class(person, "Person"))
  expect_success(expect_r6_class(student, "Student"))
  expect_success(expect_r6_class(student, "Person"))
})

test_that("expect_r6_class generates useful failures", {
  x <- 1
  person <- R6::R6Class("Person")$new()

  expect_snapshot_failure({
    expect_r6_class(x, "Student")
    expect_r6_class(person, "Student")
  })
})

test_that("expect_r6_class validates its inputs", {
  expect_snapshot(error = TRUE, {
    expect_r6_class(1, c("Person", "Student"))
  })
})

# expect_s7_class --------------------------------------------------------

test_that("can check with actual class", {
  skip_if_not_installed("S7")
  Foo <- S7::new_class("Foo", package = NULL)
  Bar <- S7::new_class("Bar", package = NULL)
  expect_success(expect_s7_class(Foo(), class = Foo))
  expect_snapshot_failure(expect_s7_class(Foo(), class = Bar))

  Baz <- S7::new_class("Baz", parent = Foo, package = NULL)
  expect_snapshot_failure(expect_s7_class(Baz(), class = Bar))
})

test_that("expect_s7_class validates its inputs", {
  expect_snapshot(expect_s7_class(1, 1), error = TRUE)
})
