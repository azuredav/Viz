#
# Daven
# 12/02/25
# Overall Appearence
#

library(gcookbook)
library(ggplot2)

hw_plot <- ggplot(heightweight, aes(x = ageYear, y = heightIn)) +
  geom_point()

hw_plot +
  ggtitle('Age and Height:', 'From heightweight dataset')