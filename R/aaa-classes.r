if (!exists("Reporter")) {
  Reporter <- Object$clone()
    SummaryReporter <- Reporter$clone()
    StopReporter <- Reporter$clone()  
    MinimalReporter <- Reporter$clone()  
}