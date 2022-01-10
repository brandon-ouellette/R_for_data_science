#load library
library(tidyverse)

#example plot
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy))

#exercise question 3.2.4.1
## running ggplot(data = mpg) does not produce any results due to lack of mapping

#exercise question 3.2.4.2
mpg
#mpg has 234 rows and 11 columns

#exercise question 3.2.4.3
##drv describes the type of drive train the vehicle has

#exercise question 3.2.4.4
ggplot(data = mpg) + 
  geom_point(mapping = aes(cyl, hwy))

#exercise question 3.2.4.5
ggplot(data = mpg) + 
  geom_point(mapping = aes(drv, class))
#plot is not useful as it is a mesure of two categoricals and does not provide any insight

#example plot with color groupings
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, color = class))

#example plot with size groupings
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, size = class))

#practice question 3.3.1.1
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, fill = "blue"))
#corrected - color alters border color while fill alters point fill color

#practice question 3.3.2.2


#practice question 3.3.1.3
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, color = year))
#continuous variables will show as sloping trends while categorical will show as grouped

#practice question 3.3.1.4

#practice question 3.3.1.5
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, fill = "blue", stroke = 1.5))
#stroke alters the thinkness of the shape border

#practice question 3.3.1.6
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, color = displ < 5))
#the above plot adds a logical expression to the color aesthetic to color a point based on a "True" or "False" result

#practice question 3.5.1


#practice question 3.5.2
ggplot(data = mpg) +
  geom_point(mapping = aes(x = drv, y = cyl)) +
  facet_grid(drv ~ cyl)

#practice question 3.5.3
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_grid(drv ~ .)

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_grid(. ~ cyl)
#in this instance '.' acts as command to segment each facet by the variable identified

#practice 3.5.4
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) + 
  facet_wrap(~ class, nrow = 2)
#the advantage to faceting is the reduction of clutter and clear views of the individual variable measurements.
#the disadvantage would be if you are trying to facet by a variable that has many unique values. Too many graphs would not be helpful.

#practice 3.5.5
?facet_wrap
#nrow and ncol indicates the desired number of rows and columns to display the facets by.
#
