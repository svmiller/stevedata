## Test environments

* ubuntu 18.04, R 4.0.3

## R CMD check results

R CMD check done via `devtools::check()`, resulting in 0 errors, 0 warnings, and 0 notes.

`devtools::spell_check()` suggests several spelling errors. However, what I submit to CRAN includes only the false positives. Almost all of these false positives occur in the R Documentation file for when I source or add references about the data. I'll note, humbly, that `devtools::spell_check()` did catch more than a few spelling errors in those R Documentation files that were not appropriate for CRAN when I first prepared this package for submission. I went through and corrected all of them. What remains are just false positives that come from the peculiarities of writing exhaustive R Documentation files for an R package that is primarily about data to be shared with the community of R users.

## Downstream dependencies

This is a simple data package and there are no downstream dependencies to note. The `NEWS.md` file outlines changes to this package relative to previous versions. Given the nature of this R package, it's basically the addition of new data sets.
