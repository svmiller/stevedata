
# Steve’s Toy Data

<img src="http://svmiller.com/images/stevedata-hexlogo.png" alt="My stevedata  hexlogo" align="right" width="200" style="padding: 0 15px; float: right;"/>

`stevedata` is an R package full of toy data sets that you may find
useful for your own purposes. Namely, I’ve created probably over a
hundred toy data sets along the way, either to riff on some topic on [my
blog](http://svmiller.com/blog), show my students something in one of
[my many classes](http://svmiller.com/teaching), or just to entertain
myself for [spamming Twitter with my assorted
thoughts](https://twitter.com/stevenvmiller). I had stuffed a lot of
these into [`stevemisc`](https://github.com/svmiller/stevemisc), but I
want to keep that package mostly about the functions (and whatever data
are useful for showing off the functions). `stevedata` will have all my
toy data going forward.

## Installation

The goal is to get this on CRAN, eventually. Until then, you can install
the development version of `stevedata` from Github via the `devtools`
package. I suppose using the `remotes` package would work as well.

``` r
devtools::install_github("svmiller/stevedata")
```

## Usage

The usage, as of writing, is minimal. This should be a pretty rich data
package when I’m done with it. Until then, you can do this to see what’s
in it.

``` r
data(package = "stevedata")
```

The ensuing output will look like this.

| **Object Name**    | **Title/Description**                                                       |
| :----------------- | :-------------------------------------------------------------------------- |
| Arca               | NYSE Arca Steel Index data, 2017–present                                    |
| DJIA               | Dow Jones Industrial Average, 1885-Present                                  |
| DST                | Casualties/Fatalities in the U.S. for Drunk-Driving, Suicide, and Terrorism |
| Datasaurus         | The Datasaurus Dozen                                                        |
| ESS9GB             | British Attitudes Toward Immigration (2018-19)                              |
| Presidents         | U.S. Presidents and Their Terms in Office                                   |
| aluminum\_premiums | LME Aluminum Premiums Data                                                  |
| anes\_prochoice    | Abortion Attitudes (ANES, 2012)                                             |
| arg\_tariff        | Simple Mean Tariff Rate for Argentina                                       |
| asn\_stats         | Aviation Safety Network Statistics, 1942-2019                               |
| clemson\_temps     | Daily Clemson Temperature Data                                              |
| coffee\_imports    | Coffee Imports for Select Importing Countries                               |
| election\_turnout  | State-Level Education and Voter Turnout in 2016                             |
| eq\_passengercars  | Export Quality Data for Passenger Cars, 1963-2014                           |
| eustates           | EU Member States (Current as of 2019)                                       |
| fakeLogit          | Fake Data for a Logistic Regression                                         |
| ghp100k            | Gun Homicide Rate per 100,000 People, by Country                            |
| gss\_abortion      | Abortion Opinions in the General Social Survey                              |
| gss\_wages         | The Gender Pay Gap in the General Social Survey                             |
| mvprod             | Motor Vehicle Production by Country, 1950-2019                              |
| steves\_clothes    | Steve’s (Professional) Clothes, as of March 3, 2019                         |
| uniondensity       | Cross-National Rates of Trade Union Density                                 |
| usa\_states        | State Abbreviations, Names, and Regions/Divisions                           |
| yugo\_sales        | Yugo Sales in the United States, 1985-1992                                  |
