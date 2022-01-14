library(tidyverse)
library(skimr)

#Practice 7.3.4.1


#Practice 7.3.4.2
ggplot(data = diamonds) +
  geom_histogram(mapping = aes(x = price), binwidth = 100)
#it is surprising to learn that there is a high frequency of lower priced diamonds

#Practice 7.3.4.3
diamonds %>%
  filter(carat == 0.99) %>%
  count()

diamonds %>%
  filter(carat == 1.00) %>%
  count()
#there are 23 at 0.99 carat. there are 1558 at 1.0 carat.
#the cause of this difference could be in diamond production or consumer desire to buy up or down to nearest whole carat.

#Practice 7.3.4.4


