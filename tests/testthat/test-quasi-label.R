test_that("atomic scalars deparsed to single values", {
  expect_equal(expr_label(NULL), "NULL")
  expect_equal(expr_label(TRUE), "TRUE")
  expect_equal(expr_label(1L), "1L")
  expect_equal(expr_label(1), "1")
  expect_equal(expr_label("a"), '"a"')
})

test_that("symbols are quoted", {
  expect_equal(expr_label(quote(a)), "`a`")
})

test_that("long vectors get ...", {
  long <- "123456789_123456789_123456789_123456789_123456789_123456789_"
  expect_equal(
    expr_label(c(long, long)),
    paste0('c("', long, '", ...)')
  )
})

test_that("produces useful summaries for long calls", {
  expect_snapshot({
    expr_label(quote(foo(
      a = "this is a long argument",
      b = "this is a long argument",
      c = "this is a long argument"
    )))

    expr_label(quote(
      arg + arg + arg + arg + arg + arg + arg + arg + arg + arg + arg + arg
    ))
    expr_label(quote(
      arg + (arg + arg + arg + arg + arg + arg + arg + arg + arg + arg + arg)
    ))

    expr_label(quote(function(a, b, c) { a + b + c}))

  })
})

test_that("other inlined other objects are deparsed", {
  expect_equal(expr_label(c(1, 2, 3)), "c(1, 2, 3)")
  expect_equal(expr_label(list(1, 2, 3)), "list(1, 2, 3)")
  expect_equal(
    expr_label(1:100 + 0),
    "c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, ...)"
  )
})

test_that("informative error for missing arg", {
  expect_snapshot(error = TRUE, expect_equal())
})

