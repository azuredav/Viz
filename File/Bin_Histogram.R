#
#Daven
#Practice Histogram (Bin)
#

library(gcookbook)
library(ggplot2)
library(tidyr)

binsize = diff(range(faithful$waiting)) / 6
ggplot(faithful, aes(x = waiting)) +
  geom_histogram(binwidth = 5, fill ='white', color = 'black') +
  labs(title = "Old Faithful Geyser",
       x = 'Waiting',
       y = 'Count',
       caption = 'By Daven, Data Visualzation Course, Tunghai University, 2024') +
  theme(plot.title = element_text(hjust = 0.5, size = 20))