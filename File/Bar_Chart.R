#
#Daven
#Practice Bar Chart
#

library(gcookbook)
library(ggplot2)

ggplot(diamonds, aes(x = carat)) +
  geom_bar() +
  labs(title = 'Bar Chart',
       caption = 'By Daven, Data Visualzation Course, Tunghai University, 2024') +
  theme(plot.title = element_text(hjust = 0.5, size = 20))