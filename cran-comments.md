## Test environments

* ubuntu 18.04, R 4.0.3

## R CMD check results

R CMD check done via `devtools::check()`, resulting in 0 errors, 0 warnings, and 1 note. That note complains that the package is greater than 5 MB in size and that the data directory itself is over 5 MB in size. I wish I knew how to fix this, other than to note the following to CRAN. First, the directory *was* over 5 MB in size. However, I re-saved all the contents of the data directory by way of `tools::resaveRdaFiles("data")` for optimal file compression. The ensuing size of the data directory was cut roughly in half. The source package I submit to CRAN should be around 3.0 MB in size as well. I do not know why `devtools::check()` does not reflect this change.

`devtools::spell_check()` suggests several spelling errors. However, what I submit to CRAN includes only the false positives. Almost all of these false positives occur in the R Documentation file for when I source or add references about the data. I'll note, humbly, that `devtools::spell_check()` did catch more than a few spelling errors in those R Documentation files that were not appropriate for CRAN when I first prepared this package for submission. I went through and corrected all of them. What remains are just false positives that come from the peculiarities of writing exhaustive R Documentation files for an R package that is primarily about data to be shared with the community of R users.

`devtools::check_rhub()` suggested a few handshake errors for otherwise valid URLs that would render in a browser. These concerned source/detail URLs for the `LTPT` and `LTWT` documentation files. Rather than fight it, or try to belabor the point to CRAN, I elected to remove the URLs in lieu of text descriptions of these URLs. There are still two notes that emerge from this check. One is a possibly misspelled word in the DESCRIPTION entry ("workflow"). That is a false positive. The other is the size of the data directory, which I explained above should not be happening.

An automatic inspection suggested possibly invalid URLs in the `co2emissions.Rd` and `README.md` files. In the first case, that FTP link is valid and that error should be interpreted as a false positive. In the other two cases, those links go to the Github repository and are valid.

## Downstream dependencies

This is a simple data package and there are no downstream dependencies to note. The `NEWS.md` file outlines changes to this package relative to previous versions. Given the nature of this R package, it's basically the addition of new data sets.
