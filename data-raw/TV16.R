library(tidyverse)
library(stevemisc)

CCES16 <- haven::read_dta("~/Koofr/data/cces/2016/CCES16_Common_OUTPUT_Feb2018_VV.dta")

CCES16 %>%
  mutate(uid = seq(1:n()),
         state = as.character(as_factor(inputstate)),
         votetrump = carr(CC16_410a, "1=1; 2:5=0; 6:7=NA;8=0"),
         age = ifelse(birthyr == 2, NA, 2016 - birthyr),
         generation = ifelse(birthyr > 1900 & birthyr <= 1945,
                             "Greatest/Silent", NA),
         generation = ifelse(birthyr >= 1946 & birthyr <= 1964,
                             "Baby Boomer", generation),
         generation = ifelse(birthyr >= 1965 & birthyr <= 1980,
                             "Gen X", generation),
         generation = ifelse(birthyr >= 1981 & birthyr <= 1996,
                             "Millennial", generation),
         generation = ifelse(birthyr >= 1997, "Gen Z", generation),
         female = gender - 1,
         collegeed = ifelse(educ >= 5, 1, 0),
         racef = as.character(as_factor(race)),
         famincr = carr(faminc, "12:31=12; 97=NA"),
         ideo = ifelse(ideo5 == 6, NA, ideo5),
         pid7na = ifelse(pid7 == 8, NA, pid7),
         bornagain = ifelse(pew_bornagain == 1, 1, 0),
         religimp = carr(pew_religimp, "4=1; 3=2; 2=3; 1=4"),
         churchatd = carr(pew_churatd, "7=NA; 6=1; 5=2; 4=3; 3=4; 2=5; 1=6"),
         prayerfreq = carr(pew_prayer, "8=NA; 1=7; 2=6; 3=5; 4=4; 5=3; 6=2; 7=1"),
         angryracism = CC16_422c,
         whiteadv = CC16_422d,
         fearraces = carr(CC16_422e, "1=5; 2=4; 3=3; 4=2; 5=1"),
         racerare = carr(CC16_422f, "1=5; 2=4; 3=3; 4=2; 5=1")) %>%
  select(uid:ncol(.)) -> TV16

sjlabelled::remove_all_labels(TV16) %>% tbl_df() -> TV16

TV16

# Let's create religiosity one first.

library(mirt)


gankmirt <- function(mirtobj, mirtdata, data, renameme){
  scores <- fscores(mirtobj, full.scores = T, full.scores.SE = F) %>% tbl_df()

  mirtdata %>%
    bind_cols(., scores) %>%
    select(uid, F1) %>%
    rename(!!enquo(renameme) := F1) %>%
    left_join(data, .)

}

TV16 %>%
  select(uid, religimp, churchatd, prayerfreq) %>%
  filter_at(vars(2:ncol(.)), any_vars(!is.na(.))) -> Relig

ReligM <- mirt(Relig[ ,  2:ncol(Relig)], model = 1,
               itemtype = "graded", SE = TRUE, verbose = FALSE)

gankmirt(ReligM, Relig, TV16, lrelig) -> TV16


# Now: cognitive racism -----

TV16 %>%
  select(uid, whiteadv, racerare) %>%
  filter_at(vars(2:ncol(.)), any_vars(!is.na(.))) -> Cograc


CogracM <- mirt(Cograc[ ,  2:ncol(Cograc)], model = 1,
               itemtype = "graded", SE = TRUE, verbose = FALSE)

gankmirt(CogracM, Cograc, TV16, lcograc) -> TV16

# Then: empathetic racism

TV16 %>%
  select(uid, angryracism, fearraces) %>%
  filter_at(vars(2:ncol(.)), any_vars(!is.na(.))) -> Emprac


EmpracM <- mirt(Emprac[ ,  2:ncol(Emprac)], model = 1,
                itemtype = "graded", SE = TRUE, verbose = FALSE)

gankmirt(EmpracM, Emprac, TV16, lemprac) -> TV16

TV16 %>% select(-generation) -> TV16

save(TV16, file = "~/Koofr/projects/stevedata/data/TV16.rda")

# ^ the above is legacy code for transparency. This is new for saving space:

#saveRDS(TV16, "data-raw/TV16.rds")

#TV16 %>% filter(!is.na(votetrump)) -> TV16

#save(TV16, file = "~/Koofr/projects/stevedata/data/TV16.rda")
