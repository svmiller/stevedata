library(tidyverse)

OODTPT <- haven::read_dta("~/Dropbox/projects/stevedata/data-raw/OODTPT/national tariffs original.dta")

haven::read_dta("~/Dropbox/projects/stevedata/data-raw/OODTPT/national ntbs original.dta") %>%
  select(isocode, corecov, qualcov, avgtar) %>%
  left_join(OODTPT, .) %>%
  select(country:tariff, corecov, qualcov, everything()) -> OODTPT

save(OODTPT, file="data/OODTPT.rda")
