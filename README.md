# R_for_data_science

#load library
library(tidyverse)

#example plot
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy))

#practice plot 3.2.4
ggplot(data = mpg) + 
  geom_point(mapping = aes(cyl, hwy))

#practice plot 3.2.4
ggplot(data = mpg) + 
  geom_point(mapping = aes(drv, class))

#example plot with color groupings
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, color = class))

#example plot with size groupings
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, size = class))

#practice plot 3.3.1
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, fill = "blue"))

