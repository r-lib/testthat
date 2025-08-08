test_that("can mock S3 methods", {
  x <- as.POSIXlt(Sys.time())
  df <- data.frame(x = 1:3)

  local({
    local_mocked_s3_method("length", "POSIXlt", function(x) 42)
    expect_length(x, 42)
  })

  expect_length(x, 1)
})

test_that("can mock S4 methods", {
  jim <- TestMockPerson(name = "Jim", age = 32)

  local({
    local_mocked_s4_method("mock_age", "TestMockPerson", function(x) 42)
    expect_equal(mock_age(jim), 42)
  })

  expect_equal(mock_age(jim), 32)
})


test_that("can mock R6 classes", {
  local({
    local_mocked_r6_class(TestMockClass, public = list(n = function() 2))
    obj <- TestMockClass$new()
    expect_equal(obj$n(), 2)
  })

  obj <- TestMockClass$new()
  expect_equal(obj$n(), 1)
})
