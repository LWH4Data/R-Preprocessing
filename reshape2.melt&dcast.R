#library
library(reshape2)

#make variables 
case <- c(1:40)
relationship <- c(rep("In a Relationship", 17), rep("Single", 23))
couple <- c(4, 4, 4, 3, 4,
            2, 4, 3, 3, 3,
            3, 4, 3, 1, 3,
            4, 4, 8, 8, 9,
            9, 10, 11, 7, 6,
            8, 5, 9, 6, 5,
            8, 11, 8, 7, 5,
            10, 8, 9, 10 ,5)
alone <- c(4, 6, 7, 5, 3,
           5, 6, 4, 7, 5,
           8, 7, 6, 4, 6,
           6, 7)
row <- c(1:17, 1:23)

#make dataframe
test <- data.frame(case, relationship, couple, 
                   alone = c(alone, rep(NA, length(couple) - length(alone))),
                   row = c(row, rep(NA, length(couple) - length(row))))
test$relationship <- as.factor(test$relationship)
summary(test)

#melt the data
testmelt <- melt(test, id = c("case", "row", "relationship"), measured = c("couple", "alone"))
summary(testmelt)
names(testmelt) <- c("case", "row", "relationship_status", "profile_picture", "friend_requests")
summary(testmelt)

#dcast the data 
testcast <- dcast(testmelt, row ~ relationship_status + profile_picture, value.var = "friend_requests")
summary(testcast)
