#loading the tidyverse and ggthemes packages
library(tidyverse)
library(ggthemes)
#bringing in the data from the tidy tuesday wine_ratings csv file
wine_ratings <- readr::read_csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2019/2019-05-28/winemag-data-130k-v2.csv")
#this line creates a plot, gnerates all of the points from wine_ratings.csv, plots the points the wine scored vs the price each bottle is sold for
#a simple theme is added from the ggthemes package and the labels, title, subtitle, and captions are added/modified
ggplot() + geom_point(data = wine_ratings, mapping = aes(x = points, y = price)) + theme_few() + labs(x = "Points", y = "Price ($)", title = "Points Scored vs. Price per Bottle", subtitle = "Does the amount of points scored correlate to the price paid?", caption = "Data source: Kaggle")
#the ggsave() command saves the plot as a pdf
ggsave("points_vs_price_paid.pdf", width = 11, height = 9, units = "in")

