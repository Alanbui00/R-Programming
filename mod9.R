# import datset
library(readr)
gas <- read_csv("NaturalGas.csv")
View(gas)


# 1 basic visualization without any package.
#plot of gas conusumption in New York by year
plot(gas$year[1:23], gas$price[1:23])

# 2 lattice. 
#install.packages("lattice")
library(lattice)
densityplot(gas$price[1:23])

# 3 ggplot2.
year <- gas$year[1:23]
price <- gas$price[1:23]
library(ggplot2)
p <- ggplot(gas, aes(year, price)) + geom_point()
p
