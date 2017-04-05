library(tidyverse)
qplot(carat, price, data = diamonds)
qplot(log(carat), log(price), data = diamonds)
qplot(carat, price, data = diamonds, colour = color)
qplot(carat, price, data = diamonds, shape = cut)
qplot(carat, price, data = diamonds, alpha = I(1/200))
qplot(carat, price, data = diamonds, geom = c("point", "smooth"))
qplot(carat, data = diamonds, geom = "histogram")
qplot(carat, data = diamonds, geom = "density")
qplot(mpg, data = mtcars, geom = "density", main = "Distribution of gas milage", xlab = "miles per gallon", ylab = "density")

library(ggplot2)
mpg

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy))

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, color = class))

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, size = class))

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy), color = "blue")

ggplot(data = mpg) +
  geom_point (mapping = aes(x = displ, y = hwy)) +
  facet_wrap(~ class, nrow = 2)

ggplot(data = mpg) +
  geom_point (mapping = aes(x = displ, y = hwy))

ggplot(data = mpg) +
  geom_smooth (mapping = aes(x = displ, y = hwy))

ggplot(data = mpg) +
  geom_point (mapping = aes(x = displ, y = hwy)) +
  geom_smooth (mapping = aes(x = displ, y = hwy))


library(ggmap)

qmap(location = "boston university")
qmap(location = "boston university", zoom = 14)

myLocation = c(lon = -95.3632715, lat = 29.7632836)
myMap = get_map(location = myLocation, source = "stamen", maptype = "watercolor", crop = F)
ggmap(myMap)