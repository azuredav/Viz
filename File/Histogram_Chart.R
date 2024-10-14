#
#Daven
#Practice Bar Chart 2
#

ggplot(diamonds, aes (x = carat)) +
  geom_histogram() +
  labs(title = 'Histogram Chart',
       caption = 'By Daven, Data Visualzation Course, Tunghai University, 2024') +
  theme(plot.title = element_text(hjust = 0.5, size = 20))