#data
Reorderiris <- data.frame(iris)
head(Reorderiris)

#How to reorder columns. I will reorder "Species" columns to the first column.
#Remember that "Species" column is the fifth column.
ReorderSpecies <- Reorderiris[c(5, 1, 2, 3, 4)]
head(ReorderSpecies)
