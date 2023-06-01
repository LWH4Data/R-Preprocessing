#data
libido <- c(3, 2, 1, 1, 4, 5, 2, 4, 2, 3, 7, 4, 5, 3, 6)
dose <- c(rep("Placebo", 5), rep("Low Dose", 5), rep("High Dose", 5))
viagraEx <- data.frame(libido, dose)
viagraEx

#Long to Wide
viagraExWide <- unstack(viagraEx, libido ~ dose)
viagraExWide
