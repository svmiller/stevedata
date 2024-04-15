library(tidyverse)
library(peacesciencer)
# Check Poe (1992) and Lebovic (1988) for some context here.

FPSIM <- readRDS(url("http://svmiller.com/R/peacesciencer/dyadic_fp_similarity.rds", "rb"))
Mindist <- readRDS(url("http://svmiller.com/R/peacesciencer/cow_mindist_plus.rds", "rb"))
Vdem <- haven::read_sav("~/Dropbox/data/v-dem/13/V-Dem-CY-Core-v13.sav")

readxl::read_excel("~/Dropbox/data/usaid/2024/us_foreignaid_greenbook.xlsx",
                   skip = 6) %>%
  filter(`Assistance Category` == "Economic") %>%
  rename(year = 1,
         oblig_nom = `Obligations (Historical Dollars)`,
         oblig_const = `Obligations (Constant Dollars)`) %>%
  rename_all(tolower) %>%
  select(country, year, region, oblig_nom, oblig_const) %>%
  summarize(nomoblig = sum(oblig_nom),
            constoblig = sum(oblig_const),
            .by = c('country', 'year', 'region')) %>%
  filter(year %in% c(1951, 1955, 1963, 1967,
                     1971, 1979, 1983, 1991,
                     1995, 2003, 2011))  %>%
  mutate(ccode = countrycode::countrycode(country, "country.name", "cown")) %>%
  mutate(ccode = case_when(
    country == "Serbia" ~ 345,
    country == "Serbia and Montenegro, Former" ~ 345,
    TRUE ~ ccode
  )) %>%
  filter(!is.na(ccode)) -> Raw

Raw

create_stateyears(subset_years =  c(1951, 1955, 1963, 1967,
                                    1971, 1979, 1983, 1991,
                                    1995, 2003, 2011)) %>%
  filter(ccode!=2) %>%
  anti_join(., Raw) %>%
  rename(country = statenme) %>%
  mutate(nomoblig = 0, constoblig = 0) %>%
  bind_rows(Raw, .) %>%
  arrange(year, ccode) -> Raw

# Can we plug in regions, where missing?
Raw %>%
  filter(!is.na(region)) %>%
  distinct(ccode, region) %>%
  arrange(ccode) %>%
  rename(region2 = region) %>%
  left_join(Raw, .) %>%
  mutate(region = ifelse(is.na(region), region2, region)) %>%
  mutate(region = case_when(
    country %in% c("Luxembourg",
                   "Liechtenstein",
                   "Switzerland",
                   "San Marino",
                   "Monaco", "Andorra",
                   "German Federal Republic") ~ "Western Europe",
    country %in% c("Dominica",
                   "St. Lucia",
                   "St. Kitts and Nevis") ~ "Latin America and Caribbean",
    country %in% c("German Democratic Republic",
                   "Czechoslovakia") ~ "Eastern Europe",
    country %in% c("Republic of Vietnam") ~ "Asia",
    country %in% c("Zanzibar") ~ "Sub-Saharan Africa",
    country %in% c("Tuvalu", "Nauru") ~ "Oceania",
    country %in% c("Yemen Arab Republic",
                   "Yemen People's Republic") ~ "Middle East and North Africa",
    TRUE ~ region
  )) %>%
  select(-region2) -> Raw


FPSIM %>%
  select(ccode1, ccode2, year, kappavv) %>%
  filter(ccode1 == 2) %>%
  select(-ccode1) %>%
  rename(ccode = ccode2,
         fpsusa = kappavv) %>%
  left_join(Raw, .) -> Raw

FPSIM %>%
  select(ccode1, ccode2, year, kappavv) %>%
  filter(ccode1 == 365) %>%
  select(-ccode1) %>%
  rename(ccode = ccode2,
         fpsrus = kappavv) %>%
  left_join(Raw, .) -> Raw

Raw %>%
  rename(ccode2 = ccode) %>%
  mutate(ccode1 = 2) %>%
  declare_attributes("dyad_year", "cow") %>%
  add_minimum_distance() %>%
  rename(mindistusa = mindist) %>%
  mutate(ccode1 = 365) %>%
  add_minimum_distance() %>%
  rename(mindistrus = mindist) %>%
  select(-ccode1) %>%
  rename(ccode = ccode2) %>%
  declare_attributes("state_year", "cow") %>%
  add_sdp_gdp() %>%
  select(-sdpest, -wbgdppc2011est) %>%
  mutate(wbgdp2011est = exp(wbgdp2011est),
         wbpopest = exp(wbpopest))  -> Raw

Raw %>%
  rename(ccode2 = ccode) %>%
  mutate(ccode1 = 2) %>%
  declare_attributes("dyad_year", "cow") %>%
  # flow1 = usa imports from country
  # flow2 = usa exports to country
  add_cow_trade() %>%
  select(-smoothflow1, -smoothflow2) -> Raw

Raw %>%
  select(-ccode1) %>%
  rename(ccode = ccode2) %>%
  declare_attributes("state_year", "cow") %>%
  add_nmc() %>%
  select(-irst, -pec, -tpop, -upop, -milper) -> Raw

Vdem %>%
  select(country_name:year, v2x_civlib, v2x_clphy) %>%
  mutate(year = year + 1) %>%
  filter(year %in% c(1951, 1955, 1963, 1967,
                     1971, 1979, 1983, 1991,
                     1995, 2003, 2011))  %>%
  mutate(ccode = countrycode::countrycode(country_name,
                                          "country.name",
                                          "cown")) %>%
  mutate(ccode = ifelse(country_name == "Serbia", 345, ccode)) %>%
  filter(!is.na(ccode)) %>%
  select(ccode, year, v2x_civlib, v2x_clphy) %>%
  left_join(Raw, .) -> Raw

Raw %>%
  select(country, ccode, region, year, nomoblig, constoblig, v2x_clphy, v2x_civlib, everything()) %>%
  rename(usaimp = flow1,
         usaexp = flow2,
         clphy = v2x_clphy,
         civlib = v2x_civlib,
         gdp = wbgdp2011est,
         pop = wbpopest) -> USFAHR

save(USFAHR, file="data/USFAHR.rda")

# summary(M1 <- lm(log(constval) ~ v2x_clphy + fpsusa + fpsrus + mindistusa + log(usaimpval + 1) + log(I(wbgdp2011est/wbpopest)) +
#            usaexpval + cinc,
#          data=subset(USFAHR, year == 1967 & nomval > 0 &
#                        region %in% c("Latin America and Caribbean",
#                                      "Sub-Saharan Africa",
#                                      "Middle East and North Africa"))))
#
# summary(M1
#         )
# USFAHR
