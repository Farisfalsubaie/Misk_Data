# title
# your name
# date
# description

# Data from:
# https://www.kaggle.com/kedokedokedo/vgsales

# a brief description of the research questions
# or... just EDA

# load packages
library(tidyverse)

vgsales <- read_csv("data/vgsales.csv")

# look at the data
glimpse(vgsales)

# TEST: Confirm that global is really NA+EU+JP+Other

# What are some questions for EDA?

# Compare publisher and sales in different regions:

# Make data tidy, and... take only the 3 major publishers
vgsales_region <- vgsales %>% 
  select(Name, Publisher, ends_with("Sales"), -starts_with("Glo")) %>% 
  pivot_longer(-c(Name, Publisher), names_to = "Region", values_to = "Sales") %>% 
  mutate(Region = str_remove(Region, "_Sales")) %>% 
  filter(Publisher %in% c("Nintendo", "Microsoft Game Studios", "Sony Computer Entertainment"))

unique(vgsales_region$Publisher)

# aggregrate totals for each publisher (i.e. ignore game titles)
vgsales_region_sum <- vgsales_region %>% 
  group_by(Publisher, Region) %>% 
  summarise(Sales = sum(Sales))

ggplot(vgsales_region_sum, aes(x = Publisher, y = Sales, fill = Region)) +
  geom_col()




