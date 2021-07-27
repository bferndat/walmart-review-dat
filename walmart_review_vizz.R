library(tidyverse)
library(ggplot2)
install.packages('naniar')
library(naniar)

review_dat <- read.csv("~/R data projects/walmart_reviews_counts.csv")
View(walmart_reviews_counts)

ggplot(data = review_dat) +
  geom_col(aes(x = Star.Ratings, y = Helpful..YES))

ggplot(data = review_dat) +
  geom_col(aes(x = Num_Char_Title, y = Helpful..YES)) +
  facet_wrap(~Star.Ratings)

ggplot(data = review_dat) +
  geom_col(aes(x = Num_Char_Title, y = Helpful..NO)) +
  facet_wrap(~Star.Ratings)

ggplot(data = review_dat) +
  geom_col(aes(x = Num_Char_Title, y = Helpful..YES + Helpful..NO)) +
  facet_wrap(~Star.Ratings)
