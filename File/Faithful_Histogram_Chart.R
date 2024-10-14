#
#Daven
#Practice Histogram
#

library(gcookbook)
library(ggplot2)
library(tidyr)

faith <- faithful

ggplot(faith, aes(x = waiting)) +
  geom_histogram() +
  labs(title = "Old Faithful Geyser",
       x = 'Waiting',
       y = 'Count',
       caption = 'By Daven, Data Visualzation Course, Tunghai University, 2024') +
  theme(plot.title = element_text(hjust = 0.5, size = 20))