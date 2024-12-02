#
# Daven
# 12/02/25
# Overall Appearance 2
#

library(ggplot2)
library(gridExtra)

p1 <- ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width)) +
  geom_point() +
  labs(title = 'Sepal Length and Sepal Width',
       x = 'Sepal Length',
       y = 'Sepal Width') +
  theme(axis.title.x = element_text(color = 'red',
                                    family = 'Times',
                                    face = 'bold.italic'))

p2 <- ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width)) +
  geom_point() +
  labs(title = 'Sepal Length and Sepal Width',
       x = 'Sepal Length',
       y = 'Sepal Width') +
  theme(plot.title = element_text(hjust = 0.5,
                                  color = 'red',
                                  family = 'Times',
                                  face = 'bold.italic',
                                  size = 20))

grid.arrange(p1, p2, ncol = 2,
             top = 'Title Font and Color')