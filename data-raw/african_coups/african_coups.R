CNTS <- readxl::read_excel("/home/steve/Dropbox/data/cnts/CNTSDATA.xls")
library(tidyverse)

# CNTS %>%
#   mutate(iso3c = countrycode::countrycode(country, "country.name", "iso3c")) %>%
#   #select(country, iso3c, year, polit01:polit15) %>%
#   mutate(iso3c = case_when(
#     country == "CEN AFR REP" ~ "CAF",
#     country == "CEN AFR EMP" ~ "CAF",
#     country == "ETH'PIA FDR" ~ "ETH",
#     country == "ETH'PIA PDR" ~ "ETH",
#     TRUE ~ iso3c
#   )) %>%
#   mutate(iso2c = countrycode::countrycode(iso3c, "iso3c", "iso2c")) %>%
#   filter(year %in% c(1964:1966)) %>%
#   select(country, year, iso2c, iso3c, industry3, school12) %>%
#   # Take ag from 1966 if you can. Take school from 1965 if you can.
#   filter(iso3c %in% c("MDG", "GNQ", "GNB",
#                       "COM", "SYC", "ZWE",
#                       "ANG", "MOZ", "STP", "BWA",
#                       "CPV", "DJI", "LSO", "MUS",
#                       "SWZ"))



readxl::read_excel("/home/steve/Dropbox/projects/stevedata/data-raw/african_coups/african_coups.xlsx") %>%
  arrange(iso3c) %>%
  select(iso3c, everything(), -agperc_cnts) %>%
  rename(agperc = agperc_ba) -> african_coups


save(african_coups, file="data/african_coups.rda")

#
#   mutate(ddd = 100 - agperc_ba) %>%
#   mutate(m = ddd+literacy_ba,
#          p = ifelse(turnout >= 20, 1, 0),
#          c = ifelse(leperc >= 44, 1, 0)) -> A
#
#
# broom::tidy(M1 <- lm(jci ~ m*partydom*leperc, A))
# broom::tidy(M2 <- lm(jci ~ m + c + partydom + p + partydom*p + c*partydom + c*p, A))
# broom::tidy(M3 <- lm(jci ~ m + c + partydom + p, A))



sbroom::augment(M1) %>%
  ggplot(.,aes(.fitted, jci)) + geom_point()
