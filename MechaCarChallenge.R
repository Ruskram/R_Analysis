library(dplyr)

MechaCar <- read.csv(file="MechaCar_mpg.csv")

reg <- lm(mpg ~ vehicle_length + vehicle_weight +spoiler_angle + ground_clearance + AWD,data=MechaCar)

summary(reg)


Suspension_Coil <- read.csv(file="Suspension_Coil.csv")

total_summary <- Suspension_Coil %>% summarize(Mean=mean(PSI), Meadian=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = "keep")

lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Meadian=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = "keep")

t.test(Suspension_Coil$PSI)

Lot1 = subset(Suspension_Coil, Manufacturing_Lot == "Lot1")
Lot2 = subset(Suspension_Coil, Manufacturing_Lot == "Lot2")
Lot3 = subset(Suspension_Coil, Manufacturing_Lot == "Lot3")
