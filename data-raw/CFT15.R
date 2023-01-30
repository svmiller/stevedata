library(tidyverse)

CFT15 <- haven::read_dta("~/Dropbox/IPSA-FLACSO2019. Quantitative Public Policy Analysis/Labs/Day 8/rdrobust_senate.dta")

save(CFT15, file = "~/Dropbox/projects/stevedata/data/CFT15.rda")
