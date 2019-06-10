library(ggplot2)
library(readr)
library(magrittr)

full_trains <- read_csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2019/2019-02-26/full_trains.csv")

# Visualisation 1 ####
full_trains %>% 
  ggplot(aes(x = journey_time_avg)) +
  geom_histogram(bins = 20, alpha = .4, fill = "black") +
  labs(title = "Histogram of Average Journey Time for trains on the SNCF Network",
       x = "Journey Time (mins.)",
       y = "Number of Instances") +
  theme(text = element_text(size = 15)) 
