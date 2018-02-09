.libPaths("P:\\R_Library")
library(tidyverse)

fish_data <- read_csv("Gaeta_etal_CLC_data.csv")

fish_data %>%
  mutate(length_cat = ifelse(length > 300, "big", "small")) -> fish_data_cat

fish_data_cat %>% filter(scalelength > 1) -> fish_data_cat_modi
