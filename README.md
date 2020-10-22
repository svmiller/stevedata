# Steve's Toy Data

<img src="http://svmiller.com/images/stevedata-hexlogo.png" alt="My stevedata  hexlogo" align="right" width="200" style="padding: 0 15px; float: right;"/>

`stevedata` is an R package full of toy data sets that you may find useful for your own purposes. Namely, I've created probably over a hundred toy data sets along the way, either to riff on some topic on [my blog](http://svmiller.com/blog), show my students something in one of [my many classes](http://svmiller.com/teaching), or just to entertain myself for [spamming Twitter with my assorted thoughts](https://twitter.com/stevenvmiller). I had stuffed a lot of these into [`stevemisc`](https://github.com/svmiller/stevemisc), but I want to keep that package mostly about the functions (and whatever data are useful for showing off the functions). `stevedata` will have all my toy data going forward.

## Installation

The goal is to get this on CRAN, eventually. Until then, you can install the development version of `stevedata` from Github via the `devtools` package. I suppose using the `remotes` package would work as well.

```r
devtools::install_github("svmiller/stevedata")
```

## Usage

The usage, as of writing, is minimal. This should be a pretty rich data package when I'm done with it. Until then, you can do this to see what's in it.

```r
data(package = "stevedata")
```
