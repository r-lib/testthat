# datagovindia

<details>

* Version: 1.0.5
* GitHub: https://github.com/econabhishek/datagovindia
* Source code: https://github.com/cran/datagovindia
* Date/Publication: 2021-09-27 09:10:02 UTC
* Number of recursive dependencies: 63

Run `cloud_details(, "datagovindia")` for more info

</details>

## Newly broken

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘datagovindia_vignette.Rmd’ using rmarkdown
    Quitting from lines 158-161 (datagovindia_vignette.Rmd) 
    Error: processing vignette 'datagovindia_vignette.Rmd' failed with diagnostics:
    OpenSSL SSL_read: Connection reset by peer, errno 104
    --- failed re-building ‘datagovindia_vignette.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘datagovindia_vignette.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# hyperSpec

<details>

* Version: 0.100.0
* GitHub: https://github.com/r-hyperspec/hyperSpec
* Source code: https://github.com/cran/hyperSpec
* Date/Publication: 2021-09-13 13:00:02 UTC
* Number of recursive dependencies: 141

Run `cloud_details(, "hyperSpec")` for more info

</details>

## Newly broken

*   checking running R code from vignettes ... ERROR
    ```
    Errors in running code in vignettes:
    when running code in ‘plotting.Rnw’
      ...
      'x' values are not equispaced; output may be wrong
    Warning in (function (x, y, z, subscripts, at = pretty(z), ..., col.regions = regions$col,  :
      'y' values are not equispaced; output may be wrong
    
    > plotvoronoi(uneven)
    Warning in (function (x, y, z, subscripts = TRUE, at = pretty(z), points = TRUE,  :
      The 'use.tripack' argument is deprecated and ignored. See ?panel.voronoi
    ...
    
    ... incomplete output.  Crash?
    
      ‘chondro.pdf.asis’ using ‘UTF-8’... OK
      ‘fileio.pdf.asis’ using ‘UTF-8’... OK
      ‘baseline.Rnw’ using ‘UTF-8’... OK
      ‘flu.Rnw’ using ‘UTF-8’... OK
      ‘hyperspec.Rnw’ using ‘UTF-8’... OK
      ‘laser.Rnw’ using ‘UTF-8’... OK
      ‘plotting.Rnw’ using ‘UTF-8’... failed to complete the test
    ```

## In both

*   checking re-building of vignette outputs ... NOTE
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘chondro.pdf.asis’ using asis
    --- finished re-building ‘chondro.pdf.asis’
    
    --- re-building ‘fileio.pdf.asis’ using asis
    --- finished re-building ‘fileio.pdf.asis’
    
    --- re-building ‘baseline.Rnw’ using Sweave
    Loading required package: lattice
    Loading required package: grid
    ...
    Warning in (function (x, y, z, subscripts, at = pretty(z), ..., col.regions = regions$col,  :
      'y' values are not equispaced; output may be wrong
    Warning in (function (x, y, z, subscripts = TRUE, at = pretty(z), points = TRUE,  :
      The 'use.tripack' argument is deprecated and ignored. See ?panel.voronoi
    Killed
    SUMMARY: processing the following files failed:
      ‘baseline.Rnw’ ‘flu.Rnw’ ‘hyperspec.Rnw’ ‘laser.Rnw’ ‘plotting.Rnw’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

