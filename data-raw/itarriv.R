library(tidyverse)
library(stevemisc)
library(stevedata)

readRDS("~/Koofr/teaching/eh1903-ir3/2/data/tourism-example.rds") %>%
  log_at(c("itarriv", "gdppc", "airtranspc")) %>%
  lag_at(c("relprice", "ln_gdppc", "pvest", "ln_airtranspc"), .by = iso2c) %>%
  select(country:year, ln_itarriv, l1_ln_airtranspc, l1_relprice, l1_ln_gdppc, l1_pvest) %>%
  group_by(iso2c) %>%
  fill(ln_itarriv:ncol(.)) %>%
  ungroup() %>%
  filter(year == 2019) %>%
  select(-iso2c, -year) %>%
  rename(ln_airtranspc = l1_ln_airtranspc,
         relprice = l1_relprice,
         ln_gdppc = l1_ln_gdppc,
         pvest = l1_pvest) -> itarriv

wb_groups %>%
  # filter where group name is what we want.
  filter(wbgn == "Fragile and conflict affected situations") %>%
  # select just the one column communicating the states in this group.
  select(iso3c) %>%
  # if it's in this group, it must be 1.
  mutate(fcas = 1) %>%
  # left-join...
  left_join(itarriv, .) %>%
  # If the expanded data are missing, it's not an FCAS state.
  mutate(fcas = ifelse(is.na(fcas), 0, 1)) -> itarriv

itarriv %>%
  filter(iso3c != "MLI") %>% na.omit -> itarriv


save(itarriv, file = "data/itarriv.rda")
