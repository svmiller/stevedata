library(tidyverse)

readxl::read_excel("~/Dropbox/projects/stevedata/data-raw/coffee_imports/2b - Imports.xlsx", skip=3) %>%
  slice(-n()) -> Raw

Raw %>%
  slice(-1,-2) %>%
  rename(country = 1) %>%
  filter(!is.na(country)) %>%
  filter(country != "Total") %>%
  gather(year, value, -country) %>%
  mutate(year = as.numeric(year)) -> coffee_imports

save(coffee_imports, file="data/coffee_imports.rda")
