#
#Daven
#Practice Pivot Longer
#

library(gcookbook)
library(ggplot2)
library(tidyr)

jakarta <- read.csv('Jakarta.csv')

jakarta_longer <- jakarta %>% pivot_longer(cols = c('Temperature', 'Humidity'),
                                               names_to = "Type",
                                               values_to = 'Count')

ggplot(jakarta_longer, aes(x = as.factor(Month), y = Count, fill = Type)) +
  labs(title = "Jakarta's Climate",
       x = 'Month',
       caption = 'By Daven, Data Visualzation Course, Tunghai University, 2024') +
  theme(plot.title = element_text(hjust = 0.5, size = 20)) +
  geom_bar(position = 'dodge', stat = 'identity')