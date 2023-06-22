#set data 
iris <- data.frame(iris)

#set contrasts
contrasts(iris$Species)

#If we set contrast for factor column, the variable we set becomes the name of the contrasts.
vname1 <- c(1, 1, -1)
vname2 <- c(1, -1, 0)

contrasts(iris$Species) <- cbind(vname1, vname2)
contrasts(iris$Species)
