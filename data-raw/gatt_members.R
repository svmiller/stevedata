library(tidyverse)
read_csv("/home/steve/Dropbox/projects/stevedata/data-raw/gatt-membership.csv") %>%
  mutate(iso3c = countrycode::countrycode(Country, "country.name", "iso3c")) %>%
  mutate(iso3c = ifelse(Country == "Yugoslavia", "YUG", iso3c)) %>%
  separate(Date, c("day", "month", "year")) %>%
  mutate(year = as.numeric(year),
         day = as.numeric(day),
         mon = match(month, month.name)) %>%
  mutate(date = paste0(year,"-",mon, "-",day)) %>%
  mutate(date = ymd(date)) %>%
  rename_all(tolower) %>%
  select(country, iso3c, date) -> gatt_members

save(gatt_members, file="data/gatt_members.rda")
