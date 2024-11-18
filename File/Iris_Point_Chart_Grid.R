`#
#Daven
#Practice Point Chart facet_grid
#

library(gcookbook)
library(ggplot2)
library(dplyr)

iris_plot <- ggplot(iris, aes(x=Sepal.Length, y = Sepal.Width))+
  geom_point() +
  facet_grid(. ~ Species) 

g_labels <- data.frame(Species = c("setosa", "versicolor", "virginica"), 
                       label=c("Setosa", "Versicolor", "Virginica")) 

iris_plot +
  geom_text(x = 7, y = 4, aes(label = label), data = g_labels) +
  labs(title = "Iris",
       x = "Sepal length",
       y = "Sepal width",
       caption = "By Daven, Data Visualization course, Tunghai University, 2024")+
  theme(plot.title = element_text(hjust = 0.5, size = 20))   