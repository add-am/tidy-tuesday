install.packages("tidytuesdayR")

tuesdata <- tidytuesdayR::tt_load(2025, week = 27)

answers <- tuesdata$answers
color_ranks <- tuesdata$color_ranks
users <- tuesdata$users

library(tidymodels)

#answers provided by user. They are shown a color, and asked to provide a name? The true colour is defined by "hex", the users answer is provided by rank
glimpse(answers)

#a df of 949 unique colours (unique by colour (name), rank (1 - 949), and hex code)
glimpse(color_ranks)
dim(color_ranks)
length(unique(color_ranks$hex))

#a table of unique users who answered the survey. contains information about the user such as likelihood they were spamming answers
glimpse(users)

first_user <- filter(users, user_id == 10)
first_user_answers <- filter(answers, user_id == 10)

first_user_answers
