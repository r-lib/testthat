# options(recalculate = FALSE)

# Local functions
# .get_reffile_path = function(pattern, rdapath = "reffiles", tformat = "%d%B%Y") {
#   refFiles = list.files(rdapath, pattern)
#   if(length(refFiles) == 0) stop("No reference files present for prefix '", pattern, "' in directory '", rdapath, "'")
#   posixfmt = sprintf("%s%s.rda", pattern, tformat)
#   mostRecentRefIdx = which.max(as.numeric(strptime(refFiles, posixfmt)))
#   return(sprintf("%s/%s", rdapath, refFiles[mostRecentRefIdx]))
# }
# .get_reffile_path("test")

.get_reference = function(pattern, rdapath = "reffiles", tformat = "%d%B%Y") {
  ref.fname = .get_reffile_path(pattern, rdapath, tformat)
  tmp.env = new.env()
  load(ref.fname, envir = tmp.env)
  ref.obj = unlist(.obj_from_envir(tmp.env), recursive = FALSE)
  names(ref.obj) = sub("obj.", "", names(ref.obj))  
  return(ref.obj)
}
# .get_reference("test")

.generate_ref_file = function(expr, savePrefix, rdapath = "reffiles", tformat = "%d%B%Y") {  
  if(!file.exists(rdapath)) dir.create(rdapath)  
  if(!inherits(expr, "{")) expr = substitute(expr)
  obj = .expr_to_list(expr)
  posixfmt = sprintf("%s/%s%s.rda", rdapath, savePrefix, tformat)
  save(obj, file = strftime(Sys.time(), posixfmt))
}
# .generate_ref_file({a<-1
#                         b<-2}, "test")

# Evaluate the expression and return the resulting objects
# in a list. Does this by executing the command in a new
# environment and than loading the objects from that environment
# into a list.
.expr_to_list = function(expr) {
  tmp.env = new.env()
  if(!inherits(expr, "{")) expr = substitute(expr)
  eval(expr, envir = tmp.env)
  return(.obj_from_envir(tmp.env))
}
# .expr_to_list({a<-1
#                         b<-2})

.obj_from_envir = function(env.name) {  
  lsobjs = ls(envir = env.name)
  objs = lapply(lsobjs, get, envir = env.name)
  names(objs) = lsobjs
  return(objs)
}

# User functions
recalculateReferenceDatasets_file <- function(path) {  
  options(recalculate = TRUE)
  test_file(path = path, reporter = "stop")
  options(recalculate = FALSE) 
}

recalculateReferenceDatasets_dir <- function(path, env = NULL) {  
  options(recalculate = TRUE)
  test_dir(path = path, reporter = "stop", env = env)
  options(recalculate = FALSE)
}

testReferenceChange = function(expr, savePrefix, rdapath = "reffiles", tformat = "%d%B%Y") {
  if(getOption("recalculate")) {
    cat(sprintf("Recalculating reference for prefix '%s'\n", savePrefix))
    .generate_ref_file(substitute(expr), savePrefix, rdapath, tformat)
  }
  reference = .get_reference(savePrefix, rdapath, tformat)
  current = .expr_to_list(substitute(expr))
  return(list(reference = reference, current = current))
}

# Some functionality tests
options(recalculate=TRUE)
test1 = testReferenceChange({a<-1
                     b<-2}, "test")
isTRUE(all.equal(test1[["reference"]], test1[["current"]])) 
# TRUE
options(recalculate=FALSE)

test2 = testReferenceChange({a<-1
                             b<-3}, "test")
isTRUE(all.equal(test2[["reference"]], test2[["current"]])) 
# FALSE

  
  