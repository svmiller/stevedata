library(tidyverse)
readxl::read_excel("data-raw/Weede84/Weede84.xlsx") -> Weede84

Weede84 %>%
  mutate(dem = ifelse(is.na(dem), 0, 1)) -> Weede84

save(Weede84, file="data/Weede84.rda")

