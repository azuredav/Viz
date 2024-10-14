#
#Daven
#Practice Pivot Longer
#

library(gcookbook)
library(ggplot2)
library(tidyr)

accidents <- read.csv('Accidents.csv')

accidents_longer <- accidents %>% pivot_longer(cols = c('Death', 'Injured'),
                                               names_to = "Type",
                                               values_to = 'Count')

ggplot(accidents_longer, aes(x = as.factor(Year), y = Count, fill = Type)) +
  labs(title = "Traffic Accidents",
       x = 'Year',
       caption = 'By Daven, Data Visualzation Course, Tunghai University, 2024') +
  theme(plot.title = element_text(hjust = 0.5, size = 20)) +
  geom_bar(position = 'dodge', stat = 'identity')