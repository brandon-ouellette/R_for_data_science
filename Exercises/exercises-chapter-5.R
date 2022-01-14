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
flights %>%
  filter(between(month, 7, 9))

#Practice 5.2.4.3
flights %>%
  filter(is.na(dep_time))
#8255 missing dep_time. this also causes other actual delay and arrival time variables to be missing.

#Practice 5.2.4.4


#Practice 5.3.1.1
flights %>%
  arrange(desc(is.na(dep_delay)))

#Practice 5.3.1.2
flights %>%
  arrange(desc(dep_delay))

flights %>%
  arrange(dep_time)

#Practice 5.3.1.3
flights %>%
  arrange(distance / hour)

#Practice 5.3.1.4
#furthest
flights %>%
  arrange(desc(distance))

#shortest
flights %>%
  arrange(distance)

#Practice 5.4.1.1
flights %>%
  select(dep_time, dep_delay, arr_time, arr_delay)

#Practice 5.4.1.2
flights %>%
  select(dep_time, dep_delay, dep_time)
#if you select a variable name multiple times the duplicates will be ignored and the variable returned only once.

#Practice 5.4.1.3
#the any_of() function will select all variables contained in the object passed through the command. this can be useful for assigning vectors that will be reused.

#Practice 5.4.1.4
select(flights, contains("TIME"))
#the result is surprising. case does not seem to matter by default in the select function.

#Practice 5.5.2.1


#Practice 5.5.2.2
flights %>%
  transmute(air_time, air_time_calc = (arr_time - dep_time))
#I would expect to see these columns be equal, but it looks like the calc column is consistently higher.


#Practice 5.5.2.3
flights %>%
  select(dep_time, sched_dep_time, dep_delay)
#dep_time minus sched_dep_time should equal dep_delay.

#Practice 5.5.2.4
flights %>%
  transmute(min_rank(arr_delay))

            