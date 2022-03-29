
# setup -------------------------------------------------------------------

library(dplyr)
library(tidytext)
library(tidyverse)

# pull in source ----------------------------------------------------------

text <- c("Because I could not stop for Death -",
          "He kindly stopped for me -",
          "The Carriage held but just Ourselves -",
          "and Immortality")


# assign data_frame -------------------------------------------------------

text_df <- tibble(line = 1:4, text = text)


# unnest ------------------------------------------------------------------

text_df %>%
  unnest_tokens(word, text)


# practice with Jane Austen -----------------------------------------------

library(janeaustenr)
library(dplyr)
library(stringr)

original_books <- austen_books() %>%
  group_by(book) %>%
  mutate(linenumber = row_number(),
         chapter = cumsum(str_detect(text, 
                                     regex("^chapter [\\divxlc]",
                                           ignore_case = TRUE)))) %>%
  ungroup()


tidy_books <- original_books %>% 
  unnest_tokens(word,
                text)


# read in stop_words ------------------------------------------------------

data("stop_words")


# anti_join stop_words ----------------------------------------------------

tidy_books <- tidy_books %>% 
  anti_join(stop_words)

tidy_books %>% 
  count(word, sort = TRUE) %>% 
  filter(n > 600) %>% 
  mutate(word = reorder(word, n)) %>% 
  ggplot(aes(n, word)) +
  geom_col() +
  labs(y = NULL)


