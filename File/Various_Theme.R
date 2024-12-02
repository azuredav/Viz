#
# Daven
# 12/02/25
# Various Theme 
#

library(ggplot2)
library(gridExtra)

hw1 <- ggplot(heightweight, aes(x = ageYear, y = heightIn)) +
  geom_point() +
  labs(title = 'Age and Height of Schoolchildren',
       subtitle = '11.5 to 17.5 years old') +
  theme_gray()

hw2 <- ggplot(heightweight, aes(x = ageYear, y = heightIn)) +
  geom_point() +
  labs(title = 'Age and Height of Schoolchildren',
       subtitle = '11.5 to 17.5 years old') +
  theme_minimal()

hw3 <- ggplot(heightweight, aes(x = ageYear, y = heightIn)) +
  geom_point() +
  labs(title = 'Age and Height of Schoolchildren',
       subtitle = '11.5 to 17.5 years old') + 
  theme_classic()

grid.arrange(hw1, hw2, hw3, ncol = 3,
             top = 'Various Theme')