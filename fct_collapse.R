#How to collapes the levels of factor variable
x <- factor(c("A","B","A","C","D","E","A","E","C"))

library(forcats)
fct_collapse(x, AB = c("A","B"), DE = c("D","E"))

#[1] AB AB AB C  DE DE AB DE C 
#Levels: AB C DE