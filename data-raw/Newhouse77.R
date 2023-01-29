library(tidyverse)

tribble(~country, ~year, ~gdppc, ~medsharegdp, ~medexppc,
        "Australia", 1972, 3769, 5.80, 219,
        "Austria", 1972, 2747, 5.46, 150,
        "Canada", 1971, 4317, 7.02, 303,
        "Finland", 1972, 2869, 5.31, 152,
        "France", 1970, 2851,6.40, 182,
        "GFR", 1968, 2246, 6.07, 136,
        "Greece", 1972, 1374, 2.51, 34,
        "Italy", 1972, 2164, 6.12, 132,
        "Netherlands", 1972, 3437, 6.78, 233,
        "Norway", 1972, 3889, 5.18, 201,
        "Sweden", 1971, 4431, 7.38, 327,
        "United Kingdom",1972, 2742, 4.45, 122,
        "United States", 1972, 5551, 6.51, 361) -> Newhouse77

save(Newhouse77, file = "~/Dropbox/projects/stevedata/data/Newhouse77.rda")
