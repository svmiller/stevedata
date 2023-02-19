library(tidyverse)

readxl::read_excel("~/Dropbox/projects/stevedata/data-raw/coffee_imports/2b - Imports.xlsx", skip=3) %>%
  slice(-n()) -> Members

readxl::read_excel("~/Dropbox/projects/stevedata/data-raw/coffee_imports/5a - Non-member imports.xlsx", skip=3) %>%
  slice(-n()) -> Nonmembers

Members %>%
  slice(-1,-2) %>%
  rename(country = 1) %>%
  filter(!is.na(country)) %>%
  filter(country != "Total") %>%
  gather(year, value, -country) %>%
  mutate(year = as.numeric(year),
         member = 1) -> Members

Nonmembers %>%
  slice(-1) %>%
  rename(country = 1) %>%
  filter(!(country %in% c("Africa", "Asia & Oceania", "Caribbean",
                          "Central America & Mexico", "Europe",
                          "North America", "South America",
                          "China, People's Republic of", "Total"))) %>%
  gather(year, value, -country) %>%
  mutate(year = as.numeric(year),
         member = 0) %>%
  bind_rows(Members, .) %>%
  arrange(year, country) %>%
  select(country, member, year, value) -> coffee_imports


save(coffee_imports, file="data/coffee_imports.rda")
