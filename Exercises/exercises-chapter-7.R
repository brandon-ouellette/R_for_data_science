library(tidyverse)


# Practice 7.3.4.1
ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = x)) +
  xlim(0,10)

ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = y)) +
  xlim(0,10)

ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = z)) +
  xlim(0,10)

# looking at the distributions it looks like 'z' has a higher count between 2.5 and 5 than 'x' and 'y'.
# this would lead me to believe 'x' and 'y' represent depth and width, while 'z' represents height.

# Practice 7.3.4.2
ggplot(data = diamonds) +
  geom_histogram(mapping = aes(x = price), binwidth = 100)
# it is surprising to learn that there is a high frequency of lower priced diamonds

# Practice 7.3.4.3
diamonds %>%
  filter(carat == 0.99) %>%
  count()

diamonds %>%
  filter(carat == 1.00) %>%
  count()
# there are 23 at 0.99 carat. there are 1558 at 1.0 carat.
# the cause of this difference could be in diamond production or consumer desire to buy up or down to nearest whole carat.

# Practice 7.3.4.4
# coord_cartesian() will set the limits for plot zooming, while xlim() and ylim() will limit the underlying data.


# Practice 7.4.1.1
