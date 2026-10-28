library(tidyverse)

warswld <- readRDS("~/Koofr/teaching/clemson/posc3610/war-outcomes/Data.rds")
partoutcomes <- readxl::read_excel("~/Koofr/teaching/clemson/posc3610/war-outcomes/part-wars.xlsx")

warswld[[1]] %>%
  select(dispnum, ccode1, ccode2, outcome, lowcasrat1, relpow1, sidea1, maxquds1, bilat) %>%
  left_join(., partoutcomes %>%
              select(dispnum, confname, ccode) %>%
              rename(ccode1 = ccode) %>%
              distinct(dispnum, confname, ccode1)) %>%
  select(dispnum, confname, everything()) %>%
  rename(micnum = dispnum,
         lowfatrat1 = lowcasrat1) -> warswld


save(warswld, file="data/warswld.rda")
