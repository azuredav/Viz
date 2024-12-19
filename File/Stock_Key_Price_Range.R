#
#Daven
#Practice Density Chart
#

library(gcookbook)
library(ggplot2)
library(tidyr)

setwd("D:\\Daven\\Univ\\RStudio\\Data Visualization Analysis\\Viz\\CSV")

stocks <- read.csv("Stocks.csv")

ggplot(stocks, aes(x = Price, y = ..density..)) +
  geom_density(fill = "lightblue", alpha = .6) +
  geom_vline(xintercept = c(80, 100, 120), linetype = "dashed", color = "red", size = 1.5) +
  labs(title = "Stock Price with Price Range",
       x = 'Price',
       y = 'Density',
       caption = 'By Daven, Data Visualzation Course, Tunghai University, 2024') +
  theme(plot.title = element_text(hjust = 0.5, size = 20))