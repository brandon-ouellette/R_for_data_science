


# setup -------------------------------------------------------------------

library(tidyverse)


# 3.2.4 - plotting basics -------------------------------------------------

# exercise 3.2.4.1
ggplot(data = mpg)
## running ggplot(data = mpg) does not produce any results due to lack of mapping


# exercise 3.2.4.2
mpg
#mpg has 234 rows and 11 columns


# exercise 3.2.4.3
?mpg
## drv describes the type of drive train the vehicle has


# exercise 3.2.4.4
ggplot(data = mpg) + 
  geom_point(mapping = aes(cyl, hwy))


# exercise 3.2.4.5
ggplot(data = mpg) + 
  geom_point(mapping = aes(class, drv))
#plot is not useful as it is a mesure of two categoricals and does not provide any insight

#example plot with color groupings
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, color = class))

#example plot with size groupings
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, size = class))




# 3.3.1 - aesthetics ------------------------------------------------------

# exercise 3.3.1.1
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, fill = "blue"))
## corrected - color alters border color while fill alters point fill color

# exercise 3.3.1.2
?mpg
## manufacturer, model, cyl, trans, drv, fl, class are all categorical variables
## displ, year, cty, hwy are continuous variables

# exercise 3.3.1.3
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, color = year))
## continuous variables will show as sloping trends while categorical will show as grouped

# exercise 3.3.1.4
ggplot(mpg) +
  geom_point(aes(hwy, hwy))
## mapping the same variable to multiple aesthetics creates a 1:1 sloping line

# exercise 3.3.1.5
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, fill = "blue", stroke = 1.5))
## stroke alters the thinkness of the shape border

# exercise 3.3.1.6
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, color = displ < 5))
## the above plot adds a logical expression to the color aesthetic to color a point based on a "True" or "False" result


# 3.5.1 - faceting --------------------------------------------------------

# exercise 3.5.1.1
ggplot(mpg) +
  geom_point(aes(displ, hwy)) +
  facet_wrap(~cty)
## faceting on a continuous variable creates as many small plots as there are unique instances of the variable

# exercise 3.5.1.2
ggplot(data = mpg) +
  geom_point(mapping = aes(x = drv, y = cyl)) +
  facet_grid(drv ~ cyl)
## empty cells mean there are no observations of that combination of drv and cyl.

# exercise 3.5.1.3
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_grid(drv ~ .)

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_grid(. ~ cyl)
## in this instance '.' acts as command to segment each facet by the variable identified

# exercise 3.5.1.4
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) + 
  facet_wrap(~ class, nrow = 2)
## the advantage to faceting is the reduction of clutter and clear views of the individual variable measurements.
## the disadvantage would be if you are trying to facet by a variable that has many unique values. Too many graphs would not be helpful.

#practice 3.5.5
?facet_wrap
#nrow and ncol indicates the desired number of rows and columns to display the facets by.
#
?facet_grid
#

#practice 3.5.6


# 3.6.1 - geoms -----------------------------------------------------------

#practice 3.6.1
#geom_line()
#geom_boxplot()
#geom_histogram()

#practice 3.6.2
ggplot(data = mpg, mapping = aes(x = displ, y = hwy, color = drv)) + 
  geom_point() + 
  geom_smooth(se = FALSE)

#practice 3.6.3
#show.legend = FALSE will remove the key from the graph.

#practice 3.6.4
#the 'se' argument displays the confidence level around the line.

#practice 3.6.5
#The graphs will look the same. Graph #2 just uses more code.

#practice 3.6.6
#Graph 1
ggplot(data = mpg, aes(x = displ, y = hwy)) +
  geom_point(stroke = 3) +
  geom_smooth(se = FALSE)

#Graph 2 - needs correction
ggplot(data = mpg, aes(x = displ, y = hwy)) +
  geom_point(stroke = 3) +
  geom_smooth(se = FALSE, linetype = drv)

#Graph 3
ggplot(data = mpg, aes(x = displ, y = hwy, color = drv)) +
  geom_point(stroke = 3) +
  geom_smooth(se = FALSE)

#Graph 4
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, stroke = 3, color = drv)) +
  geom_smooth(mapping = aes(x = displ, y = hwy), se = FALSE)

#Graph 5
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, color = drv), stroke = 3) +
  geom_smooth(mapping = aes(x = displ, y = hwy, linetype = drv), se = FALSE)

#Graph 6
ggplot(data = mpg) +
  geom_point(aes(x = displ, y = hwy, color = drv), stroke = 3)


# 3.7.1 - stat transformations --------------------------------------------

#Practice 3.7.1
#stat_summary() is similar to a boxplot. This could serve as a fair replacement.

#Practice 3.7.2
ggplot(data = mpg) +
  geom_col(aes(x = displ, y = hwy))
#geom_col() works with an x and y value, while geom_bar() works with a count of x value

#Practice 3.7.3


#Practice 3.7.4
#stat_smooth() computes predicted value and upper/lower confidence intervals aroun the mean

#Practice 3.7.5
ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, y = after_stat(prop)))
ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, fill = color, y = after_stat(prop)))


# 3.8.1 - position adjustments --------------------------------------------

#Practice 3.8.1
ggplot(data = mpg, mapping = aes(x = cty, y = hwy)) + 
  geom_point(position = "jitter")
#The plot has an 'overplotting' issue. Setting the position to "jitter" allows a better visual for density of points.

#Practice 3.8.2
#Width and height control the amount of jittering.

#Practice 3.8.3
ggplot(data = mpg, mapping = aes(x = cty, y = hwy)) + 
  geom_jitter()
#geom_jitter() allows for overlapping of points to show density, while geom_count sizes the points by density.

#Practice 3.8.4
#The default position for geom_boxplot() is "dodge2".
ggplot(data = mpg) + 
  geom_boxplot(mapping = aes(x = drv, y = hwy))

#Practice 3.9.1
ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, fill = color, y = after_stat(prop))) +
  coord_polar()

#Practice 3.9.2
#labs() allows you to change the labels of the axis, legend, plot.

#Practice 3.9.3
#coord_map() does not preserve straight lines while coord_quickmap() does.

#Practice 3.9.4
ggplot(data = mpg, mapping = aes(x = cty, y = hwy)) +
  geom_point() + 
  geom_abline() +
  coord_fixed()
#The plot tells us there is a linear relationship between cty and hwy. As cty increases so does hwy.
#coord_fixed() is important because it fixes the aspect ratio to better show x and y relationships.
#geom_abline() shows the slope of the data in a linear format.