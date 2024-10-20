library(tidyverse)

tibble(club = c("Southampton", "Ipswich", "Leicester",
                "Wolverhampton", "Everton", "Crystal Palace",
                "Brentford", "Nottingham Forest",
                "Man City", "Fulham", "Bournemouth",
                "West Ham", "Chelsea", "Brighton",
                "Newcastle", "Man United", "Aston Villa",
                "Liverpool", "Tottenham", "Arsenal"),
       bet365_r = c(1/5, 8/13, 10/11, 5/4, 11/4, 6,
                10, 10, 12, 14, 14, 14, 33, 80,
                100, 150, 250, 2000, 500, 2000),
       betfair_r = c(1/9, 4/7, 11/10, 11/8, 11/4,
                   13/2, 15/2, 13/2, 9, 20, 16, 25, 25,
                   250, 300, 300, 300, 500, 500, 500),
       unibet_r = c(1/5, 8/11, 9/10, 5/4, 11/4, 6,
                  10, 10, 12, 14, 12, 14, 33, 80,
                  100, 150, 250, 2000, 500, 2000
                  )) -> epl2425ro

epl2425ro %>% arrange(club) %>%
  mutate(bet365_w = c(2, 66, 750, 1000,
                      150, 18, 1000, 1000,
                      1000, 2000, 1000, 3,
                      11/8, 100, 150, 1000, 2000,
                      33, 500, 1500),
         betfair_w = c(7/4, 66, 500, 500, 150, 18, 500, 500, 500,
                       500, 500, 10/3, 11/8, 200, 300,
                       500, 500, 50, 250, 500),
         unibet_w = c(2, 80, 750, 70, 150, 18, 1000, 1000, 750,
                      2000, 1000, 3, 7/5, 100, 150, 1000, 1500, 33,
                      500, 1500)) -> epl_odds

save(epl_odds, file="data/epl_odds.rda")

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
