install.packages("nycflights13")

library(nycflights13)
library(tidyverse)

#Practice 5.2.4.1
filter(flights, arr_delay >= 2)
filter(flights, dest %in% c('IAH', 'HOU'))
filter(flights, carrier %in% c('UA', 'AA', 'DL'))
filter(flights, month %in% c(7,8,9))
filter(flights, arr_delay >= 2 & dep_delay == 0)
filter(flights, dep_delay >= 1 & (sched_arr_time - arr_time) >= 30)
filter(flights, dep_time %in% c(0:600))

#Practice 5.2.4.2
