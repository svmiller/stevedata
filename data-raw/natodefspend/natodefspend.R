library(tidyverse)

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
                        "United States", 1949) %>%
  mutate(iso3c = countrycode::countrycode(state, "country.name.en", "iso3c")) %>%
  rowwise() %>%
  mutate(year = list(seq(2014, 2025))) %>%
  unnest(year) %>% select(state, iso3c, joined, year) %>% print()

NATO1 <- readxl::read_excel("data-raw/natodefspend/def-exp-2025-en.xlsx", sheet = 1, skip = 3)
NATO2 <- readxl::read_excel("data-raw/natodefspend/def-exp-2025-en.xlsx", sheet = 2, skip = 3)
NATO5 <- readxl::read_excel("data-raw/natodefspend/def-exp-2025-en.xlsx", sheet = 5, skip = 3)

#
# NATO1 %>%
#   #slice(1:31) %>%
#   slice(35:65) %>%
#   rename(country = 1) %>%
#   mutate(iso3c = countrycode::countrycode(country, "country.name.en", "iso3c")) %>%
#   select(country, iso3c, everything()) %>%
#   gather(year, val, -country, -iso3c) %>%
#   mutate(val = as.numeric(val)) %>%
#   rename(defexpmncu = val) %>%
#   mutate(year = as.numeric(str_remove(year, "e"))) %>%
#   select(-country) %>%
#   left_join(natodefspend, .) -> natodefspend

NATO2 %>%
  # slice(1:31) %>%
  slice(37:67) %>%
  rename(country = 1) %>%
  mutate(iso3c = countrycode::countrycode(country, "country.name.en", "iso3c")) %>%
  select(country, iso3c, everything()) %>%
  gather(year, val, -country, -iso3c) %>%
  mutate(val = as.numeric(val)) %>%
  rename(defexp = val) %>%
  mutate(year = as.numeric(str_remove(year, "e"))) %>%
  select(-country) %>%
  left_join(natodefspend, .) -> natodefspend


NATO5 %>%
  slice(38:69) %>%
  rename(country = 1) %>%
  mutate(iso3c = countrycode::countrycode(country, "country.name.en", "iso3c")) %>%
  select(country, iso3c, everything()) %>%
  gather(year, val, -country, -iso3c) %>%
  mutate(val = as.numeric(val)) %>%
  rename(gdp = val) %>%
  mutate(year = as.numeric(str_remove(year, "e"))) %>%
  select(-country) %>%
  left_join(natodefspend, .)



# library(WDI)
#
# natodefspend <- tribble(~state, ~joined,
#                         "Albania", 2009,
#                         "Belgium", 1949,
#                         "Bulgaria", 2004,
#                         "Canada", 1949,
#                         "Croatia", 2009,
#                         "Czechia", 1999,
#                         "Denmark", 1949,
#                         "Estonia", 2004,
#                         "Finland", 2023,
#                         "France", 1949,
#                         "Germany", 1955,
#                         "Greece", 1952,
#                         "Hungary", 1999,
#                         "Iceland", 1949,
#                         "Italy", 1949,
#                         "Latvia", 2004,
#                         "Lithuania", 2004,
#                         "Luxembourg", 1949,
#                         "Montenegro", 2017,
#                         "North Macedonia", 2020,
#                         "Norway", 1949,
#                         "Poland", 1999,
#                         "Portugal", 1949,
#                         "Romania", 2004,
#                         "Slovakia", 2004,
#                         "Slovenia", 2004,
#                         "Spain", 1982,
#                         "Sweden", 2024,
#                         "The Netherlands", 1949,
#                         "Türkiye", 1952,
#                         "United Kingdom", 1949,
#                         "United States", 1949)
#
# natodefspend %>%
#   mutate(iso3c = countrycode::countrycode(state, "country.name.en", "iso3c")) -> natodefspend
#
# WDI(indicator = c("milexp" = "MS.MIL.XPND.CD",
#                   "gdp" = "NY.GDP.MKTP.CD"),
#     country = natodefspend$iso3c,
#     start = 2015,
#     end = 2024) %>% as_tibble() -> WDID
#
# WDID %>%
#   rename(milexp15 = milexp,
#          gdp15 = gdp) %>%
#   filter(year == 2015) %>%
#   select(iso3c, milexp15, gdp15) %>%
#   left_join(natodefspend, .) -> natodefspend
#
# WDID %>%
#   rename(milexp24 = milexp,
#          gdp24 = gdp) %>%
#   filter(year == 2024) %>%
#   select(iso3c, milexp24, gdp24) %>%
#   left_join(natodefspend, .) -> natodefspend
#
#
# natodefspend %>%
#   select(state, iso3c, everything()) -> natodefspend

save(natodefspend, file="data/natodefspend.rda")
