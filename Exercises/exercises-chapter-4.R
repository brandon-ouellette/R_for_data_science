#Practice 4.4.1
my_variable <- 10
my_varıable
#> Error in eval(expr, envir, enclos): object 'my_varıable' not found
#an error is caused due to a syntax error where a lowercase 'i' is needed in "my_vairable"

#Practice 4.4.2
library(tidyverse)
#this runs without changes

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy))
#changed "dota" to "data"

filter(mpg, cyl == 8)
filter(diamond, carat > 3)
#changed "fliter" to "filter" and added a second '=' to represent eual to a value

#Practice 4.4.3
#alt + shift + K brings up the keyboard shortcut menu