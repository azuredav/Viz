#
# Daven
# 11/25/25
# Iris gridExtra & grid.arrange
#

library(ggplot2)
library(gridExtra)

p1 <- ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width)) +
  geom_point() +
  ggtitle('Sepal Length and Sepal Width', 'Iris') + xlab('Sepal Length') + ylab('Sepal Width')

p2 <- ggplot(iris, aes(x = Sepal.Width, y = Petal.Length)) +
  geom_point() +
  ggtitle('Sepal Width and Petal Length', 'Iris') + xlab('Sepal Width') + ylab('Petal Length') + 
  theme(plot.title = element_text(hjust = 0.5),
        plot.subtitle = element_text(hjust = 0.5))

p3 <- ggplot(iris, aes(x = Sepal.Length, y = Petal.Width)) +
  geom_point() +
  ggtitle('Sepal Length and Petal Width', 'Iris') + xlab('Sepal Length') + ylab('Petal Width') + 
  theme(plot.title = element_text(hjust = 1),
        plot.subtitle = element_text(hjust = 1))

grid.arrange(p1, p2, p3, ncol = 3,
             top = 'Subplots')