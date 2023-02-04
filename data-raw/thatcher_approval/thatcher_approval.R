library(tidyverse)

readxl::read_excel("~/Dropbox/projects/stevedata/data-raw/thatcher_approval/thatcher_approval.xlsx", sheet=1) %>%
  filter(!is.na(poll_date)) %>%
  separate(poll_date, c("month", "remove_me"), sep=" ", remove=FALSE) %>%
  filter(month %in% month.name) %>%
  fill(year) %>%
  mutate(date = lubridate::ymd(paste0(year,"-", month, "-", day))) %>%
  select(poll_date, date, everything()) %>%
  select(-year, -month, -remove_me, -day, -pm_change) -> thatcher_approval

save(thatcher_approval, file="data/thatcher_approval.rda")
