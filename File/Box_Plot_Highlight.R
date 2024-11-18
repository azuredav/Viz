#
#Daven
#Practice Boxplot Hightlight
#

library(gcookbook)
library(ggplot2)
library(dplyr)

pg_mod <- PlantGrowth %>%
  mutate(h1 = recode(group, "ctrl" = "no", "trt1" = "no", "trt2" = "yes"))

ggplot(pg_mod, aes(x = group, y = weight, fill = h1)) +
  geom_boxplot() +
  scale_fill_manual(values = c('grey85', '#FFDDCC'),  guide = FALSE) +
  labs(title = 'Groups and Weight',
       x = 'Group',
       y = 'Weight',
       caption = 'By Daven, Data Visualzation Course, Tunghai University, 2024') +
  theme(plot.title = element_text(hjust = 0.5, size = 20))
