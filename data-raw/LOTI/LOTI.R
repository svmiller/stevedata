library(tidyverse)
# https://data.giss.nasa.gov/gistemp/
# https://data.giss.nasa.gov/gistemp/faq/
#         GLOBAL Land-Ocean Temperature Index in 0.01 degrees Celsius   base period: 1951-1980
#
# sources:  GHCN-v4 1880-01/2023 + SST: ERSST v5 1880-01/2023
# using elimination of outliers and homogeneity adjustment
# Notes: 1950 DJF = Dec 1949 - Feb 1950 ;  ***** = missing

# Divide by 100 to get changes in degrees Celsius (deg-C).
# Multiply that result by 1.8(=9/5) to get changes in degrees Fahrenheit (deg-F).
#
# Example      --      Table Value :      40
# change :    0.40 deg-C  or  0.72 deg-F

# The following are plain-text files in tabular format of temperature anomalies, i.e. deviations from the corresponding 1951-1980 means.

read_csv("~/Dropbox/projects/stevedata/data-raw/LOTI/GLB.Ts+dSST.csv") %>%
  select(1:Dec) %>%
  gather(var, value, -Year) %>%
  rename(year = Year) %>%
  filter(value != "***") %>%
  mutate(mon = match(var, month.abb),
         day = 1,
         date = lubridate::ymd(paste0(year,"-",mon,"-",1))) %>%
  mutate(value = as.numeric(value)) %>%
  select(date, value) %>%
  arrange(date) %>%
  # Let's get rid of Jan. 2023 to keep it nice and simple.
  slice(-n()) -> LOTI

save(LOTI, file = "~/Dropbox/projects/stevedata/data/LOTI.rda")

