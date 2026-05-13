library(tidyverse)
library(eurostat)

search_eurostat(pattern = "yield", type = 'table', fixed = FALSE) -> tab
slice(tab, 24)

get_eurostat("teina225") -> debt
get_eurostat("teina200") -> fb
get_eurostat("tec00118") -> hicp
get_eurostat("teimf050") -> bondyield

debt %>%
  mutate(year = year(TIME_PERIOD)) %>%
  mutate(country = countrycode::countrycode(geo, "eurostat", "country.name.en")) %>%
  filter(year == 2025) %>%
  filter(unit == "PC_GDP") %>%
  select(geo, country, values) %>%
  rename(debtpgdp = values) -> eucc25

eucc25

fb %>%
  mutate(year = year(TIME_PERIOD)) %>%
  mutate(country = countrycode::countrycode(geo, "eurostat", "country.name.en")) %>%
  filter(year == 2025) %>%
  filter(unit == "PC_GDP") %>%
  select(geo, country, values) %>%
  rename(bbpgdp = values) %>%
  left_join(eucc25, .) -> eucc25

save(eucc25, file="data/eucc25.rda")
