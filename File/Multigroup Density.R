#
#Daven
#Practice Multigroup Density Chart
#

library(gcookbook)
library(ggplot2)
library(MASS)
library(tidyverse)

data(birthwt)

birthwt$smoke <- factor(birthwt$smoke, levels = c(0,1), labels = c("Non Smoking", "Smoking"))

ggplot(birthwt, aes(x = bwt, y = ..density.., fill = smoke)) +
  geom_density(alpha = .5) +
  scale_fill_manual(values = c("pink", "lightblue")) +
  labs(title = "Birth Weight: Smoking Vs Non-smoking",
       x = 'Birth Weight',
       y = 'Density',
       fill = "Smoking Status",
       caption = 'By Daven, Data Visualzation Course, Tunghai University, 2024') +
  theme(plot.title = element_text(hjust = 0.5, size = 20)) +
  theme(legend.position = "right")
