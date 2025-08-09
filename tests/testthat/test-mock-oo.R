# S3 --------------------------------------------------------------------------

test_that("can mock S3 methods", {
  x <- as.POSIXlt(Sys.time())
  df <- data.frame(x = 1:3)

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
    local_mocked_s3_method("mean", "bar", function() {})
  })
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
    local_mocked_s4_method("mean", "bar", function() {})
  })
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
