library(tidyverse)

#
# read_tsv("/home/steve/Dropbox/projects/stevedata/data-raw/Mitchell68/formatted_data_2.tsv") %>%
#   rename(id = 1,
#          province = 2,
#          gc = 3,
#          ool = 4,
#          cvlhs = 5,
#          vl = 6,
#          fl  = 7,
#          m = 8,
#          pd = 9) -> Mitchell68


readxl::read_excel("/home/steve/Dropbox/projects/stevedata/data-raw/Mitchell68/Mitchell68.xlsx",
                   sheet = 2) %>%
  rename(id = 1,
         province = 2,
         gc = 3,
         ool = 4,
         cvlhs = 5,
         vl = 6,
         fl  = 7,
         m = 8,
         pd = 9) -> Mitchell68

Mitchell68
M1 <- lm(gc ~ ool + cvlhs + vl + fl + m + pd, Mitchell68)
summary(M1)

save(Mitchell68, file="data/Mitchell68.rda")
