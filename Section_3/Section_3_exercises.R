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