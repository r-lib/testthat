context("Pending Tests")
describe("pending tests", {
  describe("pending_expection()", {
    it("can be initialized without a pending msg", {
      res <- pending_expectation()
      expect_true(nchar(res$pending_msg) > 0)
      expect_true(is.pending_expectation(res))
    })
    it("can have a pending msg", {
      pending_msg <- "pending msg"
      res <- pending_expectation(pending_msg)
      expect_equivalent(res$pending_msg, pending_msg)
      expect_true(is.pending_expectation(res))
    })
    it("is also of type expectation for compatibility", {
      pending_msg <- "pending msg"
      res <- pending_expectation(pending_msg)
      expect_true(res$passed)
      expect_false(is.null(res$error))
      expect_true(is.null(res$failure_msg))
      expect_false(is.null(res$success_msg))
      expect_true(is.expectation(res))
      expect_true(is.pending_expectation(res))
      expect_equivalent(length(format(res)), 1)
      expect_true(grep(pending_msg, format(res)) > 0)
    })
  })
  describe("pending_expectation.format()", {
    it("formats the pending msg", {
      pending_msg <- "pending msg"
      res <- pending_expectation(pending_msg)
      expect_true(grep(pending_msg, format(res)) > 0)
    })
  })
  describe("pending()", {
    it("calls expect_that", {
      pending("we need to come up with a good mocking solution")
    })
  })
  describe("is_pending()", {
    it("creates a pending expectation", {
      res <- is_pending()(NA)
      expect_true(is.pending_expectation(res))
    })
    it("can also have a message", {
      pending_msg <- "my message"
      res <- is_pending(pending_msg)(NA)
      expect_true(is.pending_expectation(res))
      expect_equivalent(res$pending_msg, pending_msg)
    })
  })
})
