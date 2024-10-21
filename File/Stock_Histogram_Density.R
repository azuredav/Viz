#
#Daven
#Practice Density Chart
#

library(gcookbook)
library(ggplot2)
library(tidyr)

stocks <- read.csv("Stocks.csv")

ggplot(stocks, aes(x = Price, y = ..density..)) +
  geom_histogram(fill = "cornsilk", colour = "grey60", size = .2) +
  geom_density() +
  labs(title = "Stock Price: Histogram & Density Chart",
       x = 'Price',
       y = 'Density',
       caption = 'By Daven, Data Visualzation Course, Tunghai University, 2024') +
  theme(plot.title = element_text(hjust = 0.5, size = 20))
