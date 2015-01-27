#  Afternoon ggplot exercises at Tulane
# Install libraries
install.packages ("ggplot2", dependencies=TRUE)
install.packages ("plyr")
install.packges ("ggthemes")
install.packages ("ggthemes")
install.packages ("reshape2")
# Load libraries
library("ggplot2")
library("plyr")
library("ggthemes")
library("reshape2")
 head(iris)
iris[1:2,]
df <- melt(iris id.vars - = "Species"); df 1,2]
df <- melt(iris, id.vars = "species")
df[1:2,]
df[1:2, ]
myplot <- ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width)) 
summary(myplot)
ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width)) + geom_point()
ggplot(iris, aes(Sepal.Length, Sepal.Width, color = Species)) + geom_point(size = 3)
ggplot(iris, aes(Sepal.Length, Sepal.Width, color = Species)) + geom_point(aes(shape = Species, size = 3))
# make a small random sample of the diamonds dataset
d2 <- diamonds[sample(1:dim(diamonds)[1], 1000), ]
ggplot(data = diamonds, aes(x = carat, y = price)) + geom_point()
ggplot(diamonds, aes(carat, price, color = color)) + geome_point(size = 2)
ggplot(d2, aes(carat, price, color = color)) + geome_point(size = 2)
summary(d2)
ggplot(diamonds, aes(carat, price, color = clarity)) + geome_point(size = 2)
ggplot(d2, aes(carat, price, color = color)) + geome_point(size = 2)
library("MASS")
ggplot(birthwt, aes(factor(race), bwt)) + geom_botxplot()
myplot <- ggplot(birthwt, aes(factor(race), bwt)) + geom_boxplot()
summary(myplot)
ggplot(iris, aes(Sepal.Length, Sepal.Width, color = Species)) + geom_point() + facet_grid(Species ~ .)
ggplot(iris, aes(Sepal.Length, Sepal.Width, color = Species)) + geom_point() + facet_grid(. ~ Species)
ggplot(iris, aes(Sepal.Length, Sepal.Width, color = Species)) + geom_point() + facet_wrap(~ Species)
df <- melt(iris, id.vars = "Species")
ggplot(df, aes(Species, value, fill = variable)) + geom_bar(stat = "identity", position = "dodge") + scale_fill_brewer(palette = "Set1")
h <- ggplot(faithful, aes(x = waiting))
h + geom_histogram(binwidth = 8, fill = "steelblue",colour = "black")
ggplot(iris, aes(Species, Sepal.Length)) + geom_bar(sta ="identity")
summary(d2)
ggplot(df, aes(clarity, value, fill = variable)) + geom_bar(stat = "identity", position = "dodge")
ggplot(d2, aes(clarity, fill = cut)) + geom_bar(position = "dodge")
ggplot(faithful, aes(waiting)) + geom_density()
ggplot(iris, aes(Sepal.Length, Sepal.Width, color = Species)) + geom_point(aes(shape = Species), size = 3) + geom_smooth(method = "1m")
# themes to apply certain style settings to my plot
# ggthemes library can install a bunch of these to add some style to your plot.  can also write functions for day to day
# plots. can then just call your function to make the plots
# 