library(tidyverse)

isard::cw_system %>%
  filter(ccode %in% c(400:599, 600, 615, 616, 620, 625)) -> Data


Data


Col <- read_csv("~/Koofr/data/icow/ICOW Colonial History 1.1/coldata110.csv")

Col %>%
  rename(ccode = State) %>%
  filter(ccode %in% c(400:599, 600, 615, 616, 620, 625)) %>%
  select(ccode, IndFrom) %>%
  left_join(Data, .) %>%
  mutate(colmast = case_when(
    IndFrom == 200 ~ "United Kingdom",
    IndFrom == 220 ~ "France",
    IndFrom == 211 ~ "Belgium",
    IndFrom == 230 ~ "Spain",
    IndFrom == 235 ~ "Portugal",
    IndFrom == 325 ~ "Italy",
    IndFrom == 432 ~ "France", # Special case for Senegal withdrawing from Mali Confederation
    ccode %in% c(600, 616) ~ "France" # French protectorates; will count it
  )) %>%
  arrange(start) %>%
  # Special case for South Africa, which predates any of what interests me here.
  mutate(colmast = ifelse(ccode == 560, NA, colmast)) %>%
  # hack to address Ethiopia's temporary occupation by Italy, and entry/exit in
  # ME/NA for Morocco and Tunisia.
  filter(row_number() == n(), .by=ccode) %>%
  mutate(styear = year(start)) %>%
  select(ccode, cw_name, start, styear, IndFrom, colmast) -> Data

isard::cw_gdppop %>%
  select(ccode, year, mrgdppc) %>%
  rename(mrgdppcind = mrgdppc) %>%
  left_join(Data, ., by=c("ccode" = "ccode",
                          "styear" = "year")) -> Data

isard::cw_gdppop %>%
  select(ccode, year, mrgdppc) %>%
  mutate(year = year - 5) %>%
  rename(mrgdppc5 = mrgdppc) %>%
  left_join(Data, ., by=c("ccode" = "ccode",
                          "styear" = "year")) -> Data


isard::cw_gdppop %>%
  select(ccode, year, mrgdppc) %>%
  mutate(year = year - 10) %>%
  rename(mrgdppc10 = mrgdppc) %>%
  left_join(Data, ., by=c("ccode" = "ccode",
                          "styear" = "year")) -> Data

isard::cw_gdppop %>%
  select(ccode, year, mrgdppc) %>%
  mutate(year = year - 15) %>%
  rename(mrgdppc15 = mrgdppc) %>%
  left_join(Data, ., by=c("ccode" = "ccode",
                          "styear" = "year")) -> Data


isard::cw_gdppop %>%
  select(ccode, year, mrgdppc) %>%
  mutate(year = year - 20) %>%
  rename(mrgdppc20 = mrgdppc) %>%
  left_join(Data, ., by=c("ccode" = "ccode",
                          "styear" = "year")) -> Data


isard::cw_gdppop %>%
  select(ccode, year, mrgdppc) %>%
  mutate(year = year - 25) %>%
  rename(mrgdppc25 = mrgdppc) %>%
  left_join(Data, ., by=c("ccode" = "ccode",
                          "styear" = "year")) -> Data

postcol_growth <- Data


postcol_growth %>%
  select(-start) -> postcol_growth

save(postcol_growth, file="data/postcol_growth.rda")

Data %>%
  mutate(growth = ((mrgdppc15 - mrgdppcind)/mrgdppcind)*100,
         brit = ifelse(colmast  == "United Kingdom", 1, 0),
         brit = ifelse(is.na(colmast), NA, brit)) -> Data

t.test(growth ~ brit, Data)

Data %>%
  select(ccode, cw_name, mrgdppcind, mrgdppc15, growth, brit)
