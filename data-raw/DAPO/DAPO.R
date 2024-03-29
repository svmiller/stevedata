library(tidyverse)

DAPO <- haven::read_sav("~/Dropbox/projects/stevedata/data-raw/DAPO/DeterminantsofArabOpiniononForeignRelations_sav.sav")


DAPO %>%
  select(subjname, objname, affect, capratio, capratiodir, capsub, capobj) %>%
  mutate(d = capobj/capsub) %>%
  filter(d != capratio) %>%
  mutate(d = capsub/capobj)

DAPO %>%
  select(subjname:affect, capsub:dyadtrde, export, import, subgdp, dependence, islam, west) %>%
  select(-allied) %>%
  haven::zap_labels() %>% select(affect, import, export, dependence) %>%
  mutate(d = ifelse(export != 0, import/export, NA)) %>%
  cor(., use='complete.obs')


DAPO %>% summarize(cor = cor(dyadtrde, affect))

DAPO %>% filter(filterisrael == 0) %>% select(subjname:west) %>%
  select(import, subgdp, importgdp) %>%
  mutate(d = import/subgdp) %>% data.frame

# library(modelsummary)
#
# modelsummary(M1 <- lm(affect ~ capobj + securtie + dtradegdp  + islam + west,
#                  data = subset(DAPO, filterisrael == 1)),
#              output = "gt", stars = TRUE)
#
# plot(M1)
#
#
# DAPO %>% select(capobj, securtie, dtradegdp, importgdp, islam, west) %>% cor()
# car::vif(M1)
#
# library(stevemisc)
# linloess_plot(M1)



DAPO %>%
  select(subjname:affect, capsub:securtie, export, import, subgdp, dependence, islam, west) %>%
  select(-allied, -dependence) %>%
  haven::zap_labels() -> DAPO


# DAPO %>%
#   mutate(dyadtrade = import + export,
#          dtradegdp = dyadtrade/subgdp,
#          importgdp = import/subgdp) -> Data
#
# summary(M1 <- lm(affect ~ capobj + securtie + dtradegdp + importgdp + islam + west, Data))
# car::vif(M1)

save(DAPO, file="data/DAPO.rda")

# DAPO
#
# DAPO %>% distinct(objname) %>%
#   mutate(a = countrycode::countrycode(objname, "country.name", "iso3c"))
