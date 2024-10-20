library(tidyverse)

tibble(club = c("Southampton", "Ipswich", "Leicester",
                "Wolverhampton", "Everton", "Crystal Palace",
                "Brentford", "Nottingham Forest",
                "Man City", "Fulham", "Bournemouth",
                "West Ham", "Chelsea", "Brighton",
                "Newcastle", "Man United", "Aston Villa",
                "Liverpool", "Tottenham", "Arsenal"),
       bet365 = c(1/5, 8/13, 10/11, 5/4, 11/4, 6,
                10, 10, 12, 14, 14, 14, 33, 80,
                100, 150, 250, 2000, 500, 2000),
       betfair = c(1/9, 4/7, 11/10, 11/8, 11/4,
                   13/2, 15/2, 13/2, 9, 20, 16, 25, 25,
                   250, 300, 300, 300, 500, 500, 500),
       unibet = c(1/5, 8/11, 9/10, 5/4, 11/4, 6,
                  10, 10, 12, 14, 12, 14, 33, 80,
                  100, 150, 250, 2000, 500, 2000
                  )) -> epl2425ro

save(epl2425ro, file="data/epl2425ro.rda")

# readxl::read_excel("~/Dropbox/projects/stevedata/data-raw/epl2425ro/epl2425ro.xlsx",
#                    col_types = c("numeric")) %>%
#   select(club, bet365, betfair, unibet) %>%
#   mutate(bet365 = as.numeric(bet365))
#
# readxl::read_excel("~/Dropbox/projects/stevedata/data-raw/epl2425ro/epl2425ro.xlsx",
#                    sheet = 2)  -> A
#
#
# sapply(A$bet365, function(x) eval(parse(text=x)))
#
#
# sapply(frac, function(x) eval(parse(text=x)))
# apply(A[,2:11], function(x) eval(parse(text=x)))
#
# apply(A, c(2, 3), function(x) eval(parse(text = x)))
#
# %>% pull(bet365) %>% as.numeric(.)
#   separate(bet365, into=c("num", "den"),
#            convert = TRUE) %>%
#   mutate(den = ifelse(is.na(den), 1, den),
#          bet365 = num/as.integer(den)) %>%
#   select(-num, -den)
