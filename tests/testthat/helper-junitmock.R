# Fix components of JunitReporter that otherwise vary from run-to-run
#
# The following functions need to be mocked out to run a unit test
# against static contents of reporters/junit.txt:
#   - proctime - originally wrapper for proc.time()
#   - timestamp - originally wrapper for toString(Sys.time())
#   - hostname  - originally wrapper for Sys.info()[["nodename"]]
#
JunitReporterMock <- R6::R6Class("JunitReporterMock",
  inherit = JunitReporter,
  public  = list(),
  private = list(
    proctime = function() {
      c(user = 0, system = 0, elapsed = 0)
    },
    timestamp = function() {
      "1999:12:31 23:59:59"
    },
    hostname = function() {
      "nodename"
    }
  )
)
