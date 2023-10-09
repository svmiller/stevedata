library(tidyverse)
# library(modelsummary)


GHR <- readxl::read_excel("~/Dropbox/data/ghobarahetal2004cph/huthrussettghobarah_data_article5.xls")

# What are the names of these columns?
GHR %>% names()

# This is trial and error, based on the summary statistics they report for what
# they say they use. Basically, take a country name with some minimum, maximum,
# or medium that GHR report. Do this, and try to find something that matches
# that description.

GHR %>%
  filter(COUNTRY_NAME == "Rwanda") %>%
  data.frame %>% gather() #%>% filter(str_detect(value, "7"))

# What follows is like 99% correct, it seems? Either way, I think they have
# an additional observation than they otherwise note.

GHR %>%
  select(COUNTRY_NAME,
         pub_exp_prcnt_gdp97who, `_K_total97_log`, HALE_2000,
         cia_Log_GDP_PerCapita, WHOGini1997,
         log_Educational_Attainment, log_vanhanen, any_89_Endrng_rivalry1, POLITY96_97,
         prvt_exp_rcnt_gdp, GROWTH_URBAN9095_POP_UN, deathn91_97, contig_civil_war) %>%
  rename(country = 1,
         pubhlthexppgdp = 2,
         totexphlth = 3,
         hale = 4,
         log_gdppc = 5,
         gini = 6,
         log_educ = 7,
         rivalry = 9,
         polity = 10,
         prvhlthexpgdp = 11,
         urban_growth = 12,
         cwdeaths = 13,
         contig_cw = 14) -> GHR04


GHR04 %>%
  mutate(iso3c = countrycode::countrycode(country, "country.name", "iso3c")) %>%
  mutate(iso3c = case_when(
    country == "C-Brazzavil" ~ "COG",
    country == "Central African" ~ "CAF",
    country == "Equatorial Guin" ~ "GNQ",
    country == "StLucia" ~ "LCA",
    country == "Yugoslavia" ~ "SCG",
    TRUE ~ iso3c
  )) %>%
  select(country, iso3c, everything()) -> GHR04

GHR04

save(GHR04, file="data/GHR04.rda")
