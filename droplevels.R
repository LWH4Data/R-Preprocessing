#define data with 5 factor levels
data <- factor(c(1, 2, 3, 4, 5))

#define new data as original data minus 4th and 5th factor levels
new_data <- data[-c(4, 5)]

#view new data
new_data

[1] 1 2 3
Levels: 1 2 3 4 5

#drop unused factor levels
new_data <- droplevels(new_data)

#view data
new_data

[1] 1 2 3
Levels: 1 2 3