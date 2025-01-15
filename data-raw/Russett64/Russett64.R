library(tidyverse)

readxl::read_excel("~/Dropbox/projects/stevedata/data-raw/Russett64/Russett64.xlsx", sheet = 3) %>%
  mutate(deaths = as.numeric(str_remove(deaths, "\\*")),
         eiw = as.numeric(str_remove(eiw, "\\*")),
         perc_farmsr = str_remove(perc_farmsr, "\\*"),
         perc_farmsr = case_when(
           perc_farmsr == "n.a." ~ NA_character_,
           TRUE ~ perc_farmsr
         ),
         perc_farmsr = as.numeric(perc_farmsr)) -> Russett64

Russett64 %>% pull(country)

stable_democracies <- c("Denmark", "Switzerland", "Canada", "India",
                        "Philippines", "Sweden", "Belgium", "Ireland",
                        "Netherlands", "Luxembourg", "Norway", "United States",
                        "United Kingdom", "New Zealand", "Uruguay", "Australia")

unstable_democracies <- c("Japan", "France", "Finland", "West Germany",
                          "Austria", "Greece", "Italy", "Brazil", "Colombia",
                          "Argentina", "Costa Rica", "Chile")

Russett64 %>%
  mutate(demcat = case_when(
    country %in% c("Denmark", "Switzerland", "Canada", "India",
                   "Philippines", "Sweden", "Belgium", "Ireland",
                   "Netherlands", "Luxembourg", "Norway", "United States",
                   "United Kingdom", "New Zealand", "Uruguay", "Australia") ~ "Stable Democracies",
    country %in% c("Japan", "France", "Finland", "West Germany",
                   "Austria", "Greece", "Italy", "Brazil", "Colombia",
                   "Argentina", "Costa Rica", "Chile") ~ "Unstable Democracies",
    TRUE ~ "Dictatorships"
  )) %>%
  select(country, demcat, everything()) -> Russett64


Russett64 %>%
  select(gini:perc_lfa) %>% cor(., use='complete.obs')

save(Russett64, file="data/Russett64.rda")

# %>%
#   select(gini:perc_lfa) %>% cor(.)
#   distinct(perc_farmsr) %>% pull()
#   mutate(a = as.numeric(str_remove(deaths, "\\*")))
