#
#Daven
#Practice Line Chart (Annotatee/Segment)
#

library(gcookbook)
library(ggplot2)
library(dplyr)

ggplot(filter(climate, Source == "Berkeley"), aes(x = Year, y = Anomaly10y))+
  geom_line() +
  annotate("segment", x = 1950, xend = 1980, y = -.25, yend = -.25) +
  annotate("segment", x = 1850, xend = 1820, y = -.8, yend = -.95,
           colour = 'blue', size = 2, arrow = arrow()) +
  annotate("segment", x = 1950, xend = 1980, y = -.25, yend = -.25,
           arrow = arrow(ends = "both", angle = 90, length = unit(.2, "cm"))) +
  labs(title = 'Year and Anomaly',
       caption = 'By Daven, Data Visualzation Course, Tunghai University, 2024') +
  theme(plot.title = element_text(hjust = 0.5, size = 20)) +
  annotate("rect", xmin = 1950, xmax = 1980, ymin = -1, ymax = 1,
           alpha = .1, fill = "blue")