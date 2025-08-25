library(tidyverse)
# library(modelsummary)


GHR <- readxl::read_excel("~/Koofr/data/ghobarahetal2004cph/huthrussettghobarah_data_article5.xls")

# What are the names of these columns?
GHR %>% names()

# This is trial and error, based on the summary statistics they report for what
# they say they use. Basically, take a country name with some minimum, maximum,
# or medium that GHR report. Do this, and try to find something that matches
# that description.

# UPDATE: 2025-08-26 ----
#
# I'm gonna try to take another stab at this. What I had initially offered could
# well be correct, and is certainly "good enough", but I'm very curious to
# what's going on here.
#
# For one: the mean of the DV reported in Table 1 can be just about captured in
# the `pub_exp_prcnt_gdp97who` variable. It is curious that the minimum they
# report for DRC is wrong. But, the max and median are identified.
#
# The second DV is tricky. On p. 82, they report a total spending per capita in
# 1998 that ranges from $4,055 (United States) to $11 (Somalia), with a median
# of $197 (Thailand). They announce that this variable is log-transformed and,
# one has to assume, the variable included in the data they use is already
# log-transformed. Here, we can capture the total spending in 1998 with that
# `K_total98_log` variable. I initially had this one wrong.
#
# The third DV is HALE-something. The index ranges, supposedly, from 73.8 (Japan)
# to 29.5 (Sierra Leone), with a median of 58.5 (Syria). This is HALE_2000. I
# had this right.
#
# On to the IVs:
#
# - GDP per capita is from the CIA factbook, PPP-adjusted in 1998. It supposedly
#   ranges from $530 (Sierra Leone) to $32,700 (Luxembourg), with a median of
#   $3500 (Jordan). They announce a log transformation. I had this one right.
# - GINI supposedly ranges from .187 (Slovakia) to .609 (Sierra Leone) with a
#   median of .374 (Uganda). I had this one right too.
# - Educational attainment is log-transformed and comes by way of WHO. For 1998,
#   it supposedly ranges from 1.04 years (Mali) to 11.5 (United States). The
#   median is Costa Rica (6.03). I had this one identified correctly.
# - The Vanhanen index should be kind of hard to screw up, but just remember
#   it's log-transformed in the analysis. Range is 177 (Suriname) to 0 (North
#   Korea) with a median of 38 (Uzbekistan). There has to be a +1-log happening
#   here with that in mind, but I'm pretty sure I've got it in the log_vanhanen
#   column. They just don't explicitly advertise the +1-log
# - The enduring rivalry column is a dummy variable for which they don't say
#   much by way of description. The only thing they communicate is there are 25
#   1s. That would mean I had it right the first time.
# - The Polity variable is where something has to go wrong, and I won't know
#   what went wrong. The minimum - 10 (North Korea, Myanmar) and the max is 10
#   (e.g. Japan, Norway) and the median is supposedly 7 (Ukraine). However,
#   none of the Polity variables included in the data set have that median. The
#   only other context clue is the years, which means this has to be POLITY96_97.
#   I don't know what else to do.
# - Private health spending, per p. 83, ranges from .3% (Kuwait) to 8.8% (Lebanon),
#   with a median of 1.9% (Oman). I had this one right.
# - The urbanization measure (p. 85) ranges from -.41 (Belize) to 7.35 (Botswana),
#   with a median of .88% (Grenada). I had this one right.
# - The civil war deaths variable seems like it's impossible to miss. It's mostly
#   0, but is not 0 for 34 countries and, among non-zeroes, ranges from 0.2 to
#   96.9. That 96.9 is Rwanda. I had this one right.
# - The contiguous civil war variable is a dummy for which the authors do not
#   report any descriptive stats. I have nothing else to go on, other than what
#   I got.

GHR %>% select(COUNTRY_NAME, contains("contig")) # %>% rename(a = 2, b = 3) %>% filter(a == 1)

GHR %>%
  filter(COUNTRY_NAME == "Rwanda") %>%
  data.frame %>% gather() #%>% filter(str_detect(value, "7"))

# What follows is like 99% correct, it seems? Either way, I think they have
# an additional observation than they otherwise note.

GHR %>%
  select(COUNTRY_NAME,
         pub_exp_prcnt_gdp97who, `_K_total98_log`, HALE_2000,
         cia_Log_GDP_PerCapita, WHOGini1997,
         log_Educational_Attainment, log_vanhanen, any_89_Endrng_rivalry1, POLITY96_97,
         prvt_exp_rcnt_gdp, GROWTH_URBAN9095_POP_UN, deathn91_97, contig_civil_war) %>%
  rename(country = 1,
         pubhlthexppgdp = 2,
         totexphlth = 3,
         hale = 4,
         log_gdppc = 5,
         gini = 6,
         log_educ = 7,
         rivalry = 9,
         polity = 10,
         prvhlthexpgdp = 11,
         urban_growth = 12,
         cwdeaths = 13,
         contig_cw = 14) -> GHR04


GHR04 %>%
  mutate(iso3c = countrycode::countrycode(country, "country.name", "iso3c")) %>%
  mutate(iso3c = case_when(
    country == "C-Brazzavil" ~ "COG",
    country == "Central African" ~ "CAF",
    country == "Equatorial Guin" ~ "GNQ",
    country == "StLucia" ~ "LCA",
    country == "Yugoslavia" ~ "SCG",
    TRUE ~ iso3c
  )) %>%
  select(country, iso3c, everything()) -> GHR04

GHR04

save(GHR04, file="data/GHR04.rda")
