#data
irist <- data.frame(iris)
summary(irist)

#rename the levels of the "Species" column.
levels(irist$Species) <- c("first level", "second level", "third level")
levels(irist$Species)
