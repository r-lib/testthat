context <- function(desc) {
  test_suite()$end_context()
  test_suite()$start_context(desc)
}

