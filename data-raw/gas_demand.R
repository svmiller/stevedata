library(tidyverse)
library(stevemisc)

data("OECDGas", package="AER")

OECDGas %>% as_tibble() -> gas_demand

save(gas_demand, file="data/gas_demand.rda")

#
# gas_vars <- c("gas", "income", "price", "cars")
#
# OECDGas %>% as_tibble() %>%
#   mean_at(gas_vars) %>%
#   group_mean_center_at(gas_vars, .by=country) %>%
#   center_at(gas_vars, .by=country, prefix="w") -> gas_demand
#
# gas_demand
#
# library(lme4)
#
# M1 <- lmer(gas ~ b_income + b_price + b_cars +
#               w_income + w_price + w_cars +
#               (1 | country), gas_demand)
# summary(M1)
