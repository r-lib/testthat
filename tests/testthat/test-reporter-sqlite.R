context("SqliteReporter")
require(RSQLite)

test_that("SqliteReporter with test_file", {

#  mydbh <- dbConnect(SQLite(), 'mysqlitereportertest.db3')
  mydbh <- dbConnect(SQLite(), ':memory:')

  report <- SqliteReporter$new(mydbh)
  report$build_db(truncate=TRUE)

  test_file("context.r", report)

  ##run a few tests and confirm that the output has been sent to the database.

  ##Check results in the database.

  ##results from 'First context.' tests that are passing
  db.result <- dbSendQuery(mydbh, "select * from testthat where passed = 1 and context = 'First context.';")
  db.df <- dbFetch(db.result)
  dbClearResult(db.result)

  expect_true(nrow(db.df) == 2)

  ##results from 'First context.' tests that are failing
  db.result <- dbSendQuery(mydbh, "select * from testthat where passed = 0 and context = 'First context.';")
  db.df <- dbFetch(db.result)
  dbClearResult(db.result)

  expect_true(nrow(db.df) == 0)

  ##results from 'Second context.' that are passing
  db.result <- dbSendQuery(mydbh, "select * from testthat where passed = 1 and context = 'Second context.';")
  db.df <- dbFetch(db.result)
  dbClearResult(db.result)

  expect_true(nrow(db.df) == 1)

  ##results from 'Second context.' that are failing
  db.result <- dbSendQuery(mydbh, "select * from testthat where passed = 0 and context = 'Second context.';")
  db.df <- dbFetch(db.result)
  dbClearResult(db.result)

  expect_true(nrow(db.df) == 1)

  db.result <- dbSendQuery(mydbh, "select * from testthat;")
  db.df <- dbFetch(db.result)
  dbClearResult(db.result)
  db.df


dbDisconnect(mydbh)

})

