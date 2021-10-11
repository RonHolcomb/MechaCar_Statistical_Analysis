# Load Libraries
library(dplyr)

# Import MechaCar MPG Data
mpg_data <- read.csv(file = "MechaCar_mpg.csv")

# Perform Linear Regression (Pass all Six Variables)
mpg_linear_model <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mpg_data)

# Print Summary of Linear Regression Results
summary(mpg_linear_model)

# Import Suspension Coil Data
coil_data <- read.csv(file = "Suspension_Coil.csv")

# Total Summary
total_summary <- coil_data %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

# Lot Summary
lot_summary <- coil_data %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

coil_data_overall <- sample_n(coil_data, 150)

# Then compare sampled data to original population
t.test(coil_data_overall$PSI, mu=mean(coil_data$PSI))

# Samples t-tests by Lot

# Lot 1
t.test(subset(coil_data, coil_data$Manufacturing_Lot=="Lot1")$PSI, mu=mean(coil_data$PSI))

# Lot 2
t.test(subset(coil_data, coil_data$Manufacturing_Lot=="Lot2")$PSI, mu=mean(coil_data$PSI))

# Lot 3
t.test(subset(coil_data, coil_data$Manufacturing_Lot=="Lot3")$PSI, mu=mean(coil_data$PSI))