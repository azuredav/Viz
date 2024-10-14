library(gcookbook)
library(ggplot2)

df <- read.csv('Humidity.csv')

ggplot(df, aes(x = factor(Month), y = Humidity)) +
  geom_col() +
  labs(x = "Month", y = "Humidity", title = 'Humidity in Jakarta 2023',
       caption = 'By Daven, Data Visualzation Course, Tunghai University, 2024') +
  theme(plot.title = element_text(hjust = 0.5, size = 20))