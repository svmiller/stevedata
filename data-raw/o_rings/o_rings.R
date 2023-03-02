library(tidyverse)

o_rings <- readxl::read_excel("/home/steve/Dropbox/projects/stevedata/data-raw/o_rings/o_rings.xlsx") %>%
  mutate(date = as.Date(date))

# Some notes:
# - There was a 27 June 1982 test that's supposed to be test 4, though the test result was lost at sea.
# - 28 Jan 1986 is the Challenger accident

o_rings %>%
  mutate(damage = case_when(
    !is.na(f_eitheror) ~ 1,
    TRUE ~ 0
  ),
  damage_count = case_when(
    is.na(f_eitheror) ~ 0,
    f_erosion == 1 & is.na(f_blowby) ~ 1,
    f_blowby == 2 & is.na(f_erosion) ~ 2,
    flight == "51-C" ~ 5
  )) %>%
  filter(flight != "61-I") -> Data

Data %>%
  mutate(wts = 6) -> Data


summary(M1 <- glm(damage ~ temp +, Data, family=binomial(link='logit')))
summary(M1)


summary(M1 <- glm(cbind(damage_count, 6 - damage_count) ~ temp + lcp_f, Data, family=binomial(link='logit'),
                  weights = wts))

summary(M1 <- MASS::glm.nb(damage_count ~ temp + lcp_f, Data))
