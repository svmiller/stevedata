library(tidyverse)
library(WDI)

natodefspend <- tribble(~state, ~joined,
                        "Albania", 2009,
                        "Belgium", 1949,
                        "Bulgaria", 2004,
                        "Canada", 1949,
                        "Croatia", 2009,
                        "Czechia", 1999,
                        "Denmark", 1949,
                        "Estonia", 2004,
                        "Finland", 2023,
                        "France", 1949,
                        "Germany", 1955,
                        "Greece", 1952,
                        "Hungary", 1999,
                        "Iceland", 1949,
                        "Italy", 1949,
                        "Latvia", 2004,
                        "Lithuania", 2004,
                        "Luxembourg", 1949,
                        "Montenegro", 2017,
                        "North Macedonia", 2020,
                        "Norway", 1949,
                        "Poland", 1999,
                        "Portugal", 1949,
                        "Romania", 2004,
                        "Slovakia", 2004,
                        "Slovenia", 2004,
                        "Spain", 1982,
                        "Sweden", 2024,
                        "The Netherlands", 1949,
                        "Türkiye", 1952,
                        "United Kingdom", 1949,
                        "United States", 1949)

natodefspend %>%
  mutate(iso3c = countrycode::countrycode(state, "country.name.en", "iso3c")) -> natodefspend

WDI(indicator = c("milexp" = "MS.MIL.XPND.CD",
                  "gdp" = "NY.GDP.MKTP.CD"),
    country = natodefspend$iso3c,
    start = 2015,
    end = 2024) %>% as_tibble() -> WDID

WDID %>%
  rename(milexp15 = milexp,
         gdp15 = gdp) %>%
  filter(year == 2015) %>%
  select(iso3c, milexp15, gdp15) %>%
  left_join(natodefspend, .) -> natodefspend

WDID %>%
  rename(milexp24 = milexp,
         gdp24 = gdp) %>%
  filter(year == 2024) %>%
  select(iso3c, milexp24, gdp24) %>%
  left_join(natodefspend, .) -> natodefspend


natodefspend %>%
  select(state, iso3c, everything()) -> natodefspend

save(natodefspend, file="data/natodefspend.rda")
