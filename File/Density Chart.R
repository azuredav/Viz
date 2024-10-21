#
#Daven
#Practice Multigroup Density Chart
#

library(gcookbook)
library(ggplot2)
library(tidyr)

ggplot(faithful, aes(x = waiting, y = ..density..)) +
  geom_histogram(fill = "cornsilk", colour = "grey60", size = .2) +
  geom_density(fill = "blue", alpha = .2) +
  xlim(35, 105) +
  labs(title = "Density Chart",
       x = 'Waiting',
       y = 'Density',
       caption = 'By Daven, Data Visualzation Course, Tunghai University, 2024') +
  theme(plot.title = element_text(hjust = 0.5, size = 20))
