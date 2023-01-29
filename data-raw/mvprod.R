library(rvest)
library(tidyverse)

mvpurl <- read_html("https://en.wikipedia.org/wiki/List_of_countries_by_motor_vehicle_production")

mvpurl %>%
  html_table(fill=TRUE) %>%
  magrittr::extract2(2) %>%
  tbl_df() %>%
  rename(country = Country) %>%
  group_by(country) %>%
  gather(year, mvprod, 3:20) %>%
  select(country, year, mvprod) %>%
  ungroup() %>%
  mutate(country = stringr::str_replace(country, "\\[.*\\]", ""),
         year = as.numeric(stringr::str_replace(year, "\\[.*\\]", "")),
         mvprod = stringr::str_replace(mvprod, "\\[.*\\]", ""),
         mvprod = ifelse(mvprod %in% c("-","—", "?"), NA, mvprod),
         mvprod = stringr::str_replace(mvprod, ",", ""),
         mvprod = stringr::str_replace(mvprod, ",", ""),
         mvprod = as.numeric(mvprod)) %>%
  filter(country != "Note 2.Former countries") %>%
  rename(value = mvprod) %>%
  arrange(year,country) -> mvprod


save(mvprod, file = "~/Dropbox/projects/stevedata/data/mvprod.rda")
# https://en.wikipedia.org/wiki/List_of_countries_by_motor_vehicle_production
