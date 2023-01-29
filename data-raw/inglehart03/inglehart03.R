library(tidyverse)

inglehart03 <- read_csv("~/Dropbox/projects/stevedata/data-raw/inglehart03/inglehart03.csv")


save(inglehart03, file = "~/Dropbox/projects/stevedata/data/inglehart03.rda")
