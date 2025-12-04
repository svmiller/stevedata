library(tidyverse)

shuparks <- readxl::read_excel("data-raw/shuparks/shuparks.xlsx")

shuparks %>%
  rename(func = 6) -> shuparks

save(shuparks, file="data/shuparks.rda")
