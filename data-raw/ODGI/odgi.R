library(tidyverse)
#Notes:  'Halons' represents the aggregate of H-1211, H-1301, and H-2402; 'HCFCs' represents the aggregate of HCFC-22,
#HCFC-141b, and HCFC-142b; 'WMO minor' represents CFC-114, CFC-115, halon 2402 and halon 1201 (Carpenter and Daniel
# et al., 2018).  SUM* represents the amount of reactive halogen weighted by fractional release factors but without
# transport lag times considered, whereas reactive halogen expressed as EESC includes consideration of lag times for
# transport and mixing associated with transport.  Values are derived directly from measured lower
# tropospheric global mean abundances without any adjustments.


read_csv("data-raw/ODGI/odgi_table1.csv") %>% slice(1:31) %>%
  mutate(cat = "Antarctic") %>%
  rename_all(tolower) %>%
  rename(cfc12 = `cfc-12`,
         cfc11 = `cfc-11`,
         cfc113 = `cfc-113`,
         wmo_minor = `wmo minor`,
         sum = `sum* (ppt)`,
         eesc = `eesc sum (ppt)`,
         odgi_old = `odgi(old) antarctic`,
         odgi_new = `odgi(new) antarctic`) -> Tab1


read_csv("data-raw/ODGI/odgi_table2.csv") %>% slice(1:31) %>%
  mutate(cat = "Mid-Lat") %>%
  rename_all(tolower) %>%
  rename(cfc12 = `cfc-12`,
         cfc11 = `cfc-11`,
         cfc113 = `cfc-113`,
         wmo_minor = `wmo minor`,
         sum = `sum* (ppt)`,
         eesc = `eesc sum (ppt; new)`,
         odgi_old = `odgi(old) mid latitude`,
         odgi_new = `odgi(new) mid-lat`) -> Tab2

bind_rows(Tab1, Tab2) %>%
  mutate(year = as.numeric(year)) %>%
  select(year, cat, everything()) -> ODGI

save(ODGI, file = "~/Dropbox/projects/stevedata/data/ODGI.rda")
