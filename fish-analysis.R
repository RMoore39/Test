.libPaths("P:\\R_Library")
library(tidyverse)

fish_data <- read_csv("Gaeta_etal_CLC_data_1.csv")

fish_data %>%
  mutate(length_cat = ifelse(length > 300, "big", "small")) -> fish_data_cat

fish_data_cat %>% filter(scalelength >= 1) -> fish_data_cat

ggplot(fish_data_cat) + geom_point(aes(y = scalelength, x = length, color = lakeid))
