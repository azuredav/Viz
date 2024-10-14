library(gcookbook)
library(ggplot2)

df <- read.csv('Temperature.csv')

ggplot(df, aes(x = factor(Month), y = Temperature)) +
  geom_col() +
  labs(x = "Month", y = "Temperature", title = 'Temperature in Jakarta 2023',
       caption = 'By Daven, Data Visualzation Course, Tunghai University, 2024') +
  theme(plot.title = element_text(hjust = 0.5, size = 20))