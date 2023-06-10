#reordering factor(data set)
Ex <- data.frame(iris)
contrasts(Ex$Species)

#reordering
Ex$Species <- factor(Ex$Species, levels = c("virginica", "versicolor", "setosa"))
contrasts(Ex$Species)
