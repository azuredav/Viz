#
#Daven
#Practice Bar Chart 2
#

library(ggplot2)

ggplot(diamonds, aes (x = carat)) +
  geom_histogram() +
  labs(title = 'Histogram Chart',
       caption = 'By Daven, DV, THU') +
  theme(plot.title = element_text(hjust = 0.5, size = 20))