test_that("source_file always uses UTF-8 encoding", {
  has_locale <- function(l) {
    has <- TRUE
    tryCatch(
      withr::with_locale(c(LC_CTYPE = l), "foobar"),
      warning = function(w) has <<- FALSE,
      error = function(e) has <<- FALSE
    )
    has
  }

  ## Some text in UTF-8
  tmp <- tempfile()
  on.exit(unlink(tmp), add = TRUE)
  utf8 <- as.raw(c(
    0xc3,
    0xa1,
    0x72,
    0x76,
    0xc3,
    0xad,
    0x7a,
    0x74,
    0xc5,
    0xb1,
    0x72,
    0xc5,
    0x91,
    0x20,
    0x74,
    0xc3,
    0xbc,
    0x6b,
    0xc3,
    0xb6,
    0x72,
    0x66,
    0xc3,
    0xba,
    0x72,
    0xc3,
    0xb3,
    0x67,
    0xc3,
    0xa9,
    0x70
  ))
  writeBin(c(charToRaw("x <- \""), utf8, charToRaw("\"\n")), tmp)

  run_test <- function(locale) {
    if (has_locale(locale)) {
      env <- new.env()
      withr::with_locale(
        c(LC_CTYPE = locale),
        source_file(tmp, env = env, wrap = FALSE)
      )
      expect_equal(Encoding(env$x), "UTF-8")
      expect_equal(charToRaw(env$x), utf8)
    }
  }

  ## Try to read it in latin1 and UTF-8 locales
  ## They have different names on Unix and Windows
  run_test("en_US.ISO8859-1")
  run_test("en_US.UTF-8")
  run_test("English_United States.1252")
  run_test("German_Germany.1252")
  run_test(Sys.getlocale("LC_CTYPE"))
})

test_that("source_file wraps error", {
  expect_snapshot(error = TRUE, {
    source_file(test_path("reporters/error-setup.R"), wrap = FALSE)
  })
})


# filter_label -------------------------------------------------------------

test_that("can find only matching test", {
  code <- exprs(
    f(),
    test_that("foo", {}),
    g(),
    describe("bar", {}),
    h()
  )
  expect_equal(filter_desc(code, "foo"), code[c(1, 2)])
  expect_equal(filter_desc(code, "bar"), code[c(1, 3, 4)])
  expect_snapshot(filter_desc(code, "baz"), error = TRUE)
})

test_that("preserve srcrefs", {
  code <- parse(
    keep.source = TRUE,
    text = '
    test_that("foo", {
      # this is a comment
    })
  '
  )
  expect_snapshot(filter_desc(code, "foo"))
})


test_that("errors if duplicate labels", {
  code <- exprs(
    f(),
    test_that("baz", {}),
    test_that("baz", {}),
    g()
  )

  expect_snapshot(filter_desc(code, "baz"), error = TRUE)
})

test_that("source_dir()", {
  res <- source_dir("test_dir", pattern = "hello", chdir = TRUE, wrap = FALSE)
  expect_equal(res[[1]](), "Hello World")

  res <- source_dir(
    normalizePath("test_dir"),
    pattern = "hello",
    chdir = TRUE,
    wrap = FALSE
  )
  expect_equal(res[[1]](), "Hello World")

  res <- source_dir("test_dir", pattern = "hello", chdir = FALSE, wrap = FALSE)
  expect_equal(res[[1]](), "Hello World")

  res <- source_dir(
    normalizePath("test_dir"),
    pattern = "hello",
    chdir = FALSE,
    wrap = FALSE
  )
  expect_equal(res[[1]](), "Hello World")
})

test_that("you can select deeply nested describe(...)", {
  code <- exprs(
    f(),
    describe("level 0", {
      g()
      describe("level 1 A", {
        h()
        describe("level 2 A", {
          i()
          it("level 3 A", {
            expect_equal(1, 1)
          })
          j()
        })
        k()
        describe("level 2 B", {
          l()
          it("level 3 B", {
            o()
            expect_equal(1, 1)
            p()
          })
          m()
          it("level 3 C", {
            o()
            expect_equal(1, 1)
            p()
          })
          n()
          it("level 3 D", {
            expect_equal(1, 1)
          })
          o()
        })
        p()
        describe("level 2 C", {
          expect_equal(1, 1)
        })
        r()
      })
      s()
      describe("level 1 B", {})
      t()
    }),
    x()
  )

  expected <- exprs(
    f(),
    describe("level 0", {
      g()
      describe("level 1 A", {
        h()
        k()
        describe("level 2 B", {
          l()
          m()
          it("level 3 C", {
            o()
            expect_equal(1, 1)
            p()
          })
        })
      })
    })
  )

  expect_equal(filter_desc(code, c("level 0", "level 1 A", "level 2 B", "level 3 C")), expected)
})
