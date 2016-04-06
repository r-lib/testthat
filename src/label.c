#define R_NO_REMAP
#include <R.h>
#include <Rinternals.h>

SEXP base_promise(SEXP promise, SEXP env) {
  // recurse until we find the real promise, not a promise of a promise
  while(TYPEOF(promise) == PROMSXP) {
    env = PRENV(promise);
    promise = PREXPR(promise);

    // promise has already been forced so can't go further
    if (env == R_NilValue)
      break;

    // If the promise is threaded through multiple functions, we'll
    // get some symbols along the way. If the symbol is bound to a promise
    // keep going on up
    if (TYPEOF(promise) == SYMSXP) {
      SEXP obj = Rf_findVar(promise, env);

      if (TYPEOF(obj) != PROMSXP)
        break;

      promise = obj;
    }
  }

  return promise;
}

SEXP find_label_(SEXP name, SEXP env) {
  SEXP promise = Rf_findVar(name, env);
  return base_promise(promise, env);
}

