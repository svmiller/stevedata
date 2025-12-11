library(tidyverse)

LU <- read_csv("~/Koofr/data/euro-urban-heat-islands/UHI_vs._geograpy+land.use.csv")
LM <- read_csv("~/Koofr/data/euro-urban-heat-islands/UHI_vs._landscape metrics.csv")

names(LU)
names(LM)
dim(LU)
dim(LM)
LU %>% filter(is.na(UHI.magnitude))
LM %>% filter(is.na(UHI.magnitude)) # Interesting...

LU %>%
  select(City, Planning.family, UHI.magnitude) %>%
  rename(city = City,
         family = Planning.family,
         uhimag = UHI.magnitude) %>%
  mutate(inlu = 1) %>%
  anti_join(., LM %>%
              select(City,Planning.family, UHI.magnitude) %>%
              rename(city = City,
                     family = Planning.family,
                     uhimag = UHI.magnitude) %>%
              mutate(inlm = 1))



LM %>%
  mutate(city = City,
         family = Planning.family,
         #clcctg = CLCctg,
         uhimag = UHI.magnitude,
         edgedens = edge.density,
         lpi = largest.patch.index,
         avgpa = mean.patch.area,
         plc = prop.landscape.core) %>%
  select(city:ncol(.)) -> eurouhi


eurouhi

LU %>%
  filter(!is.na(UHI.magnitude)) %>%
  mutate(acity = City,
         afamily = Planning.family,
         auhimag = UHI.magnitude,
         #clcctg = CLCctg,
         long = Longitude,
         lat = Latitude,
         mindistcoast = Distance.coast,
         #
         aapercam = Artif_perc_in_AM,
         ugpercam = UrbGreen_perc_in_AM,
         forpercam = Forest_perc_in_AM,
         agpercam = Agricult_perc_in_AM,) %>%
  select(acity:ncol(.)) %>%
  bind_cols(eurouhi, .) %>%
  # filter(auhigmag != uhigmag) # checks out
  select(-acity, -afamily, -auhimag) -> eurouhi

eurouhi %>%
  select(family, uhimag, lat) %>%
  summarize(cor = cor(uhimag, lat), .by = family )

eurouhi %>%
  select(family, uhimag, lpi) %>%
  summarize(cor = cor(uhimag, lpi, use='complete.obs'), .by = family ) %>%
  arrange(family)

eurouhi %>%
  select(city:uhimag, long:ncol(.), everything()) %>%
  rename(pf = family,
         aaperc = aapercam,
         ugperc = ugpercam,
         forperc = forpercam,
         agperc = agpercam) -> eurouhi

eurouhi %>%
  select(city:mindistcoast, aaperc, agperc, forperc, ugperc, avgpa, edgedens, lpi, plc, everything()) -> eurouhi

save(eurouhi, file = "data/eurouhi.rda")
