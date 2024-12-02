#
# Daven
# 12/02/25
# ggthemes
#

library(ggplot2)
library(ggthemes)

#theme_economist()

hwecon <- ggplot(heightweight, aes(x = ageYear, y = heightIn)) +
  geom_point() +
  labs(title = 'Age and Height of Schoolchildren',
       subtitle = '11.5 to 17.5 years old') 

hwecon + theme_economist() +
  scale_color_economist() +
  ggtitle('Age and Height of Schoolchildren')

#theme_stata()

hwecon <- ggplot(heightweight, aes(x = ageYear, y = heightIn)) +
  geom_point() +
  labs(title = 'Age and Height of Schoolchildren',
       subtitle = '11.5 to 17.5 years old')

hwecon + theme_stata() +
  scale_color_stata() +
  ggtitle('Age and Height of Schoolchildren')

#theme_wsj

hwecon <- ggplot(heightweight, aes(x = ageYear, y = heightIn)) +
  geom_point() +
  labs(title = 'Age and Height of Schoolchildren',
       subtitle = '11.5 to 17.5 years old')

hwecon + theme_wsj() +
  scale_color_wsj('colors6') +
  ggtitle('Age and Height of Schoolchildren')

#theme_calc()

hwecon <- ggplot(heightweight, aes(x = ageYear, y = heightIn)) +
  geom_point() +
  labs(title = 'Age and Height of Schoolchildren',
       subtitle = '11.5 to 17.5 years old')

hwecon + theme_calc() +
  scale_color_calc('colors6') +
  ggtitle('Age and Height of Schoolchildren')