writeLines(
  "If you see me, something has gone wrong with old-school teardown",
  "DELETE-ME"
)
writeLines(
  "If you see me, something has gone wrong with new-school teardown",
  "DELETE-ME-2"
)
withr::defer(unlink("DELETE-ME-2"), teardown_env())
