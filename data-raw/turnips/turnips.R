library(tidyverse)
library(lubridate)

turnips <- readxl::read_excel("data-raw/turnips/turnips.xlsx") %>%
  mutate(date = as.Date(date)) %>% print()

save(turnips, file="data/turnips.rda")
