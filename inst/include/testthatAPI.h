#include <R_ext/Rdynload.h>
#include <R.h>
#include <Rinternals.h>

SEXP duplicate_(SEXP x) {
  static SEXP(*fun)(SEXP) = NULL;
  if (fun == NULL)
    fun = (SEXP(*)(SEXP)) R_GetCCallable("testthat", "duplicate_");
  return fun(x);
}

SEXP reassign_function(SEXP name, SEXP env, SEXP old_fun, SEXP new_fun) {
  static SEXP(*fun)(SEXP, SEXP, SEXP, SEXP) = NULL;
  if (fun == NULL)
    fun = (SEXP(*)(SEXP, SEXP, SEXP, SEXP)) R_GetCCallable("testthat", "reassign_function");
  return fun(name, nev, old_fun, new_fun);
}
