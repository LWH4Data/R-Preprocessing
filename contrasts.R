#get iris data
iris1 <- data.frame(iris)
str(iris1)

#Species column is factor, we can check the dummy variable using contrasts function.
contrasts(iris1$Species)

#default is 0 and 1. if we want to use other dummy(weight), we can use other contrast function in car package.
#Usually it is used when planned contrasts anova