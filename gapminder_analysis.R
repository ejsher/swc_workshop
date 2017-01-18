download.file("https://raw.githubusercontent.com/swcarpentry/r-novice-gapminder/gh-pages/_episodes_rmd/data/gapminder-FiveYearData.csv", destfile = "gapminder-FiveYearData.csv")
gapminder <- read.csv("gapminder-FiveYearData.csv")

ggplot(data=gapminder, aes(x= gdpPercap, y=lifeExp, color= continent)) + geom_point(aes(size=pop))

#make notes with hashtags
# Author: Emily Sherman

#Load necessary packages
library(ggplot2)

#Read in some realistic data
download.file("https://raw.githubusercontent.com/swcarpentry/r-novice-gapminder/gh-pages/_episodes_rmd/data/gapminder-FiveYearData.csv","gapminder-FiveYearData.csv")
#Read in data file
gapminder <- read.csv("gapminder-FiveYearData.csv")

#Create plot with year vs life expectancy

ggplot(data=gapminder, aes(x = year, y = lifeExp, color = continent)) + geom_point() + facet_grid(.~continent)

#save plot
ggsave(filename = "year_vs_lifeexp_percent.png", width = 5, height = 4, units = "in")
