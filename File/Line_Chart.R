#
#Daven
#Practice Line Chart
#

library(gcookbook)
library(ggplot2)

ggplot(BOD, aes(x = Time, y = demand)) +
  geom_line() +
  labs(title = 'Line Chart',
       caption = 'By Daven, Data Visualzation Course, Tunghai University, 2024') +
  theme(plot.title = element_text(hjust = 0.5, size = 20))