library(tidyverse)
library(stevemisc)


library(foreign)
ANES <- haven::read_dta("~/Dropbox/data/anes/anes_timeseries_2012_stata12.dta")
# ANES <- read.dta("~/Dropbox/data/anes/2016-ts/anes_timeseries_2016_Stata12.dta")

ANES %>% select(version, caseid, pid_self, ofcrec_speaker_correct, abort_health, abort_fatal, abort_incest, abort_rape,
                abort_bd, abort_fin, abort_sex, abort_choice) -> Abort

Abort %>%
  mutate_at(vars(contains("abort")), ~carr(., "-9:-6=NA; 1=2; 2=0; 3=1")) %>%
  mutate(pid =  carr(pid_self, "0=NA; 1=0; 3=1; 2=2; 5=NA; -8=NA; -9=NA"),
         knowspeaker = carr(ofcrec_speaker_correct, "-7:-6=NA"),
         addchoice = abort_health + abort_fatal + abort_incest + abort_rape +
           abort_bd + abort_fin + abort_sex + abort_choice) %>%
  haven::zap_labels(.) %>%
  select(-pid_self, -ofcrec_speaker_correct) %>%
  rename_at(vars(contains("abort_")),
            ~paste(gsub("abort_", "", .), sep = "_")) -> Abort




Abort <- with(ANES, data.frame(pid_self, ofcrec_speaker_correct, abort_health, abort_fatal, abort_incest, abort_rape,
                               abort_bd, abort_fin, abort_sex, abort_choice)) %>% tbl_df()

Abort$pid <- with(Abort, carr(pid_self, "0=NA; 1=0; 3=1; 2=2; 5=NA; -8=NA; -9=NA"))
Abort$knowspeaker <- with(Abort, carr(ofcrec_speaker_correct, "-7:-6=NA"))

Abort$health <- with(Abort, carr(abort_health, "-9:-6=NA; 1=2; 2=0; 3=1"))
Abort$fatal <- with(Abort, carr(abort_fatal, "-9:-6=NA; 1=2; 2=0; 3=1"))
Abort$incest <- with(Abort, carr(abort_incest, "-9:-6=NA; 1=2; 2=0; 3=1"))
Abort$rape <- with(Abort, carr(abort_rape, "-9:-6=NA; 1=2; 2=0; 3=1"))
Abort$bd <- with(Abort, carr(abort_bd, "-9:-6=NA; 1=2; 2=0; 3=1"))
Abort$fin <- with(Abort, carr(abort_fin, "-9:-6=NA; 1=2; 2=0; 3=1"))
Abort$sex <- with(Abort, carr(abort_sex, "-9:-6=NA; 1=2; 2=0; 3=1"))
Abort$choice <- with(Abort, carr(abort_choice, "-9:-6=NA; 1=2; 2=0; 3=1"))
Abort$addchoice <- with(Abort, health + fatal + incest + rape + bd + fin + sex + choice)

Abort$uid <- seq(1, nrow(Abort))

library(mirt)
Choice <- with(Abort, data.frame(caseid, health, fatal, incest, rape, bd, fin, sex, choice))

Choice$removeme <- with(Choice, ifelse(is.na(health) & is.na(fatal) & is.na(incest) &
                                         is.na(rape) & is.na(bd) & is.na(fin) &
                                         is.na(sex) & is.na(choice), 1, 0))
Choice <- subset(Choice, removeme == 0)
Choice$removeme <- NULL

ChoM <- mirt(Choice[ ,  2:ncol(Choice)], model = 1,
             itemtype = "graded", SE = TRUE, verbose = FALSE)

choscores <- fscores(ChoM, full.scores = TRUE, full.scores.SE = TRUE)
Choice <- cbind(Choice, choscores)
Choice <- plyr::rename(Choice, c("F1" = "lchoice", "SE_F1" = "se_lchoice"))

Choice <- with(Choice, data.frame(caseid, lchoice))

Abort <- plyr::join(Abort, Choice, by=c("caseid"), type="left", match="first")

Abort %>% select(version, caseid, everything()) %>% tbl_df() -> anes_prochoice

save(anes_prochoice, file = "~/Dropbox/projects/stevedata/data/anes_prochoice.rda")

