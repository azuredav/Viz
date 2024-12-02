#
# Daven
# 12/02/25
# Mytheme
#

library(gcookbook)
library(ggplot2)
library(gridExtra)

mytheme <- theme(panel.grid.major = element_line(color = 'red'),
                 panel.grid.minor = element_line(color = 'red',
                                                 linetype = 'dashed', 
                                                 size = 0.2),
                 panel.border = element_rect(color = 'blue', 
                                             fill = NA, 
                                             size = 2)) 
                 
ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width)) +
  geom_point() +
  labs(title = 'Sepal Length and SepalcWidth',
       x = 'Sepal Length',
       y = 'Sepal Width') +
  mytheme