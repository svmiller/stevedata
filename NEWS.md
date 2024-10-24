# stevedata 1.4.0

Additions include:

- `eu_ua_fta24`: A data set of the outcome of a roll-call vote in the European Union on extending the emergency free trade agreement between the European Union and Ukraine. These data are useful for teaching around character/string manipulation and simple data summary around a simple case where states bordering Ukraine were often in greater opposition to the measure for reasons implied by standard arguments of who wants protection from foreign goods.
- `chile88`: A data set on voting intentions in a plebiscite in Chile in 1988. This plebiscite concerned the future of the military junta under Augusto Pinochet.
- `Parvin73`: A data set for replicating a 1973 analysis in *Journal of Conflict Resolution* on the economic determinants of political unrest. These data are useful for teaching statistics around replication, and teaching what logarithmic transformations do in the linear model.
- `Mitchell68`: A data set for replicating a 1968 analysis in *World Politics* on the correlates of South Vietnamese control of its territory during the Vietnam War. These data are useful for teaching statistics around replication of a simple linear model.
- `epl_odds`: A data set on the odds of relegation and winning the table for 2024-25 Premier League squads. These are useful for communicating what odds are.
- `country_isocodes`: A data set on ISO country codes. These are useful for doing some data subsetting operations (for my students and myself).

Updates include:

- Assorted documentation updates.

# stevedata 1.3.0

Additions include:

- `USFAHR`: a data set on economic aid allocation by the United States in assorted years. These data are useful for teaching about linear models, censored/limited data, so-called "corner solutions", and potentially mixed effects models. It's also useful for an illustrative debate about how much the United States has ever seriously considered human rights records in allocating foreign aid.

Updates include:

- Assorted documentation updates. 

# stevedata 1.2.0

Additions include:

- `african_coups`: a data set on the correlates of African coups from 1960 to 1975 (1982). Useful for replication of an old debate, and for pedagogical instruction about linear models (especially about interactions).
- `DCE12`: a data set on domestic conflict events in 2012, useful for teaching about regression of count data.
- `DAPO`: a data set on the determinants of public opinion in seven Arab countries.
- `EBJ`: a data set on the economic benefits of post-conflict justice institutions.
- `states_war`: a data set on state performance in inter-state war.

Updates include:

- `DJIA` has more recent data and fixes an unfortunate gap from 1985 to 1992.
- Assorted documentation updates.

# stevedata 1.1.0

Additions include:

- `GHR04`: a data set to replicate Ghobarah et al.'s (2004) analysis on the correlates of comparative public health.
- `Lipset59`: a data set for assessing the relationship between democracy and economic development, much like Lipset (1959) famously did.
- `scb_regions`: a data set that can identify territorial units with more intuitive names as given by the Central Bureau of Statistics ("Statistiska centralbyrån") in Sweden.

# stevedata 1.0.0

Additions include:

- `PRDEG`: a replication data set on property rights, democracy, and economic growth.
- `OODTPT`: a replication data set on democracy and trade policy.
- `wbd_example`: a simple panel data set of some World Bank indicators, useful for explaining merge issues in panel data.
- `eurostat_codes`: a simple data set on Eurostat country codes and country groupings.

Updates include:

- `ODGI` runs through 2022.
- `turnips` has new turnip prices. Also includes a "bug" fix for me lazily forgetting it's 2023 now. `turnips` now also retired as an ongoing data collection project.
- `coffee_imports` is now a panel, based on the same underlying data. It has both member and non-member data, though that much may involve some light cleaning/recoding.
- `thatcher_approval` no longer has a year column, though you could easily get that from the `date` column.
- `LOTI` is updated through 2022.
- Assorted documentation clarifications/fixes.

# stevedata 0.9.0

The newest release will have some new and updated data sets. Additions include:

- `commodity_prices`: a data set on World Bank commodity prices data, which will also supplant the `coffee_price` and `sugar_price` data.
- `ESS10NO`: a data set on whether Norwegians would vote to join the European Union or not, cobbled from the European Social Survey, and useful for illustrating survey designs.
- `PPGE`: a panel model on select rich countries that can be used for quasi-replicating Garrett's (1998) argument about how well labor unions have stemmed globalization's effect on slashing government spending.

Updates include:

- `ukg_eeri` has more current data, and the value column has been changed to numeric.
- `pwt_sample` now has Norway. Sorry for the original oversight, Norway. We still cool?
- `turnips` has new turnips prices. I don't know why I keep doing this. Force of habit.


# stevedata 0.8.0

The newest release will have some new and updated data sets. Additions include:

- `fakeHappiness`: a (fake) data set to illustrate a curvilinear effect. Application: the so-called U-shaped relationship between age and happiness.
- `inglehart03`: a data set cobbled from Inglehart's (2003) "How Solid is Mass Support for Democracy---And How Can We Measure It?" in *PS: Political Science & Politics*. These would include the information as presented in the article itself as opposed to the underlying (raw) data as one might get them in an earlier version of the World/European Survey.
- `sweden_counties`: a data set on identifiers for the counties of Sweden.


Updates include:

- new turnip prices in `turnips`.
- newer economic data in `pwt_sample`.
- Changed file compression of files. where appropriate.


# stevedata 0.7.0

The newest release will have some new and updated data sets. Additions include:

- `SBCD`: a data set on banking, currency, and debt (restructuring) crises from 1970 to 2017.
- `thatcher_approval`: a data set on satisfaction/dissatisfaction ratings of the government, the prime minister, and the leader of the opposition during the entirety of Margaret Thatcher's tenure as prime minister.

Updates include:

- new turnip prices in `turnips`.
- updated `DJIA` data
- revised `steves_clothes` data.

# stevedata 0.6.0


The newest release will have some new and updated data sets. Additions include:

- `voteincome`: a data set on turnout and demographic data, admittedly stolen from the Zelig project.

Updates include:

- adjusted/streamlined Clemson temperature data in `clemson_temps`.
- new turnip prices in `turnips`.

# stevedata 0.5.0


The newest release will have some new and updated data sets.  Additions include:

- `wvs_usa_educat`: a data set on how World Values Survey codes education categories for the United States across waves of its data set.
- `wvs_usa_regions`: a data set on how World Values Survey codes region categories for the United States across waves of its data set.

Updates include:

- new turnip prices in `turnips`.
- "zap" formats in `af_crime93`.
- new sulfur dioxide emission data in `so2concentrations`
- new sugar price data in `sugar_price`.
- new Clemson temperature data in `clemson_temps`.
- new coffee data in `coffee_imports` and `coffee_price`.

# stevedata 0.4.0


The newest release will have some new and updated data sets. These include:

- `anes_partytherms`: a data frame on thermometer ratings for the Democratic party, Republican party, and thermometer indices of both in the ANES (1978-2012)
- `turnips`: a data frame on turnip prices in Animal Crossing. This will be here, likely, as long as I can commit to doing this.

Examples may have been updated for greater clarity, especially as this release comes with an accompanying site generated by `{pkgdown}`. The vignette has been updated as well to account for this.

The release of this package was accelerated by a note from Brian Ripley that R users should anticipate decreased support for direct links by FTP in their preferred web browsers. Accordingly, these links should be changed or scrubbed. This concerned the `co2emissions` data and documentation. I removed those FTP links. There were no http:// or https:// corollaries. However, the bibliography is still sufficiently informative.

# stevedata 0.3.1


The newest release adds a few variables to `election_turnout` (with the idea of ultimately phasing out this data set). More importantly, CRAN flagged this as a package with unnecessarily large "LazyData" data sets. It makes the change implored by Brian Ripley in the DESCRIPTION file.


# stevedata 0.3.0


The newest release will have some new and updated data sets. These include:

- `af_crime93`: a data frame on crime for 50 states (+ DC) from around 1993. The data feature a known case of heteroskedasticity.
- `anes_vote84`: a data frame on individual-level voter turnout in the 1984 general election. Data come from the 1984 time-series of the American National election Studies.
- `eight_schools`: a data frame on the effect of special SAT coaching programs in the famous "eight schools" that we all get when learning Bayesian stuff.
- `min_wage`: a data frame on federal minimum wage rates since 1938.

Updates include:

- Add `wkrstat` variable to `gss_wages`.
- Updating `Presidents` because Trump's tenure is mercifully over.


# stevedata 0.2.0


The newest release will have some new and updated data sets. These include:

- `fakeAPI`: a data frame on academic performance for 10,000 schools in a hypothetical territorial unit. Note: data are fake, but useful for survey-type analyses.
- `nesarc_drinkspd`: a data frame on the self-reported drink habits of Americans from a survey in 2001-2002.
- `SCP16`: a data frame of observations about the South Carolina party primaries from 2016.
- `ukg_eeri`: a data frame on real effective exchange rates for the United Kingdom from 1990 to the most recent year.
- `usa_migration`: a data frame on inbound/outbound migration patterns for the United States from 1990 to 2017.
- `usa_tradegdp`: a data frame on yearly trade and GDP in the United States from 1790 to 2018.
- `wvs_usa_abortion`: a data frame on opinions about abortion across six waves of the World Values Survey in the United States.



# stevedata 0.1.0


- Initial release
