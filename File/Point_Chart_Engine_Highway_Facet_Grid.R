#
#Daven
#Practice Point Chart facet_grid
#

library(gcookbook)
library(ggplot2)
library(dplyr)

mpg_plot <- ggplot(mpg, aes(x = displ, y = hwy))+
  geom_point() +
  facet_grid(. ~ drv)
  
f_labels <- data.frame(drv = c("4", "f", "r"), label = c("4wd", "Front", "Rear")) 

mpg_plot +
  geom_text(x = 6, y = 40, aes(label = label), data = f_labels) +
  labs(title = 'Engine and Highway Mileage',
       x = 'Engine displacement',
       y = 'Highway mileage',
       caption = 'By Daven, Data Visualzation Course, Tunghai University, 2024') +
  theme(plot.title = element_text(hjust = 0.5, size = 20))