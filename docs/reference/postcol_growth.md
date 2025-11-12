# Post-Colonial Growth in the African Continent

A simple data set on post-colonial growth trajectories in the African
continent, for intended use to instruct students about *t*-tests around
the application of colonial legacies.

## Usage

``` r
postcol_growth
```

## Format

A data frame with 53 observations on the following 11 variables.

- `ccode`:

  a Correlates of War state code

- `cw_name`:

  a Correlates of War state name

- `styear`:

  the start year for latest system entry for the state

- `IndFrom`:

  a Correlates of War state code, if applicable, identifying the state
  from which the state identified in the `ccode` gained independence

- `colmast`:

  a character vector largely corresponding with the information in
  `IndFrom` with only slight changes

- `mrgdppcind`:

  an estimate of GDP per capita for the year identified in the `styear`
  column, itself largely corresponding with independence from the state
  identified in `IndFrom` and `colmast`

- `mrgdppc5`:

  an estimate of GDP per capita 5 years from the year identified in the
  `styear` column

- `mrgdppc10`:

  an estimate of GDP per capita 10 years from the year identified in the
  `styear` column

- `mrgdppc15`:

  an estimate of GDP per capita 15 years from the year identified in the
  `styear` column

- `mrgdppc20`:

  an estimate of GDP per capita 20 years from the year identified in the
  `styear` column

- `mrgdppc25`:

  an estimate of GDP per capita 25 years from the year identified in the
  `styear` column

## Details

Data are generated with assistance from isard, another R package I
maintain.

Data are sliced to record only latest system entry into the CoW data,
which concerns states (like Morocco, Tunisia, and Ethiopia) that were
temporarily occupied and eliminated.

I take some liberties classifying former colonial masters in the
`colmast` column. Namely, I elect to not record Ethiopia's independence
from Italy as suggesting Italy was a colonial master of Ethiopia. I do
not code South Africa's independence from the United Kingdom as
noteworthy for the sake of this analysis (given the topic of interest to
me for creating these data). Senegal nominally gains independence from
Mali when it leaves the Mali Federation, but I attributes its
independence to being ultimately from France. Morocco and Tunisia were
protectorates of France though the ICOW measure of colonial history says
it gains independence from the Ottoman Empire. I do not consider Namibia
(South Africa) or Eritrea (Ethiopia) to be colonial under the states
from which they gained independence.

The estimates of GDP per capita are real GDP per capita in prices
constant across countries and over time (in 2011 international dollars,
PPP). These data are sourced from the Maddison project database but are
the product of simulations by Farris et al. (2022). You can read a bit
more about these in the sources in the reference section, or in the
documentation for the `cw_gdppop` data frame in the isard package.

Colonial history data come by way of ICOW (v. 1.1).

## References

Bolt, Jutta, Robert Inklaar, Herman de Jong, and Luiten Janvan Zanden.
2018. "Rebasing 'Maddison': New Income Comparisons and the Shape of
Long-Run Economic Development." *Maddison Project Working paper 10*.

Fariss, Christopher, J., Therese Anders, Jonathan N. Markowitz, and
Miriam Barnum. 2022. "New Estimates of Over 500 Years of Historic GDP
and Population Data." *Journal of Conflict Resolution* 66(3): 553–91.

Hensel, Paul R. 2018. "ICOW Colonial History Data Set, version 1.1."
Available at <https://www.paulhensel.org/icowcol.html>.
