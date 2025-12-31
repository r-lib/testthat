# S3 --------------------------------------------------------------------------

test_that("can mock S3 methods", {
  x <- as.POSIXlt(Sys.time())

  local({
    local_mocked_s3_method("length", "POSIXlt", function(x) 42)
    expect_length(x, 42)
  })

  expect_length(x, 1)
})

test_that("validates its inputs", {
  expect_snapshot(error = TRUE, {
    local_mocked_s3_method(1)
    local_mocked_s3_method("mean", 1)
    local_mocked_s3_method("mean", "bar", 1)
  })
})

test_that("can mock S3 method that doesn't exist yet", {
  x <- structure(list(), class = "test_mock_class")

  local({
    local_mocked_s3_method("length", "test_mock_class", function(x) 42)
    expect_length(x, 42)
  })

  # Method should be removed after scope ends
  expect_length(x, 0)
})

test_that("can temporarily remove S3 method with NULL", {
  x <- structure(list(), class = "test_mock_class2")

  local({
    local_mocked_s3_method("length", "test_mock_class2", function(x) 42)
    expect_length(x, 42)

    # Now remove it
    local_mocked_s3_method("length", "test_mock_class2", NULL)
    expect_length(x, 0)
  })

  # Method should be removed after scope ends
  expect_length(x, 0)
})

# S4 --------------------------------------------------------------------------

test_that("can mock S4 methods", {
  jim <- TestMockPerson(name = "Jim", age = 32)

  local({
    local_mocked_s4_method("mock_age", "TestMockPerson", function(x) 42)
    expect_equal(mock_age(jim), 42)
  })

  expect_equal(mock_age(jim), 32)
})

test_that("validates its inputs", {
  expect_snapshot(error = TRUE, {
    local_mocked_s4_method(1)
    local_mocked_s4_method("mean", 1)
    local_mocked_s4_method("mean", "bar", 1)
    local_mocked_s4_method("notAGeneric", "bar", function() {})
  })
})

test_that("can mock S4 method that doesn't exist yet", {
  jim <- TestMockPerson(name = "Jim", age = 32)

  local({
    local_mocked_s4_method("show", "TestMockPerson", function(object) {
      cat("Person:", object@name, "\n")
    })
    expect_output(show(jim), "Person: Jim")
  })

  expect_null(methods::getMethod("show", "TestMockPerson", optional = TRUE))
})

test_that("can temporarily remove S4 method with NULL", {
  jim <- TestMockPerson(name = "Jim", age = 32)
  expect_equal(mock_age(jim), 32)

  local({
    local_mocked_s4_method("mock_age", "TestMockPerson", NULL)
    # Method is removed, so this should error
    expect_error(mock_age(jim), "unable to find")
  })

  expect_equal(mock_age(jim), 32)
})

# R6 --------------------------------------------------------------------------

test_that("can mock R6 methods", {
  local({
    local_mocked_r6_class(TestMockClass, public = list(sum = function() 2))
    obj <- TestMockClass$new()
    expect_equal(obj$sum(), 2)
  })

  obj <- TestMockClass$new()
  expect_equal(obj$sum(), 4321)
})

test_that("can mock all R6 components", {
  local_mocked_r6_class(
    TestMockClass,
    public = list(public_fun = function() 0, public_val = 0),
    private = list(private_fun = function() 0, private_val = 0)
  )
  obj <- TestMockClass$new()
  expect_equal(obj$sum(), 0)
})

test_that("validates its inputs", {
  expect_snapshot(error = TRUE, {
    local_mocked_r6_class(mean)
    local_mocked_r6_class(TestMockClass, public = 1)
    local_mocked_r6_class(TestMockClass, private = 1)
  })
})
