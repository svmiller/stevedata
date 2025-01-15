library(tidyverse)

wb_groups <- readxl::read_excel("data-raw/wbd_groups/CLASS.xlsx", sheet = 2)

wb_groups %>%
  rename(wbgc = 1,
         wbgn = 2,
         iso3c = 3,
         name = 4) -> wb_groups


wb_groups %>% distinct(wbgn)

save(wb_groups, file="data/wb_groups.rda")

# wb_groups %>% distinct(wbgn) %>% pull()
#
# wb_groups %>% filter(wbgn %in% c("Lower middle income", "Low & middle income")) %>%
#   group_split(wbgc)
