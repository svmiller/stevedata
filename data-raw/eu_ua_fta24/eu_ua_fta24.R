library(tidyverse)

read_csv("data-raw/eu_ua_fta24/168586.csv") %>%
  mutate(position = case_when(
    position == "VotePosition.FOR" ~ "For",
    position == "VotePosition.DID_NOT_VOTE" ~ "Did Not Vote",
    position == "VotePosition.AGAINST" ~ "Against",
    position == "VotePosition.ABSTENTION" ~ "Abstain"
  )) %>%
  rename_at(vars(contains("member.")),
            ~gsub("member.", "", .), sep = "_" ) %>%
  rename(member_id = id,
         group_code = group.code,
         group_label = group.label,
         group_short_label = group.short_label,
         country = country.label,
         iso2c = country.iso_alpha_2) %>%
  select(member_id:last_name, position,
         iso2c, country, group_code, group_label,
         group_short_label) -> eu_ua_fta24


eu_ua_fta24
save(eu_ua_fta24, file="data/eu_ua_fta24.rda")

#
#   distinct(group.code, group.label, group.short_label)
#
#   rename(member_id = member.id,
#          first_name = )
#   distinct(member.country.iso_alpha_2, member.country.code)
