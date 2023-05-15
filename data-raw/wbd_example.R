library(tidyverse)
library(WDI)

WDI(
  country = "all",
  indicator = c("NY.GDP.PCAP.KD",
                "SP.DYN.LE00.IN",
                "HD.HCI.OVRL"),
  start = 2000,
  end = 2020,
  extra = FALSE,
  cache = NULL,
  latest = NULL,
  language = "en"
) -> wbd_example


ISOcodes::ISO_3166_1 %>% as_tibble() %>% pull(Alpha_3) -> iso3codes

wbd_example %>% as_tibble() %>%
  rename(rgdppc = NY.GDP.PCAP.KD,
         lifeexp = SP.DYN.LE00.IN,
         hci = HD.HCI.OVRL) %>%
  filter(iso3c %in% iso3codes) -> wbd_example


save(wbd_example, file="data/wbd_example.rda")
