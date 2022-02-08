library(tidyverse)

table1 <- table1
table2 <- table2
table3 <- table3
table4a <- table4a
table4b <- table4b
table5 <- table5

# exercise 12.2.1.1
## in table1 there is one observation for each variable
## in table2 there are multiple observations (each year) for the same variable, split over cases and population
## in table3 there is one observation for each variable, but cases and population show as an aggregate "rate"
## in table4a there is one observation per country with the variables being cases for different years (unclear)
## in table4b there is one observation per country with the variables being population for different years (unclear)
## in table5 the variable "year" has been split into two new variables "century" and "year"

# exercise 12.2.1.2
table1 <- table1 %>% 
  mutate(rate = (cases/population) * 10000)
