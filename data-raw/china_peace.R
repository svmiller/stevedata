library(tidyverse)

tenyear <- read_csv("/home/steve/Dropbox/data/china-peace/Dataset_4_ODAconflict10y.csv")


tenyear %>%
  # select(Country:region, ODAamount, OtherODA,
  #        logOtherODADiff1y, LogOtherODADiff, LogOtherODA) %>%
  # head(10) %>%
  # mutate(ln_other = log(OtherODA),
  #        d_ln_other = ln_other - lag(ln_other, 1),
  #        lead_d_ln_other = lag(d_ln_other)) %>%
  # data.frame
  # stevemisc::log_at(c("OtherODA"))
  # mutate(diff = log(OtherODA) - lead(log(OtherODA), 1)) %>% data.frame
  # mutate(diff = log(ODAamount) - log(OtherODA)) %>%
  # mutate(l1_diff = diff - lag(diff, 1))
select(Country:region, ODAamount, ODAproject,
       GDPpercapita, NaturalTotal,
       UNGAall, FDIstock, Battledeathper0.1mil,
       OtherODA, logOtherODADiff1y) %>%
  rename_all(tolower) %>%
  rename(iso3c = 3,
         chn_oda = 5,
         n_chnproj = 6,
         gdppc = 7,
         tnrr = 8,
         chn_unvs = 9,
         fdi_stock = 10,
         bdp100k = 11,
         other_oda = 12) %>%
  select(country:n_chnproj, other_oda, everything()) -> china_peace

save(china_peace, file = "data/china_peace.rda")

# china_peace %>%
#   select(country, year, chn_oda, other_oda, ncol(.)) %>%
#   mutate(ln_otheroda = log(other_oda),
#          d_ln_otheroda = lag(ln_otheroda, 1) - lag(ln_otheroda, 2),
#          .by = country)
