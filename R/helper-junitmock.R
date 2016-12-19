createJunitReporterMock <- function (file) {
  JunitReporterMock <- R6::R6Class("JunitReporterMock",
    inherit = JunitReporter,
    public  = list (),
    private = list (
      proctime = function () {
        c(user = 0, system = 0, elapsed = 0)
      },
      timestamp = function () {
        "1999:12:31 23:59:59"
      },
      hostname = function () {
        "nodename"
      }
    )
  )
  JunitReporterMock$new(file = file)
}
