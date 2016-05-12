context("Mock objects")

test_that("mock cyclic returns", {
  m <- mock(returns = 1)
  expect_equal(lapply(1:10, m), as.list(rep(1, 10)))

  m <- mock(returns = 1:2)
  expect_equal(lapply(1:10, m), as.list(rep(1:2, 5)))

  m <- mock(returns = 1:3)
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

