#
#Daven
#Practice Multigroup Histogram
#

library(ggplot2)
library(MASS)
library(tidyverse)

birthwt_mod <- birthwt

birthwt_mod$smoke <- recode_factor(birthwt_mod$smoke, '0' = 'No Smoke', '1' = 'Smoke') 

ggplot(birthwt_mod, aes(x = bwt)) +
  geom_histogram(fill = "white", colour = "black") +
  facet_grid( . ~ smoke) +
  labs(title = "Birth Weight",
       x = 'Birth Weight',
       y = 'Count',
       caption = 'By Daven, Data Visualzation Course, Tunghai University, 2024') +
  theme(plot.title = element_text(hjust = 0.5, size = 20))

ggplot(birthwt_mod, aes(x = bwt, fill = smoke)) +
  geom_histogram(position = "identity", alpha = 0.4) +
  labs(title = "Birth Weight",
       x = 'Birth Weight',
       y = 'Count',
       caption = 'By Daven, Data Visualzation Course, Tunghai University, 2024') +
  theme(plot.title = element_text(hjust = 0.5, size = 20)) 
