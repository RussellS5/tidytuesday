

library(tidyverse)
library(ggplot2)


milk <- read_csv("data/2019/2019-01-29/state_milk_production.csv")
milk_nc %>%
  filter(state == 'North Carolina') %>%
  mutate(gallon = milk_produced/8.6/1000000) %>%
  ggplot(milk, mapping=aes(x=year, y=gallon)) + 
    labs(x = "Year", y = "Milk Produced (million gallons)", title = "Milk Production by NC", subtitle = "Got Milk?", caption = "Data source: jthomasmock") +
    geom_line(stat="identity") +
    theme(plot.title = element_text(hjust = .50)) +
    theme(plot.subtitle = element_text(hjust = .50)) +
    scale_x_continuous(breaks = c(1970,1975,1980,1985,1990,1995,2000,2005,2010,2015)) +
    scale_y_continuous(breaks = c(0,100,120,140,160,180,200)) +
    theme(plot.background = element_rect(fill = "seagreen")) +
    theme(axis.text = element_text(size = 12)) +
    theme(panel.background = element_rect(fill = "lightgreen"))

milk %>%
  filter(year == "2017") %>%
  group_by(region) %>%
  mutate(gallon = milk_produced/8.6/1000000) %>%
  ggplot(milk, mapping = aes(x=region, y=gallon, fill=region)) +
  labs(x = "Region", y = "Milk Produced (million gallons)", fill = "US Region", title = "Milk Production by US Region in 2017", subtitle = "Got Milk?", caption = "Data source: jthomasmock") +
  geom_bar(stat="identity", width = 1)+
  theme(plot.title = element_text(hjust = .50)) +
  theme(plot.subtitle = element_text(hjust = .50)) +
  theme(plot.background = element_rect(fill = "seagreen")) +
  theme(axis.text = element_text(size = 10)) +
  theme(panel.background = element_rect(fill = "lightgreen"))
    









