#
#Daven
#Practice Point Chart (Mutate)
#

library(gcookbook)
library(ggplot2)
library(dplyr)

my_faithful <- faithful

my_faithful <- my_faithful %>%
  mutate(group = ifelse(my_faithful$waiting < 75 & my_faithful$eruptions < 4, 1, 2))

my_faithful$group = as.factor(my_faithful$group)

ggplot(my_faithful, aes(x = eruptions, y = waiting, color = group)) +
  geom_point() +
  labs(color = 'group',
       title = "Faithful: Eruption and Waiting",
       x = 'Waiting',
       y = 'Eruption',
       caption = 'By Daven, Data Visualzation Course, Tunghai University, 2024') +
  scale_color_discrete(name = 'Group') +
  theme(plot.title = element_text(hjust = 0.5, size = 20)) +
  annotate("text",x = 3, y = 48, label = "Group 1") +
  annotate("text",x = 4.5, y = 66, label = "Group 2") 
