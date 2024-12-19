#
#Daven
#Practice Point Chart
#

library(gcookbook)
library(ggplot2)

ggplot(heightweight, aes(x = ageYear, y = heightIn, color = sex)) +
  geom_point() +
  labs(title = "Age and Height by Gender",
       x = 'Age (Year)',
       y = 'Height (Inch)',
       caption = 'By Daven, DV, THU, 2024') +
  theme(plot.title = element_text(hjust = 0.5, size = 20))