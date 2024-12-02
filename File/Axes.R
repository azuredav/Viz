#
# Daven
# 11/25/25
# Axes
#

library(ggplot2)
library(gridExtra)

p1 <- ggplot(PlantGrowth, aes (x = group, y = weight)) +
  geom_boxplot() +
  labs(title = "Group Vs Weight",
       x = "Group",
       y = "Weight",
       caption = "By Daven, DV, THU, 2024") +
  theme(plot.title = element_text(hjust = 0.5, size = 20))

p2 <- ggplot(PlantGrowth, aes (x = group, y = weight)) +
  geom_boxplot() +
  coord_flip() +
  ylim(0, max(PlantGrowth$weight)) +
  labs(title = "Weight Vs Group",
       x = 'Group',
       y = 'Weight',
       caption = "By Daven, DV, THU, 2024") +
  theme(plot.title = element_text(hjust = 0.5, size = 20)) 
  
grid.arrange(p1, p2, ncol = 2,
               top = 'Swap X and Y axes')