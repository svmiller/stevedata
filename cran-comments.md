## Test environments

* ubuntu 22.04, R 4.1.2

## R CMD check results

R CMD check done via `devtools::check()`, resulting in 0 errors, 0 warnings, and 0 notes.

`devtools::spell_check()` suggests several spelling errors. However, what I submit to CRAN includes only the false positives. Almost all of these false positives occur in the R Documentation file for when I source or add references about the data.

`devtools::check(manual = TRUE, remote = TRUE, incoming = TRUE)` identified any URL redirect issues in advance of submission.

## Downstream dependencies

This is a simple data package and there are no downstream dependencies to note. The `NEWS.md` file outlines changes to this package relative to previous versions.
