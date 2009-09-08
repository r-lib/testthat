if (!exists("Suite")) {
  Suite <- Object$clone()
    SummarySuite <- Suite$clone()
    StopSuite <- Suite$clone()  
    MinimalSuite <- Suite$clone()  
}

# create_class_hierarchy("
# Suite
# |- SummarySuite
#    `- SpecialSummary
# |- StopSuite
# `- MinimalSuite
# ")