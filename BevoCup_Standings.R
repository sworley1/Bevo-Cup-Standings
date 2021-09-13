# File: BevoCup_Standings.R

# Libraries
library(tidyverse)
library(ggplot2)

data <- data.frame(Sport = c("Volleyball", "Rowing", "Football", "Soccer", "Baseball"), Totals = c(140, 200, 100, 150, 180))

data %>% 
  ggplot(aes(x = reorder(Sport, Totals), y = Totals)) +
  geom_col(fill = "#bf5700") + 
  coord_flip() +
  theme_minimal() + 
  labs(
    title = "Bevo Cup Standings",
    y = "Total Points",
    x = ""
  )
