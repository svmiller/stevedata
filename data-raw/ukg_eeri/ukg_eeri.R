library(tidyverse)

readxl::read_xlsx("~/Dropbox/projects/stevedata/data-raw/ukg_eeri/XUDLBK67 Bank of England Database.xlsx") %>%
  slice(-1) %>%
  rename(date = 1,
         value = 2) %>%
  mutate(date = as.Date(date, "%d %b %y")) %>%
  arrange(date) %>%
  mutate(value = as.numeric(value)) -> ukg_eeri

ukg_eeri %>%
  filter(year(date) <= 2022) -> ukg_eeri


save(ukg_eeri, file = "~/Dropbox/projects/stevedata/data/ukg_eeri.rda")
