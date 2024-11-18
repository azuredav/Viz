#
#Daven
#Practice Repel Chart 
#

library(gcookbook)
library(ggplot2)
library(ggrepel)

ggplot(mtcars, aes(wt, mpg))+
  geom_point() +
  geom_label_repel(aes(label = rownames(mtcars)), size = 3.5) +
  labs(title = "Weight and Mileage",
       x = 'Mileage',
       y = 'Weight',
       caption = 'By Daven, Data Visualzation Course, Tunghai University, 2024') +
  theme(plot.title = element_text(hjust = 0.5, size = 20))