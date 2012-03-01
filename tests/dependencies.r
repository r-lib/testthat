if (Sys.info()["user"] == "hadley")  {
 library(devtools)

 check_cran("lubridate")
 check_cran("reshape2")
 check_cran("stringr")

}