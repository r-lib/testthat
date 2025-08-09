describe("describe", {
  it("can contain nested describe blocks", {
    describe("addition", {
      it("should be able to add two numbers", {
        expect_equal(2, 1 + 1)
      })
      describe("sub feature", {
        it("should also work", {
          expect_equal(2, 1 + 1)
        })
      })
    })
  })
})

test_that("unimplemented specs generate skips", {
  expectations <- capture_expectations({
    it("can have not yet implemented specs", {
      describe("Millennium Prize Problems", {
        it("can be shown that P != NP")
      })
    })
  })
  expect_length(expectations, 1)
  expect_s3_class(expectations[[1]], "expectation_skip")
})

someExternalVariable <- 1
describe("variable scoping", {
  someInternalVariable <- 1
  it("should be possible to use variables from outer environments", {
    expect_equal(1, someExternalVariable)
    expect_equal(1, someInternalVariable)

    someInternalVariable <- 2
    someExternalVariable <- 3
  })

  # prefix is needed to test this use case
  testthat::it("even when using it() directly", {
    expect_equal(1, someExternalVariable)
    expect_equal(1, someInternalVariable)
  })

  it("shouldn't affect other tests", {
    expect_equal(1, someExternalVariable)
    expect_equal(1, someInternalVariable)
  })
})

test_that("has to have a valid description for the block", {
  expect_snapshot(error = TRUE, {
    describe()
    describe(c("a", "b"))

    it()
    it(c("a", "b"))
  })
})

test_that("names are concatenated", {
  expectations <- capture_expectations({
    describe("a", {
      describe("b", {
        it("c", {
          it("d", {
            expect_true(TRUE)
          })
        })
      })
    })
  })
  expect_equal(expectations[[1]]$test, "a / b / c / d")
})

test_that("skips are scoped to describe/it", {
  expectations <- capture_expectations({
    describe("", skip())
    describe("", expect_true())
    it("", skip())
    it("", expect_true(TRUE))
  })
  expect_length(expectations, 4)
})
