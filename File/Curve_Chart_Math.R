#
#Daven
#Practice Math Expression Chart 
#

library(gcookbook)
library(ggplot2)

ggplot(data.frame(x = c(-3, 3)), aes(x = x)) +
  stat_function(fun = dnorm, color = 'blue', fill = 'red', geom = 'polygon', alpha = 0.5) +
  annotate("text", x = 2, y = 0.3, parse = TRUE,
           label = "frac(1, sqrt(2*p1)) * e ^ {-x^2 / 2}") +
  labs(title = "Normal Distribution",
       caption = 'By Daven, Data Visualzation Course, Tunghai University, 2024') +
  theme(plot.title = element_text(hjust = 0.5, size = 20))