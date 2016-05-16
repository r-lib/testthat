context("Mock objects")

test_that("mock cyclic returns", {
  m <- mock(1, cycle = TRUE)
  expect_equal(lapply(1:10, m), as.list(rep(1, 10)))

  m <- mock(1, 2, cycle = TRUE)
  expect_equal(lapply(1:10, m), as.list(rep(1:2, 5)))

  m <- mock(1, 2, 3, cycle = TRUE)
  expect_equal(lapply(1:12, m), as.list(rep(1:3, 4)))
})


test_that("call list", {
  m <- mock()
  e <- environment(m)

  with_mock(summary = m, {
    summary(iris)
  })

  expect_true(exists('calls', envir = e))
  expect_length(e$calls, 1)
  expect_equal(e$calls[[1]], bquote(summary(iris)))
})


test_that("expect calls", {
  m <- mock()

  with_mock(summary = m, {
    summary(iris)
  })

  expect_call(m, 1, summary(iris))
})


test_that("empty return list", {
  m <- mock()
  expect_null(m())
})


test_that("too many calls", {
  m <- mock(1)
  expect_equal(1, m())
  expect_failure(m(), "too many calls to mock object and cycle set to FALSE")
})


test_that("call not found", {
  m <- mock()
  m()
  expect_call(m, 1, m())
  expect_failure(expect_call(m, 2, m()),
                 "call number 2 not found in mock object")
})


test_that("return expression", {
  e <- new.env(parent = globalenv())
  m <- mock(fun_x("a"),
            fun_x("a") == "a",
            envir = e, cycle = TRUE)

  e$fun_x <- function(x)x
  expect_equal(m(), "a")
  expect_true(m())

  e$fun_x <- function(x)"abc"
  expect_equal(m(), "abc")
  expect_false(m())
})


