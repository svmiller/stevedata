library(tidyverse)
# readr::read_tsv("https://www.john-fox.ca/AppliedRegression/datasets/Chile.txt")


read_csv("/home/steve/Dropbox/projects/stevedata/data-raw/chile88/chile88.csv") %>%
  select(-rn) -> chile88

chile88

chile88 %>% summary

chile88 %>%
  summarize(mean = mean(statusquo, na.rm=T),
            .by = vote)

chile88 %>%
  distinct(region, population)

chile88 %>%
  mutate(sex = ifelse(sex == "M", 0, 1)) %>%
  rename(sq = statusquo) -> chile88

save(chile88, file="data/chile88.rda")
