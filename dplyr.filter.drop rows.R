library(dplyr)

#set data
Ex <- data.frame(iris)
summary(Ex)
Ex$Species <- as.character(Ex$Species)
str(Ex)

#use dplyr::filter to drop rows that the Species column is "setosa".
Ex1 <- Ex %>% 
  filter(Ex$Species != "setosa")

Ex1$Species <- as.factor(Ex1$Species)
summary(Ex1)

#Compare the Ex and the Ex1
Ex$Species <- as.factor(Ex$Species)

summary(Ex)
summary(Ex1)

#Here is one thing to watch out for.
#I wrote down it in the description.