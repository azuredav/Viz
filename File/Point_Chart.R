#
#Daven
#Practice Point Chart
#

library(gcookbook)
library(ggplot2)
library(dplyr)

iris <- read.csv('iris.csv')

heightweight %>%
  select(ageYear, heightIn)
ggplot(heightweight, aes(x = ageYear, y = heightIn, color = sex)) +
  labs(title = "Age and Height by Gender",
       x = 'Age(Year)', y = 'Height(Inch)',
       caption = 'By Daven, Data Visualzation Course, Tunghai University, 2024') +
  theme(plot.title = element_text(hjust = 0.5, size = 20)) +
  geom_point()