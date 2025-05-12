library(tidyverse)

load("/home/steve/Dropbox/data/un-voting/2024/UNVotes-1.RData")

completeVotes %>% as_tibble() %>%
  filter(ccode == 732) %>%
  filter(!is.na(member)) %>% filter(vote < 8) %>%
  arrange(year) %>%
  select(rcid, ccode, vote, year, session) -> rokVotes

completeVotes %>% as_tibble() %>%
  filter(ccode != 732) %>%
  select(rcid, ccode, vote, year, session) %>%
  rename(other_vote = vote,
         ccode2 = ccode) %>%
  full_join(rokVotes, .) %>%
  mutate(vote = ifelse(vote == 8, NA, vote),
         other_vote = ifelse(other_vote == 8, NA, other_vote)) %>%
  mutate(agree = ifelse(vote == other_vote, 1, 0)) %>%
  summarize(agree = mean(agree, na.rm=T),
            .by=c(ccode, ccode2, year)) %>%
  rename(ccode1 = ccode) -> agreeVotes

peacesciencer::cow_ddy %>%
  filter(ccode1 == 732) %>%
  filter(between(year, 1991, 2022)) -> Data

fpsim_data <- readRDS(system.file("extdata", "dyadic_fp_similarity.rds", package="peacesciencer"))
fpsim_data %>% tail

Data %>%
  left_join(., agreeVotes) -> Data

library(foreach)       # for some parallel magic
half_cores  <- parallel::detectCores()/2
library(foreach)
my.cluster <- parallel::makeCluster(
  half_cores,
  type = "PSOCK"
)

doParallel::registerDoParallel(cl = half_cores)
foreach::getDoParRegistered()

completeVotes %>%
  as_tibble() %>%
  filter(!is.na(ccode) & !is.na(member)) %>%
  mutate(vote = ifelse(vote %in% c(1:3), vote, NA)) %>%
  select(resid, ccode, year, vote) %>%
  na.omit -> UNVD

Data2 <- foreach(
  # for each year from 1991 to 2022
  i = c(1991:2022)
) %dopar% {
  readRDS(paste0("~/Dropbox/projects/throwing-rocks/fpsim/unvd/y",i,".rds")) %>%
    slice(1, .by=c(resid,ccode)) -> for_merging

  for_merging %>%
    expand(resid = resid, ccode1 = ccode, ccode2 = ccode) %>%
    filter(ccode1 != ccode2) %>%
    filter(ccode1 == 732) -> Everything

  Everything %>%
    left_join(., for_merging %>% left_join(., UNVD %>% select(resid, ccode, year, vote) %>%
                                             mutate(vote = ifelse(vote %nin% c(1:3), NA, vote)) %>%
                                             slice(1, .by=c(resid, ccode))),
              by = c("resid"="resid", "ccode1"="ccode")) -> Everything1

  Everything1 %>%
    rename(vote1 = vote) -> Everything1

  Everything1 %>%
    left_join(., for_merging %>% left_join(., UNVD %>% select(resid, ccode, year, vote) %>%
                                             mutate(vote = ifelse(vote %nin% c(1:3), NA, vote)) %>%
                                             slice(1, .by=c(resid, ccode))),
              by = c("resid"="resid", "year"="year", "ccode2"="ccode")) -> Everything2

  Everything2 %>%
    rename(vote2 = vote) -> Everything2

  Everything2 %>% na.omit %>%
    group_split(ccode1, ccode2) -> AA

  AA %>%
    map(~psych::cohen.kappa(cbind(.$vote1, .$vote2))) %>%
    map(~broom::tidy(.)) %>%
    map(~filter(., type == "weighted")) %>%
    bind_rows() -> hold_this

  AA %>%
    map(~slice(., 1)) %>%
    bind_rows() %>%
    select(ccode1, ccode2, year) %>%
    bind_cols(., hold_this)

}

parallel::stopCluster(cl = my.cluster) # close our clusters
Data2 %>%
  bind_rows() %>%
  select(ccode1:year, estimate) %>%
  rename(kappa = estimate) %>%
  left_join(Data, .) -> Data

Data -> rok_unga



load("/home/steve/Dropbox/data/un-voting/2024/AgreementScoresAll_Jun2024.Rdata")

dfAgree %>% as_tibble() %>%
  filter(ccode1 == 732) %>%
  select(ccode1:year, IdealPointAll.x, IdealPointAll.y, IdealPointDistance) %>%
  rename(ip1 = 5,
         ip2 = 6,
         ipd = 7,
         v_agree = 3) %>%
  left_join(rok_unga, .) %>%
  select(ccode1:year, agree, v_agree, everything()) -> rok_unga



library(WDI)

library(stevedata)
WDI(indicator = c("gdppc" = "NY.GDP.PCAP.KD"),
    start = 1991, end = 2022,
    country = country_isocodes$iso3c) %>%
  as_tibble() -> rawData

rawData

read_csv("/home/steve/Dropbox/data/un-data/UNdata_Export_20250311_131330278.csv") %>%
  rename_all(tolower) %>%
  rename(country = 1) %>%
  filter(year >= 1991) %>%
  mutate(iso3c = countrycode::countrycode(country, "country.name", "iso3c"),
         iso3c = ifelse(country == "Kosovo", "XKX", iso3c)) -> UND

UND %>%
#  filter(n() > 1, .by=c(iso3c, year)) %>%
  filter(country != "Former Ethiopia") %>%
  filter(country != "United Republic of Tanzania: Zanzibar")  -> UND
  #filter(n() > 1, .by=c(iso3c, year))

UND %>%
  select(iso3c, year, value) %>%
  full_join(rawData, .) -> GDPPCD

library(sbgcop)
Copimp <- sbgcop.mcmc(GDPPCD[, 5:ncol(GDPPCD)], nsamp=1000, seed=8675309)
Impmeans <- data.frame(Copimp$Y.pmean)
GDPPCD %>%
  select(country:year) %>%
  bind_cols(., Impmeans) -> GDPPCD


GDPPCD %>% summary

GDPPCD %>%
  mutate(ccode = countrycode::countrycode(iso3c, "iso3c", "cown"),
         ccode = ifelse(country == "Serbia", 345, ccode),
         ccode = ifelse(iso3c == "XKX", 347, ccode)) %>%
  filter(!is.na(ccode)) %>%
  select(ccode, year, gdppc) -> GDPPCD

rok_unga %>%
  left_join(., GDPPCD %>% rename(ccode1 = ccode,
                                  gdppc1 = gdppc)) %>%
  left_join(., GDPPCD %>% rename(ccode2 = ccode,
                                  gdppc2 = gdppc)) -> rok_unga


Vdem <- readRDS("/home/steve/Dropbox/data/v-dem/14/V-Dem-CY-Full+Others-v14.rds")

Vdem %>% as_tibble() %>%
  select(country_name:year, v2x_polyarchy)  %>%
  filter(year >= 1991) %>%
  mutate(ccode = countrycode::countrycode(country_name, "country.name", "cown"),
         ccode = ifelse(country_name == "Serbia", 345, ccode)) %>%
  na.omit -> Polyarchy

stevedata::rok_unga %>%
  left_join(., Polyarchy %>% select(ccode, year, v2x_polyarchy) %>%
              rename(ccode1 = ccode,
                                    v2x_polyarchy1 = v2x_polyarchy)) %>%
  left_join(., Polyarchy %>% select(ccode, year, v2x_polyarchy) %>%
              rename(ccode2 = ccode,
                     v2x_polyarchy2 = v2x_polyarchy)) -> rok_unga

democracyData::extended_uds %>%
  filter(!is.na(cown)) %>%
  filter(between(year, 1991, 2023)) %>%
  select(cown, extended_country_name, year, z1) %>%
  #filter((extended_country_name != "Yugoslavia") %>%
  slice(1, .by=c(cown, year)) %>%
  rename(ccode1 = cown,
         xm_euds1 = z1) %>%
  select(-extended_country_name) %>%
  #filter(n() > 1, .by=c(ccode1, year))
  left_join(rok_unga, .) -> rok_unga

democracyData::extended_uds %>%
  filter(!is.na(cown)) %>%
  filter(between(year, 1991, 2023)) %>%
  select(cown, extended_country_name, year, z1) %>%
  #filter((extended_country_name != "Yugoslavia") %>%
  slice(1, .by=c(cown, year)) %>%
  rename(ccode2 = cown,
         xm_euds2 = z1) %>%
  select(-extended_country_name) %>%
  #filter(n() > 1, .by=c(ccode1, year))
  left_join(rok_unga, .) -> rok_unga

rok_unga %>%
  declare_attributes(data_type = "dyad_year", system = 'cow') %>%
  add_capital_distance() -> rok_unga

attributes(rok_unga)$ps_data_type <- NULL
attributes(rok_unga)$ps_system <- NULL


rok_unga %>%
  mutate(iso3c = countrycode::countrycode(ccode2, "cown", "iso3c"),
         iso3c = ifelse(ccode2 == 347, "XKX", iso3c),
         iso3c = ifelse(ccode2 == 345, "SRB", iso3c),
         iso3c = ifelse(ccode2 == 315, "CSK", iso3c)) %>%
  select(ccode1, ccode2, iso3c, everything()) -> rok_unga

save(rok_unga, file='data/rok_unga.rda')
