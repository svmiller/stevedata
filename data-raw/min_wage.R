library(tidyverse)
library(lubridate)

# https://www.dol.gov/agencies/whd/minimum-wage/history/chart

tribble(~date, ~wage, ~comment,
        "1938/10/24", .25, "1938 Act",
        "1939/10/24", .30, NA,
        "1945/10/24", .40, NA,
        "1950/01/25", .75, NA,
        "1956/03/01", 1, NA,
        "1961/09/03", 1.15, NA,
        "1963/09/03", 1.25, NA,
        #"1964/09/03", 1.15, "1961 Amendments",
        #"1965/09/03", 1.25, NA,
        "1967/02/01", 1.40, NA,
        "1968/02/01", 1.60, NA,
        "1974/05/01", 2, NA,
        "1975/01/01", 2.10, NA,
        "1976/01/01", 2.30, NA,
        "1978/01/01",2.65, NA,
        "1979/01/01",2.90, NA,
        "1980/01/01", 3.10, NA,
        "1981/01/01", 3.35, NA,
        "1990/04/01", 3.80, NA,
        "1991/04/01", 4.25, NA,
        "1996/10/01", 4.75, NA,
        "1997/09/01", 5.15, NA,
        "2007/07/24", 5.85, NA,
        "2008/07/24", 6.55, NA,
        "2009/07/24", 7.25, NA) %>%
  mutate(date = as_date(date)) %>%
  fill(comment) %>% select(-comment) -> min_wage

save(min_wage, file = "~/Dropbox/projects/stevedata/data/min_wage.rda")


library(stevemisc)

library(fredr)

library(blscrapeR)

df <- bls_api("CUUR0000SA0",
              startyear = 1913, endyear = 2021)


readxl::read_excel("/home/steve/Downloads/SeriesReport-20210225092636_89d184.xlsx", skip = 11) %>%
 #  rename_all(tolower) %>%
  select(-HALF1, -HALF2) %>%
  gather(var, cpi, Jan:Dec) %>%
  arrange(Year) %>%
  rename(year = Year) %>%
  mutate(mon = match(var, month.abb)) %>%
  mutate(date = paste(year,mon,"1",sep="-")) %>%
  mutate(date = as_date(date)) %>%
  select(date, cpi) -> CPI




fredr(series_id = "CPALCY01USM661N",
      observation_start = as.Date("1938-01-01")) %>%
  rename(CPI = value) -> Price

Price %>% filter(month(date) == 12 & day(date) == 01)

min_wage

tibble(date = seq(as_date("1938/10/01"), as_date("2020/12/31"), by = "1 day")) %>%
  left_join(., min_wage) %>%
  fill(wage) %>%
  left_join(., CPI) %>%
  fill(cpi) %>%
  mutate(last = last(cpi),
         index = (cpi/last)*100,
         rwage = (wage/index)*100) %>%
  na.omit %>%
  select(date, wage, rwage) %>%
  gather(var, val, wage:rwage) %>%
  mutate(var = ifelse(var == "wage", "Nominal Minimum Wage", "Real Minimum Wage (Jan. 2021)")) %>%
  ggplot(.,aes(date, val, color=var, linetype=var)) +
  geom_line(size=1.1) +
  theme_steve_web() +
  scale_color_brewer(palette="Paired") +
  scale_y_continuous(labels = scales::dollar) +
  labs(x = "", y = "", linetype = "", color="",
       title = "The Nominal Minimum Wage vs. the Inflation-Adjusted Minimum Wage, 1938-2021",
       caption = "Data: ?min_wage in {stevedata}. Monthly inflation data come from the Bureau of Labor Statistics.",
       subtitle = "Adjusted for inflation, the minimum wage has been on a steady decline since its peak following a Feb. 1, 1968 adjustment to $1.60 (about $12.18 in Jan. 2021 USD).")
