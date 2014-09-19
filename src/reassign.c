#define USE_RINTERNALS
#include <R.h>
#include <Rdefines.h>
#include <R_ext/Error.h>


SEXP reassign_function(SEXP name, SEXP env, SEXP old_fun, SEXP new_fun)
{
  if (TYPEOF(name) != SYMSXP) error("name must be a symbol");
  if (TYPEOF(env) != ENVSXP) error("env must be an environment");
  if (TYPEOF(old_fun) != CLOSXP) error("old_fun must be a function");
  if (TYPEOF(new_fun) != CLOSXP) error("new_fun must be a function");

  FORMALS(old_fun) = FORMALS(new_fun);
  BODY(old_fun) = BODY(new_fun);
  CLOENV(old_fun) = CLOENV(new_fun);
  ATTRIB(old_fun) = ATTRIB(new_fun);

  return R_NilValue;
}
