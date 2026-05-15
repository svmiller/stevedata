library(tidyverse)
library(eurostat)

search_eurostat(pattern = "yield", type = 'table', fixed = FALSE) -> tab
slice(tab, 24)

get_eurostat("teina225") -> debt
get_eurostat("teina200") -> bb
get_eurostat("tec00118") -> hicp
get_eurostat("teimf050") -> bondyield
get_eurostat("tipsna10") -> gdp
get_eurostat("nama_10_gdp", type = "both") -> gdp2

gdp2 %>% filter(TIME_PERIOD == ymd(20250101)) %>%
  filter(na_item == "B1GQ") %>% filter(unit == "CP_MEUR") %>%
  select(geo, values) %>%
  rename(gdp = values) %>%
  mutate(geoname = countrycode::countrycode(geo, "eurostat", "country.name.en")) %>%
  mutate(agg = ifelse(is.na(geoname), 1, 0)) %>%
  mutate(geoname = case_when(
    geo == "EA" ~ "EA",
    geo == "EA12" ~ "Euro Area 12 (2001-2006)", # First 12 adoptees, through Dec. 2006
    geo == "EA19" ~ "Euro Area 19 (2001-2022)", # + Slovenia, Cyprus, Malta, Slovakia, Estonia, Latvia, and Lithuania
    geo == "EA20" ~ "Euro Area 20 (2023)", # + Croatia
    geo == "EA21" ~ "Euro Area 21 (2024)", # + Bulgaria
    geo == "EU27_2020" ~ "European Union",
    TRUE ~ geoname
  )) %>%
  select(geo, geoname, agg, gdp) -> Data


debt %>%
  mutate(year = year(TIME_PERIOD)) %>%
  filter(year == 2025) %>%
  filter(unit == "MIO_EUR") %>%
  select(geo, values) %>%
  rename(debt = values) %>%
  left_join(Data, .) -> Data

bb %>%
  mutate(year = year(TIME_PERIOD)) %>%
  filter(year == 2025) %>%
  filter(unit == "MIO_EUR") %>%
  select(geo, values) %>%
  rename(bb = values) %>%
  left_join(Data, .) %>%
  na.omit -> Data

EUCC <- Data
save(EUCC, file="data/EUCC.rda")

#
# gdp2 %>% filter(TIME_PERIOD == ymd(20250101)) %>% filter(geo == "BE")  %>% arrange(-values) %>%
#   filter(unit == "CP_MEUR")
#
# debt %>%
#   mutate(year = year(TIME_PERIOD)) %>%
#   mutate(country = countrycode::countrycode(geo, "eurostat", "country.name.en")) %>%
#   filter(year == 2025) %>%
#   select(country, geo, year, unit, values) %>%
#   na.omit %>%
#   pivot_wider(names_from = unit,
#               values_from = values) %>%
#   mutate(gdp = MIO_EUR/(PC_GDP/100))
#
#
# bb %>%
#   mutate(year = year(TIME_PERIOD)) %>%
#   mutate(country = countrycode::countrycode(geo, "eurostat", "country.name.en")) %>%
#   filter(year == 2025) %>%
#   select(country, geo, year, unit, values) %>%
#   na.omit %>%
#   pivot_wider(names_from = unit,
#               values_from = values) %>%
#   mutate(gdp = MIO_EUR/(PC_GDP/100))
#
#
# debt %>%
#   mutate(year = year(TIME_PERIOD)) %>%
#   mutate(country = countrycode::countrycode(geo, "eurostat", "country.name.en")) %>%
#   filter(year == 2025) %>% distinct(unit)
#   filter(unit == "PC_GDP") %>%
#   select(geo, country, values) %>%
#   rename(debtpgdp = values) -> eucc25
#
# eucc25
#
# fb %>%
#   mutate(year = year(TIME_PERIOD)) %>%
#   mutate(country = countrycode::countrycode(geo, "eurostat", "country.name.en")) %>%
#   filter(year == 2025) %>%
#   filter(unit == "PC_GDP") %>%
#   select(geo, country, values) %>%
#   rename(bbpgdp = values) %>%
#   left_join(eucc25, .) -> eucc25

# save(eucc25, file="data/eucc25.rda")
