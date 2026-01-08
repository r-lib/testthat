# bcRP (1.0.1)

* GitHub: <https://github.com/JulioCollazos64/bcRP>
* Email: <mailto:amarullazo626@gmail.com>
* GitHub mirror: <https://github.com/cran/bcRP>

Run `revdepcheck::cloud_details(, "bcRP")` for more info

## Newly broken

*   checking examples ... ERROR
     ```
     ...
     > # Will get you the most recent data for these codes
     > # as you have not provided the `from` and `to` arguments.
     > get_bcrp_data(codes = codes)
     # A tibble: 92 × 4
        name     values            series_name                                  code 
        <chr>    <chr>             <chr>                                        <chr>
      1 Dic.2023 -10753.996433     Cuentas monetarias de las sociedades creado… PN00…
      2 Ene.2024 -7372.69594999999 Cuentas monetarias de las sociedades creado… PN00…
      3 Feb.2024 -4352.91922600001 Cuentas monetarias de las sociedades creado… PN00…
      4 Mar.2024 -6059.647797      Cuentas monetarias de las sociedades creado… PN00…
      5 Abr.2024 -7011.29944       Cuentas monetarias de las sociedades creado… PN00…
      6 May.2024 -5719.920519      Cuentas monetarias de las sociedades creado… PN00…
      7 Jun.2024 -4412.965822      Cuentas monetarias de las sociedades creado… PN00…
      8 Jul.2024 3762.929587       Cuentas monetarias de las sociedades creado… PN00…
      9 Ago.2024 3643.75504        Cuentas monetarias de las sociedades creado… PN00…
     10 Sep.2024 7335.179755       Cuentas monetarias de las sociedades creado… PN00…
     # ℹ 82 more rows
     > 
     > # You can also provide the range of dates
     > # through the `from` and `to` arguments.
     > get_bcrp_data(codes = codes, from = "2015-01", to = "2020-01")
     Error in perform_req_strategy(requests = list_of_requests, strategy = request_strategy) : 
       Error(s) at: PD39557DA
     Calls: get_bcrp_data -> perform_req_strategy
     Execution halted
     ```

# mggd (1.3.3)

* Email: <mailto:pierre.santagostini@agrocampus-ouest.fr>
* GitHub mirror: <https://github.com/cran/mggd>

Run `revdepcheck::cloud_details(, "mggd")` for more info

## Newly broken

*   checking tests ... ERROR
     ```
       Running ‘testthat.R’
     Running the tests in ‘tests/testthat.R’ failed.
     Complete output:
       > library(testthat)
       > library(mggd)
       The multvardiv package contains the same tools as mggd, and similar tools for other multivariate distributions.
       
       mggd will no longer be maintained. You may wish to install multvardiv instead.
       > 
       > test_check("mggd")
       Killed
     ```

# myTAI (2.3.4)

* GitHub: <https://github.com/drostlab/myTAI>
* Email: <mailto:hajk-georg.drost@tuebingen.mpg.de>
* GitHub mirror: <https://github.com/cran/myTAI>

Run `revdepcheck::cloud_details(, "myTAI")` for more info

## Newly broken

*   checking re-building of vignette outputs ... ERROR
     ```
     ...
     Quitting from taxonomy.Rmd:286-290 [unnamed-chunk-11]
     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
     <error/rlang_error>
     Error in `names(output) <- c("childtaxa_id", "childtaxa_name", "childtaxa_rank")`:
     ! 'names' attribute [3] must be the same length as the vector [0]
     ---
     Backtrace:
         ▆
      1. └─global taxonomy(organism = "Arabidopsis", db = "ncbi", output = "children")
      2.   ├─base::as.data.frame(taxize::children(organism, db = db)[[1]])
      3.   ├─taxize::children(organism, db = db)
      4.   └─taxize:::children.default(organism, db = db)
      5.     └─taxize::ncbi_children(name = sci_id, ...)
      6.       └─taxize (local) single_search(name[[i]], ancestor[[i]], ...)
     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
     
     Error: processing vignette 'taxonomy.Rmd' failed with diagnostics:
     'names' attribute [3] must be the same length as the vector [0]
     --- failed re-building ‘taxonomy.Rmd’
     
     SUMMARY: processing the following file failed:
       ‘taxonomy.Rmd’
     
     Error: Vignette re-building failed.
     Execution halted
     ```

