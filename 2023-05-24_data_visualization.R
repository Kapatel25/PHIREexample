# Intro Data Visualization
# Kiran Patel
# kapatel25@arizona.edu
# 2023-05-24

# installing packages
install.packages("ggplot2")
library(dplyr)
library(tidyr)
library(ggplot2)
install.packages("gapminder")
library(gapminder)
library(remotes)
library(emoGG)

# Visualizations ----------------------------------------------------------
# Continuous (GDP)
# ggplot(data = gapminder, 
#        mapping = aes(x = gdpPercap, y = lifeExp)) + 
#   geom_point(alpha = 0.5, color = "orange") + 
# #  geom_emoji(emoji = "1f938") + 
#   scale_x_log10() +
#   geom_smooth(method = "lm", linewidth = 3, color = "black")

# Categorical (year)
ggplot(gapminder,
       aes(x = year, y = lifeExp, group = country)) +
  geom_point() +
  geom_line(aes(color = continent))

# Visualize Americas Only, using pipes (Ctrl + Shift + M)
gapminder %>% 
  filter(continent == "Americas") 

Americas <- gapminder %>% 
  filter(continent == "Americas")

# Plot Americas
ggplot(Americas,
       aes(x = year, y = lifeExp, group = country)) +
  geom_line() +
  facet_wrap(~country) +
  labs( x = "Year",
        y = "Life Expectancy",
        title = "Countries in the Americas")


