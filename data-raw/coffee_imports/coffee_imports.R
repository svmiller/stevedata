library(tidyverse)
library(WDI)
#
# WDI(country = c("AT", "BE", "BG", "HR",
#                 "CY", "CZ", "DK", "EE",
#                 "FI", "FR", "DE", "GR",
#                 "HU", "IE", "IT", "LV",
#                 "LT", "LU", "MT", "NL",
#                 "PL", "PT", "RO", "SK",
#                 "SI", "ES", "SE", "JP",
#                 "NO", "RU", "CH", "TN",
#                 "GB", "US"),
#     indicator = c("pop" = "SP.POP.TOTL"),
#     start = 1990, end = 2019) -> Pop

WDI(indicator = c("pop" = "SP.POP.TOTL"),
    start = 1990, end = 2019) %>%
  as_tibble() -> Pop

Pop %>% as_tibble() -> Pop

# Process coffee data ----

readxl::read_excel("~/Koofr/projects/stevedata/data-raw/coffee_imports/2b - Imports.xlsx", skip=3) %>%
  slice(-n()) -> Members

readxl::read_excel("~/Koofr/projects/stevedata/data-raw/coffee_imports/5a - Non-member imports.xlsx", skip=3) %>%
  slice(-n()) -> Nonmembers

Members %>%
  slice(-1,-2) %>%
  rename(country = 1) %>%
  filter(!is.na(country)) %>%
  filter(country != "Total") %>%
  gather(year, value, -country) %>%
  mutate(year = as.numeric(year),
         member = 1) -> Members



Pop

Members %>%
  mutate(bl = ifelse(country %in% c("Belgium/Luxembourg"), 1, 0)) %>%
  group_split(bl) -> A

A[[2]] -> BL

BL %>% na.omit -> BL

BL %>%
  bind_rows(., BL) %>%
  arrange(year) %>%
  mutate(iso2c = rep(c("BE", "LU"), 9)) -> BL

BL %>% select(-country) %>%
  left_join(., Pop, by = c("iso2c" = "iso2c", "year" = "year")) -> BL

BL %>%
  mutate(tpop = sum(pop),
         prop = pop/tpop,
         value = value*prop, .by=year) %>%
  select(country, year, value, member) %>%
  bind_rows(A[[1]] %>% select(-bl), .) %>%
  arrange(year) %>% filter(!is.na(value)) %>%
  mutate(iso2c = countrycode::countrycode(country, "country.name.en", "iso2c")) %>%
  left_join(., Pop %>% select(iso2c, year, pop)) -> Members

Nonmembers %>%
  slice(-1) %>%
  rename(country = 1) %>%
  filter(!(country %in% c("Africa", "Asia & Oceania", "Caribbean",
                          "Central America & Mexico", "Europe",
                          "North America", "South America",
                          "China, People's Republic of", "Total"))) %>%
  gather(year, value, -country) %>%
  mutate(iso2c = countrycode::countrycode(country, "country.name.en", "iso2c")) %>%
  mutate(year = as.numeric(year),
         member = 0) %>%
  left_join(., Pop %>% select(-country), by = c("iso2c" = "iso2c", "year" = "year")) %>%
  # filter(country == "Yugoslavia SFR") %>%
  mutate(pop = case_when(country == "Yugoslavia SFR" & year == 1990 ~ 23124000,
                         country == "Yugoslavia SFR" & year == 1991 ~ 23528230,
                         TRUE ~ pop)) %>%
  bind_rows(Members, .) %>%
  select(country, iso2c, member, year, value, pop) -> coffee_imports

# https://www.un.org/development/desa/pd/sites/www.un.org.development.desa.pd/files/files/documents/2020/Jan/un_1990_world_population_prospects-1990_revision.pdf
# https://en.wikipedia.org/wiki/Demographics_of_the_Socialist_Federal_Republic_of_Yugoslavia

#
#
# Nonmembers %>%
#   slice(-1) %>%
#   rename(country = 1) %>%
#   filter(!(country %in% c("Africa", "Asia & Oceania", "Caribbean",
#                           "Central America & Mexico", "Europe",
#                           "North America", "South America",
#                           "China, People's Republic of", "Total"))) %>%
#   gather(year, value, -country) %>%
#   mutate(year = as.numeric(year),
#          member = 0) %>%
#   bind_rows(Members, .) %>%
#   arrange(year, country) %>%
#   select(country, member, year, value) -> coffee_imports

coffee_imports %>%
  filter(!is.na(country))  -> coffee_imports

coffee_imports %>%
  arrange(year, -member, country) -> coffee_imports

save(coffee_imports, file="data/coffee_imports.rda")

#
# coffee_imports %>%
#   filter(member == 1) %>%
#   summarize(pop = sum(pop),
#             value = sum(value), .by= year) %>%
#   mutate(pop = pop/1000) %>%
#   mutate(pc = value/pop) %>%
#   data.frame
#
#
# coffee_imports %>% mutate(value = value/(pop/1000)) %>% filter(member == 1) %>% summarize(sum = sum(value), .by = year) %>%
# ggplot(.,aes(as.factor(year), sum)) +
#   stevethemes::theme_steve() +
#   geom_bar(stat="identity", color="black", alpha = 0.8, fill="#6f4e37") +
#   xlab("") + ylab("Coffee Consumption in Millions 60kg Bags, per Capita") +
#   geom_text(aes(label=format(round(sum, 1),big.mark=",")), vjust=-.5, colour="black",
#             position=position_dodge(.9), size=3, family = "Open Sans") +
#   labs(title = "The World is Drinking More and More Coffee",
#        subtitle = "Coffee consumption is up over 70% since 1990 in these select ICO member countries (i.e. Europe + USA and Japan), suggesting demand for coffee is increasing in rich countries.",
#        caption = "Data: International Coffee Organization") +
#   scale_y_continuous(labels = scales::comma)
