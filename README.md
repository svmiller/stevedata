
# `stevedata`: Steve’s Toy Data for Teaching About a Variety of Methodological, Social, and Political Topics

[![](https://www.r-pkg.org/badges/version/stevedata?color=green)](https://cran.r-project.org/package=stevedata)
[![](http://cranlogs.r-pkg.org/badges/grand-total/stevedata?color=green)](https://cran.r-project.org/package=stevedata)
[![](http://cranlogs.r-pkg.org/badges/last-month/stevedata?color=green)](https://cran.r-project.org/package=stevedata)
[![](http://cranlogs.r-pkg.org/badges/last-week/stevedata?color=green)](https://cran.r-project.org/package=stevedata)

<img src="https://svmiller.com/images/stevedata-hexlogo.png" alt="My stevedata  hexlogo" align="right" width="200" style="padding: 0 15px; float: right;"/>

`{stevedata}` is an R package full of toy data sets that you may find
useful for various purposes. Namely, I’ve created probably over a
hundred toy data sets along the way, either to riff on some topic on [my
blog](https://svmiller.com/blog/), show my students something in one of
[my many classes](https://svmiller.com/teaching/), or just to entertain
myself. I had stuffed a lot of these into
[`{stevemisc}`](https://github.com/svmiller/stevemisc), but I want to
keep that package mostly about the functions (and whatever data are
necessary for showing off the functions). `{stevedata}` will have all my
toy data going forward.

I anticipate two sets of R users may find these data useful. First,
instructors may find these data useful for classes on a variety of
topics, but prominently quantitative methods and international
relations. Many of the toy data sets included in this R package are data
I’ve acquired or assembled to teach about topics in quantitative methods
or international relations in a reproducible way. Users should see my
Github repositories for my classes on [introduction to international
relations](https://github.com/svmiller/posc1020), [quantitative methods
in political science](https://github.com/svmiller/posc3410), and
[foundations of social science research for public
policy](https://github.com/svmiller/post8000) to see how I’ve used these
data (or development versions of them). Topics here are diverse,
including (but not limited to) [carbon dioxide emissions over 800,000
years](https://github.com/svmiller/stevedata/blob/master/man/co2emissions.Rd)
(as an illustration of climate change), [coffee
prices](https://github.com/svmiller/stevedata/blob/master/man/coffee_price.Rd)
(as an illustration of the worsening terms of trade, [the justifiability
of
bribe-taking](https://github.com/svmiller/stevedata/blob/master/man/wvs_justifbribe.Rd)
(as an illustration of information-poor and discrete variables that a
researcher may be tempted to treat as drawn from a normal distribution),
the canonical case of [illiteracy rates in the 1930 U.S.
Census](https://github.com/svmiller/stevedata/blob/master/man/illiteracy30.Rd)
(as an illustration of an [ecological
fallacy](https://www.britannica.com/science/ecological-fallacy)), and
many, many more topics.

Second, my students in these classes (but especially my methods classes)
should find this R package useful. I will also be having my methods
students (undergraduate and graduate) download this package to work
through problem sets in the R programming language. It’d be a benefit to
them (and less hassle/headache for myself) to have my students download
this package from CRAN rather than work through potential
[`curl`](https://curl.se) issues by installing through Github.

In almost all instances, each data set has an underlying code/script
that generates them. These are in a `data-raw` directory that is
(increasingly) included in the Github repository (but not the R
package).

## Installation

This package is now on CRAN. You can download it as you would any other
R package.

``` r
install.packages("stevedata")
```

You can also install the development version of `{stevedata}` from
Github via the `{devtools}` package. I suppose using the `{remotes}`
package would work as well.

``` r
devtools::install_github("svmiller/stevedata")
```

## Usage

The data set already has a lot to offer those who might be curious about
its contents. You can do this to see what is in it.

``` r
data(package = "stevedata")
```

You can also [check the website](https://svmiller.com/stevedata/) for
more information. There is [an informal
vignette](https://svmiller.com/stevedata/articles/stevedata-description.html)
that describes these data in some detail.
