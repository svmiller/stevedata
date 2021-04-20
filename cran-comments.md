## An Explanation for the New Release

The release of this update is a little bit hurried given CRAN's policy on wanting about a month between CRAN submissions for a given package. The most recent update was just about two weeks ago. However, I'm submitting this in light of a recent email from Brian Ripley about FTP links in documentation files. This release has a few new data sets, but, importantly, scrubs the FTP links in light of Ripley's email about decreased web browser support for these in the near future. The `NEWS.md` file offers more information.

## Test environments

* ubuntu 18.04, R 4.0.3

## R CMD check results

R CMD check done via `devtools::check()`, resulting in 0 errors, 0 warnings, and 0 notes. Past versions of this check would note complain that the package is greater than 5 MB in size and that the data directory itself is over 5 MB in size. A recent e-mail from Brian Ripley flagged this package as not adequately addressing this issue, imploring the addition of `LazyDataCompression: xz` to the DESCRIPTION file. I believe this effectively addresses the issue and has done so since the release of version 0.3.1.

`devtools::spell_check()` suggests several spelling errors. However, what I submit to CRAN includes only the false positives. Almost all of these false positives occur in the R Documentation file for when I source or add references about the data. I'll note, humbly, that `devtools::spell_check()` did catch more than a few spelling errors in those R Documentation files that were not appropriate for CRAN when I first prepared this package for submission. I went through and corrected all of them. What remains are just false positives that come from the peculiarities of writing exhaustive R Documentation files for an R package that is primarily about data to be shared with the community of R users.

## Downstream dependencies

This is a simple data package and there are no downstream dependencies to note. The `NEWS.md` file outlines changes to this package relative to previous versions. Given the nature of this R package, it's basically the addition of new data sets.
