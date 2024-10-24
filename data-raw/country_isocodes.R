library(tidyverse)

ISOcodes::ISO_3166_1 %>% as_tibble() %>%
  rename(iso2c = 1,
         iso3c = 2,
         iso3n = 3,
         name = 4) %>%
  select(iso2c:name) -> country_isocodes

country_isocodes

save(country_isocodes, file="data/country_isocodes.rda")
