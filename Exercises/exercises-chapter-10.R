library(tidyverse)

as_tibble(iris)

nycflights13::flights %>% 
  print(n = 10, width = Inf)

options(tibble.width = NULL)

nycflights13::flights %>% 
  print(n = 10)

options(tibble.print_max = 10)

nycflights13::flights %>%
  filter(carrier == "UA")

# Practice 10.5.1
# a tibble will print with rows and columns limited to pre-set options and will provide the data type for each variable.

# Practice 10.5.2
df <- data.frame(abc = 1, xyz = "a")
df$x
df[, "xyz"]
df[, c("abc", "xyz")]

df_t <- tibble(abc = 1, xyz = "a")
df_t$abc
df_t$xyz
df_t

# tibble commands are much simpler and faster without sacrificing functionality.

# Practice 10.5.3
var <- "mpg"
as.tibble(var)
# to extract as tibble use the command as.tibble()

# Practice 10.5.4


# Practice 10.5.5


# Practice 10.5.6
# the command options(tibble.width = ) will allow you to pre-set how many columns to be printed
