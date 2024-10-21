#
#Daven
#Practice Box Plot Chart
#

library(gcookbook)
library(ggplot2)

plot(ToothGrowth$supp, ToothGrowth$len)

boxplot(len ~ supp, data = ToothGrowth)

boxplot(len ~ supp + dose, data = ToothGrowth)

ggplot(ToothGrowth, aes(x = interaction(supp, dose), y = len)) +
  geom_boxplot() +
  labs(title = "Boxplot with ggplot",
       x = 'Supp + Dose',
       y = 'Length',
       fill = "Smoking Status",
       caption = 'By Daven, Data Visualzation Course, Tunghai University, 2024') +
  theme(plot.title = element_text(hjust = 0.5, size = 20))