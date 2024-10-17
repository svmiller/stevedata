library(tidyverse)

# Read

Parvin73 <- readxl::read_excel("/home/steve/Dropbox/projects/stevedata/data-raw/Parvin73/Parvin73.xlsx", sheet = 1)

# FWIW, the only way you can get anywhere close to his results is +.001 in the DV before logging

readxl::read_excel("/home/steve/Dropbox/projects/stevedata/data-raw/Parvin73/Parvin73.xlsx", sheet = 1) %>%
  select(pop) %>%
  rename(a = 1) %>%
  bind_cols(., readxl::read_excel("/home/steve/Dropbox/projects/stevedata/data-raw/Parvin73/Parvin73.xlsx", sheet = 2) %>%
              select(pop) %>%
              rename(b = 1)) %>%
  filter(a != b)

Parvin73 %>% select(-note) %>%
  rename(d_pci = incpcgrowth) -> Parvin73

save(Parvin73, file="data/Parvin73.rda")

Parvin73 %>%
  mutate(pop = ifelse(country == "Belgium", 91.84, pop),
         ln_levviol = log(levviol + .001)) %>%
  log_at(c("pci", "incdist", "d_pci", "sem", "comint", "concfac")) -> Data

summary(M1 <- lm(ln_levviol ~ ln_pci + ln_incdist + ln_d_pci + ln_sem +
                   ln_comint + ln_concfac,
                 data = Data))
