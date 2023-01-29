library(tidyverse)

tibble(school = LETTERS[seq( from = 1, to = 8 )],
       num_treat = c(28, 39, 22, 48, 25, 37, 24, 16),
       num_control = c(22, 40, 17, 43, 74, 35, 70, 19),
       est = c(28.39, 7.94, -2.75, 6.82, -.64, .63, 18.01, 12.16),
       se = c(14.9, 10.2, 16.3, 11.0, 9.4, 11.4, 10.4, 17.6),
       rvar = c(2415, 1880, 2168, 2612, 1623, 2046, 1841, 2314)) -> eight_schools


save(eight_schools, file = "~/Dropbox/projects/stevedata/data/eight_schools.rda")
