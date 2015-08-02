#' @include reporter.r
NULL


setOldClass('proc_time')

require(RSQLite)


#'
#' This reporter will gather all test results and insert them into an SQLite database given as a open handled upoon initialization.
#'
#' @export
#' @export SqliteReporter
#' @aliases SqliteReporter
#' @keywords debugging
#' @param ... Arguments used to initialise class
SqliteReporter <- setRefClass("SqliteReporter", contains = "Reporter",
  fields = list(
    start_test_time = 'proc_time',
    start_test_timestamp = 'character',  #using YYYY-MM-DD HH:MM:SS for database
    end_test_timestamp  = 'character',
    results = 'list',
    current_test_results = 'list',
    db_handle = 'SQLiteConnection'  #instance variable holding database handle passed on new.
  ),

  methods = list(
    ##must pass database handle that is open and ready for action.
    initialize = function(dbh, ...) {
      db_handle <<- dbh
      callSuper(...)
    },

    build_db = function(truncate = FALSE)
    {
      #instance variables in result:
      ## context:text:  description of thing being tested
      ## test:text:  kind of test
      ######## timing related
      ## user:float: user seconds
      ## system:float: system seconds
      ## real:float: real seconds
      ########substructure containing a result
      ## passed:logical:did this test pass?
      ## error:logical:was there an error?
      ## skipped:logical: was the test skipped?
      ## failure_msg:text: message to use if it was a failure
      ## success_msg:text: message to use if it was a success
      ## srcref:srcref: pointers to source?  Where the test is located (maybe line numbers?)

      ## !passed & !error & !skipped then test FAILURE (?)
      ## !passed & !error & skipped then test SKIPPED
      ## !passed & error then ERROR
      ## passed then PASSED

      ##adding timestamp for tracking results over time.
      ##check for table first.
      ##if it does not exist, then create it.
      ##if it does exist then do nothing... It's already there.
      CTableName <- 'testthat'
      sql.table.create <- sprintf('create table %s (
context TEXT
, test TEXT
, user_sec REAL
, system_sec REAL
, real_sec REAL
, start_test_timestamp TEXT
, end_test_timestamp TEXT
, passed INTEGER
, error INTEGER
, skipped INTEGER
, failure_msg TEXT
, success_msg TEXT
);',
                                  CTableName)
      sql.table.drop <- sprintf('drop table %s', CTableName)

      ##if the table exists and we are not truncating then NOP.
      if(dbExistsTable(db_handle, CTableName))
      {
        if(truncate)
        {
          dbSendQuery(db_handle, sql.table.drop)
        }
        else
        {
          ##nothing needed.  Table exists and we're not truncating so nothing to do.
            return()
        }
      }
      ## we've determined that there is no table or there was a table that has just been dropped.
      dbSendQuery(db_handle, sql.table.create)

      },

    dbSaveResult = function(df)
    {
      dbSendPreparedQuery(db_handle, 'insert into testthat (context, test, user_sec, system_sec, real_sec, start_test_timestamp, end_test_timestamp, passed, error, skipped, failure_msg, success_msg)
                          values (?,?,?,?,?,?,?,?,?,?,?,?)',
                          df)
    },

    ### overriden methods from Reporter
    start_reporter = function(...) {
      callSuper(...)
      results <<- list()
      current_test_results <<- list()
    },

    start_test = function(desc) {
      callSuper(desc)
      current_test_results <<- list()
      start_test_time <<- proc.time()
      start_test_timestamp <<- format(Sys.time(), "%Y-%m-%d %H:%M:%S")
    },

    end_test = function() {
      el <- as.double(proc.time() - start_test_time)
      test_info <- list(context = context,
                        test = test,
                        user = el[1],
                        system = el[2],
                        real = el[3],
                        start_test_timestamp = start_test_timestamp,
                        end_test_timestamp = format(Sys.time(), "%Y-%m-%d %H:%M:%S"),
                        results = current_test_results)

      ##I'm going to have to iterate here over the test_info to load dataframe.
      interp.l <- lapply(test_info$results, function(x){data.frame(context = test_info$context,
                                                                   test = test_info$test,
                                                                   user_sec = test_info$user,
                                                                   system_sec = test_info$system,
                                                                   real_sec = test_info$real,
                                                                   start_test_timestamp = test_info$start_test_timestamp,
                                                                   end_test_timestamp = test_info$end_test_timestamp,
                                                                   passed = x$passed,
                                                                   error = x$error,
                                                                   skipped = x$skipped,
                                                                   failure_msg = x$failure_msg,
                                                                   success_msg = x$success_msg,
                                                                   stringsAsFactors = FALSE)})

      #R black magic rbind from lists of dataframes with common columns.
      resultdf <- do.call(rbind, interp.l)

      ##Run the database insert.
      dbSaveResult(resultdf)

      results <<- c(results, list(test_info))
      current_test_results <<- list()

      callSuper() # at the end because it resets the test name
    },

    add_result = function(result) {
      callSuper(result)
      current_test_results <<- c(current_test_results, list(result))
    },

    get_summary = function() {
      summarize_results(results)
    }

  )
)




