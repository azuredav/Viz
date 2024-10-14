#
#Daven
#Practice Bar Chart
#

library(gcookbook)
library(ggplot2)

ggplot(df, aes(x = Year, y = Death)) +
  geom_col() +
  labs(title = 'Accidents: Death',
       caption = 'By Daven, Data Visualzation Course, Tunghai University, 2024') +
  theme(plot.title = element_text(hjust = 0.5, size = 20))