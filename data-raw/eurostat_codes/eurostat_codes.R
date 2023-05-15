library(tidyverse)

eurostat_codes <- readxl::read_excel("data-raw/eurostat_codes/eurostat_codes.xlsx")


eurostat_codes %>% rename(cat = category) %>%
  mutate(iso2c = gsub("[()]", "", iso2c)) -> eurostat_codes

save(eurostat_codes, file="data/eurostat_codes.rda")
