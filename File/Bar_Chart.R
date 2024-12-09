#
#Daven
#Practice Bar Chart
#

library(gcookbook)
library(ggplot2)

ggplot(pg_mean, aes(x = group, y = weight)) +
  geom_col(fill = "cornsilk", colour = "blue", size = .2) +
  labs(title = 'Bar Chart',
       caption = 'By Daven, DV, THU, 2024') +
  theme(plot.title = element_text(hjust = 0.5, size = 20))