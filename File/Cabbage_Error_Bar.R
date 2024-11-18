#
#Daven
#Practice Error Bar Chart
#

library(gcookbook)
library(ggplot2)
library(dplyr)

ce_mod <- cabbage_exp %>%
  filter(Cultivar == "c39")

ggplot(ce_mod, aes(x = Date, y = Weight)) +
  geom_col(fill = "white", colour = "black") +
  geom_errorbar(aes (ymin = Weight - se, ymax = Weight + se), width = .2) +
  labs(title = "Date and Weight",
       caption = 'By Daven, Data Visualzation Course, Tunghai University, 2024') +
  theme(plot.title = element_text(hjust = 0.5, size = 20))