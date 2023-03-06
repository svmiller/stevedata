library(tidyverse)

read_csv("data-raw/ODGI/odgi_table1.csv") %>%
  mutate(cat = "Antarctic") %>%
  rename_all(tolower) %>%
  rename(cfc12 = `cfc-12`,
         cfc11 = `cfc-11`,
         cfc113 = `cfc-113`,
         wmo_minor = `wmo minor`,
         sum = `sum* (ppt)`,
         eesc = `eesc sum (ppt)`,
         odgi_old = `odgi(old) antarctic`,
         odgi_new = `odgi(new) antarctic`) -> Tab1


read_csv("data-raw/ODGI/odgi_table2.csv") %>%
  mutate(cat = "Mid-Lat") %>%
  rename_all(tolower) %>%
  rename(cfc12 = `cfc-12`,
         cfc11 = `cfc-11`,
         cfc113 = `cfc-113`,
         wmo_minor = `wmo minor`,
         sum = `sum* (ppt)`,
         eesc = `eesc sum (ppt; new)`,
         odgi_old = `odgi(old) mid latitude`,
         odgi_new = `odgi(new) mid-lat`) -> Tab2

bind_rows(Tab1, Tab2) %>%
  select(year, cat, everything()) -> ODGI

save(ODGI, file = "~/Dropbox/projects/stevedata/data/ODGI.rda")
